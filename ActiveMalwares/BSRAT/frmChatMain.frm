VERSION 5.00
Begin VB.Form frmChatMain
  Caption = "Chatroom"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmChatMain.frx":0
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 10650
  ClientHeight = 6300
  BeginProperty Font
    Name = "Arial"
    Size = 8,25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin RichTextLib.RichTextBox txtChat
    Left = 0
    Top = 5520
    Width = 10635
    Height = 735
    TabIndex = 0
  End
  Begin MSWinsockLib.Winsock sckChat
  End
  Begin VB.Timer tmrStatus
    Interval = 60000
    Left = 600
    Top = 0
  End
  Begin VB.Timer tmrConnection
    Interval = 1000
    Left = 1080
    Top = 0
  End
  Begin MSComctlLib.ImageList imgIcons
  End
  Begin MSComctlLib.ListView lstUsers
    Left = 8520
    Top = 390
    Width = 2115
    Height = 5145
    TabIndex = 1
  End
  Begin MSComctlLib.Toolbar tbConversations
    Left = 0
    Top = 0
    Width = 11340
    Height = 390
    TabIndex = 2
  End
  Begin RichTextLib.RichTextBox txtMain
    Left = 0
    Top = 360
    Width = 8520
    Height = 5145
    TabIndex = 3
  End
  Begin VB.Line lnChat
    X1 = 0
    Y1 = 5520
    X2 = 10680
    Y2 = 5520
  End
  Begin VB.Image imgBack
    Picture = "frmChatMain.frx":8E79
    Left = 0
    Top = 0
    Width = 10650
    Height = 6285
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.Menu mnuChatMenu
    Visible = 0   'False
    Caption = "Chat"
    Begin VB.Menu mnuChat
      Index = 0
      Caption = "Save log"
    End
    Begin VB.Menu mnuChat
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuChat
      Index = 2
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmChatMain"


Private sub sckChat__85C3FB
0085C3FB: push ebp
0085C3FC: mov ebp, esp
0085C3FE: sub esp, 00000018h
0085C401: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085C406: mov eax, fs:[00h]
0085C40C: push eax
0085C40D: mov fs:[00000000h], esp
0085C414: push 00000048h
0085C416: pop eax
0085C417: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085C41C: push ebx
0085C41D: push esi
0085C41E: push edi
0085C41F: mov var_18, esp
0085C422: mov var_14, 0040CBA0h
0085C429: mov eax, [ebp+08h]
0085C42C: and eax, 00000001h
0085C42F: mov var_10, eax
0085C432: mov eax, [ebp+08h]
0085C435: and al, FEh
0085C437: mov [ebp+08h], eax
0085C43A: mov var_0C, 00000000h
0085C441: mov eax, [ebp+08h]
0085C444: mov eax, [eax]
0085C446: push [ebp+08h]
0085C449: call [eax+04h]
0085C44C: mov var_04, 00000001h
0085C453: mov edx, [ebp+18h]
0085C456: lea ecx, var_28
0085C459: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085C45E: mov edx, [ebp+1Ch]
0085C461: lea ecx, var_24
0085C464: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085C469: mov var_04, 00000002h
0085C470: push FFFFFFFFh
0085C472: call 00410A60h ; On Error ...
0085C477: mov var_04, 00000003h
0085C47E: cmp [008F2AC8h], 00000000h
0085C485: jnz 85C49Fh
0085C487: push 008F2AC8h
0085C48C: push 0041D3CCh
0085C491: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085C496: mov var_60, 008F2AC8h
0085C49D: jmp 85C4A6h
0085C49F: mov var_60, 008F2AC8h
0085C4A6: push 00000000h
0085C4A8: push 00000046h
0085C4AA: mov eax, var_60
0085C4AD: mov eax, [eax]
0085C4AF: mov ecx, var_60
0085C4B2: mov ecx, [ecx]
0085C4B4: mov ecx, [ecx]
0085C4B6: push eax
0085C4B7: call [ecx+00000318h]
0085C4BD: push eax
0085C4BE: lea eax, var_2C
0085C4C1: push eax
0085C4C2: call 00410A84h ; Set (object)
0085C4C7: push eax
0085C4C8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085C4CD: add esp, 0000000Ch
0085C4D0: lea ecx, var_2C
0085C4D3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085C4D8: mov var_04, 00000004h
0085C4DF: cmp [008F2AC8h], 00000000h
0085C4E6: jnz 85C500h
0085C4E8: push 008F2AC8h
0085C4ED: push 0041D3CCh
0085C4F2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085C4F7: mov var_64, 008F2AC8h
0085C4FE: jmp 85C507h
0085C500: mov var_64, 008F2AC8h
0085C507: push 004412BCh
0085C50C: push 00000000h
0085C50E: push 00000007h
0085C510: mov eax, var_64
0085C513: mov eax, [eax]
0085C515: mov ecx, var_64
0085C518: mov ecx, [ecx]
0085C51A: mov ecx, [ecx]
0085C51C: push eax
0085C51D: call [ecx+00000320h]
0085C523: push eax
0085C524: lea eax, var_2C
0085C527: push eax
0085C528: call 00410A84h ; Set (object)
0085C52D: push eax
0085C52E: lea eax, var_40
0085C531: push eax
0085C532: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085C537: add esp, 00000010h
0085C53A: push eax
0085C53B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085C540: push eax
0085C541: lea eax, var_30
0085C544: push eax
0085C545: call 00410A84h ; Set (object)
0085C54A: mov var_44, eax
0085C54D: mov eax, var_44
0085C550: mov eax, [eax]
0085C552: push var_44
0085C555: call [eax+2Ch]
0085C558: fclex 
0085C55A: mov var_48, eax
0085C55D: cmp var_48, 00000000h
0085C561: jnl 85C57Ah
0085C563: push 0000002Ch
0085C565: push 004412BCh
0085C56A: push var_44
0085C56D: push var_48
0085C570: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C575: mov var_68, eax
0085C578: jmp 85C57Eh
0085C57A: and var_68, 00000000h
0085C57E: lea eax, var_30
0085C581: push eax
0085C582: lea eax, var_2C
0085C585: push eax
0085C586: push 00000002h
0085C588: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085C58D: add esp, 0000000Ch
0085C590: lea ecx, var_40
0085C593: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085C598: mov var_04, 00000005h
0085C59F: call 007D22A1h
0085C5A4: mov var_04, 00000006h
0085C5AB: push 008F2044h
0085C5B0: push 0044F9B8h ; kick
0085C5B5: call 007CFFE9h
0085C5BA: mov var_10, 00000000h
0085C5C1: push 0085C5F4h
0085C5C6: jmp 85C5E3h
0085C5C8: lea eax, var_30
0085C5CB: push eax
0085C5CC: lea eax, var_2C
0085C5CF: push eax
0085C5D0: push 00000002h
0085C5D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085C5D7: add esp, 0000000Ch
0085C5DA: lea ecx, var_40
0085C5DD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085C5E2: ret 
End Sub

Private sub sckChat__85B4FB
0085B4FB: push ebp
0085B4FC: mov ebp, esp
0085B4FE: sub esp, 00000018h
0085B501: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085B506: mov eax, fs:[00h]
0085B50C: push eax
0085B50D: mov fs:[00000000h], esp
0085B514: mov eax, 000000E8h
0085B519: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B51E: push ebx
0085B51F: push esi
0085B520: push edi
0085B521: mov var_18, esp
0085B524: mov var_14, 0040CA98h
0085B52B: mov eax, [ebp+08h]
0085B52E: and eax, 00000001h
0085B531: mov var_10, eax
0085B534: mov eax, [ebp+08h]
0085B537: and al, FEh
0085B539: mov [ebp+08h], eax
0085B53C: mov var_0C, 00000000h
0085B543: mov eax, [ebp+08h]
0085B546: mov eax, [eax]
0085B548: push [ebp+08h]
0085B54B: call [eax+04h]
0085B54E: mov var_04, 00000001h
0085B555: mov var_04, 00000002h
0085B55C: push FFFFFFFFh
0085B55E: call 00410A60h ; On Error ...
0085B563: mov var_04, 00000003h
0085B56A: lea eax, var_28
0085B56D: mov var_0000008C, eax
0085B573: mov var_00000094, 00006011h
0085B57D: mov var_0000009C, 00000011h
0085B587: mov var_000000A4, 00000003h
0085B591: push 00000010h
0085B593: pop eax
0085B594: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B599: lea esi, var_00000094
0085B59F: mov edi, esp
0085B5A1: movsd 
0085B5A2: movsd 
0085B5A3: movsd 
0085B5A4: movsd 
0085B5A5: push 00000010h
0085B5A7: pop eax
0085B5A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B5AD: lea esi, var_000000A4
0085B5B3: mov edi, esp
0085B5B5: movsd 
0085B5B6: movsd 
0085B5B7: movsd 
0085B5B8: movsd 
0085B5B9: push 00000002h
0085B5BB: push 00000044h
0085B5BD: mov eax, [ebp+08h]
0085B5C0: mov eax, [eax]
0085B5C2: push [ebp+08h]
0085B5C5: call [eax+00000318h]
0085B5CB: push eax
0085B5CC: lea eax, var_38
0085B5CF: push eax
0085B5D0: call 00410A84h ; Set (object)
0085B5D5: push eax
0085B5D6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085B5DB: add esp, 0000002Ch
0085B5DE: lea ecx, var_38
0085B5E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B5E6: mov var_04, 00000004h
0085B5ED: lea eax, var_28
0085B5F0: mov var_0000008C, eax
0085B5F6: mov var_00000094, 00006011h
0085B600: push 00000409h
0085B605: push 00000040h
0085B607: lea eax, var_00000094
0085B60D: push eax
0085B60E: lea eax, var_50
0085B611: push eax
0085B612: call 00410C3Ah ; msvbvm60.dll.rtcStrConvVar2
0085B617: lea eax, var_50
0085B61A: push eax
0085B61B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085B620: mov edx, eax
0085B622: lea ecx, var_24
0085B625: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B62A: lea ecx, var_50
0085B62D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085B632: mov var_04, 00000005h
0085B639: mov var_0000008C, 004413D8h
0085B643: mov var_00000094, 00000008h
0085B64D: lea edx, var_00000094
0085B653: lea ecx, var_50
0085B656: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085B65B: push 00000000h
0085B65D: push 00000003h
0085B65F: lea eax, var_50
0085B662: push eax
0085B663: push var_24
0085B666: lea eax, var_60
0085B669: push eax
0085B66A: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
0085B66F: lea eax, var_60
0085B672: push eax
0085B673: push 00002008h
0085B678: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
0085B67D: mov var_000000BC, eax
0085B683: lea eax, var_000000BC
0085B689: push eax
0085B68A: lea eax, var_2C
0085B68D: push eax
0085B68E: call 00410892h ; msvbvm60.dll.__vbaAryCopy
0085B693: lea eax, var_60
0085B696: push eax
0085B697: lea eax, var_50
0085B69A: push eax
0085B69B: push 00000002h
0085B69D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085B6A2: add esp, 0000000Ch
0085B6A5: mov var_04, 00000006h
0085B6AC: push 00000000h
0085B6AE: push var_2C
0085B6B1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B6B6: mov edx, [eax]
0085B6B8: lea ecx, var_000000D8
0085B6BE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085B6C3: mov var_04, 00000007h
0085B6CA: push var_000000D8
0085B6D0: push 00000000h
0085B6D2: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B6D7: mov edx, eax
0085B6D9: lea ecx, var_34
0085B6DC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B6E1: push eax
0085B6E2: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085B6E7: neg eax
0085B6E9: sbb eax, eax
0085B6EB: inc eax
0085B6EC: neg eax
0085B6EE: mov var_000000B8, ax
0085B6F5: lea ecx, var_34
0085B6F8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B6FD: movsx eax, word ptr var_000000B8
0085B704: test eax, eax
0085B706: jz 0085B7E8h
0085B70C: mov var_04, 00000008h
0085B713: mov eax, [ebp+08h]
0085B716: mov eax, [eax]
0085B718: push [ebp+08h]
0085B71B: call [eax+00000318h]
0085B721: push eax
0085B722: lea eax, var_3C
0085B725: push eax
0085B726: call 00410A84h ; Set (object)
0085B72B: push 00000000h
0085B72D: push 00000000h
0085B72F: push 00000001h
0085B731: push 00000000h
0085B733: lea eax, var_00000084
0085B739: push eax
0085B73A: push 00000010h
0085B73C: push 00000880h
0085B741: call 00410946h ; ReDim
0085B746: add esp, 0000001Ch
0085B749: mov var_0000008C, 008F2044h
0085B753: mov var_00000094, 00004008h
0085B75D: lea esi, var_00000094
0085B763: push 00000000h
0085B765: push var_00000084
0085B76B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B770: mov ecx, eax
0085B772: mov edx, esi
0085B774: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085B779: mov eax, var_3C
0085B77C: mov var_000000F0, eax
0085B782: and var_3C, 00000000h
0085B786: push var_000000F0
0085B78C: lea eax, var_38
0085B78F: push eax
0085B790: call 00410A84h ; Set (object)
0085B795: lea eax, var_00000084
0085B79B: push eax
0085B79C: push 00000000h
0085B79E: push 00000000h
0085B7A0: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B7A5: mov edx, eax
0085B7A7: lea ecx, var_34
0085B7AA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B7AF: push eax
0085B7B0: lea eax, var_38
0085B7B3: push eax
0085B7B4: push 00000000h
0085B7B6: call 007A00C2h
0085B7BB: lea eax, var_00000084
0085B7C1: push eax
0085B7C2: push 00000000h
0085B7C4: call 00410934h ; Erase
0085B7C9: lea ecx, var_34
0085B7CC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B7D1: lea eax, var_3C
0085B7D4: push eax
0085B7D5: lea eax, var_38
0085B7D8: push eax
0085B7D9: push 00000002h
0085B7DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085B7E0: add esp, 0000000Ch
0085B7E3: jmp 0085C22Ch
0085B7E8: mov var_04, 00000009h
0085B7EF: push var_000000D8
0085B7F5: push 00000002h
0085B7F7: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B7FC: mov edx, eax
0085B7FE: lea ecx, var_34
0085B801: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B806: push eax
0085B807: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085B80C: neg eax
0085B80E: sbb eax, eax
0085B810: inc eax
0085B811: neg eax
0085B813: mov var_000000B8, ax
0085B81A: lea ecx, var_34
0085B81D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B822: movsx eax, word ptr var_000000B8
0085B829: test eax, eax
0085B82B: jz 85B879h
0085B82D: mov var_04, 0000000Ah
0085B834: push 00000001h
0085B836: push var_2C
0085B839: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B83E: push [eax]
0085B840: call 004109DCh ; Val(arg_1)
0085B845: fstp real8 ptr var_000000C4
0085B84B: push 00000002h
0085B84D: push var_2C
0085B850: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B855: push [eax]
0085B857: fld real8 ptr var_000000C4
0085B85D: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085B862: push eax
0085B863: push 00000000h
0085B865: push var_2C
0085B868: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B86D: push [eax]
0085B86F: call 007A048Fh
0085B874: jmp 0085C22Ch
0085B879: mov var_04, 0000000Bh
0085B880: push var_000000D8
0085B886: push 00000005h
0085B888: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B88D: mov edx, eax
0085B88F: lea ecx, var_34
0085B892: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B897: push eax
0085B898: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085B89D: neg eax
0085B89F: sbb eax, eax
0085B8A1: inc eax
0085B8A2: neg eax
0085B8A4: mov var_000000B8, ax
0085B8AB: lea ecx, var_34
0085B8AE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B8B3: movsx eax, word ptr var_000000B8
0085B8BA: test eax, eax
0085B8BC: jz 85B90Ah
0085B8BE: mov var_04, 0000000Ch
0085B8C5: push 00000001h
0085B8C7: push var_2C
0085B8CA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B8CF: push [eax]
0085B8D1: call 004109DCh ; Val(arg_1)
0085B8D6: fstp real8 ptr var_000000C4
0085B8DC: push 00000002h
0085B8DE: push var_2C
0085B8E1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B8E6: push [eax]
0085B8E8: fld real8 ptr var_000000C4
0085B8EE: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085B8F3: push eax
0085B8F4: push 00000000h
0085B8F6: push var_2C
0085B8F9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B8FE: push [eax]
0085B900: call 007A048Fh
0085B905: jmp 0085C22Ch
0085B90A: mov var_04, 0000000Dh
0085B911: push var_000000D8
0085B917: push 00000006h
0085B919: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B91E: mov edx, eax
0085B920: lea ecx, var_34
0085B923: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B928: push eax
0085B929: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085B92E: neg eax
0085B930: sbb eax, eax
0085B932: inc eax
0085B933: neg eax
0085B935: mov var_000000B8, ax
0085B93C: lea ecx, var_34
0085B93F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B944: movsx eax, word ptr var_000000B8
0085B94B: test eax, eax
0085B94D: jz 85B99Bh
0085B94F: mov var_04, 0000000Eh
0085B956: push 00000001h
0085B958: push var_2C
0085B95B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B960: push [eax]
0085B962: call 004109DCh ; Val(arg_1)
0085B967: fstp real8 ptr var_000000C4
0085B96D: push 00000002h
0085B96F: push var_2C
0085B972: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B977: push [eax]
0085B979: fld real8 ptr var_000000C4
0085B97F: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085B984: push eax
0085B985: push 00000000h
0085B987: push var_2C
0085B98A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085B98F: push [eax]
0085B991: call 007A048Fh
0085B996: jmp 0085C22Ch
0085B99B: mov var_04, 0000000Fh
0085B9A2: push var_000000D8
0085B9A8: push 004569DCh ; cliExs
0085B9AD: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085B9B2: test eax, eax
0085B9B4: jnz 85B9E2h
0085B9B6: mov var_04, 00000010h
0085B9BD: xor edx, edx
0085B9BF: lea ecx, var_34
0085B9C2: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085B9C7: lea eax, var_34
0085B9CA: push eax
0085B9CB: push 0044F604h ; nickExs
0085B9D0: call 007CFFE9h
0085B9D5: lea ecx, var_34
0085B9D8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B9DD: jmp 0085C22Ch
0085B9E2: mov var_04, 00000011h
0085B9E9: push var_000000D8
0085B9EF: push 00000007h
0085B9F1: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085B9F6: mov edx, eax
0085B9F8: lea ecx, var_34
0085B9FB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085BA00: push eax
0085BA01: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BA06: neg eax
0085BA08: sbb eax, eax
0085BA0A: inc eax
0085BA0B: neg eax
0085BA0D: mov var_000000B8, ax
0085BA14: lea ecx, var_34
0085BA17: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085BA1C: movsx eax, word ptr var_000000B8
0085BA23: test eax, eax
0085BA25: jz 85BA5Dh
0085BA27: mov var_04, 00000012h
0085BA2E: push var_2C
0085BA31: lea eax, var_30
0085BA34: push eax
0085BA35: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085BA3A: push 00000001h
0085BA3C: push var_30
0085BA3F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BA44: push eax
0085BA45: push 0044E170h ; exit
0085BA4A: call 007CFFE9h
0085BA4F: lea eax, var_30
0085BA52: push eax
0085BA53: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085BA58: jmp 0085C22Ch
0085BA5D: mov var_04, 00000013h
0085BA64: push var_000000D8
0085BA6A: push 004569F0h ; cliPwe
0085BA6F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BA74: test eax, eax
0085BA76: jnz 85BAA4h
0085BA78: mov var_04, 00000014h
0085BA7F: xor edx, edx
0085BA81: lea ecx, var_34
0085BA84: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085BA89: lea eax, var_34
0085BA8C: push eax
0085BA8D: push 0044F704h ; pass
0085BA92: call 007CFFE9h
0085BA97: lea ecx, var_34
0085BA9A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085BA9F: jmp 0085C22Ch
0085BAA4: mov var_04, 00000015h
0085BAAB: push var_000000D8
0085BAB1: push 00000001h
0085BAB3: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085BAB8: mov edx, eax
0085BABA: lea ecx, var_34
0085BABD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085BAC2: push eax
0085BAC3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BAC8: neg eax
0085BACA: sbb eax, eax
0085BACC: inc eax
0085BACD: neg eax
0085BACF: mov var_000000B8, ax
0085BAD6: lea ecx, var_34
0085BAD9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085BADE: movsx eax, word ptr var_000000B8
0085BAE5: test eax, eax
0085BAE7: jz 85BB35h
0085BAE9: mov var_04, 00000016h
0085BAF0: push 00000001h
0085BAF2: push var_2C
0085BAF5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BAFA: push [eax]
0085BAFC: call 004109DCh ; Val(arg_1)
0085BB01: fstp real8 ptr var_000000C4
0085BB07: push 00000002h
0085BB09: push var_2C
0085BB0C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BB11: push [eax]
0085BB13: fld real8 ptr var_000000C4
0085BB19: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085BB1E: push eax
0085BB1F: push 00000000h
0085BB21: push var_2C
0085BB24: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BB29: push [eax]
0085BB2B: call 007A048Fh
0085BB30: jmp 0085C22Ch
0085BB35: mov var_04, 00000017h
0085BB3C: push var_000000D8
0085BB42: push 00456A04h ; srvSpc
0085BB47: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BB4C: test eax, eax
0085BB4E: jnz 85BB9Ch
0085BB50: mov var_04, 00000018h
0085BB57: push 00000001h
0085BB59: push var_2C
0085BB5C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BB61: push [eax]
0085BB63: call 004109DCh ; Val(arg_1)
0085BB68: fstp real8 ptr var_000000C4
0085BB6E: push 00000002h
0085BB70: push var_2C
0085BB73: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BB78: push [eax]
0085BB7A: fld real8 ptr var_000000C4
0085BB80: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085BB85: push eax
0085BB86: push 00000000h
0085BB88: push var_2C
0085BB8B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BB90: push [eax]
0085BB92: call 007A048Fh
0085BB97: jmp 0085C22Ch
0085BB9C: mov var_04, 00000019h
0085BBA3: push var_000000D8
0085BBA9: push 00456A18h ; srvSts
0085BBAE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BBB3: test eax, eax
0085BBB5: jnz 0085BF6Ah
0085BBBB: mov var_04, 0000001Ah
0085BBC2: mov eax, [ebp+08h]
0085BBC5: mov eax, [eax]
0085BBC7: push [ebp+08h]
0085BBCA: call [eax+0000031Ch]
0085BBD0: mov var_48, eax
0085BBD3: mov var_50, 00000009h
0085BBDA: lea eax, var_50
0085BBDD: push eax
0085BBDE: call 0041082Ch ; msvbvm60.dll.__vbaVerifyVarObj
0085BBE3: mov esi, eax
0085BBE5: push 00000010h
0085BBE7: pop eax
0085BBE8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085BBED: mov edi, esp
0085BBEF: movsd 
0085BBF0: movsd 
0085BBF1: movsd 
0085BBF2: movsd 
0085BBF3: push 00000000h
0085BBF5: push 0000000Eh
0085BBF7: mov eax, [ebp+08h]
0085BBFA: mov eax, [eax]
0085BBFC: push [ebp+08h]
0085BBFF: call [eax+00000320h]
0085BC05: push eax
0085BC06: lea eax, var_38
0085BC09: push eax
0085BC0A: call 00410A84h ; Set (object)
0085BC0F: push eax
0085BC10: call 00410832h ; msvbvm60.dll.__vbaLateIdStAd
0085BC15: add esp, 0000001Ch
0085BC18: lea ecx, var_38
0085BC1B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085BC20: lea ecx, var_50
0085BC23: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085BC28: mov var_04, 0000001Bh
0085BC2F: push [008F2044h]
0085BC35: push 00000001h
0085BC37: push var_2C
0085BC3A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BC3F: push [eax]
0085BC41: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BC46: test eax, eax
0085BC48: jnz 0085BDDCh
0085BC4E: mov var_04, 0000001Ch
0085BC55: push 004412BCh
0085BC5A: push 00000000h
0085BC5C: push 00000007h
0085BC5E: mov eax, [ebp+08h]
0085BC61: mov eax, [eax]
0085BC63: push [ebp+08h]
0085BC66: call [eax+00000320h]
0085BC6C: push eax
0085BC6D: lea eax, var_38
0085BC70: push eax
0085BC71: call 00410A84h ; Set (object)
0085BC76: push eax
0085BC77: lea eax, var_50
0085BC7A: push eax
0085BC7B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085BC80: add esp, 00000010h
0085BC83: push eax
0085BC84: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085BC89: push eax
0085BC8A: lea eax, var_3C
0085BC8D: push eax
0085BC8E: call 00410A84h ; Set (object)
0085BC93: mov var_000000C8, eax
0085BC99: push var_2C
0085BC9C: lea eax, var_30
0085BC9F: push eax
0085BCA0: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085BCA5: push 00000001h
0085BCA7: push var_30
0085BCAA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BCAF: mov var_0000008C, eax
0085BCB5: mov var_00000094, 00004008h
0085BCBF: lea eax, var_40
0085BCC2: push eax
0085BCC3: lea eax, var_00000094
0085BCC9: push eax
0085BCCA: mov eax, var_000000C8
0085BCD0: mov eax, [eax]
0085BCD2: push var_000000C8
0085BCD8: call [eax+24h]
0085BCDB: fclex 
0085BCDD: mov var_000000CC, eax
0085BCE3: cmp var_000000CC, 00000000h
0085BCEA: jnl 85BD0Ch
0085BCEC: push 00000024h
0085BCEE: push 004412BCh
0085BCF3: push var_000000C8
0085BCF9: push var_000000CC
0085BCFF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085BD04: mov var_000000F8, eax
0085BD0A: jmp 85BD13h
0085BD0C: and var_000000F8, 00000000h
0085BD13: lea eax, var_30
0085BD16: push eax
0085BD17: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085BD1C: mov eax, var_40
0085BD1F: mov var_000000D0, eax
0085BD25: push 00000002h
0085BD27: push var_2C
0085BD2A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BD2F: push [eax]
0085BD31: call 00410754h ; msvbvm60.dll.__vbaR8Str
0085BD36: fadd real8 ptr [00407148h]
0085BD3C: fstsw ax
0085BD3E: test al, 0Dh
0085BD40: jnz 0085C3F6h
0085BD46: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0085BD4B: mov var_0000009C, ax
0085BD52: mov var_000000A4, 00000002h
0085BD5C: push 00000010h
0085BD5E: pop eax
0085BD5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085BD64: lea esi, var_000000A4
0085BD6A: mov edi, esp
0085BD6C: movsd 
0085BD6D: movsd 
0085BD6E: movsd 
0085BD6F: movsd 
0085BD70: mov eax, var_000000D0
0085BD76: mov eax, [eax]
0085BD78: push var_000000D0
0085BD7E: call [eax+68h]
0085BD81: fclex 
0085BD83: mov var_000000D4, eax
0085BD89: cmp var_000000D4, 00000000h
0085BD90: jnl 85BDB2h
0085BD92: push 00000068h
0085BD94: push 004412DCh
0085BD99: push var_000000D0
0085BD9F: push var_000000D4
0085BDA5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085BDAA: mov var_000000FC, eax
0085BDB0: jmp 85BDB9h
0085BDB2: and var_000000FC, 00000000h
0085BDB9: lea eax, var_40
0085BDBC: push eax
0085BDBD: lea eax, var_3C
0085BDC0: push eax
0085BDC1: lea eax, var_38
0085BDC4: push eax
0085BDC5: push 00000003h
0085BDC7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085BDCC: add esp, 00000010h
0085BDCF: lea ecx, var_50
0085BDD2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085BDD7: jmp 0085BF65h
0085BDDC: mov var_04, 0000001Eh
0085BDE3: push 004412BCh
0085BDE8: push 00000000h
0085BDEA: push 00000007h
0085BDEC: mov eax, [ebp+08h]
0085BDEF: mov eax, [eax]
0085BDF1: push [ebp+08h]
0085BDF4: call [eax+00000320h]
0085BDFA: push eax
0085BDFB: lea eax, var_38
0085BDFE: push eax
0085BDFF: call 00410A84h ; Set (object)
0085BE04: push eax
0085BE05: lea eax, var_50
0085BE08: push eax
0085BE09: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085BE0E: add esp, 00000010h
0085BE11: push eax
0085BE12: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085BE17: push eax
0085BE18: lea eax, var_3C
0085BE1B: push eax
0085BE1C: call 00410A84h ; Set (object)
0085BE21: mov var_000000C8, eax
0085BE27: push var_2C
0085BE2A: lea eax, var_30
0085BE2D: push eax
0085BE2E: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085BE33: push 00000001h
0085BE35: push var_30
0085BE38: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BE3D: mov var_0000008C, eax
0085BE43: mov var_00000094, 00004008h
0085BE4D: lea eax, var_40
0085BE50: push eax
0085BE51: lea eax, var_00000094
0085BE57: push eax
0085BE58: mov eax, var_000000C8
0085BE5E: mov eax, [eax]
0085BE60: push var_000000C8
0085BE66: call [eax+24h]
0085BE69: fclex 
0085BE6B: mov var_000000CC, eax
0085BE71: cmp var_000000CC, 00000000h
0085BE78: jnl 85BE9Ah
0085BE7A: push 00000024h
0085BE7C: push 004412BCh
0085BE81: push var_000000C8
0085BE87: push var_000000CC
0085BE8D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085BE92: mov var_00000100, eax
0085BE98: jmp 85BEA1h
0085BE9A: and var_00000100, 00000000h
0085BEA1: lea eax, var_30
0085BEA4: push eax
0085BEA5: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085BEAA: mov eax, var_40
0085BEAD: mov var_000000D0, eax
0085BEB3: push 00000002h
0085BEB5: push var_2C
0085BEB8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085BEBD: push [eax]
0085BEBF: call 00410754h ; msvbvm60.dll.__vbaR8Str
0085BEC4: fadd real8 ptr [00401760h]
0085BECA: fstsw ax
0085BECC: test al, 0Dh
0085BECE: jnz 0085C3F6h
0085BED4: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0085BED9: mov var_0000009C, ax
0085BEE0: mov var_000000A4, 00000002h
0085BEEA: push 00000010h
0085BEEC: pop eax
0085BEED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085BEF2: lea esi, var_000000A4
0085BEF8: mov edi, esp
0085BEFA: movsd 
0085BEFB: movsd 
0085BEFC: movsd 
0085BEFD: movsd 
0085BEFE: mov eax, var_000000D0
0085BF04: mov eax, [eax]
0085BF06: push var_000000D0
0085BF0C: call [eax+68h]
0085BF0F: fclex 
0085BF11: mov var_000000D4, eax
0085BF17: cmp var_000000D4, 00000000h
0085BF1E: jnl 85BF40h
0085BF20: push 00000068h
0085BF22: push 004412DCh
0085BF27: push var_000000D0
0085BF2D: push var_000000D4
0085BF33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085BF38: mov var_00000104, eax
0085BF3E: jmp 85BF47h
0085BF40: and var_00000104, 00000000h
0085BF47: lea eax, var_40
0085BF4A: push eax
0085BF4B: lea eax, var_3C
0085BF4E: push eax
0085BF4F: lea eax, var_38
0085BF52: push eax
0085BF53: push 00000003h
0085BF55: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085BF5A: add esp, 00000010h
0085BF5D: lea ecx, var_50
0085BF60: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085BF65: jmp 0085C22Ch
0085BF6A: mov var_04, 00000020h
0085BF71: push var_000000D8
0085BF77: push 00456A2Ch ; cliWrn
0085BF7C: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BF81: test eax, eax
0085BF83: jnz 85BFB1h
0085BF85: mov var_04, 00000021h
0085BF8C: xor edx, edx
0085BF8E: lea ecx, var_34
0085BF91: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085BF96: lea eax, var_34
0085BF99: push eax
0085BF9A: push 0044F740h ; flood
0085BF9F: call 007CFFE9h
0085BFA4: lea ecx, var_34
0085BFA7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085BFAC: jmp 0085C22Ch
0085BFB1: mov var_04, 00000022h
0085BFB8: push var_000000D8
0085BFBE: push 00456A40h ; cliBlc
0085BFC3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085BFC8: test eax, eax
0085BFCA: jnz 85BFF8h
0085BFCC: mov var_04, 00000023h
0085BFD3: xor edx, edx
0085BFD5: lea ecx, var_34
0085BFD8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085BFDD: lea eax, var_34
0085BFE0: push eax
0085BFE1: push 0044F778h ; susp
0085BFE6: call 007CFFE9h
0085BFEB: lea ecx, var_34
0085BFEE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085BFF3: jmp 0085C22Ch
0085BFF8: mov var_04, 00000024h
0085BFFF: push var_000000D8
0085C005: push 00456A54h ; cliUnb
0085C00A: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C00F: test eax, eax
0085C011: jnz 85C03Fh
0085C013: mov var_04, 00000025h
0085C01A: xor edx, edx
0085C01C: lea ecx, var_34
0085C01F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085C024: lea eax, var_34
0085C027: push eax
0085C028: push 0044F7C0h ; unbl
0085C02D: call 007CFFE9h
0085C032: lea ecx, var_34
0085C035: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085C03A: jmp 0085C22Ch
0085C03F: mov var_04, 00000026h
0085C046: push var_000000D8
0085C04C: push 00456A68h ; cliKick
0085C051: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C056: test eax, eax
0085C058: jnz 85C0A6h
0085C05A: mov var_04, 00000027h
0085C061: push 00000001h
0085C063: push var_2C
0085C066: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C06B: push [eax]
0085C06D: call 004109DCh ; Val(arg_1)
0085C072: fstp real8 ptr var_000000C4
0085C078: push 00000002h
0085C07A: push var_2C
0085C07D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C082: push [eax]
0085C084: fld real8 ptr var_000000C4
0085C08A: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085C08F: push eax
0085C090: push 00000000h
0085C092: push var_2C
0085C095: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C09A: push [eax]
0085C09C: call 007A048Fh
0085C0A1: jmp 0085C22Ch
0085C0A6: mov var_04, 00000028h
0085C0AD: push var_000000D8
0085C0B3: push 00456A7Ch ; cliBan
0085C0B8: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C0BD: test eax, eax
0085C0BF: jnz 0085C16Fh
0085C0C5: mov var_04, 00000029h
0085C0CC: push 00000000h
0085C0CE: push 00000046h
0085C0D0: mov eax, [ebp+08h]
0085C0D3: mov eax, [eax]
0085C0D5: push [ebp+08h]
0085C0D8: call [eax+00000318h]
0085C0DE: push eax
0085C0DF: lea eax, var_38
0085C0E2: push eax
0085C0E3: call 00410A84h ; Set (object)
0085C0E8: push eax
0085C0E9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085C0EE: add esp, 0000000Ch
0085C0F1: lea ecx, var_38
0085C0F4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085C0F9: mov var_04, 0000002Ah
0085C100: push 00000001h
0085C102: push var_2C
0085C105: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C10A: push [eax]
0085C10C: push 00442BFCh
0085C111: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C116: test eax, eax
0085C118: jnz 85C139h
0085C11A: mov var_04, 0000002Bh
0085C121: mov esi, 0044BE54h ; Unknown
0085C126: push 00000001h
0085C128: push var_2C
0085C12B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C130: mov ecx, eax
0085C132: mov edx, esi
0085C134: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085C139: mov var_04, 0000002Dh
0085C140: push var_2C
0085C143: lea eax, var_30
0085C146: push eax
0085C147: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085C14C: push 00000001h
0085C14E: push var_30
0085C151: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C156: push eax
0085C157: push 0044F9F0h ; ban
0085C15C: call 007CFFE9h
0085C161: lea eax, var_30
0085C164: push eax
0085C165: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085C16A: jmp 0085C22Ch
0085C16F: mov var_04, 0000002Eh
0085C176: push var_000000D8
0085C17C: push 00000003h
0085C17E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085C183: mov edx, eax
0085C185: lea ecx, var_34
0085C188: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085C18D: push eax
0085C18E: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C193: neg eax
0085C195: sbb eax, eax
0085C197: inc eax
0085C198: neg eax
0085C19A: mov var_000000B8, ax
0085C1A1: lea ecx, var_34
0085C1A4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085C1A9: movsx eax, word ptr var_000000B8
0085C1B0: test eax, eax
0085C1B2: jz 85C1FDh
0085C1B4: mov var_04, 0000002Fh
0085C1BB: push 00000001h
0085C1BD: push var_2C
0085C1C0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C1C5: push [eax]
0085C1C7: call 004109DCh ; Val(arg_1)
0085C1CC: fstp real8 ptr var_000000C4
0085C1D2: push 00000002h
0085C1D4: push var_2C
0085C1D7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C1DC: push [eax]
0085C1DE: fld real8 ptr var_000000C4
0085C1E4: call 00410814h ; msvbvm60.dll.__vbaFpI4
0085C1E9: push eax
0085C1EA: push 00000000h
0085C1EC: push var_2C
0085C1EF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C1F4: push [eax]
0085C1F6: call 007A048Fh
0085C1FB: jmp 85C22Ch
0085C1FD: mov var_04, 00000031h
0085C204: push [008F2064h]
0085C20A: push 00442BFCh
0085C20F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085C214: test eax, eax
0085C216: jz 85C22Ch
0085C218: mov var_04, 00000032h
0085C21F: push var_24
0085C222: push 008F2060h
0085C227: call 007A058Ch
0085C22C: jmp 0085C34Eh
0085C231: mov var_04, 00000037h
0085C238: mov var_78, 80020004h
0085C23F: mov var_80, 0000000Ah
0085C246: mov var_68, 80020004h
0085C24D: mov var_70, 0000000Ah
0085C254: mov var_58, 80020004h
0085C25B: mov var_60, 0000000Ah
0085C262: call 004109CAh ; Err
0085C267: push eax
0085C268: lea eax, var_38
0085C26B: push eax
0085C26C: call 00410A84h ; Set (object)
0085C271: mov var_000000C8, eax
0085C277: lea eax, var_34
0085C27A: push eax
0085C27B: mov eax, var_000000C8
0085C281: mov eax, [eax]
0085C283: push var_000000C8
0085C289: call [eax+2Ch]
0085C28C: fclex 
0085C28E: mov var_000000CC, eax
0085C294: cmp var_000000CC, 00000000h
0085C29B: jnl 85C2BDh
0085C29D: push 0000002Ch
0085C29F: push 00441298h
0085C2A4: push var_000000C8
0085C2AA: push var_000000CC
0085C2B0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C2B5: mov var_00000108, eax
0085C2BB: jmp 85C2C4h
0085C2BD: and var_00000108, 00000000h
0085C2C4: mov eax, var_34
0085C2C7: mov var_000000F4, eax
0085C2CD: and var_34, 00000000h
0085C2D1: mov eax, var_000000F4
0085C2D7: mov var_48, eax
0085C2DA: mov var_50, 00000008h
0085C2E1: lea eax, var_80
0085C2E4: push eax
0085C2E5: lea eax, var_70
0085C2E8: push eax
0085C2E9: lea eax, var_60
0085C2EC: push eax
0085C2ED: push 00000000h
0085C2EF: lea eax, var_50
0085C2F2: push eax
0085C2F3: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0085C2F8: lea ecx, var_38
0085C2FB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085C300: lea eax, var_80
0085C303: push eax
0085C304: lea eax, var_70
0085C307: push eax
0085C308: lea eax, var_60
0085C30B: push eax
0085C30C: lea eax, var_50
0085C30F: push eax
0085C310: push 00000004h
0085C312: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085C317: add esp, 00000014h
0085C31A: mov var_04, 00000038h
0085C321: push 00000000h
0085C323: push 00000046h
0085C325: mov eax, [ebp+08h]
0085C328: mov eax, [eax]
0085C32A: push [ebp+08h]
0085C32D: call [eax+00000318h]
0085C333: push eax
0085C334: lea eax, var_38
0085C337: push eax
0085C338: call 00410A84h ; Set (object)
0085C33D: push eax
0085C33E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085C343: add esp, 0000000Ch
0085C346: lea ecx, var_38
0085C349: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085C34E: mov var_10, 00000000h
0085C355: wait 
0085C356: push 0085C3D7h
0085C35B: jmp 85C3ADh
0085C35D: lea eax, var_30
0085C360: push eax
0085C361: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085C366: lea ecx, var_34
0085C369: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085C36E: lea eax, var_40
0085C371: push eax
0085C372: lea eax, var_3C
0085C375: push eax
0085C376: lea eax, var_38
0085C379: push eax
0085C37A: push 00000003h
0085C37C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085C381: add esp, 00000010h
0085C384: lea eax, var_80
0085C387: push eax
0085C388: lea eax, var_70
0085C38B: push eax
0085C38C: lea eax, var_60
0085C38F: push eax
0085C390: lea eax, var_50
0085C393: push eax
0085C394: push 00000004h
0085C396: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085C39B: add esp, 00000014h
0085C39E: lea eax, var_00000084
0085C3A4: push eax
0085C3A5: push 00000000h
0085C3A7: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0085C3AC: ret 
End Sub

Private sub sckChat__85B341
0085B341: push ebp
0085B342: mov ebp, esp
0085B344: sub esp, 0000000Ch
0085B347: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085B34C: mov eax, fs:[00h]
0085B352: push eax
0085B353: mov fs:[00000000h], esp
0085B35A: push 00000034h
0085B35C: pop eax
0085B35D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B362: push ebx
0085B363: push esi
0085B364: push edi
0085B365: mov var_0C, esp
0085B368: mov var_08, 0040CA88h
0085B36F: mov eax, [ebp+08h]
0085B372: and eax, 00000001h
0085B375: mov var_04, eax
0085B378: mov eax, [ebp+08h]
0085B37B: and al, FEh
0085B37D: mov [ebp+08h], eax
0085B380: mov eax, [ebp+08h]
0085B383: mov eax, [eax]
0085B385: push [ebp+08h]
0085B388: call [eax+04h]
0085B38B: cmp [008F2AC8h], 00000000h
0085B392: jnz 85B3ACh
0085B394: push 008F2AC8h
0085B399: push 0041D3CCh
0085B39E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085B3A3: mov var_40, 008F2AC8h
0085B3AA: jmp 85B3B3h
0085B3AC: mov var_40, 008F2AC8h
0085B3B3: push 00000000h
0085B3B5: push 00000046h
0085B3B7: mov eax, var_40
0085B3BA: mov eax, [eax]
0085B3BC: mov ecx, var_40
0085B3BF: mov ecx, [ecx]
0085B3C1: mov ecx, [ecx]
0085B3C3: push eax
0085B3C4: call [ecx+00000318h]
0085B3CA: push eax
0085B3CB: lea eax, var_18
0085B3CE: push eax
0085B3CF: call 00410A84h ; Set (object)
0085B3D4: push eax
0085B3D5: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085B3DA: add esp, 0000000Ch
0085B3DD: lea ecx, var_18
0085B3E0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B3E5: cmp [008F2AC8h], 00000000h
0085B3EC: jnz 85B406h
0085B3EE: push 008F2AC8h
0085B3F3: push 0041D3CCh
0085B3F8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085B3FD: mov var_44, 008F2AC8h
0085B404: jmp 85B40Dh
0085B406: mov var_44, 008F2AC8h
0085B40D: push 004412BCh
0085B412: push 00000000h
0085B414: push 00000007h
0085B416: mov eax, var_44
0085B419: mov eax, [eax]
0085B41B: mov ecx, var_44
0085B41E: mov ecx, [ecx]
0085B420: mov ecx, [ecx]
0085B422: push eax
0085B423: call [ecx+00000320h]
0085B429: push eax
0085B42A: lea eax, var_18
0085B42D: push eax
0085B42E: call 00410A84h ; Set (object)
0085B433: push eax
0085B434: lea eax, var_2C
0085B437: push eax
0085B438: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085B43D: add esp, 00000010h
0085B440: push eax
0085B441: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085B446: push eax
0085B447: lea eax, var_1C
0085B44A: push eax
0085B44B: call 00410A84h ; Set (object)
0085B450: mov var_30, eax
0085B453: mov eax, var_30
0085B456: mov eax, [eax]
0085B458: push var_30
0085B45B: call [eax+2Ch]
0085B45E: fclex 
0085B460: mov var_34, eax
0085B463: cmp var_34, 00000000h
0085B467: jnl 85B480h
0085B469: push 0000002Ch
0085B46B: push 004412BCh
0085B470: push var_30
0085B473: push var_34
0085B476: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085B47B: mov var_48, eax
0085B47E: jmp 85B484h
0085B480: and var_48, 00000000h
0085B484: lea eax, var_1C
0085B487: push eax
0085B488: lea eax, var_18
0085B48B: push eax
0085B48C: push 00000002h
0085B48E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085B493: add esp, 0000000Ch
0085B496: lea ecx, var_2C
0085B499: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085B49E: call 007D22A1h
0085B4A3: push 008F2044h
0085B4A8: push 0044F9B8h ; kick
0085B4AD: call 007CFFE9h
0085B4B2: mov var_04, 00000000h
0085B4B9: push 0085B4DCh
0085B4BE: jmp 85B4DBh
0085B4C0: lea eax, var_1C
0085B4C3: push eax
0085B4C4: lea eax, var_18
0085B4C7: push eax
0085B4C8: push 00000002h
0085B4CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085B4CF: add esp, 0000000Ch
0085B4D2: lea ecx, var_2C
0085B4D5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085B4DA: ret 
End Sub

Private sub txtMain__85E72F
0085E72F: push ebp
0085E730: mov ebp, esp
0085E732: sub esp, 0000000Ch
0085E735: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085E73A: mov eax, fs:[00h]
0085E740: push eax
0085E741: mov fs:[00000000h], esp
0085E748: push 00000044h
0085E74A: pop eax
0085E74B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E750: push ebx
0085E751: push esi
0085E752: push edi
0085E753: mov var_0C, esp
0085E756: mov var_08, 0040CD90h
0085E75D: mov eax, [ebp+08h]
0085E760: and eax, 00000001h
0085E763: mov var_04, eax
0085E766: mov eax, [ebp+08h]
0085E769: and al, FEh
0085E76B: mov [ebp+08h], eax
0085E76E: mov eax, [ebp+08h]
0085E771: mov eax, [eax]
0085E773: push [ebp+08h]
0085E776: call [eax+04h]
0085E779: push 00000000h
0085E77B: push 00000000h
0085E77D: mov eax, [ebp+08h]
0085E780: mov eax, [eax]
0085E782: push [ebp+08h]
0085E785: call [eax+00000328h]
0085E78B: push eax
0085E78C: lea eax, var_1C
0085E78F: push eax
0085E790: call 00410A84h ; Set (object)
0085E795: push eax
0085E796: lea eax, var_2C
0085E799: push eax
0085E79A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085E79F: add esp, 00000010h
0085E7A2: push eax
0085E7A3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085E7A8: mov edx, eax
0085E7AA: lea ecx, var_18
0085E7AD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085E7B2: push eax
0085E7B3: call 0041098Eh ; Len(arg_1)
0085E7B8: xor ecx, ecx
0085E7BA: cmp eax, 00008000h
0085E7BF: setnle cl
0085E7C2: neg ecx
0085E7C4: mov var_50, cx
0085E7C8: lea ecx, var_18
0085E7CB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085E7D0: lea ecx, var_1C
0085E7D3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E7D8: lea ecx, var_2C
0085E7DB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085E7E0: movsx eax, word ptr var_50
0085E7E4: test eax, eax
0085E7E6: jz 85E82Ch
0085E7E8: and var_34, 00000000h
0085E7EC: mov var_3C, 00000008h
0085E7F3: push 00000010h
0085E7F5: pop eax
0085E7F6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E7FB: lea esi, var_3C
0085E7FE: mov edi, esp
0085E800: movsd 
0085E801: movsd 
0085E802: movsd 
0085E803: movsd 
0085E804: push 00000000h
0085E806: mov eax, [ebp+08h]
0085E809: mov eax, [eax]
0085E80B: push [ebp+08h]
0085E80E: call [eax+00000328h]
0085E814: push eax
0085E815: lea eax, var_1C
0085E818: push eax
0085E819: call 00410A84h ; Set (object)
0085E81E: push eax
0085E81F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085E824: lea ecx, var_1C
0085E827: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E82C: mov var_04, 00000000h
0085E833: push 0085E854h
0085E838: jmp 85E853h
0085E83A: lea ecx, var_18
0085E83D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085E842: lea ecx, var_1C
0085E845: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E84A: lea ecx, var_2C
0085E84D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085E852: ret 
End Sub

Private sub txtMain__85E873
0085E873: push ebp
0085E874: mov ebp, esp
0085E876: sub esp, 0000000Ch
0085E879: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085E87E: mov eax, fs:[00h]
0085E884: push eax
0085E885: mov fs:[00000000h], esp
0085E88C: push 00000054h
0085E88E: pop eax
0085E88F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E894: push ebx
0085E895: push esi
0085E896: push edi
0085E897: mov var_0C, esp
0085E89A: mov var_08, 0040CDA0h
0085E8A1: mov eax, [ebp+08h]
0085E8A4: and eax, 00000001h
0085E8A7: mov var_04, eax
0085E8AA: mov eax, [ebp+08h]
0085E8AD: and al, FEh
0085E8AF: mov [ebp+08h], eax
0085E8B2: mov eax, [ebp+08h]
0085E8B5: mov eax, [eax]
0085E8B7: push [ebp+08h]
0085E8BA: call [eax+04h]
0085E8BD: mov eax, [ebp+0Ch]
0085E8C0: cmp word ptr [eax], 0002h
0085E8C4: jnz 0085E99Eh
0085E8CA: mov var_50, 80020004h
0085E8D1: mov var_58, 0000000Ah
0085E8D8: mov var_40, 80020004h
0085E8DF: mov var_48, 0000000Ah
0085E8E6: mov var_30, 80020004h
0085E8ED: mov var_38, 0000000Ah
0085E8F4: mov var_20, 80020004h
0085E8FB: mov var_28, 0000000Ah
0085E902: push 00000010h
0085E904: pop eax
0085E905: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E90A: lea esi, var_58
0085E90D: mov edi, esp
0085E90F: movsd 
0085E910: movsd 
0085E911: movsd 
0085E912: movsd 
0085E913: push 00000010h
0085E915: pop eax
0085E916: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E91B: lea esi, var_48
0085E91E: mov edi, esp
0085E920: movsd 
0085E921: movsd 
0085E922: movsd 
0085E923: movsd 
0085E924: push 00000010h
0085E926: pop eax
0085E927: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E92C: lea esi, var_38
0085E92F: mov edi, esp
0085E931: movsd 
0085E932: movsd 
0085E933: movsd 
0085E934: movsd 
0085E935: push 00000010h
0085E937: pop eax
0085E938: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E93D: lea esi, var_28
0085E940: mov edi, esp
0085E942: movsd 
0085E943: movsd 
0085E944: movsd 
0085E945: movsd 
0085E946: mov eax, [ebp+08h]
0085E949: mov eax, [eax]
0085E94B: push [ebp+08h]
0085E94E: call [eax+0000030Ch]
0085E954: push eax
0085E955: lea eax, var_18
0085E958: push eax
0085E959: call 00410A84h ; Set (object)
0085E95E: push eax
0085E95F: mov eax, [ebp+08h]
0085E962: mov eax, [eax]
0085E964: push [ebp+08h]
0085E967: call [eax+000002BCh]
0085E96D: fclex 
0085E96F: mov var_5C, eax
0085E972: cmp var_5C, 00000000h
0085E976: jnl 85E992h
0085E978: push 000002BCh
0085E97D: push 00447ED4h
0085E982: push [ebp+08h]
0085E985: push var_5C
0085E988: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E98D: mov var_68, eax
0085E990: jmp 85E996h
0085E992: and var_68, 00000000h
0085E996: lea ecx, var_18
0085E999: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E99E: mov var_04, 00000000h
0085E9A5: push 0085E9B6h
0085E9AA: jmp 85E9B5h
0085E9AC: lea ecx, var_18
0085E9AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E9B4: ret 
End Sub

Private sub mnuChat__85AF5D
0085AF5D: push ebp
0085AF5E: mov ebp, esp
0085AF60: sub esp, 0000000Ch
0085AF63: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085AF68: mov eax, fs:[00h]
0085AF6E: push eax
0085AF6F: mov fs:[00000000h], esp
0085AF76: mov eax, 000000B8h
0085AF7B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085AF80: push ebx
0085AF81: push esi
0085AF82: push edi
0085AF83: mov var_0C, esp
0085AF86: mov var_08, 0040CA78h
0085AF8D: mov eax, [ebp+08h]
0085AF90: and eax, 00000001h
0085AF93: mov var_04, eax
0085AF96: mov eax, [ebp+08h]
0085AF99: and al, FEh
0085AF9B: mov [ebp+08h], eax
0085AF9E: mov eax, [ebp+08h]
0085AFA1: mov eax, [eax]
0085AFA3: push [ebp+08h]
0085AFA6: call [eax+04h]
0085AFA9: mov eax, [ebp+0Ch]
0085AFAC: mov ax, [eax]
0085AFAF: mov var_000000B0, ax
0085AFB6: movsx eax, word ptr var_000000B0
0085AFBD: mov var_000000C0, eax
0085AFC3: cmp var_000000C0, 00000000h
0085AFCA: jz 85AFDEh
0085AFCC: cmp var_000000C0, 00000002h
0085AFD3: jz 0085B28Bh
0085AFD9: jmp 0085B2D2h
0085AFDE: cmp [008F529Ch], 00000000h
0085AFE5: jnz 85B002h
0085AFE7: push 008F529Ch
0085AFEC: push 00440F2Ch
0085AFF1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085AFF6: mov var_000000C4, 008F529Ch
0085B000: jmp 85B00Ch
0085B002: mov var_000000C4, 008F529Ch
0085B00C: mov eax, var_000000C4
0085B012: mov eax, [eax]
0085B014: mov var_000000A0, eax
0085B01A: lea eax, var_28
0085B01D: push eax
0085B01E: mov eax, var_000000A0
0085B024: mov eax, [eax]
0085B026: push var_000000A0
0085B02C: call [eax+14h]
0085B02F: fclex 
0085B031: mov var_000000A4, eax
0085B037: cmp var_000000A4, 00000000h
0085B03E: jnl 85B060h
0085B040: push 00000014h
0085B042: push 00440F1Ch
0085B047: push var_000000A0
0085B04D: push var_000000A4
0085B053: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085B058: mov var_000000C8, eax
0085B05E: jmp 85B067h
0085B060: and var_000000C8, 00000000h
0085B067: mov eax, var_28
0085B06A: mov var_000000A8, eax
0085B070: lea eax, var_1C
0085B073: push eax
0085B074: mov eax, var_000000A8
0085B07A: mov eax, [eax]
0085B07C: push var_000000A8
0085B082: call [eax+50h]
0085B085: fclex 
0085B087: mov var_000000AC, eax
0085B08D: cmp var_000000AC, 00000000h
0085B094: jnl 85B0B6h
0085B096: push 00000050h
0085B098: push 00440F3Ch
0085B09D: push var_000000A8
0085B0A3: push var_000000AC
0085B0A9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085B0AE: mov var_000000CC, eax
0085B0B4: jmp 85B0BDh
0085B0B6: and var_000000CC, 00000000h
0085B0BD: push 00000000h
0085B0BF: push 00000000h
0085B0C1: push var_1C
0085B0C4: push 00000000h
0085B0C6: push 00442BFCh
0085B0CB: call 007CCC4Dh
0085B0D0: mov edx, eax
0085B0D2: lea ecx, var_18
0085B0D5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B0DA: lea ecx, var_1C
0085B0DD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B0E2: lea ecx, var_28
0085B0E5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B0EA: and word ptr var_0000009C, 0000h
0085B0F2: mov edx, 00445AC4h ; frmMain
0085B0F7: lea ecx, var_20
0085B0FA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085B0FF: mov edx, 00445A90h ; 10012C02021D0E13092812
0085B104: lea ecx, var_1C
0085B107: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085B10C: lea eax, var_0000009C
0085B112: push eax
0085B113: lea eax, var_20
0085B116: push eax
0085B117: lea eax, var_1C
0085B11A: push eax
0085B11B: call 007AA622h
0085B120: mov edx, eax
0085B122: lea ecx, var_24
0085B125: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B12A: mov var_60, 80020004h
0085B131: mov var_68, 0000000Ah
0085B138: mov var_50, 80020004h
0085B13F: mov var_58, 0000000Ah
0085B146: mov eax, var_24
0085B149: mov var_000000BC, eax
0085B14F: and var_24, 00000000h
0085B153: mov eax, var_000000BC
0085B159: mov var_40, eax
0085B15C: mov var_48, 00000008h
0085B163: mov var_70, 004569A4h ; Save in rich text format?
0085B16A: mov var_78, 00000008h
0085B171: lea edx, var_78
0085B174: lea ecx, var_38
0085B177: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085B17C: lea eax, var_68
0085B17F: push eax
0085B180: lea eax, var_58
0085B183: push eax
0085B184: lea eax, var_48
0085B187: push eax
0085B188: push 00000004h
0085B18A: lea eax, var_38
0085B18D: push eax
0085B18E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0085B193: sub eax, 00000006h
0085B196: neg eax
0085B198: sbb eax, eax
0085B19A: inc eax
0085B19B: neg eax
0085B19D: mov var_000000A0, ax
0085B1A4: lea eax, var_24
0085B1A7: push eax
0085B1A8: lea eax, var_20
0085B1AB: push eax
0085B1AC: lea eax, var_1C
0085B1AF: push eax
0085B1B0: push 00000003h
0085B1B2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085B1B7: add esp, 00000010h
0085B1BA: lea eax, var_68
0085B1BD: push eax
0085B1BE: lea eax, var_58
0085B1C1: push eax
0085B1C2: lea eax, var_48
0085B1C5: push eax
0085B1C6: lea eax, var_38
0085B1C9: push eax
0085B1CA: push 00000004h
0085B1CC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085B1D1: add esp, 00000014h
0085B1D4: movsx eax, word ptr var_000000A0
0085B1DB: test eax, eax
0085B1DD: jz 85B22Ch
0085B1DF: lea eax, var_18
0085B1E2: mov var_70, eax
0085B1E5: mov var_78, 00004008h
0085B1EC: push 00000010h
0085B1EE: pop eax
0085B1EF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B1F4: lea esi, var_78
0085B1F7: mov edi, esp
0085B1F9: movsd 
0085B1FA: movsd 
0085B1FB: movsd 
0085B1FC: movsd 
0085B1FD: push 00000001h
0085B1FF: push 00000026h
0085B201: mov eax, [ebp+08h]
0085B204: mov eax, [eax]
0085B206: push [ebp+08h]
0085B209: call [eax+00000328h]
0085B20F: push eax
0085B210: lea eax, var_28
0085B213: push eax
0085B214: call 00410A84h ; Set (object)
0085B219: push eax
0085B21A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085B21F: add esp, 0000001Ch
0085B222: lea ecx, var_28
0085B225: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B22A: jmp 85B289h
0085B22C: push 00000000h
0085B22E: push FFFFFDFBh
0085B233: mov eax, [ebp+08h]
0085B236: mov eax, [eax]
0085B238: push [ebp+08h]
0085B23B: call [eax+00000328h]
0085B241: push eax
0085B242: lea eax, var_28
0085B245: push eax
0085B246: call 00410A84h ; Set (object)
0085B24B: push eax
0085B24C: lea eax, var_38
0085B24F: push eax
0085B250: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085B255: add esp, 00000010h
0085B258: push eax
0085B259: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085B25E: mov edx, eax
0085B260: lea ecx, var_1C
0085B263: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085B268: push eax
0085B269: push var_18
0085B26C: call 007D2577h
0085B271: lea ecx, var_1C
0085B274: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085B279: lea ecx, var_28
0085B27C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B281: lea ecx, var_38
0085B284: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085B289: jmp 85B2D2h
0085B28B: and var_70, 00000000h
0085B28F: mov var_78, 00000008h
0085B296: push 00000010h
0085B298: pop eax
0085B299: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085B29E: lea esi, var_78
0085B2A1: mov edi, esp
0085B2A3: movsd 
0085B2A4: movsd 
0085B2A5: movsd 
0085B2A6: movsd 
0085B2A7: push FFFFFDFBh
0085B2AC: mov eax, [ebp+08h]
0085B2AF: mov eax, [eax]
0085B2B1: push [ebp+08h]
0085B2B4: call [eax+00000328h]
0085B2BA: push eax
0085B2BB: lea eax, var_28
0085B2BE: push eax
0085B2BF: call 00410A84h ; Set (object)
0085B2C4: push eax
0085B2C5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085B2CA: lea ecx, var_28
0085B2CD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B2D2: mov var_04, 00000000h
0085B2D9: push 0085B322h
0085B2DE: jmp 85B319h
0085B2E0: lea eax, var_24
0085B2E3: push eax
0085B2E4: lea eax, var_20
0085B2E7: push eax
0085B2E8: lea eax, var_1C
0085B2EB: push eax
0085B2EC: push 00000003h
0085B2EE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085B2F3: add esp, 00000010h
0085B2F6: lea ecx, var_28
0085B2F9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085B2FE: lea eax, var_68
0085B301: push eax
0085B302: lea eax, var_58
0085B305: push eax
0085B306: lea eax, var_48
0085B309: push eax
0085B30A: lea eax, var_38
0085B30D: push eax
0085B30E: push 00000004h
0085B310: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085B315: add esp, 00000014h
0085B318: ret 
End Sub

Private sub Form__85AB95
0085AB95: push ebp
0085AB96: mov ebp, esp
0085AB98: sub esp, 0000000Ch
0085AB9B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085ABA0: mov eax, fs:[00h]
0085ABA6: push eax
0085ABA7: mov fs:[00000000h], esp
0085ABAE: push 0000005Ch
0085ABB0: pop eax
0085ABB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085ABB6: push ebx
0085ABB7: push esi
0085ABB8: push edi
0085ABB9: mov var_0C, esp
0085ABBC: mov var_08, 0040CA50h
0085ABC3: mov eax, [ebp+08h]
0085ABC6: and eax, 00000001h
0085ABC9: mov var_04, eax
0085ABCC: mov eax, [ebp+08h]
0085ABCF: and al, FEh
0085ABD1: mov [ebp+08h], eax
0085ABD4: mov eax, [ebp+08h]
0085ABD7: mov eax, [eax]
0085ABD9: push [ebp+08h]
0085ABDC: call [eax+04h]
0085ABDF: push 00000001h
0085ABE1: push 00000001h
0085ABE3: push 00000001h
0085ABE5: push 00000008h
0085ABE7: push 008F2048h
0085ABEC: push 00000004h
0085ABEE: push 00000180h
0085ABF3: call 0041078Ah ; ReDim Preserve
0085ABF8: add esp, 0000001Ch
0085ABFB: or word ptr [008F204Eh], FFFFh
0085AC03: push 00000001h
0085AC05: push 00000001h
0085AC07: push 00000001h
0085AC09: push 0044E1D4h
0085AC0E: push 008F2050h
0085AC13: push 00000004h
0085AC15: push 00000440h
0085AC1A: call 0041078Ah ; ReDim Preserve
0085AC1F: add esp, 0000001Ch
0085AC22: push 00000001h
0085AC24: push 00000001h
0085AC26: push 00000001h
0085AC28: push 00000008h
0085AC2A: push 008F2054h
0085AC2F: push 00000004h
0085AC31: push 00000180h
0085AC36: call 0041078Ah ; ReDim Preserve
0085AC3B: add esp, 0000001Ch
0085AC3E: push 00000000h
0085AC40: push FFFFFDFDh
0085AC45: mov eax, [ebp+08h]
0085AC48: mov eax, [eax]
0085AC4A: push [ebp+08h]
0085AC4D: call [eax+00000328h]
0085AC53: push eax
0085AC54: lea eax, var_18
0085AC57: push eax
0085AC58: call 00410A84h ; Set (object)
0085AC5D: push eax
0085AC5E: lea eax, var_28
0085AC61: push eax
0085AC62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085AC67: add esp, 00000010h
0085AC6A: push 00000020h
0085AC6C: push FFFFFFECh
0085AC6E: lea eax, var_28
0085AC71: push eax
0085AC72: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085AC77: push eax
0085AC78: call 00440104h
0085AC7D: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
0085AC82: lea ecx, var_18
0085AC85: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AC8A: lea ecx, var_28
0085AC8D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085AC92: push 00000000h
0085AC94: push FFFFFDFDh
0085AC99: mov eax, [ebp+08h]
0085AC9C: mov eax, [eax]
0085AC9E: push [ebp+08h]
0085ACA1: call [eax+00000314h]
0085ACA7: push eax
0085ACA8: lea eax, var_18
0085ACAB: push eax
0085ACAC: call 00410A84h ; Set (object)
0085ACB1: push eax
0085ACB2: lea eax, var_28
0085ACB5: push eax
0085ACB6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085ACBB: add esp, 00000010h
0085ACBE: push 00000020h
0085ACC0: push FFFFFFECh
0085ACC2: lea eax, var_28
0085ACC5: push eax
0085ACC6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085ACCB: push eax
0085ACCC: call 00440104h
0085ACD1: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
0085ACD6: lea ecx, var_18
0085ACD9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085ACDE: lea ecx, var_28
0085ACE1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085ACE6: push 00000000h
0085ACE8: push 00000046h
0085ACEA: mov eax, [ebp+08h]
0085ACED: mov eax, [eax]
0085ACEF: push [ebp+08h]
0085ACF2: call [eax+00000318h]
0085ACF8: push eax
0085ACF9: lea eax, var_18
0085ACFC: push eax
0085ACFD: call 00410A84h ; Set (object)
0085AD02: push eax
0085AD03: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085AD08: add esp, 0000000Ch
0085AD0B: lea ecx, var_18
0085AD0E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AD13: mov var_30, 0043D3C4h ; blackshades.ru
0085AD1A: mov var_38, 00000008h
0085AD21: mov var_50, 00002019h
0085AD28: mov var_58, 00000002h
0085AD2F: push 00000010h
0085AD31: pop eax
0085AD32: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085AD37: lea esi, var_38
0085AD3A: mov edi, esp
0085AD3C: movsd 
0085AD3D: movsd 
0085AD3E: movsd 
0085AD3F: movsd 
0085AD40: push 00000010h
0085AD42: pop eax
0085AD43: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085AD48: lea esi, var_58
0085AD4B: mov edi, esp
0085AD4D: movsd 
0085AD4E: movsd 
0085AD4F: movsd 
0085AD50: movsd 
0085AD51: push 00000002h
0085AD53: push 00000040h
0085AD55: mov eax, [ebp+08h]
0085AD58: mov eax, [eax]
0085AD5A: push [ebp+08h]
0085AD5D: call [eax+00000318h]
0085AD63: push eax
0085AD64: lea eax, var_18
0085AD67: push eax
0085AD68: call 00410A84h ; Set (object)
0085AD6D: push eax
0085AD6E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085AD73: add esp, 0000002Ch
0085AD76: lea ecx, var_18
0085AD79: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AD7E: mov var_04, 00000000h
0085AD85: push 0085AD9Eh
0085AD8A: jmp 85AD9Dh
0085AD8C: lea ecx, var_18
0085AD8F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AD94: lea ecx, var_28
0085AD97: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085AD9C: ret 
End Sub

Private sub Form__85D96C
0085D96C: push ebp
0085D96D: mov ebp, esp
0085D96F: sub esp, 00000018h
0085D972: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085D977: mov eax, fs:[00h]
0085D97D: push eax
0085D97E: mov fs:[00000000h], esp
0085D985: mov eax, 00000154h
0085D98A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085D98F: push ebx
0085D990: push esi
0085D991: push edi
0085D992: mov var_18, esp
0085D995: mov var_14, 0040CD28h
0085D99C: mov eax, [ebp+08h]
0085D99F: and eax, 00000001h
0085D9A2: mov var_10, eax
0085D9A5: mov eax, [ebp+08h]
0085D9A8: and al, FEh
0085D9AA: mov [ebp+08h], eax
0085D9AD: mov var_0C, 00000000h
0085D9B4: mov eax, [ebp+08h]
0085D9B7: mov eax, [eax]
0085D9B9: push [ebp+08h]
0085D9BC: call [eax+04h]
0085D9BF: mov var_04, 00000001h
0085D9C6: mov var_04, 00000002h
0085D9CD: push FFFFFFFFh
0085D9CF: call 00410A60h ; On Error ...
0085D9D4: mov var_04, 00000003h
0085D9DB: lea eax, var_0000010C
0085D9E1: push eax
0085D9E2: mov eax, [ebp+08h]
0085D9E5: mov eax, [eax]
0085D9E7: push [ebp+08h]
0085D9EA: call [eax+00000080h]
0085D9F0: fclex 
0085D9F2: mov var_00000114, eax
0085D9F8: cmp var_00000114, 00000000h
0085D9FF: jnl 85DA21h
0085DA01: push 00000080h
0085DA06: push 00447ED4h
0085DA0B: push [ebp+08h]
0085DA0E: push var_00000114
0085DA14: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085DA19: mov var_00000138, eax
0085DA1F: jmp 85DA28h
0085DA21: and var_00000138, 00000000h
0085DA28: fld real4 ptr var_0000010C
0085DA2E: fsub real4 ptr [0040CD7Ch]
0085DA34: fstp real4 ptr var_00000090
0085DA3A: fstsw ax
0085DA3C: test al, 0Dh
0085DA3E: jnz 0085E65Ch
0085DA44: mov var_00000098, 00000004h
0085DA4E: push 00000010h
0085DA50: pop eax
0085DA51: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DA56: lea esi, var_00000098
0085DA5C: mov edi, esp
0085DA5E: movsd 
0085DA5F: movsd 
0085DA60: movsd 
0085DA61: movsd 
0085DA62: push 80010005h
0085DA67: mov eax, [ebp+08h]
0085DA6A: mov eax, [eax]
0085DA6C: push [ebp+08h]
0085DA6F: call [eax+00000324h]
0085DA75: push eax
0085DA76: lea eax, var_24
0085DA79: push eax
0085DA7A: call 00410A84h ; Set (object)
0085DA7F: push eax
0085DA80: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085DA85: lea ecx, var_24
0085DA88: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085DA8D: mov var_04, 00000004h
0085DA94: push 00000000h
0085DA96: push 80010005h
0085DA9B: mov eax, [ebp+08h]
0085DA9E: mov eax, [eax]
0085DAA0: push [ebp+08h]
0085DAA3: call [eax+00000320h]
0085DAA9: push eax
0085DAAA: lea eax, var_28
0085DAAD: push eax
0085DAAE: call 00410A84h ; Set (object)
0085DAB3: push eax
0085DAB4: lea eax, var_58
0085DAB7: push eax
0085DAB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DABD: add esp, 00000010h
0085DAC0: push 00000000h
0085DAC2: push 80010006h
0085DAC7: mov eax, [ebp+08h]
0085DACA: mov eax, [eax]
0085DACC: push [ebp+08h]
0085DACF: call [eax+00000314h]
0085DAD5: push eax
0085DAD6: lea eax, var_2C
0085DAD9: push eax
0085DADA: call 00410A84h ; Set (object)
0085DADF: push eax
0085DAE0: lea eax, var_68
0085DAE3: push eax
0085DAE4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DAE9: add esp, 00000010h
0085DAEC: push 00000000h
0085DAEE: push 80010006h
0085DAF3: mov eax, [ebp+08h]
0085DAF6: mov eax, [eax]
0085DAF8: push [ebp+08h]
0085DAFB: call [eax+00000324h]
0085DB01: push eax
0085DB02: lea eax, var_30
0085DB05: push eax
0085DB06: call 00410A84h ; Set (object)
0085DB0B: push eax
0085DB0C: lea eax, var_78
0085DB0F: push eax
0085DB10: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DB15: add esp, 00000010h
0085DB18: fldz 
0085DB1A: fstp real4 ptr var_00000090
0085DB20: mov var_00000098, 00000004h
0085DB2A: push 00000000h
0085DB2C: push 80010006h
0085DB31: mov eax, [ebp+08h]
0085DB34: mov eax, [eax]
0085DB36: push [ebp+08h]
0085DB39: call [eax+00000324h]
0085DB3F: push eax
0085DB40: lea eax, var_24
0085DB43: push eax
0085DB44: call 00410A84h ; Set (object)
0085DB49: push eax
0085DB4A: lea eax, var_48
0085DB4D: push eax
0085DB4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DB53: add esp, 00000010h
0085DB56: push eax
0085DB57: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DB5C: fstp real4 ptr var_000000B0
0085DB62: mov var_000000B8, 00000004h
0085DB6C: lea eax, var_0000010C
0085DB72: push eax
0085DB73: mov eax, [ebp+08h]
0085DB76: mov eax, [eax]
0085DB78: push [ebp+08h]
0085DB7B: call [eax+00000080h]
0085DB81: fclex 
0085DB83: mov var_00000114, eax
0085DB89: cmp var_00000114, 00000000h
0085DB90: jnl 85DBB2h
0085DB92: push 00000080h
0085DB97: push 00447ED4h
0085DB9C: push [ebp+08h]
0085DB9F: push var_00000114
0085DBA5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085DBAA: mov var_0000013C, eax
0085DBB0: jmp 85DBB9h
0085DBB2: and var_0000013C, 00000000h
0085DBB9: lea eax, var_58
0085DBBC: push eax
0085DBBD: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DBC2: fsubr real4 ptr var_0000010C
0085DBC8: fsub real4 ptr [00402BB8h]
0085DBCE: fstp real4 ptr var_000000D0
0085DBD4: fstsw ax
0085DBD6: test al, 0Dh
0085DBD8: jnz 0085E65Ch
0085DBDE: mov var_000000D8, 00000004h
0085DBE8: lea eax, var_00000110
0085DBEE: push eax
0085DBEF: mov eax, [ebp+08h]
0085DBF2: mov eax, [eax]
0085DBF4: push [ebp+08h]
0085DBF7: call [eax+00000088h]
0085DBFD: fclex 
0085DBFF: mov var_00000118, eax
0085DC05: cmp var_00000118, 00000000h
0085DC0C: jnl 85DC2Eh
0085DC0E: push 00000088h
0085DC13: push 00447ED4h
0085DC18: push [ebp+08h]
0085DC1B: push var_00000118
0085DC21: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085DC26: mov var_00000140, eax
0085DC2C: jmp 85DC35h
0085DC2E: and var_00000140, 00000000h
0085DC35: lea eax, var_68
0085DC38: push eax
0085DC39: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DC3E: fsubr real4 ptr var_00000110
0085DC44: fsub real4 ptr [00402B70h]
0085DC4A: fstsw ax
0085DC4C: test al, 0Dh
0085DC4E: jnz 0085E65Ch
0085DC54: fstp real4 ptr var_00000144
0085DC5A: lea eax, var_78
0085DC5D: push eax
0085DC5E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DC63: fsubr real4 ptr var_00000144
0085DC69: fstp real4 ptr var_000000F0
0085DC6F: fstsw ax
0085DC71: test al, 0Dh
0085DC73: jnz 0085E65Ch
0085DC79: mov var_000000F8, 00000004h
0085DC83: push 00000010h
0085DC85: pop eax
0085DC86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DC8B: lea esi, var_00000098
0085DC91: mov edi, esp
0085DC93: movsd 
0085DC94: movsd 
0085DC95: movsd 
0085DC96: movsd 
0085DC97: push 00000010h
0085DC99: pop eax
0085DC9A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DC9F: lea esi, var_000000B8
0085DCA5: mov edi, esp
0085DCA7: movsd 
0085DCA8: movsd 
0085DCA9: movsd 
0085DCAA: movsd 
0085DCAB: push 00000010h
0085DCAD: pop eax
0085DCAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DCB3: lea esi, var_000000D8
0085DCB9: mov edi, esp
0085DCBB: movsd 
0085DCBC: movsd 
0085DCBD: movsd 
0085DCBE: movsd 
0085DCBF: push 00000010h
0085DCC1: pop eax
0085DCC2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DCC7: lea esi, var_000000F8
0085DCCD: mov edi, esp
0085DCCF: movsd 
0085DCD0: movsd 
0085DCD1: movsd 
0085DCD2: movsd 
0085DCD3: push 00000004h
0085DCD5: push 80011002h
0085DCDA: mov eax, [ebp+08h]
0085DCDD: mov eax, [eax]
0085DCDF: push [ebp+08h]
0085DCE2: call [eax+00000328h]
0085DCE8: push eax
0085DCE9: lea eax, var_34
0085DCEC: push eax
0085DCED: call 00410A84h ; Set (object)
0085DCF2: push eax
0085DCF3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085DCF8: add esp, 0000004Ch
0085DCFB: lea eax, var_34
0085DCFE: push eax
0085DCFF: lea eax, var_30
0085DD02: push eax
0085DD03: lea eax, var_2C
0085DD06: push eax
0085DD07: lea eax, var_28
0085DD0A: push eax
0085DD0B: lea eax, var_24
0085DD0E: push eax
0085DD0F: push 00000005h
0085DD11: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085DD16: add esp, 00000018h
0085DD19: lea eax, var_78
0085DD1C: push eax
0085DD1D: lea eax, var_68
0085DD20: push eax
0085DD21: lea eax, var_58
0085DD24: push eax
0085DD25: lea eax, var_48
0085DD28: push eax
0085DD29: push 00000004h
0085DD2B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085DD30: add esp, 00000014h
0085DD33: mov var_04, 00000005h
0085DD3A: push 00000000h
0085DD3C: push 80010006h
0085DD41: mov eax, [ebp+08h]
0085DD44: mov eax, [eax]
0085DD46: push [ebp+08h]
0085DD49: call [eax+00000314h]
0085DD4F: push eax
0085DD50: lea eax, var_30
0085DD53: push eax
0085DD54: call 00410A84h ; Set (object)
0085DD59: push eax
0085DD5A: lea eax, var_78
0085DD5D: push eax
0085DD5E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DD63: add esp, 00000010h
0085DD66: push 00000000h
0085DD68: push 80010006h
0085DD6D: mov eax, [ebp+08h]
0085DD70: mov eax, [eax]
0085DD72: push [ebp+08h]
0085DD75: call [eax+00000324h]
0085DD7B: push eax
0085DD7C: lea eax, var_34
0085DD7F: push eax
0085DD80: call 00410A84h ; Set (object)
0085DD85: push eax
0085DD86: lea eax, var_00000088
0085DD8C: push eax
0085DD8D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DD92: add esp, 00000010h
0085DD95: push 00000000h
0085DD97: push 80010005h
0085DD9C: mov eax, [ebp+08h]
0085DD9F: mov eax, [eax]
0085DDA1: push [ebp+08h]
0085DDA4: call [eax+00000328h]
0085DDAA: push eax
0085DDAB: lea eax, var_24
0085DDAE: push eax
0085DDAF: call 00410A84h ; Set (object)
0085DDB4: push eax
0085DDB5: lea eax, var_48
0085DDB8: push eax
0085DDB9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DDBE: add esp, 00000010h
0085DDC1: push eax
0085DDC2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DDC7: fadd real4 ptr [00402B68h]
0085DDCD: fstp real4 ptr var_00000090
0085DDD3: fstsw ax
0085DDD5: test al, 0Dh
0085DDD7: jnz 0085E65Ch
0085DDDD: mov var_00000098, 00000004h
0085DDE7: push 00000000h
0085DDE9: push 80010006h
0085DDEE: mov eax, [ebp+08h]
0085DDF1: mov eax, [eax]
0085DDF3: push [ebp+08h]
0085DDF6: call [eax+00000324h]
0085DDFC: push eax
0085DDFD: lea eax, var_28
0085DE00: push eax
0085DE01: call 00410A84h ; Set (object)
0085DE06: push eax
0085DE07: lea eax, var_58
0085DE0A: push eax
0085DE0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DE10: add esp, 00000010h
0085DE13: push eax
0085DE14: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DE19: fstp real4 ptr var_000000B0
0085DE1F: mov var_000000B8, 00000004h
0085DE29: push 00000000h
0085DE2B: push 80010005h
0085DE30: mov eax, [ebp+08h]
0085DE33: mov eax, [eax]
0085DE35: push [ebp+08h]
0085DE38: call [eax+00000320h]
0085DE3E: push eax
0085DE3F: lea eax, var_2C
0085DE42: push eax
0085DE43: call 00410A84h ; Set (object)
0085DE48: push eax
0085DE49: lea eax, var_68
0085DE4C: push eax
0085DE4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DE52: add esp, 00000010h
0085DE55: push eax
0085DE56: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DE5B: fstp real4 ptr var_000000D0
0085DE61: mov var_000000D8, 00000004h
0085DE6B: lea eax, var_0000010C
0085DE71: push eax
0085DE72: mov eax, [ebp+08h]
0085DE75: mov eax, [eax]
0085DE77: push [ebp+08h]
0085DE7A: call [eax+00000088h]
0085DE80: fclex 
0085DE82: mov var_00000114, eax
0085DE88: cmp var_00000114, 00000000h
0085DE8F: jnl 85DEB1h
0085DE91: push 00000088h
0085DE96: push 00447ED4h
0085DE9B: push [ebp+08h]
0085DE9E: push var_00000114
0085DEA4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085DEA9: mov var_00000148, eax
0085DEAF: jmp 85DEB8h
0085DEB1: and var_00000148, 00000000h
0085DEB8: lea eax, var_78
0085DEBB: push eax
0085DEBC: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DEC1: fsubr real4 ptr var_0000010C
0085DEC7: fsub real4 ptr [00402B70h]
0085DECD: fstsw ax
0085DECF: test al, 0Dh
0085DED1: jnz 0085E65Ch
0085DED7: fstp real4 ptr var_0000014C
0085DEDD: lea eax, var_00000088
0085DEE3: push eax
0085DEE4: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085DEE9: fsubr real4 ptr var_0000014C
0085DEEF: fstp real4 ptr var_000000F0
0085DEF5: fstsw ax
0085DEF7: test al, 0Dh
0085DEF9: jnz 0085E65Ch
0085DEFF: mov var_000000F8, 00000004h
0085DF09: push 00000010h
0085DF0B: pop eax
0085DF0C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DF11: lea esi, var_00000098
0085DF17: mov edi, esp
0085DF19: movsd 
0085DF1A: movsd 
0085DF1B: movsd 
0085DF1C: movsd 
0085DF1D: push 00000010h
0085DF1F: pop eax
0085DF20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DF25: lea esi, var_000000B8
0085DF2B: mov edi, esp
0085DF2D: movsd 
0085DF2E: movsd 
0085DF2F: movsd 
0085DF30: movsd 
0085DF31: push 00000010h
0085DF33: pop eax
0085DF34: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DF39: lea esi, var_000000D8
0085DF3F: mov edi, esp
0085DF41: movsd 
0085DF42: movsd 
0085DF43: movsd 
0085DF44: movsd 
0085DF45: push 00000010h
0085DF47: pop eax
0085DF48: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085DF4D: lea esi, var_000000F8
0085DF53: mov edi, esp
0085DF55: movsd 
0085DF56: movsd 
0085DF57: movsd 
0085DF58: movsd 
0085DF59: push 00000004h
0085DF5B: push 80011002h
0085DF60: mov eax, [ebp+08h]
0085DF63: mov eax, [eax]
0085DF65: push [ebp+08h]
0085DF68: call [eax+00000320h]
0085DF6E: push eax
0085DF6F: lea eax, var_38
0085DF72: push eax
0085DF73: call 00410A84h ; Set (object)
0085DF78: push eax
0085DF79: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085DF7E: add esp, 0000004Ch
0085DF81: lea eax, var_38
0085DF84: push eax
0085DF85: lea eax, var_34
0085DF88: push eax
0085DF89: lea eax, var_30
0085DF8C: push eax
0085DF8D: lea eax, var_2C
0085DF90: push eax
0085DF91: lea eax, var_28
0085DF94: push eax
0085DF95: lea eax, var_24
0085DF98: push eax
0085DF99: push 00000006h
0085DF9B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085DFA0: add esp, 0000001Ch
0085DFA3: lea eax, var_00000088
0085DFA9: push eax
0085DFAA: lea eax, var_78
0085DFAD: push eax
0085DFAE: lea eax, var_68
0085DFB1: push eax
0085DFB2: lea eax, var_58
0085DFB5: push eax
0085DFB6: lea eax, var_48
0085DFB9: push eax
0085DFBA: push 00000005h
0085DFBC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085DFC1: add esp, 00000018h
0085DFC4: mov var_04, 00000006h
0085DFCB: push 00000000h
0085DFCD: push 80010006h
0085DFD2: mov eax, [ebp+08h]
0085DFD5: mov eax, [eax]
0085DFD7: push [ebp+08h]
0085DFDA: call [eax+00000324h]
0085DFE0: push eax
0085DFE1: lea eax, var_28
0085DFE4: push eax
0085DFE5: call 00410A84h ; Set (object)
0085DFEA: push eax
0085DFEB: lea eax, var_58
0085DFEE: push eax
0085DFEF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085DFF4: add esp, 00000010h
0085DFF7: fldz 
0085DFF9: fstp real4 ptr var_00000090
0085DFFF: mov var_00000098, 00000004h
0085E009: push 00000000h
0085E00B: push 80010006h
0085E010: mov eax, [ebp+08h]
0085E013: mov eax, [eax]
0085E015: push [ebp+08h]
0085E018: call [eax+00000328h]
0085E01E: push eax
0085E01F: lea eax, var_24
0085E022: push eax
0085E023: call 00410A84h ; Set (object)
0085E028: push eax
0085E029: lea eax, var_48
0085E02C: push eax
0085E02D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085E032: add esp, 00000010h
0085E035: push eax
0085E036: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085E03B: fstp real4 ptr var_00000150
0085E041: lea eax, var_58
0085E044: push eax
0085E045: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085E04A: fadd real4 ptr var_00000150
0085E050: fadd real4 ptr [00402BA8h]
0085E056: fstp real4 ptr var_000000B0
0085E05C: fstsw ax
0085E05E: test al, 0Dh
0085E060: jnz 0085E65Ch
0085E066: mov var_000000B8, 00000004h
0085E070: lea eax, var_0000010C
0085E076: push eax
0085E077: mov eax, [ebp+08h]
0085E07A: mov eax, [eax]
0085E07C: push [ebp+08h]
0085E07F: call [eax+00000080h]
0085E085: fclex 
0085E087: mov var_00000114, eax
0085E08D: cmp var_00000114, 00000000h
0085E094: jnl 85E0B6h
0085E096: push 00000080h
0085E09B: push 00447ED4h
0085E0A0: push [ebp+08h]
0085E0A3: push var_00000114
0085E0A9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E0AE: mov var_00000154, eax
0085E0B4: jmp 85E0BDh
0085E0B6: and var_00000154, 00000000h
0085E0BD: fld real4 ptr var_0000010C
0085E0C3: fsub real4 ptr [0040CD7Ch]
0085E0C9: fstp real4 ptr var_000000D0
0085E0CF: fstsw ax
0085E0D1: test al, 0Dh
0085E0D3: jnz 0085E65Ch
0085E0D9: mov var_000000D8, 00000004h
0085E0E3: push 00000010h
0085E0E5: pop eax
0085E0E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E0EB: lea esi, var_00000098
0085E0F1: mov edi, esp
0085E0F3: movsd 
0085E0F4: movsd 
0085E0F5: movsd 
0085E0F6: movsd 
0085E0F7: push 00000010h
0085E0F9: pop eax
0085E0FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E0FF: lea esi, var_000000B8
0085E105: mov edi, esp
0085E107: movsd 
0085E108: movsd 
0085E109: movsd 
0085E10A: movsd 
0085E10B: push 00000010h
0085E10D: pop eax
0085E10E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E113: lea esi, var_000000D8
0085E119: mov edi, esp
0085E11B: movsd 
0085E11C: movsd 
0085E11D: movsd 
0085E11E: movsd 
0085E11F: push 00000003h
0085E121: push 80011002h
0085E126: mov eax, [ebp+08h]
0085E129: mov eax, [eax]
0085E12B: push [ebp+08h]
0085E12E: call [eax+00000314h]
0085E134: push eax
0085E135: lea eax, var_2C
0085E138: push eax
0085E139: call 00410A84h ; Set (object)
0085E13E: push eax
0085E13F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085E144: add esp, 0000003Ch
0085E147: lea eax, var_2C
0085E14A: push eax
0085E14B: lea eax, var_28
0085E14E: push eax
0085E14F: lea eax, var_24
0085E152: push eax
0085E153: push 00000003h
0085E155: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085E15A: add esp, 00000010h
0085E15D: lea eax, var_58
0085E160: push eax
0085E161: lea eax, var_48
0085E164: push eax
0085E165: push 00000002h
0085E167: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085E16C: add esp, 0000000Ch
0085E16F: mov var_04, 00000007h
0085E176: lea eax, var_0000010C
0085E17C: push eax
0085E17D: mov eax, [ebp+08h]
0085E180: mov eax, [eax]
0085E182: push [ebp+08h]
0085E185: call [eax+00000080h]
0085E18B: fclex 
0085E18D: mov var_00000114, eax
0085E193: cmp var_00000114, 00000000h
0085E19A: jnl 85E1BCh
0085E19C: push 00000080h
0085E1A1: push 00447ED4h
0085E1A6: push [ebp+08h]
0085E1A9: push var_00000114
0085E1AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E1B4: mov var_00000158, eax
0085E1BA: jmp 85E1C3h
0085E1BC: and var_00000158, 00000000h
0085E1C3: mov eax, [ebp+08h]
0085E1C6: mov eax, [eax]
0085E1C8: push [ebp+08h]
0085E1CB: call [eax+00000308h]
0085E1D1: push eax
0085E1D2: lea eax, var_24
0085E1D5: push eax
0085E1D6: call 00410A84h ; Set (object)
0085E1DB: mov var_0000011C, eax
0085E1E1: lea eax, var_00000110
0085E1E7: push eax
0085E1E8: mov eax, [ebp+08h]
0085E1EB: mov eax, [eax]
0085E1ED: push [ebp+08h]
0085E1F0: call [eax+00000088h]
0085E1F6: fclex 
0085E1F8: mov var_00000118, eax
0085E1FE: cmp var_00000118, 00000000h
0085E205: jnl 85E227h
0085E207: push 00000088h
0085E20C: push 00447ED4h
0085E211: push [ebp+08h]
0085E214: push var_00000118
0085E21A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E21F: mov var_0000015C, eax
0085E225: jmp 85E22Eh
0085E227: and var_0000015C, 00000000h
0085E22E: fld real4 ptr var_00000110
0085E234: fsub real4 ptr [0040CD78h]
0085E23A: fstp real4 ptr var_000000B0
0085E240: fstsw ax
0085E242: test al, 0Dh
0085E244: jnz 0085E65Ch
0085E24A: mov var_000000B8, 00000004h
0085E254: fld real4 ptr var_0000010C
0085E25A: fsub real4 ptr [0040A67Ch]
0085E260: fstp real4 ptr var_000000A0
0085E266: fstsw ax
0085E268: test al, 0Dh
0085E26A: jnz 0085E65Ch
0085E270: mov var_000000A8, 00000004h
0085E27A: and var_00000090, 00000000h
0085E281: mov var_00000098, 00000002h
0085E28B: push 00000010h
0085E28D: pop eax
0085E28E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E293: lea esi, var_000000B8
0085E299: mov edi, esp
0085E29B: movsd 
0085E29C: movsd 
0085E29D: movsd 
0085E29E: movsd 
0085E29F: push 00000010h
0085E2A1: pop eax
0085E2A2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E2A7: lea esi, var_000000A8
0085E2AD: mov edi, esp
0085E2AF: movsd 
0085E2B0: movsd 
0085E2B1: movsd 
0085E2B2: movsd 
0085E2B3: push 00000010h
0085E2B5: pop eax
0085E2B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E2BB: lea esi, var_00000098
0085E2C1: mov edi, esp
0085E2C3: movsd 
0085E2C4: movsd 
0085E2C5: movsd 
0085E2C6: movsd 
0085E2C7: fldz 
0085E2C9: push ecx
0085E2CA: fstp real4 ptr [esp]
0085E2CD: mov eax, var_0000011C
0085E2D3: mov eax, [eax]
0085E2D5: push var_0000011C
0085E2DB: call [eax+00000130h]
0085E2E1: fclex 
0085E2E3: mov var_00000120, eax
0085E2E9: cmp var_00000120, 00000000h
0085E2F0: jnl 85E315h
0085E2F2: push 00000130h
0085E2F7: push 00440DCCh
0085E2FC: push var_0000011C
0085E302: push var_00000120
0085E308: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E30D: mov var_00000160, eax
0085E313: jmp 85E31Ch
0085E315: and var_00000160, 00000000h
0085E31C: lea ecx, var_24
0085E31F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E324: mov var_04, 00000008h
0085E32B: mov eax, [ebp+08h]
0085E32E: mov eax, [eax]
0085E330: push [ebp+08h]
0085E333: call [eax+00000304h]
0085E339: push eax
0085E33A: lea eax, var_24
0085E33D: push eax
0085E33E: call 00410A84h ; Set (object)
0085E343: mov var_00000114, eax
0085E349: fldz 
0085E34B: push ecx
0085E34C: fstp real4 ptr [esp]
0085E34F: mov eax, var_00000114
0085E355: mov eax, [eax]
0085E357: push var_00000114
0085E35D: call [eax+64h]
0085E360: fclex 
0085E362: mov var_00000118, eax
0085E368: cmp var_00000118, 00000000h
0085E36F: jnl 85E391h
0085E371: push 00000064h
0085E373: push 00456A8Ch
0085E378: push var_00000114
0085E37E: push var_00000118
0085E384: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E389: mov var_00000164, eax
0085E38F: jmp 85E398h
0085E391: and var_00000164, 00000000h
0085E398: lea ecx, var_24
0085E39B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E3A0: mov var_04, 00000009h
0085E3A7: mov eax, [ebp+08h]
0085E3AA: mov eax, [eax]
0085E3AC: push [ebp+08h]
0085E3AF: call [eax+00000304h]
0085E3B5: push eax
0085E3B6: lea eax, var_24
0085E3B9: push eax
0085E3BA: call 00410A84h ; Set (object)
0085E3BF: mov var_00000118, eax
0085E3C5: lea eax, var_0000010C
0085E3CB: push eax
0085E3CC: mov eax, [ebp+08h]
0085E3CF: mov eax, [eax]
0085E3D1: push [ebp+08h]
0085E3D4: call [eax+00000080h]
0085E3DA: fclex 
0085E3DC: mov var_00000114, eax
0085E3E2: cmp var_00000114, 00000000h
0085E3E9: jnl 85E40Bh
0085E3EB: push 00000080h
0085E3F0: push 00447ED4h
0085E3F5: push [ebp+08h]
0085E3F8: push var_00000114
0085E3FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E403: mov var_00000168, eax
0085E409: jmp 85E412h
0085E40B: and var_00000168, 00000000h
0085E412: fld real4 ptr var_0000010C
0085E418: push ecx
0085E419: fstp real4 ptr [esp]
0085E41C: mov eax, var_00000118
0085E422: mov eax, [eax]
0085E424: push var_00000118
0085E42A: call [eax+74h]
0085E42D: fclex 
0085E42F: mov var_0000011C, eax
0085E435: cmp var_0000011C, 00000000h
0085E43C: jnl 85E45Eh
0085E43E: push 00000074h
0085E440: push 00456A8Ch
0085E445: push var_00000118
0085E44B: push var_0000011C
0085E451: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E456: mov var_0000016C, eax
0085E45C: jmp 85E465h
0085E45E: and var_0000016C, 00000000h
0085E465: lea ecx, var_24
0085E468: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E46D: mov var_04, 0000000Ah
0085E474: mov eax, [ebp+08h]
0085E477: mov eax, [eax]
0085E479: push [ebp+08h]
0085E47C: call [eax+00000304h]
0085E482: push eax
0085E483: lea eax, var_28
0085E486: push eax
0085E487: call 00410A84h ; Set (object)
0085E48C: mov var_00000114, eax
0085E492: push 00000000h
0085E494: push 80010004h
0085E499: mov eax, [ebp+08h]
0085E49C: mov eax, [eax]
0085E49E: push [ebp+08h]
0085E4A1: call [eax+00000314h]
0085E4A7: push eax
0085E4A8: lea eax, var_24
0085E4AB: push eax
0085E4AC: call 00410A84h ; Set (object)
0085E4B1: push eax
0085E4B2: lea eax, var_48
0085E4B5: push eax
0085E4B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085E4BB: add esp, 00000010h
0085E4BE: push eax
0085E4BF: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085E4C4: push ecx
0085E4C5: fstp real4 ptr [esp]
0085E4C8: mov eax, var_00000114
0085E4CE: mov eax, [eax]
0085E4D0: push var_00000114
0085E4D6: call [eax+6Ch]
0085E4D9: fclex 
0085E4DB: mov var_00000118, eax
0085E4E1: cmp var_00000118, 00000000h
0085E4E8: jnl 85E50Ah
0085E4EA: push 0000006Ch
0085E4EC: push 00456A8Ch
0085E4F1: push var_00000114
0085E4F7: push var_00000118
0085E4FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E502: mov var_00000170, eax
0085E508: jmp 85E511h
0085E50A: and var_00000170, 00000000h
0085E511: lea eax, var_28
0085E514: push eax
0085E515: lea eax, var_24
0085E518: push eax
0085E519: push 00000002h
0085E51B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085E520: add esp, 0000000Ch
0085E523: lea ecx, var_48
0085E526: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085E52B: mov var_04, 0000000Bh
0085E532: mov eax, [ebp+08h]
0085E535: mov eax, [eax]
0085E537: push [ebp+08h]
0085E53A: call [eax+00000304h]
0085E540: push eax
0085E541: lea eax, var_28
0085E544: push eax
0085E545: call 00410A84h ; Set (object)
0085E54A: mov var_00000114, eax
0085E550: push 00000000h
0085E552: push 80010004h
0085E557: mov eax, [ebp+08h]
0085E55A: mov eax, [eax]
0085E55C: push [ebp+08h]
0085E55F: call [eax+00000314h]
0085E565: push eax
0085E566: lea eax, var_24
0085E569: push eax
0085E56A: call 00410A84h ; Set (object)
0085E56F: push eax
0085E570: lea eax, var_48
0085E573: push eax
0085E574: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085E579: add esp, 00000010h
0085E57C: push eax
0085E57D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085E582: push ecx
0085E583: fstp real4 ptr [esp]
0085E586: mov eax, var_00000114
0085E58C: mov eax, [eax]
0085E58E: push var_00000114
0085E594: call [eax+7Ch]
0085E597: fclex 
0085E599: mov var_00000118, eax
0085E59F: cmp var_00000118, 00000000h
0085E5A6: jnl 85E5C8h
0085E5A8: push 0000007Ch
0085E5AA: push 00456A8Ch
0085E5AF: push var_00000114
0085E5B5: push var_00000118
0085E5BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085E5C0: mov var_00000174, eax
0085E5C6: jmp 85E5CFh
0085E5C8: and var_00000174, 00000000h
0085E5CF: lea eax, var_28
0085E5D2: push eax
0085E5D3: lea eax, var_24
0085E5D6: push eax
0085E5D7: push 00000002h
0085E5D9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085E5DE: add esp, 0000000Ch
0085E5E1: lea ecx, var_48
0085E5E4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085E5E9: mov var_10, 00000000h
0085E5F0: wait 
0085E5F1: push 0085E63Dh
0085E5F6: jmp 85E63Ch
0085E5F8: lea eax, var_38
0085E5FB: push eax
0085E5FC: lea eax, var_34
0085E5FF: push eax
0085E600: lea eax, var_30
0085E603: push eax
0085E604: lea eax, var_2C
0085E607: push eax
0085E608: lea eax, var_28
0085E60B: push eax
0085E60C: lea eax, var_24
0085E60F: push eax
0085E610: push 00000006h
0085E612: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085E617: add esp, 0000001Ch
0085E61A: lea eax, var_00000088
0085E620: push eax
0085E621: lea eax, var_78
0085E624: push eax
0085E625: lea eax, var_68
0085E628: push eax
0085E629: lea eax, var_58
0085E62C: push eax
0085E62D: lea eax, var_48
0085E630: push eax
0085E631: push 00000005h
0085E633: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085E638: add esp, 00000018h
0085E63B: ret 
End Sub

Private sub Form__85ADBD
0085ADBD: push ebp
0085ADBE: mov ebp, esp
0085ADC0: sub esp, 0000000Ch
0085ADC3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085ADC8: mov eax, fs:[00h]
0085ADCE: push eax
0085ADCF: mov fs:[00000000h], esp
0085ADD6: push 0000001Ch
0085ADD8: pop eax
0085ADD9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085ADDE: push ebx
0085ADDF: push esi
0085ADE0: push edi
0085ADE1: mov var_0C, esp
0085ADE4: mov var_08, 0040CA60h
0085ADEB: mov eax, [ebp+08h]
0085ADEE: and eax, 00000001h
0085ADF1: mov var_04, eax
0085ADF4: mov eax, [ebp+08h]
0085ADF7: and al, FEh
0085ADF9: mov [ebp+08h], eax
0085ADFC: mov eax, [ebp+08h]
0085ADFF: mov eax, [eax]
0085AE01: push [ebp+08h]
0085AE04: call [eax+04h]
0085AE07: push 00000000h
0085AE09: push 00000046h
0085AE0B: mov eax, [ebp+08h]
0085AE0E: mov eax, [eax]
0085AE10: push [ebp+08h]
0085AE13: call [eax+00000318h]
0085AE19: push eax
0085AE1A: lea eax, var_18
0085AE1D: push eax
0085AE1E: call 00410A84h ; Set (object)
0085AE23: push eax
0085AE24: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085AE29: add esp, 0000000Ch
0085AE2C: lea ecx, var_18
0085AE2F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AE34: call 007D22A1h
0085AE39: cmp [008F529Ch], 00000000h
0085AE40: jnz 85AE5Ah
0085AE42: push 008F529Ch
0085AE47: push 00440F2Ch
0085AE4C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085AE51: mov var_2C, 008F529Ch
0085AE58: jmp 85AE61h
0085AE5A: mov var_2C, 008F529Ch
0085AE61: mov eax, var_2C
0085AE64: mov eax, [eax]
0085AE66: mov var_1C, eax
0085AE69: push [ebp+08h]
0085AE6C: lea eax, var_18
0085AE6F: push eax
0085AE70: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085AE75: push eax
0085AE76: mov eax, var_1C
0085AE79: mov eax, [eax]
0085AE7B: push var_1C
0085AE7E: call [eax+10h]
0085AE81: fclex 
0085AE83: mov var_20, eax
0085AE86: cmp var_20, 00000000h
0085AE8A: jnl 85AEA3h
0085AE8C: push 00000010h
0085AE8E: push 00440F1Ch
0085AE93: push var_1C
0085AE96: push var_20
0085AE99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085AE9E: mov var_30, eax
0085AEA1: jmp 85AEA7h
0085AEA3: and var_30, 00000000h
0085AEA7: lea ecx, var_18
0085AEAA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AEAF: mov var_04, 00000000h
0085AEB6: push 0085AEC7h
0085AEBB: jmp 85AEC6h
0085AEBD: lea ecx, var_18
0085AEC0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085AEC5: ret 
End Sub

Private sub txtChat__85CA74
0085CA74: push ebp
0085CA75: mov ebp, esp
0085CA77: sub esp, 00000018h
0085CA7A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085CA7F: mov eax, fs:[00h]
0085CA85: push eax
0085CA86: mov fs:[00000000h], esp
0085CA8D: mov eax, 00000094h
0085CA92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085CA97: push ebx
0085CA98: push esi
0085CA99: push edi
0085CA9A: mov var_18, esp
0085CA9D: mov var_14, 0040CC20h
0085CAA4: mov eax, [ebp+08h]
0085CAA7: and eax, 00000001h
0085CAAA: mov var_10, eax
0085CAAD: mov eax, [ebp+08h]
0085CAB0: and al, FEh
0085CAB2: mov [ebp+08h], eax
0085CAB5: mov var_0C, 00000000h
0085CABC: mov eax, [ebp+08h]
0085CABF: mov eax, [eax]
0085CAC1: push [ebp+08h]
0085CAC4: call [eax+04h]
0085CAC7: mov var_04, 00000001h
0085CACE: mov var_04, 00000002h
0085CAD5: push FFFFFFFFh
0085CAD7: call 00410A60h ; On Error ...
0085CADC: mov var_04, 00000003h
0085CAE3: push 00000000h
0085CAE5: push FFFFFDFBh
0085CAEA: mov eax, [ebp+08h]
0085CAED: mov eax, [eax]
0085CAEF: push [ebp+08h]
0085CAF2: call [eax+00000314h]
0085CAF8: push eax
0085CAF9: lea eax, var_2C
0085CAFC: push eax
0085CAFD: call 00410A84h ; Set (object)
0085CB02: push eax
0085CB03: lea eax, var_3C
0085CB06: push eax
0085CB07: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085CB0C: add esp, 00000010h
0085CB0F: mov var_54, 00000001h
0085CB16: mov var_5C, 00000002h
0085CB1D: lea eax, var_3C
0085CB20: push eax
0085CB21: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085CB26: mov var_44, eax
0085CB29: mov var_4C, 00000008h
0085CB30: lea eax, var_5C
0085CB33: push eax
0085CB34: push 00000001h
0085CB36: lea eax, var_4C
0085CB39: push eax
0085CB3A: lea eax, var_6C
0085CB3D: push eax
0085CB3E: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0085CB43: mov var_00000094, 00441264h ; vbCrLf
0085CB4D: mov var_0000009C, 00008008h
0085CB57: lea eax, var_6C
0085CB5A: push eax
0085CB5B: lea eax, var_0000009C
0085CB61: push eax
0085CB62: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0085CB67: mov var_000000A0, ax
0085CB6E: lea ecx, var_2C
0085CB71: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CB76: lea eax, var_6C
0085CB79: push eax
0085CB7A: lea eax, var_5C
0085CB7D: push eax
0085CB7E: lea eax, var_4C
0085CB81: push eax
0085CB82: lea eax, var_3C
0085CB85: push eax
0085CB86: push 00000004h
0085CB88: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085CB8D: add esp, 00000014h
0085CB90: movsx eax, word ptr var_000000A0
0085CB97: test eax, eax
0085CB99: jz 85CBF2h
0085CB9B: mov var_04, 00000004h
0085CBA2: and var_00000084, 00000000h
0085CBA9: mov var_0000008C, 00000008h
0085CBB3: push 00000010h
0085CBB5: pop eax
0085CBB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085CBBB: lea esi, var_0000008C
0085CBC1: mov edi, esp
0085CBC3: movsd 
0085CBC4: movsd 
0085CBC5: movsd 
0085CBC6: movsd 
0085CBC7: push FFFFFDFBh
0085CBCC: mov eax, [ebp+08h]
0085CBCF: mov eax, [eax]
0085CBD1: push [ebp+08h]
0085CBD4: call [eax+00000314h]
0085CBDA: push eax
0085CBDB: lea eax, var_2C
0085CBDE: push eax
0085CBDF: call 00410A84h ; Set (object)
0085CBE4: push eax
0085CBE5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085CBEA: lea ecx, var_2C
0085CBED: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CBF2: mov var_04, 00000006h
0085CBF9: mov eax, [ebp+0Ch]
0085CBFC: cmp word ptr [eax], 0026h
0085CC00: jnz 0085CD50h
0085CC06: mov var_04, 00000007h
0085CC0D: movsx esi, word ptr [8F204Ch]
0085CC14: push [008F2048h]
0085CC1A: push 00000001h
0085CC1C: call 00410886h ; UBound
0085CC21: sub eax, 00000001h
0085CC24: jo 0085CEFDh
0085CC2A: cmp esi, eax
0085CC2C: jnl 0085CD50h
0085CC32: mov var_04, 00000008h
0085CC39: mov ax, [204Ch]
0085CC3D: pop [eax]
0085CC3F: add ax, 0001h
0085CC43: jo 0085CEFDh
0085CC49: mov [204Ch], ax
0085CC4D: pop [eax]
0085CC4F: mov var_04, 00000009h
0085CC56: push 00000001h
0085CC58: push 00000000h
0085CC5A: push FFFFFDFBh
0085CC5F: mov eax, [ebp+08h]
0085CC62: mov eax, [eax]
0085CC64: push [ebp+08h]
0085CC67: call [eax+00000314h]
0085CC6D: push eax
0085CC6E: lea eax, var_2C
0085CC71: push eax
0085CC72: call 00410A84h ; Set (object)
0085CC77: push eax
0085CC78: lea eax, var_3C
0085CC7B: push eax
0085CC7C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085CC81: add esp, 00000010h
0085CC84: push eax
0085CC85: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085CC8A: mov edx, eax
0085CC8C: lea ecx, var_28
0085CC8F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085CC94: push eax
0085CC95: push 00441264h ; vbCrLf
0085CC9A: push 00000000h
0085CC9C: call 0041076Ch ; InStr
0085CCA1: neg eax
0085CCA3: sbb eax, eax
0085CCA5: inc eax
0085CCA6: neg eax
0085CCA8: mov var_000000A0, ax
0085CCAF: lea ecx, var_28
0085CCB2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CCB7: lea ecx, var_2C
0085CCBA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CCBF: lea ecx, var_3C
0085CCC2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085CCC7: movsx eax, word ptr var_000000A0
0085CCCE: test eax, eax
0085CCD0: jz 85CC50h
0085CCD2: mov var_04, 0000000Ah
0085CCD9: push [008F2048h]
0085CCDF: lea eax, var_24
0085CCE2: push eax
0085CCE3: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085CCE8: movsx eax, word ptr [8F204Ch]
0085CCEF: push eax
0085CCF0: push var_24
0085CCF3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085CCF8: mov var_00000084, eax
0085CCFE: mov var_0000008C, 00004008h
0085CD08: push 00000010h
0085CD0A: pop eax
0085CD0B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085CD10: lea esi, var_0000008C
0085CD16: mov edi, esp
0085CD18: movsd 
0085CD19: movsd 
0085CD1A: movsd 
0085CD1B: movsd 
0085CD1C: push FFFFFDFBh
0085CD21: mov eax, [ebp+08h]
0085CD24: mov eax, [eax]
0085CD26: push [ebp+08h]
0085CD29: call [eax+00000314h]
0085CD2F: push eax
0085CD30: lea eax, var_2C
0085CD33: push eax
0085CD34: call 00410A84h ; Set (object)
0085CD39: push eax
0085CD3A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085CD3F: lea eax, var_24
0085CD42: push eax
0085CD43: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085CD48: lea ecx, var_2C
0085CD4B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CD50: mov var_04, 0000000Eh
0085CD57: mov eax, [ebp+0Ch]
0085CD5A: cmp word ptr [eax], 0028h
0085CD5E: jnz 0085CE97h
0085CD64: mov var_04, 0000000Fh
0085CD6B: cmp word ptr [008F204Ch], 0001h
0085CD73: jle 0085CE97h
0085CD79: mov var_04, 00000010h
0085CD80: mov ax, [204Ch]
0085CD84: pop [eax]
0085CD86: sub ax, 0001h
0085CD8A: jo 0085CEFDh
0085CD90: mov [204Ch], ax
0085CD94: pop [eax]
0085CD96: mov var_04, 00000011h
0085CD9D: push 00000001h
0085CD9F: push 00000000h
0085CDA1: push FFFFFDFBh
0085CDA6: mov eax, [ebp+08h]
0085CDA9: mov eax, [eax]
0085CDAB: push [ebp+08h]
0085CDAE: call [eax+00000314h]
0085CDB4: push eax
0085CDB5: lea eax, var_2C
0085CDB8: push eax
0085CDB9: call 00410A84h ; Set (object)
0085CDBE: push eax
0085CDBF: lea eax, var_3C
0085CDC2: push eax
0085CDC3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085CDC8: add esp, 00000010h
0085CDCB: push eax
0085CDCC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085CDD1: mov edx, eax
0085CDD3: lea ecx, var_28
0085CDD6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085CDDB: push eax
0085CDDC: push 00441264h ; vbCrLf
0085CDE1: push 00000000h
0085CDE3: call 0041076Ch ; InStr
0085CDE8: neg eax
0085CDEA: sbb eax, eax
0085CDEC: inc eax
0085CDED: neg eax
0085CDEF: mov var_000000A0, ax
0085CDF6: lea ecx, var_28
0085CDF9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CDFE: lea ecx, var_2C
0085CE01: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CE06: lea ecx, var_3C
0085CE09: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085CE0E: movsx eax, word ptr var_000000A0
0085CE15: test eax, eax
0085CE17: jz 85CD97h
0085CE19: mov var_04, 00000012h
0085CE20: push [008F2048h]
0085CE26: lea eax, var_24
0085CE29: push eax
0085CE2A: call 0041077Eh ; msvbvm60.dll.__vbaAryLock
0085CE2F: movsx eax, word ptr [8F204Ch]
0085CE36: push eax
0085CE37: push var_24
0085CE3A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085CE3F: mov var_00000084, eax
0085CE45: mov var_0000008C, 00004008h
0085CE4F: push 00000010h
0085CE51: pop eax
0085CE52: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085CE57: lea esi, var_0000008C
0085CE5D: mov edi, esp
0085CE5F: movsd 
0085CE60: movsd 
0085CE61: movsd 
0085CE62: movsd 
0085CE63: push FFFFFDFBh
0085CE68: mov eax, [ebp+08h]
0085CE6B: mov eax, [eax]
0085CE6D: push [ebp+08h]
0085CE70: call [eax+00000314h]
0085CE76: push eax
0085CE77: lea eax, var_2C
0085CE7A: push eax
0085CE7B: call 00410A84h ; Set (object)
0085CE80: push eax
0085CE81: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085CE86: lea eax, var_24
0085CE89: push eax
0085CE8A: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085CE8F: lea ecx, var_2C
0085CE92: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CE97: mov var_10, 00000000h
0085CE9E: push 0085CEDEh
0085CEA3: jmp 85CEDDh
0085CEA5: lea eax, var_24
0085CEA8: push eax
0085CEA9: call 00410808h ; msvbvm60.dll.__vbaAryUnlock
0085CEAE: lea ecx, var_28
0085CEB1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CEB6: lea ecx, var_2C
0085CEB9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CEBE: lea eax, var_7C
0085CEC1: push eax
0085CEC2: lea eax, var_6C
0085CEC5: push eax
0085CEC6: lea eax, var_5C
0085CEC9: push eax
0085CECA: lea eax, var_4C
0085CECD: push eax
0085CECE: lea eax, var_3C
0085CED1: push eax
0085CED2: push 00000005h
0085CED4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085CED9: add esp, 00000018h
0085CEDC: ret 
End Sub

Private sub txtChat__85E661
0085E661: push ebp
0085E662: mov ebp, esp
0085E664: sub esp, 0000000Ch
0085E667: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085E66C: mov eax, fs:[00h]
0085E672: push eax
0085E673: mov fs:[00000000h], esp
0085E67A: push 0000002Ch
0085E67C: pop eax
0085E67D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E682: push ebx
0085E683: push esi
0085E684: push edi
0085E685: mov var_0C, esp
0085E688: mov var_08, 0040CD80h
0085E68F: mov eax, [ebp+08h]
0085E692: and eax, 00000001h
0085E695: mov var_04, eax
0085E698: mov eax, [ebp+08h]
0085E69B: and al, FEh
0085E69D: mov [ebp+08h], eax
0085E6A0: mov eax, [ebp+08h]
0085E6A3: mov eax, [eax]
0085E6A5: push [ebp+08h]
0085E6A8: call [eax+04h]
0085E6AB: mov eax, [ebp+0Ch]
0085E6AE: cmp word ptr [eax], 000Dh
0085E6B2: jnz 85E6F8h
0085E6B4: and var_20, 00000000h
0085E6B8: mov var_28, 00000008h
0085E6BF: push 00000010h
0085E6C1: pop eax
0085E6C2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E6C7: lea esi, var_28
0085E6CA: mov edi, esp
0085E6CC: movsd 
0085E6CD: movsd 
0085E6CE: movsd 
0085E6CF: movsd 
0085E6D0: push 00000000h
0085E6D2: mov eax, [ebp+08h]
0085E6D5: mov eax, [eax]
0085E6D7: push [ebp+08h]
0085E6DA: call [eax+00000314h]
0085E6E0: push eax
0085E6E1: lea eax, var_18
0085E6E4: push eax
0085E6E5: call 00410A84h ; Set (object)
0085E6EA: push eax
0085E6EB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085E6F0: lea ecx, var_18
0085E6F3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E6F8: mov var_04, 00000000h
0085E6FF: push 0085E710h
0085E704: jmp 85E70Fh
0085E706: lea ecx, var_18
0085E709: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085E70E: ret 
End Sub

Private sub txtChat__85CF02
0085CF02: push ebp
0085CF03: mov ebp, esp
0085CF05: sub esp, 0000000Ch
0085CF08: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085CF0D: mov eax, fs:[00h]
0085CF13: push eax
0085CF14: mov fs:[00000000h], esp
0085CF1B: push 00000048h
0085CF1D: pop eax
0085CF1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085CF23: push ebx
0085CF24: push esi
0085CF25: push edi
0085CF26: mov var_0C, esp
0085CF29: mov var_08, 0040CC98h
0085CF30: mov eax, [ebp+08h]
0085CF33: and eax, 00000001h
0085CF36: mov var_04, eax
0085CF39: mov eax, [ebp+08h]
0085CF3C: and al, FEh
0085CF3E: mov [ebp+08h], eax
0085CF41: mov eax, [ebp+08h]
0085CF44: mov eax, [eax]
0085CF46: push [ebp+08h]
0085CF49: call [eax+04h]
0085CF4C: mov eax, [ebp+0Ch]
0085CF4F: cmp word ptr [eax], 000Dh
0085CF53: jnz 0085D1A1h
0085CF59: push 00000000h
0085CF5B: push FFFFFDFBh
0085CF60: mov eax, [ebp+08h]
0085CF63: mov eax, [eax]
0085CF65: push [ebp+08h]
0085CF68: call [eax+00000314h]
0085CF6E: push eax
0085CF6F: lea eax, var_1C
0085CF72: push eax
0085CF73: call 00410A84h ; Set (object)
0085CF78: push eax
0085CF79: lea eax, var_30
0085CF7C: push eax
0085CF7D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085CF82: add esp, 00000010h
0085CF85: push eax
0085CF86: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085CF8B: mov edx, eax
0085CF8D: lea ecx, var_18
0085CF90: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085CF95: mov esi, eax
0085CF97: push [008F2048h]
0085CF9D: push 00000001h
0085CF9F: call 00410886h ; UBound
0085CFA4: push eax
0085CFA5: push [008F2048h]
0085CFAB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085CFB0: mov ecx, eax
0085CFB2: mov edx, esi
0085CFB4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085CFB9: lea ecx, var_18
0085CFBC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CFC1: lea ecx, var_1C
0085CFC4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085CFC9: lea ecx, var_30
0085CFCC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085CFD1: push 00000001h
0085CFD3: push [008F2048h]
0085CFD9: push 00000001h
0085CFDB: call 00410886h ; UBound
0085CFE0: add eax, 00000001h
0085CFE3: jo 0085D1FCh
0085CFE9: push eax
0085CFEA: push 00000001h
0085CFEC: push 00000008h
0085CFEE: push 008F2048h
0085CFF3: push 00000004h
0085CFF5: push 00000180h
0085CFFA: call 0041078Ah ; ReDim Preserve
0085CFFF: add esp, 0000001Ch
0085D002: push 00000000h
0085D004: push FFFFFDFBh
0085D009: mov eax, [ebp+08h]
0085D00C: mov eax, [eax]
0085D00E: push [ebp+08h]
0085D011: call [eax+00000314h]
0085D017: push eax
0085D018: lea eax, var_1C
0085D01B: push eax
0085D01C: call 00410A84h ; Set (object)
0085D021: push eax
0085D022: lea eax, var_30
0085D025: push eax
0085D026: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D02B: add esp, 00000010h
0085D02E: push 00000000h
0085D030: push FFFFFFFFh
0085D032: push 00000001h
0085D034: push 00000000h
0085D036: push 00441264h ; vbCrLf
0085D03B: lea eax, var_30
0085D03E: push eax
0085D03F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085D044: mov edx, eax
0085D046: lea ecx, var_18
0085D049: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085D04E: push eax
0085D04F: call 00410988h ; Replace(arg_1, arg_2, arg_3, arg_4, arg_5, arg_6)
0085D054: mov var_38, eax
0085D057: mov var_40, 00000008h
0085D05E: push 00000010h
0085D060: pop eax
0085D061: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085D066: lea esi, var_40
0085D069: mov edi, esp
0085D06B: movsd 
0085D06C: movsd 
0085D06D: movsd 
0085D06E: movsd 
0085D06F: push FFFFFDFBh
0085D074: mov eax, [ebp+08h]
0085D077: mov eax, [eax]
0085D079: push [ebp+08h]
0085D07C: call [eax+00000314h]
0085D082: push eax
0085D083: lea eax, var_20
0085D086: push eax
0085D087: call 00410A84h ; Set (object)
0085D08C: push eax
0085D08D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085D092: lea ecx, var_18
0085D095: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D09A: lea eax, var_20
0085D09D: push eax
0085D09E: lea eax, var_1C
0085D0A1: push eax
0085D0A2: push 00000002h
0085D0A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D0A9: add esp, 0000000Ch
0085D0AC: lea eax, var_40
0085D0AF: push eax
0085D0B0: lea eax, var_30
0085D0B3: push eax
0085D0B4: push 00000002h
0085D0B6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085D0BB: add esp, 0000000Ch
0085D0BE: push 00000000h
0085D0C0: push FFFFFDFBh
0085D0C5: mov eax, [ebp+08h]
0085D0C8: mov eax, [eax]
0085D0CA: push [ebp+08h]
0085D0CD: call [eax+00000314h]
0085D0D3: push eax
0085D0D4: lea eax, var_1C
0085D0D7: push eax
0085D0D8: call 00410A84h ; Set (object)
0085D0DD: push eax
0085D0DE: lea eax, var_30
0085D0E1: push eax
0085D0E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D0E7: add esp, 00000010h
0085D0EA: push eax
0085D0EB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085D0F0: mov edx, eax
0085D0F2: lea ecx, var_18
0085D0F5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085D0FA: push eax
0085D0FB: call 0041098Eh ; Len(arg_1)
0085D100: xor ecx, ecx
0085D102: test eax, eax
0085D104: setnle cl
0085D107: neg ecx
0085D109: mov var_54, cx
0085D10D: lea ecx, var_18
0085D110: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D115: lea ecx, var_1C
0085D118: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085D11D: lea ecx, var_30
0085D120: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D125: movsx eax, word ptr var_54
0085D129: test eax, eax
0085D12B: jz 85D187h
0085D12D: push 00000000h
0085D12F: push FFFFFDFBh
0085D134: mov eax, [ebp+08h]
0085D137: mov eax, [eax]
0085D139: push [ebp+08h]
0085D13C: call [eax+00000314h]
0085D142: push eax
0085D143: lea eax, var_1C
0085D146: push eax
0085D147: call 00410A84h ; Set (object)
0085D14C: push eax
0085D14D: lea eax, var_30
0085D150: push eax
0085D151: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D156: add esp, 00000010h
0085D159: push eax
0085D15A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085D15F: mov edx, eax
0085D161: lea ecx, var_18
0085D164: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085D169: push eax
0085D16A: call 007D0D3Dh
0085D16F: lea ecx, var_18
0085D172: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D177: lea ecx, var_1C
0085D17A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085D17F: lea ecx, var_30
0085D182: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D187: push [008F2048h]
0085D18D: push 00000001h
0085D18F: call 00410886h ; UBound
0085D194: mov ecx, eax
0085D196: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0085D19B: mov [204Ch], ax
0085D19F: pop [eax]
0085D1A1: mov var_04, 00000000h
0085D1A8: push 0085D1DDh
0085D1AD: jmp 85D1DCh
0085D1AF: lea ecx, var_18
0085D1B2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D1B7: lea eax, var_20
0085D1BA: push eax
0085D1BB: lea eax, var_1C
0085D1BE: push eax
0085D1BF: push 00000002h
0085D1C1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D1C6: add esp, 0000000Ch
0085D1C9: lea eax, var_40
0085D1CC: push eax
0085D1CD: lea eax, var_30
0085D1D0: push eax
0085D1D1: push 00000002h
0085D1D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085D1D8: add esp, 0000000Ch
0085D1DB: ret 
End Sub

Private sub tbConversations__85C613
0085C613: push ebp
0085C614: mov ebp, esp
0085C616: sub esp, 00000018h
0085C619: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085C61E: mov eax, fs:[00h]
0085C624: push eax
0085C625: mov fs:[00000000h], esp
0085C62C: mov eax, 000000A4h
0085C631: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085C636: push ebx
0085C637: push esi
0085C638: push edi
0085C639: mov var_18, esp
0085C63C: mov var_14, 0040CBE0h
0085C643: mov eax, [ebp+08h]
0085C646: and eax, 00000001h
0085C649: mov var_10, eax
0085C64C: mov eax, [ebp+08h]
0085C64F: and al, FEh
0085C651: mov [ebp+08h], eax
0085C654: mov var_0C, 00000000h
0085C65B: mov eax, [ebp+08h]
0085C65E: mov eax, [eax]
0085C660: push [ebp+08h]
0085C663: call [eax+04h]
0085C666: mov var_04, 00000001h
0085C66D: push [ebp+0Ch]
0085C670: lea eax, var_24
0085C673: push eax
0085C674: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085C679: mov var_04, 00000002h
0085C680: push FFFFFFFFh
0085C682: call 00410A60h ; On Error ...
0085C687: mov var_04, 00000003h
0085C68E: lea eax, var_78
0085C691: push eax
0085C692: mov eax, var_24
0085C695: mov eax, [eax]
0085C697: push var_24
0085C69A: call [eax+3Ch]
0085C69D: fclex 
0085C69F: mov var_7C, eax
0085C6A2: cmp var_7C, 00000000h
0085C6A6: jnl 85C6C2h
0085C6A8: push 0000003Ch
0085C6AA: push 0044E19Ch
0085C6AF: push var_24
0085C6B2: push var_7C
0085C6B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C6BA: mov var_000000A4, eax
0085C6C0: jmp 85C6C9h
0085C6C2: and var_000000A4, 00000000h
0085C6C9: movsx eax, word ptr var_78
0085C6CD: push eax
0085C6CE: push [008F2050h]
0085C6D4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C6D9: mov eax, [eax]
0085C6DB: mov var_80, eax
0085C6DE: push 00000000h
0085C6E0: mov eax, var_80
0085C6E3: mov eax, [eax]
0085C6E5: push var_80
0085C6E8: call [eax+0000009Ch]
0085C6EE: fclex 
0085C6F0: mov var_00000084, eax
0085C6F6: cmp var_00000084, 00000000h
0085C6FD: jnl 85C71Fh
0085C6FF: push 0000009Ch
0085C704: push 0044E17Ch
0085C709: push var_80
0085C70C: push var_00000084
0085C712: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C717: mov var_000000A8, eax
0085C71D: jmp 85C726h
0085C71F: and var_000000A8, 00000000h
0085C726: mov var_04, 00000004h
0085C72D: lea eax, var_78
0085C730: push eax
0085C731: mov eax, var_24
0085C734: mov eax, [eax]
0085C736: push var_24
0085C739: call [eax+3Ch]
0085C73C: fclex 
0085C73E: mov var_7C, eax
0085C741: cmp var_7C, 00000000h
0085C745: jnl 85C761h
0085C747: push 0000003Ch
0085C749: push 0044E19Ch
0085C74E: push var_24
0085C751: push var_7C
0085C754: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C759: mov var_000000AC, eax
0085C75F: jmp 85C768h
0085C761: and var_000000AC, 00000000h
0085C768: movsx eax, word ptr var_78
0085C76C: push eax
0085C76D: push [008F2050h]
0085C773: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C778: mov eax, [eax]
0085C77A: mov var_80, eax
0085C77D: mov eax, [ebp+08h]
0085C780: mov var_6C, eax
0085C783: mov var_74, 00000009h
0085C78A: mov var_5C, 80020004h
0085C791: mov var_64, 0000000Ah
0085C798: push 00000010h
0085C79A: pop eax
0085C79B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085C7A0: lea esi, var_74
0085C7A3: mov edi, esp
0085C7A5: movsd 
0085C7A6: movsd 
0085C7A7: movsd 
0085C7A8: movsd 
0085C7A9: push 00000010h
0085C7AB: pop eax
0085C7AC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085C7B1: lea esi, var_64
0085C7B4: mov edi, esp
0085C7B6: movsd 
0085C7B7: movsd 
0085C7B8: movsd 
0085C7B9: movsd 
0085C7BA: mov eax, var_80
0085C7BD: mov eax, [eax]
0085C7BF: push var_80
0085C7C2: call [eax+000002B0h]
0085C7C8: fclex 
0085C7CA: mov var_00000084, eax
0085C7D0: cmp var_00000084, 00000000h
0085C7D7: jnl 85C7F9h
0085C7D9: push 000002B0h
0085C7DE: push 0044E17Ch
0085C7E3: push var_80
0085C7E6: push var_00000084
0085C7EC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C7F1: mov var_000000B0, eax
0085C7F7: jmp 85C800h
0085C7F9: and var_000000B0, 00000000h
0085C800: mov var_04, 00000005h
0085C807: push 0044E18Ch
0085C80C: push 00000000h
0085C80E: push 00000003h
0085C810: mov eax, [ebp+08h]
0085C813: mov eax, [eax]
0085C815: push [ebp+08h]
0085C818: call [eax+00000324h]
0085C81E: push eax
0085C81F: lea eax, var_2C
0085C822: push eax
0085C823: call 00410A84h ; Set (object)
0085C828: push eax
0085C829: lea eax, var_44
0085C82C: push eax
0085C82D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085C832: add esp, 00000010h
0085C835: push eax
0085C836: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085C83B: push eax
0085C83C: lea eax, var_30
0085C83F: push eax
0085C840: call 00410A84h ; Set (object)
0085C845: mov var_80, eax
0085C848: lea eax, var_78
0085C84B: push eax
0085C84C: mov eax, var_24
0085C84F: mov eax, [eax]
0085C851: push var_24
0085C854: call [eax+3Ch]
0085C857: fclex 
0085C859: mov var_7C, eax
0085C85C: cmp var_7C, 00000000h
0085C860: jnl 85C87Ch
0085C862: push 0000003Ch
0085C864: push 0044E19Ch
0085C869: push var_24
0085C86C: push var_7C
0085C86F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C874: mov var_000000B4, eax
0085C87A: jmp 85C883h
0085C87C: and var_000000B4, 00000000h
0085C883: mov ax, var_78
0085C887: mov var_4C, ax
0085C88B: mov var_54, 00000002h
0085C892: lea eax, var_34
0085C895: push eax
0085C896: lea eax, var_54
0085C899: push eax
0085C89A: mov eax, var_80
0085C89D: mov eax, [eax]
0085C89F: push var_80
0085C8A2: call [eax+2Ch]
0085C8A5: fclex 
0085C8A7: mov var_00000084, eax
0085C8AD: cmp var_00000084, 00000000h
0085C8B4: jnl 85C8D3h
0085C8B6: push 0000002Ch
0085C8B8: push 0044E18Ch
0085C8BD: push var_80
0085C8C0: push var_00000084
0085C8C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C8CB: mov var_000000B8, eax
0085C8D1: jmp 85C8DAh
0085C8D3: and var_000000B8, 00000000h
0085C8DA: mov eax, var_34
0085C8DD: mov var_00000088, eax
0085C8E3: push FFFFFFFFh
0085C8E5: mov eax, var_00000088
0085C8EB: mov eax, [eax]
0085C8ED: push var_00000088
0085C8F3: call [eax+000000A0h]
0085C8F9: fclex 
0085C8FB: mov var_0000008C, eax
0085C901: cmp var_0000008C, 00000000h
0085C908: jnl 85C92Dh
0085C90A: push 000000A0h
0085C90F: push 0044E19Ch
0085C914: push var_00000088
0085C91A: push var_0000008C
0085C920: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C925: mov var_000000BC, eax
0085C92B: jmp 85C934h
0085C92D: and var_000000BC, 00000000h
0085C934: lea eax, var_34
0085C937: push eax
0085C938: lea eax, var_30
0085C93B: push eax
0085C93C: lea eax, var_2C
0085C93F: push eax
0085C940: push 00000003h
0085C942: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085C947: add esp, 00000010h
0085C94A: lea eax, var_54
0085C94D: push eax
0085C94E: lea eax, var_44
0085C951: push eax
0085C952: push 00000002h
0085C954: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085C959: add esp, 0000000Ch
0085C95C: mov var_04, 00000006h
0085C963: lea eax, var_78
0085C966: push eax
0085C967: mov eax, var_24
0085C96A: mov eax, [eax]
0085C96C: push var_24
0085C96F: call [eax+3Ch]
0085C972: fclex 
0085C974: mov var_7C, eax
0085C977: cmp var_7C, 00000000h
0085C97B: jnl 85C997h
0085C97D: push 0000003Ch
0085C97F: push 0044E19Ch
0085C984: push var_24
0085C987: push var_7C
0085C98A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C98F: mov var_000000C0, eax
0085C995: jmp 85C99Eh
0085C997: and var_000000C0, 00000000h
0085C99E: movsx eax, word ptr var_78
0085C9A2: push eax
0085C9A3: push [008F2050h]
0085C9A9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085C9AE: mov eax, [eax]
0085C9B0: mov var_80, eax
0085C9B3: lea eax, var_28
0085C9B6: push eax
0085C9B7: mov eax, var_80
0085C9BA: mov eax, [eax]
0085C9BC: push var_80
0085C9BF: call [eax+000001C0h]
0085C9C5: fclex 
0085C9C7: mov var_00000084, eax
0085C9CD: cmp var_00000084, 00000000h
0085C9D4: jnl 85C9F6h
0085C9D6: push 000001C0h
0085C9DB: push 0044E17Ch
0085C9E0: push var_80
0085C9E3: push var_00000084
0085C9E9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085C9EE: mov var_000000C4, eax
0085C9F4: jmp 85C9FDh
0085C9F6: and var_000000C4, 00000000h
0085C9FD: push var_28
0085CA00: call 007CD51Ch
0085CA05: lea ecx, var_28
0085CA08: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CA0D: mov var_10, 00000000h
0085CA14: push 0085CA55h
0085CA19: jmp 85CA4Ch
0085CA1B: lea ecx, var_28
0085CA1E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085CA23: lea eax, var_34
0085CA26: push eax
0085CA27: lea eax, var_30
0085CA2A: push eax
0085CA2B: lea eax, var_2C
0085CA2E: push eax
0085CA2F: push 00000003h
0085CA31: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085CA36: add esp, 00000010h
0085CA39: lea eax, var_54
0085CA3C: push eax
0085CA3D: lea eax, var_44
0085CA40: push eax
0085CA41: push 00000002h
0085CA43: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085CA48: add esp, 0000000Ch
0085CA4B: ret 
End Sub

Private sub lstUsers__85AEE6
0085AEE6: push ebp
0085AEE7: mov ebp, esp
0085AEE9: sub esp, 0000000Ch
0085AEEC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085AEF1: mov eax, fs:[00h]
0085AEF7: push eax
0085AEF8: mov fs:[00000000h], esp
0085AEFF: push 00000008h
0085AF01: pop eax
0085AF02: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085AF07: push ebx
0085AF08: push esi
0085AF09: push edi
0085AF0A: mov var_0C, esp
0085AF0D: mov var_08, 0040CA70h
0085AF14: mov eax, [ebp+08h]
0085AF17: and eax, 00000001h
0085AF1A: mov var_04, eax
0085AF1D: mov eax, [ebp+08h]
0085AF20: and al, FEh
0085AF22: mov [ebp+08h], eax
0085AF25: mov eax, [ebp+08h]
0085AF28: mov eax, [eax]
0085AF2A: push [ebp+08h]
0085AF2D: call [eax+04h]
0085AF30: mov eax, [ebp+0Ch]
0085AF33: or word ptr [eax], FFFFh
0085AF37: mov var_04, 00000000h
0085AF3E: mov eax, [ebp+08h]
0085AF41: mov eax, [eax]
0085AF43: push [ebp+08h]
0085AF46: call [eax+08h]
0085AF49: mov eax, var_04
0085AF4C: mov ecx, var_14
0085AF4F: mov fs:[00000000h], ecx
0085AF56: pop edi
0085AF57: pop esi
0085AF58: pop ebx
0085AF59: leave 
0085AF5A: retn 0008h
End Sub

Private sub lstUsers__85D201
0085D201: push ebp
0085D202: mov ebp, esp
0085D204: sub esp, 00000018h
0085D207: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085D20C: mov eax, fs:[00h]
0085D212: push eax
0085D213: mov fs:[00000000h], esp
0085D21A: mov eax, 00000094h
0085D21F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085D224: push ebx
0085D225: push esi
0085D226: push edi
0085D227: mov var_18, esp
0085D22A: mov var_14, 0040CCA8h
0085D231: mov eax, [ebp+08h]
0085D234: and eax, 00000001h
0085D237: mov var_10, eax
0085D23A: mov eax, [ebp+08h]
0085D23D: and al, FEh
0085D23F: mov [ebp+08h], eax
0085D242: mov var_0C, 00000000h
0085D249: mov eax, [ebp+08h]
0085D24C: mov eax, [eax]
0085D24E: push [ebp+08h]
0085D251: call [eax+04h]
0085D254: mov var_04, 00000001h
0085D25B: mov var_04, 00000002h
0085D262: push FFFFFFFFh
0085D264: call 00410A60h ; On Error ...
0085D269: mov var_04, 00000003h
0085D270: push 004412DCh
0085D275: push 00000000h
0085D277: push 0000000Dh
0085D279: mov eax, [ebp+08h]
0085D27C: mov eax, [eax]
0085D27E: push [ebp+08h]
0085D281: call [eax+00000320h]
0085D287: push eax
0085D288: lea eax, var_2C
0085D28B: push eax
0085D28C: call 00410A84h ; Set (object)
0085D291: push eax
0085D292: lea eax, var_40
0085D295: push eax
0085D296: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D29B: add esp, 00000010h
0085D29E: push eax
0085D29F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085D2A4: push eax
0085D2A5: lea eax, var_30
0085D2A8: push eax
0085D2A9: call 00410A84h ; Set (object)
0085D2AE: mov var_64, eax
0085D2B1: lea eax, var_24
0085D2B4: push eax
0085D2B5: mov eax, var_64
0085D2B8: mov eax, [eax]
0085D2BA: push var_64
0085D2BD: call [eax+24h]
0085D2C0: fclex 
0085D2C2: mov var_68, eax
0085D2C5: cmp var_68, 00000000h
0085D2C9: jnl 85D2E5h
0085D2CB: push 00000024h
0085D2CD: push 004412DCh
0085D2D2: push var_64
0085D2D5: push var_68
0085D2D8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D2DD: mov var_00000094, eax
0085D2E3: jmp 85D2ECh
0085D2E5: and var_00000094, 00000000h
0085D2EC: push var_24
0085D2EF: push [008F2044h]
0085D2F5: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085D2FA: neg eax
0085D2FC: sbb eax, eax
0085D2FE: inc eax
0085D2FF: neg eax
0085D301: mov var_6C, ax
0085D305: lea ecx, var_24
0085D308: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D30D: lea eax, var_30
0085D310: push eax
0085D311: lea eax, var_2C
0085D314: push eax
0085D315: push 00000002h
0085D317: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D31C: add esp, 0000000Ch
0085D31F: lea ecx, var_40
0085D322: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D327: movsx eax, word ptr var_6C
0085D32B: test eax, eax
0085D32D: jz 85D35Bh
0085D32F: mov var_04, 00000004h
0085D336: xor edx, edx
0085D338: lea ecx, var_24
0085D33B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085D340: lea eax, var_24
0085D343: push eax
0085D344: push 0044F874h ; self
0085D349: call 007CFFE9h
0085D34E: lea ecx, var_24
0085D351: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D356: jmp 0085D90Ch
0085D35B: mov var_04, 00000007h
0085D362: push [008F2050h]
0085D368: push 00000001h
0085D36A: call 00410886h ; UBound
0085D36F: cmp eax, 00000001h
0085D372: jz 0085D508h
0085D378: mov var_04, 00000008h
0085D37F: push [008F2050h]
0085D385: push 00000001h
0085D387: call 00410886h ; UBound
0085D38C: mov ecx, eax
0085D38E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0085D393: mov var_7C, ax
0085D397: mov word ptr var_78, 0001h
0085D39D: mov eax, [ebp+08h]
0085D3A0: mov word ptr [eax+34h], 0001h
0085D3A6: jmp 85D3C0h
0085D3A8: mov eax, [ebp+08h]
0085D3AB: mov ax, [eax+34h]
0085D3AF: add ax, var_78
0085D3B3: jo 0085D967h
0085D3B9: mov ecx, [ebp+08h]
0085D3BC: mov [ecx+34h], ax
0085D3C0: mov eax, [ebp+08h]
0085D3C3: mov ax, [eax+34h]
0085D3C7: cmp ax, var_7C
0085D3CB: jnle 0085D508h
0085D3D1: mov var_04, 00000009h
0085D3D8: mov eax, [ebp+08h]
0085D3DB: movsx eax, word ptr [eax+34h]
0085D3DF: push eax
0085D3E0: push [008F2050h]
0085D3E6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D3EB: mov eax, [eax]
0085D3ED: mov var_64, eax
0085D3F0: lea eax, var_24
0085D3F3: push eax
0085D3F4: mov eax, var_64
0085D3F7: mov eax, [eax]
0085D3F9: push var_64
0085D3FC: call [eax+000001C0h]
0085D402: fclex 
0085D404: mov var_68, eax
0085D407: cmp var_68, 00000000h
0085D40B: jnl 85D42Ah
0085D40D: push 000001C0h
0085D412: push 0044E17Ch
0085D417: push var_64
0085D41A: push var_68
0085D41D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D422: mov var_00000098, eax
0085D428: jmp 85D431h
0085D42A: and var_00000098, 00000000h
0085D431: push 004412DCh
0085D436: push 00000000h
0085D438: push 0000000Dh
0085D43A: mov eax, [ebp+08h]
0085D43D: mov eax, [eax]
0085D43F: push [ebp+08h]
0085D442: call [eax+00000320h]
0085D448: push eax
0085D449: lea eax, var_2C
0085D44C: push eax
0085D44D: call 00410A84h ; Set (object)
0085D452: push eax
0085D453: lea eax, var_40
0085D456: push eax
0085D457: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D45C: add esp, 00000010h
0085D45F: push eax
0085D460: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085D465: push eax
0085D466: lea eax, var_30
0085D469: push eax
0085D46A: call 00410A84h ; Set (object)
0085D46F: mov var_6C, eax
0085D472: lea eax, var_28
0085D475: push eax
0085D476: mov eax, var_6C
0085D479: mov eax, [eax]
0085D47B: push var_6C
0085D47E: call [eax+24h]
0085D481: fclex 
0085D483: mov var_70, eax
0085D486: cmp var_70, 00000000h
0085D48A: jnl 85D4A6h
0085D48C: push 00000024h
0085D48E: push 004412DCh
0085D493: push var_6C
0085D496: push var_70
0085D499: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D49E: mov var_0000009C, eax
0085D4A4: jmp 85D4ADh
0085D4A6: and var_0000009C, 00000000h
0085D4AD: push var_24
0085D4B0: push var_28
0085D4B3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0085D4B8: neg eax
0085D4BA: sbb eax, eax
0085D4BC: inc eax
0085D4BD: neg eax
0085D4BF: mov var_74, ax
0085D4C3: lea eax, var_28
0085D4C6: push eax
0085D4C7: lea eax, var_24
0085D4CA: push eax
0085D4CB: push 00000002h
0085D4CD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085D4D2: add esp, 0000000Ch
0085D4D5: lea eax, var_30
0085D4D8: push eax
0085D4D9: lea eax, var_2C
0085D4DC: push eax
0085D4DD: push 00000002h
0085D4DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D4E4: add esp, 0000000Ch
0085D4E7: lea ecx, var_40
0085D4EA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D4EF: movsx eax, word ptr var_74
0085D4F3: test eax, eax
0085D4F5: jz 85D4FCh
0085D4F7: jmp 0085D90Ch
0085D4FC: mov var_04, 0000000Ch
0085D503: jmp 0085D3A8h
0085D508: mov var_04, 0000000Eh
0085D50F: push 0041753Ch
0085D514: call 0041081Ah ; msvbvm60.dll.__vbaNew
0085D519: push eax
0085D51A: lea eax, var_2C
0085D51D: push eax
0085D51E: call 00410A84h ; Set (object)
0085D523: push eax
0085D524: push [008F2050h]
0085D52A: push 00000001h
0085D52C: call 00410886h ; UBound
0085D531: push eax
0085D532: push [008F2050h]
0085D538: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D53D: push eax
0085D53E: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085D543: lea ecx, var_2C
0085D546: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085D54B: mov var_04, 0000000Fh
0085D552: push [008F2050h]
0085D558: push 00000001h
0085D55A: call 00410886h ; UBound
0085D55F: push eax
0085D560: push [008F2050h]
0085D566: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D56B: mov eax, [eax]
0085D56D: mov var_6C, eax
0085D570: push 004412DCh
0085D575: push 00000000h
0085D577: push 0000000Dh
0085D579: mov eax, [ebp+08h]
0085D57C: mov eax, [eax]
0085D57E: push [ebp+08h]
0085D581: call [eax+00000320h]
0085D587: push eax
0085D588: lea eax, var_2C
0085D58B: push eax
0085D58C: call 00410A84h ; Set (object)
0085D591: push eax
0085D592: lea eax, var_40
0085D595: push eax
0085D596: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D59B: add esp, 00000010h
0085D59E: push eax
0085D59F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085D5A4: push eax
0085D5A5: lea eax, var_30
0085D5A8: push eax
0085D5A9: call 00410A84h ; Set (object)
0085D5AE: mov var_64, eax
0085D5B1: lea eax, var_24
0085D5B4: push eax
0085D5B5: mov eax, var_64
0085D5B8: mov eax, [eax]
0085D5BA: push var_64
0085D5BD: call [eax+24h]
0085D5C0: fclex 
0085D5C2: mov var_68, eax
0085D5C5: cmp var_68, 00000000h
0085D5C9: jnl 85D5E5h
0085D5CB: push 00000024h
0085D5CD: push 004412DCh
0085D5D2: push var_64
0085D5D5: push var_68
0085D5D8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D5DD: mov var_000000A0, eax
0085D5E3: jmp 85D5ECh
0085D5E5: and var_000000A0, 00000000h
0085D5EC: push var_24
0085D5EF: mov eax, var_6C
0085D5F2: mov eax, [eax]
0085D5F4: push var_6C
0085D5F7: call [eax+000001C4h]
0085D5FD: fclex 
0085D5FF: mov var_70, eax
0085D602: cmp var_70, 00000000h
0085D606: jnl 85D625h
0085D608: push 000001C4h
0085D60D: push 0044E17Ch
0085D612: push var_6C
0085D615: push var_70
0085D618: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D61D: mov var_000000A4, eax
0085D623: jmp 85D62Ch
0085D625: and var_000000A4, 00000000h
0085D62C: lea ecx, var_24
0085D62F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D634: lea eax, var_30
0085D637: push eax
0085D638: lea eax, var_2C
0085D63B: push eax
0085D63C: push 00000002h
0085D63E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D643: add esp, 0000000Ch
0085D646: lea ecx, var_40
0085D649: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D64E: mov var_04, 00000010h
0085D655: push [008F2050h]
0085D65B: push 00000001h
0085D65D: call 00410886h ; UBound
0085D662: push eax
0085D663: push [008F2050h]
0085D669: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D66E: mov eax, [eax]
0085D670: mov var_64, eax
0085D673: mov var_58, 80020004h
0085D67A: mov var_60, 0000000Ah
0085D681: mov var_48, 80020004h
0085D688: mov var_50, 0000000Ah
0085D68F: push 00000010h
0085D691: pop eax
0085D692: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085D697: lea esi, var_60
0085D69A: mov edi, esp
0085D69C: movsd 
0085D69D: movsd 
0085D69E: movsd 
0085D69F: movsd 
0085D6A0: push 00000010h
0085D6A2: pop eax
0085D6A3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085D6A8: lea esi, var_50
0085D6AB: mov edi, esp
0085D6AD: movsd 
0085D6AE: movsd 
0085D6AF: movsd 
0085D6B0: movsd 
0085D6B1: mov eax, var_64
0085D6B4: mov eax, [eax]
0085D6B6: push var_64
0085D6B9: call [eax+000002B0h]
0085D6BF: fclex 
0085D6C1: mov var_68, eax
0085D6C4: cmp var_68, 00000000h
0085D6C8: jnl 85D6E7h
0085D6CA: push 000002B0h
0085D6CF: push 0044E17Ch
0085D6D4: push var_64
0085D6D7: push var_68
0085D6DA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D6DF: mov var_000000A8, eax
0085D6E5: jmp 85D6EEh
0085D6E7: and var_000000A8, 00000000h
0085D6EE: mov var_04, 00000011h
0085D6F5: push [008F2050h]
0085D6FB: push 00000001h
0085D6FD: call 00410886h ; UBound
0085D702: push eax
0085D703: push [008F2050h]
0085D709: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D70E: mov eax, [eax]
0085D710: mov var_6C, eax
0085D713: push [008F2050h]
0085D719: push 00000001h
0085D71B: call 00410886h ; UBound
0085D720: push eax
0085D721: push [008F2050h]
0085D727: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D72C: mov eax, [eax]
0085D72E: mov var_64, eax
0085D731: lea eax, var_24
0085D734: push eax
0085D735: mov eax, var_64
0085D738: mov eax, [eax]
0085D73A: push var_64
0085D73D: call [eax+000001C0h]
0085D743: fclex 
0085D745: mov var_68, eax
0085D748: cmp var_68, 00000000h
0085D74C: jnl 85D76Bh
0085D74E: push 000001C0h
0085D753: push 0044E17Ch
0085D758: push var_64
0085D75B: push var_68
0085D75E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D763: mov var_000000AC, eax
0085D769: jmp 85D772h
0085D76B: and var_000000AC, 00000000h
0085D772: push var_24
0085D775: push 0044E204h ; - Blackshades conversation
0085D77A: call 00410A18h ; &
0085D77F: mov edx, eax
0085D781: lea ecx, var_28
0085D784: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085D789: push eax
0085D78A: mov eax, var_6C
0085D78D: mov eax, [eax]
0085D78F: push var_6C
0085D792: call [eax+54h]
0085D795: fclex 
0085D797: mov var_70, eax
0085D79A: cmp var_70, 00000000h
0085D79E: jnl 85D7BAh
0085D7A0: push 00000054h
0085D7A2: push 0044E17Ch
0085D7A7: push var_6C
0085D7AA: push var_70
0085D7AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D7B2: mov var_000000B0, eax
0085D7B8: jmp 85D7C1h
0085D7BA: and var_000000B0, 00000000h
0085D7C1: lea eax, var_28
0085D7C4: push eax
0085D7C5: lea eax, var_24
0085D7C8: push eax
0085D7C9: push 00000002h
0085D7CB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085D7D0: add esp, 0000000Ch
0085D7D3: mov var_04, 00000012h
0085D7DA: push 004412DCh
0085D7DF: push 00000000h
0085D7E1: push 0000000Dh
0085D7E3: mov eax, [ebp+08h]
0085D7E6: mov eax, [eax]
0085D7E8: push [ebp+08h]
0085D7EB: call [eax+00000320h]
0085D7F1: push eax
0085D7F2: lea eax, var_2C
0085D7F5: push eax
0085D7F6: call 00410A84h ; Set (object)
0085D7FB: push eax
0085D7FC: lea eax, var_40
0085D7FF: push eax
0085D800: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085D805: add esp, 00000010h
0085D808: push eax
0085D809: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085D80E: push eax
0085D80F: lea eax, var_30
0085D812: push eax
0085D813: call 00410A84h ; Set (object)
0085D818: mov var_64, eax
0085D81B: lea eax, var_24
0085D81E: push eax
0085D81F: mov eax, var_64
0085D822: mov eax, [eax]
0085D824: push var_64
0085D827: call [eax+24h]
0085D82A: fclex 
0085D82C: mov var_68, eax
0085D82F: cmp var_68, 00000000h
0085D833: jnl 85D84Fh
0085D835: push 00000024h
0085D837: push 004412DCh
0085D83C: push var_64
0085D83F: push var_68
0085D842: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085D847: mov var_000000B4, eax
0085D84D: jmp 85D856h
0085D84F: and var_000000B4, 00000000h
0085D856: push [008F2050h]
0085D85C: push 00000001h
0085D85E: call 00410886h ; UBound
0085D863: push eax
0085D864: push var_24
0085D867: call 007CD303h
0085D86C: lea ecx, var_24
0085D86F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085D874: lea eax, var_30
0085D877: push eax
0085D878: lea eax, var_2C
0085D87B: push eax
0085D87C: push 00000002h
0085D87E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D883: add esp, 0000000Ch
0085D886: lea ecx, var_40
0085D889: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D88E: mov var_04, 00000013h
0085D895: push 00000001h
0085D897: push [008F2050h]
0085D89D: push 00000001h
0085D89F: call 00410886h ; UBound
0085D8A4: add eax, 00000001h
0085D8A7: jo 0085D967h
0085D8AD: push eax
0085D8AE: push 00000001h
0085D8B0: push 0044E1D4h
0085D8B5: push 008F2050h
0085D8BA: push 00000004h
0085D8BC: push 00000440h
0085D8C1: call 0041078Ah ; ReDim Preserve
0085D8C6: add esp, 0000001Ch
0085D8C9: mov var_04, 00000014h
0085D8D0: push 0041753Ch
0085D8D5: call 0041081Ah ; msvbvm60.dll.__vbaNew
0085D8DA: push eax
0085D8DB: lea eax, var_2C
0085D8DE: push eax
0085D8DF: call 00410A84h ; Set (object)
0085D8E4: push eax
0085D8E5: push [008F2050h]
0085D8EB: push 00000001h
0085D8ED: call 00410886h ; UBound
0085D8F2: push eax
0085D8F3: push [008F2050h]
0085D8F9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085D8FE: push eax
0085D8FF: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085D904: lea ecx, var_2C
0085D907: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085D90C: mov var_10, 00000000h
0085D913: push 0085D948h
0085D918: jmp 85D947h
0085D91A: lea eax, var_28
0085D91D: push eax
0085D91E: lea eax, var_24
0085D921: push eax
0085D922: push 00000002h
0085D924: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085D929: add esp, 0000000Ch
0085D92C: lea eax, var_30
0085D92F: push eax
0085D930: lea eax, var_2C
0085D933: push eax
0085D934: push 00000002h
0085D936: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085D93B: add esp, 0000000Ch
0085D93E: lea ecx, var_40
0085D941: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085D946: ret 
End Sub

