VERSION 5.00
Begin VB.Form frmNotify
  Caption = "Form2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4080
  ClientHeight = 1755
  ShowInTaskbar = 0   'False
  Begin VB.PictureBox picBackground
    Picture = "frmNotify.frx":0
    Left = 0
    Top = 0
    Width = 4050
    Height = 1725
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
    Begin VB.Label Label1
      Caption = "Caption"
      ForeColor = &H404040&
      Left = 120
      Top = 1080
      Width = 3855
      Height = 495
      TabIndex = 2
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Timer tmrAlert
    Enabled = 0   'False
    Interval = 5000
    Left = 1200
    Top = 0
  End
  Begin VB.Timer tmrOpen
    Enabled = 0   'False
    Interval = 10
    Left = 0
    Top = 0
  End
  Begin VB.Timer tmrClose
    Enabled = 0   'False
    Interval = 10
    Left = 0
    Top = 0
  End
  Begin VB.Label lblAlert
    ForeColor = &HC0C0C0&
    Left = 0
    Top = 0
    Width = 4455
    Height = 495
    TabIndex = 0
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9,75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmNotify"


Private sub tmrAlert__8D929A
008D929A: push ebp
008D929B: mov ebp, esp
008D929D: sub esp, 0000000Ch
008D92A0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D92A5: mov eax, fs:[00h]
008D92AB: push eax
008D92AC: mov fs:[00000000h], esp
008D92B3: push 0000001Ch
008D92B5: pop eax
008D92B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D92BB: push ebx
008D92BC: push esi
008D92BD: push edi
008D92BE: mov var_0C, esp
008D92C1: mov var_08, 0040FE40h
008D92C8: mov eax, [ebp+08h]
008D92CB: and eax, 00000001h
008D92CE: mov var_04, eax
008D92D1: mov eax, [ebp+08h]
008D92D4: and al, FEh
008D92D6: mov [ebp+08h], eax
008D92D9: mov eax, [ebp+08h]
008D92DC: mov eax, [eax]
008D92DE: push [ebp+08h]
008D92E1: call [eax+04h]
008D92E4: mov eax, [ebp+08h]
008D92E7: mov eax, [eax]
008D92E9: push [ebp+08h]
008D92EC: call [eax+00000304h]
008D92F2: push eax
008D92F3: lea eax, var_18
008D92F6: push eax
008D92F7: call 00410A84h ; Set (object)
008D92FC: mov var_1C, eax
008D92FF: push 00000000h
008D9301: mov eax, var_1C
008D9304: mov eax, [eax]
008D9306: push var_1C
008D9309: call [eax+5Ch]
008D930C: fclex 
008D930E: mov var_20, eax
008D9311: cmp var_20, 00000000h
008D9315: jnl 8D932Eh
008D9317: push 0000005Ch
008D9319: push 00447A20h
008D931E: push var_1C
008D9321: push var_20
008D9324: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9329: mov var_2C, eax
008D932C: jmp 8D9332h
008D932E: and var_2C, 00000000h
008D9332: lea ecx, var_18
008D9335: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D933A: mov eax, [ebp+08h]
008D933D: mov eax, [eax]
008D933F: push [ebp+08h]
008D9342: call [eax+0000030Ch]
008D9348: push eax
008D9349: lea eax, var_18
008D934C: push eax
008D934D: call 00410A84h ; Set (object)
008D9352: mov var_1C, eax
008D9355: push FFFFFFFFh
008D9357: mov eax, var_1C
008D935A: mov eax, [eax]
008D935C: push var_1C
008D935F: call [eax+5Ch]
008D9362: fclex 
008D9364: mov var_20, eax
008D9367: cmp var_20, 00000000h
008D936B: jnl 8D9384h
008D936D: push 0000005Ch
008D936F: push 00447A20h
008D9374: push var_1C
008D9377: push var_20
008D937A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D937F: mov var_30, eax
008D9382: jmp 8D9388h
008D9384: and var_30, 00000000h
008D9388: lea ecx, var_18
008D938B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9390: mov var_04, 00000000h
008D9397: push 008D93A8h
008D939C: jmp 8D93A7h
008D939E: lea ecx, var_18
008D93A1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D93A6: ret 
End Sub

Private sub tmrClose__8D93C7
008D93C7: push ebp
008D93C8: mov ebp, esp
008D93CA: sub esp, 0000000Ch
008D93CD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D93D2: mov eax, fs:[00h]
008D93D8: push eax
008D93D9: mov fs:[00000000h], esp
008D93E0: push 0000006Ch
008D93E2: pop eax
008D93E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D93E8: push ebx
008D93E9: push esi
008D93EA: push edi
008D93EB: mov var_0C, esp
008D93EE: mov var_08, 0040FE50h
008D93F5: mov eax, [ebp+08h]
008D93F8: and eax, 00000001h
008D93FB: mov var_04, eax
008D93FE: mov eax, [ebp+08h]
008D9401: and al, FEh
008D9403: mov [ebp+08h], eax
008D9406: mov eax, [ebp+08h]
008D9409: mov eax, [eax]
008D940B: push [ebp+08h]
008D940E: call [eax+04h]
008D9411: lea eax, var_50
008D9414: push eax
008D9415: mov eax, [ebp+08h]
008D9418: mov eax, [eax]
008D941A: push [ebp+08h]
008D941D: call [eax+00000088h]
008D9423: fclex 
008D9425: mov var_54, eax
008D9428: cmp var_54, 00000000h
008D942C: jnl 8D9448h
008D942E: push 00000088h
008D9433: push 00446218h
008D9438: push [ebp+08h]
008D943B: push var_54
008D943E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9443: mov var_64, eax
008D9446: jmp 8D944Ch
008D9448: and var_64, 00000000h
008D944C: fld real4 ptr var_50
008D944F: call 00410814h ; msvbvm60.dll.__vbaFpI4
008D9454: mov var_28, eax
008D9457: cmp var_28, 00000078h
008D945B: jle 008D9536h
008D9461: mov eax, var_28
008D9464: sub eax, 0000001Eh
008D9467: jo 008D9633h
008D946D: mov var_68, eax
008D9470: fild dword ptr var_68
008D9473: fstp real4 ptr var_6C
008D9476: fld real4 ptr var_6C
008D9479: push ecx
008D947A: fstp real4 ptr [esp]
008D947D: mov eax, [ebp+08h]
008D9480: mov eax, [eax]
008D9482: push [ebp+08h]
008D9485: call [eax+0000008Ch]
008D948B: fclex 
008D948D: mov var_54, eax
008D9490: cmp var_54, 00000000h
008D9494: jnl 8D94B0h
008D9496: push 0000008Ch
008D949B: push 00446218h
008D94A0: push [ebp+08h]
008D94A3: push var_54
008D94A6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D94AB: mov var_70, eax
008D94AE: jmp 8D94B4h
008D94B0: and var_70, 00000000h
008D94B4: lea eax, var_50
008D94B7: push eax
008D94B8: mov eax, [ebp+08h]
008D94BB: mov eax, [eax]
008D94BD: push [ebp+08h]
008D94C0: call [eax+78h]
008D94C3: fclex 
008D94C5: mov var_54, eax
008D94C8: cmp var_54, 00000000h
008D94CC: jnl 8D94E5h
008D94CE: push 00000078h
008D94D0: push 00446218h
008D94D5: push [ebp+08h]
008D94D8: push var_54
008D94DB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D94E0: mov var_74, eax
008D94E3: jmp 8D94E9h
008D94E5: and var_74, 00000000h
008D94E9: fld real4 ptr var_50
008D94EC: fadd real4 ptr [0040C1B0h]
008D94F2: fstsw ax
008D94F4: test al, 0Dh
008D94F6: jnz 008D962Eh
008D94FC: push ecx
008D94FD: fstp real4 ptr [esp]
008D9500: mov eax, [ebp+08h]
008D9503: mov eax, [eax]
008D9505: push [ebp+08h]
008D9508: call [eax+7Ch]
008D950B: fclex 
008D950D: mov var_58, eax
008D9510: cmp var_58, 00000000h
008D9514: jnl 8D952Dh
008D9516: push 0000007Ch
008D9518: push 00446218h
008D951D: push [ebp+08h]
008D9520: push var_58
008D9523: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9528: mov var_78, eax
008D952B: jmp 8D9531h
008D952D: and var_78, 00000000h
008D9531: jmp 008D95E6h
008D9536: mov eax, [ebp+08h]
008D9539: mov eax, [eax+44h]
008D953C: mov var_44, eax
008D953F: mov var_4C, 00008003h
008D9546: lea eax, var_24
008D9549: push eax
008D954A: lea eax, var_4C
008D954D: push eax
008D954E: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008D9553: movsx eax, ax
008D9556: test eax, eax
008D9558: jz 8D9570h
008D955A: and var_44, 00000000h
008D955E: mov var_4C, 00000002h
008D9565: lea edx, var_4C
008D9568: lea ecx, var_24
008D956B: call 00410922h ; msvbvm60.dll.__vbaVarMove
008D9570: cmp [008F529Ch], 00000000h
008D9577: jnz 8D9591h
008D9579: push 008F529Ch
008D957E: push 00440F2Ch
008D9583: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D9588: mov var_7C, 008F529Ch
008D958F: jmp 8D9598h
008D9591: mov var_7C, 008F529Ch
008D9598: mov eax, var_7C
008D959B: mov eax, [eax]
008D959D: mov var_54, eax
008D95A0: push [ebp+08h]
008D95A3: lea eax, var_2C
008D95A6: push eax
008D95A7: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008D95AC: push eax
008D95AD: mov eax, var_54
008D95B0: mov eax, [eax]
008D95B2: push var_54
008D95B5: call [eax+10h]
008D95B8: fclex 
008D95BA: mov var_58, eax
008D95BD: cmp var_58, 00000000h
008D95C1: jnl 8D95DAh
008D95C3: push 00000010h
008D95C5: push 00440F1Ch
008D95CA: push var_54
008D95CD: push var_58
008D95D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D95D5: mov var_80, eax
008D95D8: jmp 8D95DEh
008D95DA: and var_80, 00000000h
008D95DE: lea ecx, var_2C
008D95E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D95E6: mov var_04, 00000000h
008D95ED: wait 
008D95EE: push 008D960Fh
008D95F3: jmp 8D9606h
008D95F5: lea ecx, var_2C
008D95F8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D95FD: lea ecx, var_3C
008D9600: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D9605: ret 
End Sub

Private sub lblAlert__8D922A
008D922A: push ebp
008D922B: mov ebp, esp
008D922D: sub esp, 0000000Ch
008D9230: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D9235: mov eax, fs:[00h]
008D923B: push eax
008D923C: mov fs:[00000000h], esp
008D9243: push 00000008h
008D9245: pop eax
008D9246: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D924B: push ebx
008D924C: push esi
008D924D: push edi
008D924E: mov var_0C, esp
008D9251: mov var_08, 0040FE38h
008D9258: mov eax, [ebp+08h]
008D925B: and eax, 00000001h
008D925E: mov var_04, eax
008D9261: mov eax, [ebp+08h]
008D9264: and al, FEh
008D9266: mov [ebp+08h], eax
008D9269: mov eax, [ebp+08h]
008D926C: mov eax, [eax]
008D926E: push [ebp+08h]
008D9271: call [eax+04h]
008D9274: mov var_04, 00000000h
008D927B: mov eax, [ebp+08h]
008D927E: mov eax, [eax]
008D9280: push [ebp+08h]
008D9283: call [eax+08h]
008D9286: mov eax, var_04
008D9289: mov ecx, var_14
008D928C: mov fs:[00000000h], ecx
008D9293: pop edi
008D9294: pop esi
008D9295: pop ebx
008D9296: leave 
008D9297: retn 0004h
End Sub

Private sub tmrOpen__8D9638
008D9638: push ebp
008D9639: mov ebp, esp
008D963B: sub esp, 0000000Ch
008D963E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D9643: mov eax, fs:[00h]
008D9649: push eax
008D964A: mov fs:[00000000h], esp
008D9651: mov eax, 0000009Ch
008D9656: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D965B: push ebx
008D965C: push esi
008D965D: push edi
008D965E: mov var_0C, esp
008D9661: mov var_08, 0040FE60h
008D9668: mov eax, [ebp+08h]
008D966B: and eax, 00000001h
008D966E: mov var_04, eax
008D9671: mov eax, [ebp+08h]
008D9674: and al, FEh
008D9676: mov [ebp+08h], eax
008D9679: mov eax, [ebp+08h]
008D967C: mov eax, [eax]
008D967E: push [ebp+08h]
008D9681: call [eax+04h]
008D9684: lea eax, var_24
008D9687: push eax
008D9688: mov eax, [ebp+08h]
008D968B: mov eax, [eax]
008D968D: push [ebp+08h]
008D9690: call [eax+00000088h]
008D9696: fclex 
008D9698: mov var_28, eax
008D969B: cmp var_28, 00000000h
008D969F: jnl 8D96BBh
008D96A1: push 00000088h
008D96A6: push 00446218h
008D96AB: push [ebp+08h]
008D96AE: push var_28
008D96B1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D96B6: mov var_3C, eax
008D96B9: jmp 8D96BFh
008D96BB: and var_3C, 00000000h
008D96BF: fld real4 ptr var_24
008D96C2: call 00410814h ; msvbvm60.dll.__vbaFpI4
008D96C7: mov var_1C, eax
008D96CA: mov eax, [ebp+08h]
008D96CD: mov eax, [eax]
008D96CF: push [ebp+08h]
008D96D2: call [eax+000002FCh]
008D96D8: push eax
008D96D9: lea eax, var_20
008D96DC: push eax
008D96DD: call 00410A84h ; Set (object)
008D96E2: mov var_28, eax
008D96E5: lea eax, var_24
008D96E8: push eax
008D96E9: mov eax, var_28
008D96EC: mov eax, [eax]
008D96EE: push var_28
008D96F1: call [eax+00000088h]
008D96F7: fclex 
008D96F9: mov var_2C, eax
008D96FC: cmp var_2C, 00000000h
008D9700: jnl 8D971Ch
008D9702: push 00000088h
008D9707: push 00440EDCh
008D970C: push var_28
008D970F: push var_2C
008D9712: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9717: mov var_40, eax
008D971A: jmp 8D9720h
008D971C: and var_40, 00000000h
008D9720: fild dword ptr var_1C
008D9723: fstp real8 ptr var_48
008D9726: fld real4 ptr var_24
008D9729: mov eax, [ebp+08h]
008D972C: fild dword ptr [eax+40h]
008D972F: fstp real8 ptr var_50
008D9732: fadd real8 ptr var_50
008D9735: fstsw ax
008D9737: test al, 0Dh
008D9739: jnz 008D9B07h
008D973F: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008D9744: fcomp real8 ptr var_48
008D9747: fstsw ax
008D9749: sahf 
008D974A: jbe 8D9755h
008D974C: mov var_54, 00000001h
008D9753: jmp 8D9759h
008D9755: and var_54, 00000000h
008D9759: mov eax, var_54
008D975C: neg eax
008D975E: mov var_30, ax
008D9762: lea ecx, var_20
008D9765: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D976A: movsx eax, word ptr var_30
008D976E: test eax, eax
008D9770: jz 008D9A17h
008D9776: mov eax, var_1C
008D9779: add eax, 0000001Eh
008D977C: jo 008D9B0Ch
008D9782: mov var_18, eax
008D9785: mov eax, [ebp+08h]
008D9788: mov eax, [eax]
008D978A: push [ebp+08h]
008D978D: call [eax+000002FCh]
008D9793: push eax
008D9794: lea eax, var_20
008D9797: push eax
008D9798: call 00410A84h ; Set (object)
008D979D: mov var_28, eax
008D97A0: lea eax, var_24
008D97A3: push eax
008D97A4: mov eax, var_28
008D97A7: mov eax, [eax]
008D97A9: push var_28
008D97AC: call [eax+00000088h]
008D97B2: fclex 
008D97B4: mov var_2C, eax
008D97B7: cmp var_2C, 00000000h
008D97BB: jnl 8D97D7h
008D97BD: push 00000088h
008D97C2: push 00440EDCh
008D97C7: push var_28
008D97CA: push var_2C
008D97CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D97D2: mov var_58, eax
008D97D5: jmp 8D97DBh
008D97D7: and var_58, 00000000h
008D97DB: fild dword ptr var_18
008D97DE: fstp real8 ptr var_60
008D97E1: fld real4 ptr var_24
008D97E4: mov eax, [ebp+08h]
008D97E7: fild dword ptr [eax+40h]
008D97EA: fstp real8 ptr var_68
008D97ED: fadd real8 ptr var_68
008D97F0: fstsw ax
008D97F2: test al, 0Dh
008D97F4: jnz 008D9B07h
008D97FA: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008D97FF: fcomp real8 ptr var_60
008D9802: fstsw ax
008D9804: sahf 
008D9805: jnb 8D9810h
008D9807: mov var_6C, 00000001h
008D980E: jmp 8D9814h
008D9810: and var_6C, 00000000h
008D9814: mov eax, var_6C
008D9817: neg eax
008D9819: mov var_30, ax
008D981D: lea ecx, var_20
008D9820: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9825: movsx eax, word ptr var_30
008D9829: test eax, eax
008D982B: jz 8D97ACh
008D982D: mov eax, [ebp+08h]
008D9830: mov eax, [eax]
008D9832: push [ebp+08h]
008D9835: call [eax+000002FCh]
008D983B: push eax
008D983C: lea eax, var_20
008D983F: push eax
008D9840: call 00410A84h ; Set (object)
008D9845: mov var_28, eax
008D9848: lea eax, var_24
008D984B: push eax
008D984C: mov eax, var_28
008D984F: mov eax, [eax]
008D9851: push var_28
008D9854: call [eax+00000088h]
008D985A: fclex 
008D985C: mov var_2C, eax
008D985F: cmp var_2C, 00000000h
008D9863: jnl 8D987Fh
008D9865: push 00000088h
008D986A: push 00440EDCh
008D986F: push var_28
008D9872: push var_2C
008D9875: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D987A: mov var_70, eax
008D987D: jmp 8D9883h
008D987F: and var_70, 00000000h
008D9883: fld real4 ptr var_24
008D9886: mov eax, [ebp+08h]
008D9889: fild dword ptr [eax+40h]
008D988C: fstp real8 ptr var_78
008D988F: fadd real8 ptr var_78
008D9892: fstsw ax
008D9894: test al, 0Dh
008D9896: jnz 008D9B07h
008D989C: call 00410814h ; msvbvm60.dll.__vbaFpI4
008D98A1: mov var_18, eax
008D98A4: lea ecx, var_20
008D98A7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D98AC: lea eax, var_24
008D98AF: push eax
008D98B0: mov eax, [ebp+08h]
008D98B3: mov eax, [eax]
008D98B5: push [ebp+08h]
008D98B8: call [eax+00000088h]
008D98BE: fclex 
008D98C0: mov var_28, eax
008D98C3: cmp var_28, 00000000h
008D98C7: jnl 8D98E3h
008D98C9: push 00000088h
008D98CE: push 00446218h
008D98D3: push [ebp+08h]
008D98D6: push var_28
008D98D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D98DE: mov var_7C, eax
008D98E1: jmp 8D98E7h
008D98E3: and var_7C, 00000000h
008D98E7: fld real4 ptr var_24
008D98EA: mov eax, var_18
008D98ED: sub eax, var_1C
008D98F0: jo 008D9B0Ch
008D98F6: mov var_80, eax
008D98F9: fild dword ptr var_80
008D98FC: fstp real8 ptr var_00000088
008D9902: fadd real8 ptr var_00000088
008D9908: fstsw ax
008D990A: test al, 0Dh
008D990C: jnz 008D9B07h
008D9912: fstp real4 ptr var_0000008C
008D9918: fld real4 ptr var_0000008C
008D991E: push ecx
008D991F: fstp real4 ptr [esp]
008D9922: mov eax, [ebp+08h]
008D9925: mov eax, [eax]
008D9927: push [ebp+08h]
008D992A: call [eax+0000008Ch]
008D9930: fclex 
008D9932: mov var_2C, eax
008D9935: cmp var_2C, 00000000h
008D9939: jnl 8D9958h
008D993B: push 0000008Ch
008D9940: push 00446218h
008D9945: push [ebp+08h]
008D9948: push var_2C
008D994B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9950: mov var_00000090, eax
008D9956: jmp 8D995Fh
008D9958: and var_00000090, 00000000h
008D995F: lea eax, var_24
008D9962: push eax
008D9963: mov eax, [ebp+08h]
008D9966: mov eax, [eax]
008D9968: push [ebp+08h]
008D996B: call [eax+78h]
008D996E: fclex 
008D9970: mov var_28, eax
008D9973: cmp var_28, 00000000h
008D9977: jnl 8D9993h
008D9979: push 00000078h
008D997B: push 00446218h
008D9980: push [ebp+08h]
008D9983: push var_28
008D9986: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D998B: mov var_00000094, eax
008D9991: jmp 8D999Ah
008D9993: and var_00000094, 00000000h
008D999A: fld real4 ptr var_24
008D999D: mov eax, var_18
008D99A0: sub eax, var_1C
008D99A3: jo 008D9B0Ch
008D99A9: mov var_00000098, eax
008D99AF: fild dword ptr var_00000098
008D99B5: fstp real8 ptr var_000000A0
008D99BB: fsub real8 ptr var_000000A0
008D99C1: fstsw ax
008D99C3: test al, 0Dh
008D99C5: jnz 008D9B07h
008D99CB: fstp real4 ptr var_000000A4
008D99D1: fld real4 ptr var_000000A4
008D99D7: push ecx
008D99D8: fstp real4 ptr [esp]
008D99DB: mov eax, [ebp+08h]
008D99DE: mov eax, [eax]
008D99E0: push [ebp+08h]
008D99E3: call [eax+7Ch]
008D99E6: fclex 
008D99E8: mov var_2C, eax
008D99EB: cmp var_2C, 00000000h
008D99EF: jnl 8D9A0Bh
008D99F1: push 0000007Ch
008D99F3: push 00446218h
008D99F8: push [ebp+08h]
008D99FB: push var_2C
008D99FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9A03: mov var_000000A8, eax
008D9A09: jmp 8D9A12h
008D9A0B: and var_000000A8, 00000000h
008D9A12: jmp 008D9ACFh
008D9A17: mov eax, [ebp+08h]
008D9A1A: mov eax, [eax]
008D9A1C: push [ebp+08h]
008D9A1F: call [eax+00000308h]
008D9A25: push eax
008D9A26: lea eax, var_20
008D9A29: push eax
008D9A2A: call 00410A84h ; Set (object)
008D9A2F: mov var_28, eax
008D9A32: push 00000000h
008D9A34: mov eax, var_28
008D9A37: mov eax, [eax]
008D9A39: push var_28
008D9A3C: call [eax+5Ch]
008D9A3F: fclex 
008D9A41: mov var_2C, eax
008D9A44: cmp var_2C, 00000000h
008D9A48: jnl 8D9A64h
008D9A4A: push 0000005Ch
008D9A4C: push 00447A20h
008D9A51: push var_28
008D9A54: push var_2C
008D9A57: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9A5C: mov var_000000AC, eax
008D9A62: jmp 8D9A6Bh
008D9A64: and var_000000AC, 00000000h
008D9A6B: lea ecx, var_20
008D9A6E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9A73: mov eax, [ebp+08h]
008D9A76: mov eax, [eax]
008D9A78: push [ebp+08h]
008D9A7B: call [eax+00000304h]
008D9A81: push eax
008D9A82: lea eax, var_20
008D9A85: push eax
008D9A86: call 00410A84h ; Set (object)
008D9A8B: mov var_28, eax
008D9A8E: push FFFFFFFFh
008D9A90: mov eax, var_28
008D9A93: mov eax, [eax]
008D9A95: push var_28
008D9A98: call [eax+5Ch]
008D9A9B: fclex 
008D9A9D: mov var_2C, eax
008D9AA0: cmp var_2C, 00000000h
008D9AA4: jnl 8D9AC0h
008D9AA6: push 0000005Ch
008D9AA8: push 00447A20h
008D9AAD: push var_28
008D9AB0: push var_2C
008D9AB3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9AB8: mov var_000000B0, eax
008D9ABE: jmp 8D9AC7h
008D9AC0: and var_000000B0, 00000000h
008D9AC7: lea ecx, var_20
008D9ACA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9ACF: mov var_04, 00000000h
008D9AD6: wait 
008D9AD7: push 008D9AE8h
008D9ADC: jmp 8D9AE7h
008D9ADE: lea ecx, var_20
008D9AE1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9AE6: ret 
End Sub

Private sub unknown_8D9B11
008D9B11: push ebp
008D9B12: mov ebp, esp
008D9B14: sub esp, 0000000Ch
008D9B17: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D9B1C: mov eax, fs:[00h]
008D9B22: push eax
008D9B23: mov fs:[00000000h], esp
008D9B2A: mov eax, 00000148h
008D9B2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D9B34: push ebx
008D9B35: push esi
008D9B36: push edi
008D9B37: mov var_0C, esp
008D9B3A: mov var_08, 0040FE70h
008D9B41: mov var_04, 00000000h
008D9B48: mov eax, [ebp+08h]
008D9B4B: mov eax, [eax]
008D9B4D: push [ebp+08h]
008D9B50: call [eax+04h]
008D9B53: mov var_7C, 00000001h
008D9B5A: mov var_00000084, 00000002h
008D9B64: lea eax, var_24
008D9B67: push eax
008D9B68: lea eax, var_00000084
008D9B6E: push eax
008D9B6F: lea eax, var_44
008D9B72: push eax
008D9B73: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
008D9B78: mov edx, eax
008D9B7A: lea ecx, var_24
008D9B7D: call 00410922h ; msvbvm60.dll.__vbaVarMove
008D9B82: lea eax, var_24
008D9B85: push eax
008D9B86: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D9B8B: mov ecx, [ebp+08h]
008D9B8E: mov [ecx+44h], eax
008D9B91: mov eax, [ebp+08h]
008D9B94: mov eax, [eax]
008D9B96: push [ebp+08h]
008D9B99: call [eax+00000300h]
008D9B9F: push eax
008D9BA0: lea eax, var_30
008D9BA3: push eax
008D9BA4: call 00410A84h ; Set (object)
008D9BA9: mov var_000000C0, eax
008D9BAF: mov eax, [ebp+0Ch]
008D9BB2: push [eax]
008D9BB4: mov eax, var_000000C0
008D9BBA: mov eax, [eax]
008D9BBC: push var_000000C0
008D9BC2: call [eax+54h]
008D9BC5: fclex 
008D9BC7: mov var_000000C4, eax
008D9BCD: cmp var_000000C4, 00000000h
008D9BD4: jnl 8D9BF6h
008D9BD6: push 00000054h
008D9BD8: push 004425E4h
008D9BDD: push var_000000C0
008D9BE3: push var_000000C4
008D9BE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9BEE: mov var_000000E4, eax
008D9BF4: jmp 8D9BFDh
008D9BF6: and var_000000E4, 00000000h
008D9BFD: lea ecx, var_30
008D9C00: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9C05: mov eax, [ebp+08h]
008D9C08: mov eax, [eax]
008D9C0A: push [ebp+08h]
008D9C0D: call [eax+00000304h]
008D9C13: push eax
008D9C14: lea eax, var_30
008D9C17: push eax
008D9C18: call 00410A84h ; Set (object)
008D9C1D: mov var_000000C0, eax
008D9C23: mov eax, [ebp+10h]
008D9C26: push [eax]
008D9C28: mov eax, var_000000C0
008D9C2E: mov eax, [eax]
008D9C30: push var_000000C0
008D9C36: call [eax+64h]
008D9C39: fclex 
008D9C3B: mov var_000000C4, eax
008D9C41: cmp var_000000C4, 00000000h
008D9C48: jnl 8D9C6Ah
008D9C4A: push 00000064h
008D9C4C: push 00447A20h
008D9C51: push var_000000C0
008D9C57: push var_000000C4
008D9C5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9C62: mov var_000000E8, eax
008D9C68: jmp 8D9C71h
008D9C6A: and var_000000E8, 00000000h
008D9C71: lea ecx, var_30
008D9C74: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9C79: push 00000010h
008D9C7B: call 0044627Ch
008D9C80: mov var_000000B8, eax
008D9C86: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D9C8B: mov eax, [ebp+08h]
008D9C8E: mov ecx, var_000000B8
008D9C94: mov [eax+34h], ecx
008D9C97: push 00000011h
008D9C99: call 0044627Ch
008D9C9E: mov var_000000B8, eax
008D9CA4: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D9CA9: mov eax, [ebp+08h]
008D9CAC: mov ecx, var_000000B8
008D9CB2: mov [eax+38h], ecx
008D9CB5: lea eax, var_000000BC
008D9CBB: push eax
008D9CBC: mov eax, [ebp+08h]
008D9CBF: mov eax, [eax]
008D9CC1: push [ebp+08h]
008D9CC4: call [eax+00000100h]
008D9CCA: fclex 
008D9CCC: mov var_000000C0, eax
008D9CD2: cmp var_000000C0, 00000000h
008D9CD9: jnl 8D9CFBh
008D9CDB: push 00000100h
008D9CE0: push 00446218h
008D9CE5: push [ebp+08h]
008D9CE8: push var_000000C0
008D9CEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9CF3: mov var_000000EC, eax
008D9CF9: jmp 8D9D02h
008D9CFB: and var_000000EC, 00000000h
008D9D02: lea eax, var_000000B8
008D9D08: push eax
008D9D09: mov eax, [ebp+08h]
008D9D0C: mov eax, [eax]
008D9D0E: push [ebp+08h]
008D9D11: call [eax+00000080h]
008D9D17: fclex 
008D9D19: mov var_000000C4, eax
008D9D1F: cmp var_000000C4, 00000000h
008D9D26: jnl 8D9D48h
008D9D28: push 00000080h
008D9D2D: push 00446218h
008D9D32: push [ebp+08h]
008D9D35: push var_000000C4
008D9D3B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9D40: mov var_000000F0, eax
008D9D46: jmp 8D9D4Fh
008D9D48: and var_000000F0, 00000000h
008D9D4F: fld real4 ptr var_000000B8
008D9D55: fsub real4 ptr var_000000BC
008D9D5B: fstsw ax
008D9D5D: test al, 0Dh
008D9D5F: jnz 008DA515h
008D9D65: call 00410814h ; msvbvm60.dll.__vbaFpI4
008D9D6A: mov ecx, [ebp+08h]
008D9D6D: mov [ecx+3Ch], eax
008D9D70: lea eax, var_000000BC
008D9D76: push eax
008D9D77: mov eax, [ebp+08h]
008D9D7A: mov eax, [eax]
008D9D7C: push [ebp+08h]
008D9D7F: call [eax+00000108h]
008D9D85: fclex 
008D9D87: mov var_000000C0, eax
008D9D8D: cmp var_000000C0, 00000000h
008D9D94: jnl 8D9DB6h
008D9D96: push 00000108h
008D9D9B: push 00446218h
008D9DA0: push [ebp+08h]
008D9DA3: push var_000000C0
008D9DA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9DAE: mov var_000000F4, eax
008D9DB4: jmp 8D9DBDh
008D9DB6: and var_000000F4, 00000000h
008D9DBD: lea eax, var_000000B8
008D9DC3: push eax
008D9DC4: mov eax, [ebp+08h]
008D9DC7: mov eax, [eax]
008D9DC9: push [ebp+08h]
008D9DCC: call [eax+00000088h]
008D9DD2: fclex 
008D9DD4: mov var_000000C4, eax
008D9DDA: cmp var_000000C4, 00000000h
008D9DE1: jnl 8D9E03h
008D9DE3: push 00000088h
008D9DE8: push 00446218h
008D9DED: push [ebp+08h]
008D9DF0: push var_000000C4
008D9DF6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9DFB: mov var_000000F8, eax
008D9E01: jmp 8D9E0Ah
008D9E03: and var_000000F8, 00000000h
008D9E0A: fld real4 ptr var_000000B8
008D9E10: fsub real4 ptr var_000000BC
008D9E16: fstsw ax
008D9E18: test al, 0Dh
008D9E1A: jnz 008DA515h
008D9E20: call 00410814h ; msvbvm60.dll.__vbaFpI4
008D9E25: mov ecx, [ebp+08h]
008D9E28: mov [ecx+40h], eax
008D9E2B: fld real4 ptr [0040C1A8h]
008D9E31: push ecx
008D9E32: fstp real4 ptr [esp]
008D9E35: mov eax, [ebp+08h]
008D9E38: mov eax, [eax]
008D9E3A: push [ebp+08h]
008D9E3D: call [eax+0000008Ch]
008D9E43: fclex 
008D9E45: mov var_000000C0, eax
008D9E4B: cmp var_000000C0, 00000000h
008D9E52: jnl 8D9E74h
008D9E54: push 0000008Ch
008D9E59: push 00446218h
008D9E5E: push [ebp+08h]
008D9E61: push var_000000C0
008D9E67: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9E6C: mov var_000000FC, eax
008D9E72: jmp 8D9E7Bh
008D9E74: and var_000000FC, 00000000h
008D9E7B: mov eax, [ebp+08h]
008D9E7E: mov eax, [eax]
008D9E80: push [ebp+08h]
008D9E83: call [eax+000002FCh]
008D9E89: push eax
008D9E8A: lea eax, var_30
008D9E8D: push eax
008D9E8E: call 00410A84h ; Set (object)
008D9E93: mov var_000000C0, eax
008D9E99: lea eax, var_000000B8
008D9E9F: push eax
008D9EA0: mov eax, var_000000C0
008D9EA6: mov eax, [eax]
008D9EA8: push var_000000C0
008D9EAE: call [eax+00000080h]
008D9EB4: fclex 
008D9EB6: mov var_000000C4, eax
008D9EBC: cmp var_000000C4, 00000000h
008D9EC3: jnl 8D9EE8h
008D9EC5: push 00000080h
008D9ECA: push 00440EDCh
008D9ECF: push var_000000C0
008D9ED5: push var_000000C4
008D9EDB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9EE0: mov var_00000100, eax
008D9EE6: jmp 8D9EEFh
008D9EE8: and var_00000100, 00000000h
008D9EEF: fld real4 ptr var_000000B8
008D9EF5: mov eax, [ebp+08h]
008D9EF8: fild dword ptr [eax+3Ch]
008D9EFB: fstp real8 ptr var_00000108
008D9F01: fadd real8 ptr var_00000108
008D9F07: fstsw ax
008D9F09: test al, 0Dh
008D9F0B: jnz 008DA515h
008D9F11: fstp real4 ptr var_0000010C
008D9F17: fld real4 ptr var_0000010C
008D9F1D: push ecx
008D9F1E: fstp real4 ptr [esp]
008D9F21: mov eax, [ebp+08h]
008D9F24: mov eax, [eax]
008D9F26: push [ebp+08h]
008D9F29: call [eax+00000084h]
008D9F2F: fclex 
008D9F31: mov var_000000C8, eax
008D9F37: cmp var_000000C8, 00000000h
008D9F3E: jnl 8D9F60h
008D9F40: push 00000084h
008D9F45: push 00446218h
008D9F4A: push [ebp+08h]
008D9F4D: push var_000000C8
008D9F53: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9F58: mov var_00000110, eax
008D9F5E: jmp 8D9F67h
008D9F60: and var_00000110, 00000000h
008D9F67: lea ecx, var_30
008D9F6A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9F6F: cmp [008F529Ch], 00000000h
008D9F76: jnz 8D9F93h
008D9F78: push 008F529Ch
008D9F7D: push 00440F2Ch
008D9F82: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D9F87: mov var_00000114, 008F529Ch
008D9F91: jmp 8D9F9Dh
008D9F93: mov var_00000114, 008F529Ch
008D9F9D: mov eax, var_00000114
008D9FA3: mov eax, [eax]
008D9FA5: mov var_000000C0, eax
008D9FAB: lea eax, var_30
008D9FAE: push eax
008D9FAF: mov eax, var_000000C0
008D9FB5: mov eax, [eax]
008D9FB7: push var_000000C0
008D9FBD: call [eax+18h]
008D9FC0: fclex 
008D9FC2: mov var_000000C4, eax
008D9FC8: cmp var_000000C4, 00000000h
008D9FCF: jnl 8D9FF1h
008D9FD1: push 00000018h
008D9FD3: push 00440F1Ch
008D9FD8: push var_000000C0
008D9FDE: push var_000000C4
008D9FE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9FE9: mov var_00000118, eax
008D9FEF: jmp 8D9FF8h
008D9FF1: and var_00000118, 00000000h
008D9FF8: mov eax, var_30
008D9FFB: mov var_000000C8, eax
008DA001: lea eax, var_000000B8
008DA007: push eax
008DA008: mov eax, var_000000C8
008DA00E: mov eax, [eax]
008DA010: push var_000000C8
008DA016: call [eax+00000080h]
008DA01C: fclex 
008DA01E: mov var_000000CC, eax
008DA024: cmp var_000000CC, 00000000h
008DA02B: jnl 8DA050h
008DA02D: push 00000080h
008DA032: push 0044C888h
008DA037: push var_000000C8
008DA03D: push var_000000CC
008DA043: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA048: mov var_0000011C, eax
008DA04E: jmp 8DA057h
008DA050: and var_0000011C, 00000000h
008DA057: lea eax, var_000000BC
008DA05D: push eax
008DA05E: mov eax, [ebp+08h]
008DA061: mov eax, [eax]
008DA063: push [ebp+08h]
008DA066: call [eax+00000080h]
008DA06C: fclex 
008DA06E: mov var_000000D0, eax
008DA074: cmp var_000000D0, 00000000h
008DA07B: jnl 8DA09Dh
008DA07D: push 00000080h
008DA082: push 00446218h
008DA087: push [ebp+08h]
008DA08A: push var_000000D0
008DA090: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA095: mov var_00000120, eax
008DA09B: jmp 8DA0A4h
008DA09D: and var_00000120, 00000000h
008DA0A4: mov eax, [ebp+08h]
008DA0A7: fild dword ptr [eax+34h]
008DA0AA: fstp real8 ptr var_00000128
008DA0B0: fld real4 ptr var_000000B8
008DA0B6: fmul real8 ptr var_00000128
008DA0BC: fsub real4 ptr var_000000BC
008DA0C2: fstsw ax
008DA0C4: test al, 0Dh
008DA0C6: jnz 008DA515h
008DA0CC: fstp real4 ptr var_0000012C
008DA0D2: fld real4 ptr var_0000012C
008DA0D8: push ecx
008DA0D9: fstp real4 ptr [esp]
008DA0DC: mov eax, [ebp+08h]
008DA0DF: mov eax, [eax]
008DA0E1: push [ebp+08h]
008DA0E4: call [eax+74h]
008DA0E7: fclex 
008DA0E9: mov var_000000D4, eax
008DA0EF: cmp var_000000D4, 00000000h
008DA0F6: jnl 8DA115h
008DA0F8: push 00000074h
008DA0FA: push 00446218h
008DA0FF: push [ebp+08h]
008DA102: push var_000000D4
008DA108: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA10D: mov var_00000130, eax
008DA113: jmp 8DA11Ch
008DA115: and var_00000130, 00000000h
008DA11C: lea ecx, var_30
008DA11F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DA124: cmp [008F529Ch], 00000000h
008DA12B: jnz 8DA148h
008DA12D: push 008F529Ch
008DA132: push 00440F2Ch
008DA137: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DA13C: mov var_00000134, 008F529Ch
008DA146: jmp 8DA152h
008DA148: mov var_00000134, 008F529Ch
008DA152: mov eax, var_00000134
008DA158: mov eax, [eax]
008DA15A: mov var_000000C0, eax
008DA160: lea eax, var_30
008DA163: push eax
008DA164: mov eax, var_000000C0
008DA16A: mov eax, [eax]
008DA16C: push var_000000C0
008DA172: call [eax+18h]
008DA175: fclex 
008DA177: mov var_000000C4, eax
008DA17D: cmp var_000000C4, 00000000h
008DA184: jnl 8DA1A6h
008DA186: push 00000018h
008DA188: push 00440F1Ch
008DA18D: push var_000000C0
008DA193: push var_000000C4
008DA199: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA19E: mov var_00000138, eax
008DA1A4: jmp 8DA1ADh
008DA1A6: and var_00000138, 00000000h
008DA1AD: mov eax, var_30
008DA1B0: mov var_000000C8, eax
008DA1B6: lea eax, var_000000B8
008DA1BC: push eax
008DA1BD: mov eax, var_000000C8
008DA1C3: mov eax, [eax]
008DA1C5: push var_000000C8
008DA1CB: call [eax+00000088h]
008DA1D1: fclex 
008DA1D3: mov var_000000CC, eax
008DA1D9: cmp var_000000CC, 00000000h
008DA1E0: jnl 8DA205h
008DA1E2: push 00000088h
008DA1E7: push 0044C888h
008DA1EC: push var_000000C8
008DA1F2: push var_000000CC
008DA1F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA1FD: mov var_0000013C, eax
008DA203: jmp 8DA20Ch
008DA205: and var_0000013C, 00000000h
008DA20C: mov eax, [ebp+08h]
008DA20F: fild dword ptr [eax+38h]
008DA212: fstp real8 ptr var_00000144
008DA218: fld real4 ptr var_000000B8
008DA21E: fmul real8 ptr var_00000144
008DA224: fstp real8 ptr var_0000009C
008DA22A: fstsw ax
008DA22C: test al, 0Dh
008DA22E: jnz 008DA515h
008DA234: mov var_000000A4, 00000005h
008DA23E: mov eax, [ebp+08h]
008DA241: mov eax, [eax]
008DA243: push [ebp+08h]
008DA246: call [eax+000002FCh]
008DA24C: push eax
008DA24D: lea eax, var_34
008DA250: push eax
008DA251: call 00410A84h ; Set (object)
008DA256: mov var_000000D0, eax
008DA25C: lea eax, var_000000BC
008DA262: push eax
008DA263: mov eax, var_000000D0
008DA269: mov eax, [eax]
008DA26B: push var_000000D0
008DA271: call [eax+00000088h]
008DA277: fclex 
008DA279: mov var_000000D4, eax
008DA27F: cmp var_000000D4, 00000000h
008DA286: jnl 8DA2ABh
008DA288: push 00000088h
008DA28D: push 00440EDCh
008DA292: push var_000000D0
008DA298: push var_000000D4
008DA29E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA2A3: mov var_00000148, eax
008DA2A9: jmp 8DA2B2h
008DA2AB: and var_00000148, 00000000h
008DA2B2: fld real4 ptr var_000000BC
008DA2B8: mov eax, [ebp+08h]
008DA2BB: fild dword ptr [eax+40h]
008DA2BE: fstp real8 ptr var_00000150
008DA2C4: fadd real8 ptr var_00000150
008DA2CA: fstp real8 ptr var_0000008C
008DA2D0: fstsw ax
008DA2D2: test al, 0Dh
008DA2D4: jnz 008DA515h
008DA2DA: mov var_00000094, 00000005h
008DA2E4: mov var_7C, 00000001h
008DA2EB: mov var_00000084, 00000002h
008DA2F5: mov var_000000AC, 0000012Ch
008DA2FF: mov var_000000B4, 00000002h
008DA309: lea eax, var_000000A4
008DA30F: push eax
008DA310: lea eax, var_00000094
008DA316: push eax
008DA317: lea eax, var_24
008DA31A: push eax
008DA31B: lea eax, var_00000084
008DA321: push eax
008DA322: lea eax, var_44
008DA325: push eax
008DA326: call 004107DEh ; msvbvm60.dll.__vbaVarSub
008DA32B: push eax
008DA32C: lea eax, var_54
008DA32F: push eax
008DA330: call 00410B50h ; msvbvm60.dll.__vbaVarMul
008DA335: push eax
008DA336: lea eax, var_64
008DA339: push eax
008DA33A: call 004107DEh ; msvbvm60.dll.__vbaVarSub
008DA33F: push eax
008DA340: lea eax, var_000000B4
008DA346: push eax
008DA347: lea eax, var_74
008DA34A: push eax
008DA34B: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
008DA350: push eax
008DA351: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DA356: push ecx
008DA357: fstp real4 ptr [esp]
008DA35A: mov eax, [ebp+08h]
008DA35D: mov eax, [eax]
008DA35F: push [ebp+08h]
008DA362: call [eax+7Ch]
008DA365: fclex 
008DA367: mov var_000000D8, eax
008DA36D: cmp var_000000D8, 00000000h
008DA374: jnl 8DA393h
008DA376: push 0000007Ch
008DA378: push 00446218h
008DA37D: push [ebp+08h]
008DA380: push var_000000D8
008DA386: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA38B: mov var_00000154, eax
008DA391: jmp 8DA39Ah
008DA393: and var_00000154, 00000000h
008DA39A: lea eax, var_34
008DA39D: push eax
008DA39E: lea eax, var_30
008DA3A1: push eax
008DA3A2: push 00000002h
008DA3A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DA3A9: add esp, 0000000Ch
008DA3AC: lea ecx, var_74
008DA3AF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DA3B4: mov var_0000008C, 80020004h
008DA3BE: mov var_00000094, 0000000Ah
008DA3C8: mov var_7C, 80020004h
008DA3CF: mov var_00000084, 0000000Ah
008DA3D9: push 00000010h
008DA3DB: pop eax
008DA3DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DA3E1: lea esi, var_00000094
008DA3E7: mov edi, esp
008DA3E9: movsd 
008DA3EA: movsd 
008DA3EB: movsd 
008DA3EC: movsd 
008DA3ED: push 00000010h
008DA3EF: pop eax
008DA3F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DA3F5: lea esi, var_00000084
008DA3FB: mov edi, esp
008DA3FD: movsd 
008DA3FE: movsd 
008DA3FF: movsd 
008DA400: movsd 
008DA401: mov eax, [ebp+08h]
008DA404: mov eax, [eax]
008DA406: push [ebp+08h]
008DA409: call [eax+000002B0h]
008DA40F: fclex 
008DA411: mov var_000000C0, eax
008DA417: cmp var_000000C0, 00000000h
008DA41E: jnl 8DA440h
008DA420: push 000002B0h
008DA425: push 00446218h
008DA42A: push [ebp+08h]
008DA42D: push var_000000C0
008DA433: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA438: mov var_00000158, eax
008DA43E: jmp 8DA447h
008DA440: and var_00000158, 00000000h
008DA447: mov eax, [ebp+08h]
008DA44A: mov eax, [eax]
008DA44C: push [ebp+08h]
008DA44F: call [eax+00000308h]
008DA455: push eax
008DA456: lea eax, var_30
008DA459: push eax
008DA45A: call 00410A84h ; Set (object)
008DA45F: mov var_000000C0, eax
008DA465: push FFFFFFFFh
008DA467: mov eax, var_000000C0
008DA46D: mov eax, [eax]
008DA46F: push var_000000C0
008DA475: call [eax+5Ch]
008DA478: fclex 
008DA47A: mov var_000000C4, eax
008DA480: cmp var_000000C4, 00000000h
008DA487: jnl 8DA4A9h
008DA489: push 0000005Ch
008DA48B: push 00447A20h
008DA490: push var_000000C0
008DA496: push var_000000C4
008DA49C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA4A1: mov var_0000015C, eax
008DA4A7: jmp 8DA4B0h
008DA4A9: and var_0000015C, 00000000h
008DA4B0: lea ecx, var_30
008DA4B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DA4B8: wait 
008DA4B9: push 008DA4F6h
008DA4BE: jmp 8DA4EDh
008DA4C0: lea eax, var_34
008DA4C3: push eax
008DA4C4: lea eax, var_30
008DA4C7: push eax
008DA4C8: push 00000002h
008DA4CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DA4CF: add esp, 0000000Ch
008DA4D2: lea eax, var_74
008DA4D5: push eax
008DA4D6: lea eax, var_64
008DA4D9: push eax
008DA4DA: lea eax, var_54
008DA4DD: push eax
008DA4DE: lea eax, var_44
008DA4E1: push eax
008DA4E2: push 00000004h
008DA4E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DA4E9: add esp, 00000014h
008DA4EC: ret 
End Sub

Private sub unknown_8D91E2
008D91E2: push ebp
008D91E3: mov ebp, esp
008D91E5: push 00000008h
008D91E7: pop eax
008D91E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D91ED: mov eax, [ebp+08h]
008D91F0: mov eax, [eax]
008D91F2: push [ebp+08h]
008D91F5: call [eax+000002B4h]
008D91FB: fclex 
008D91FD: mov var_04, eax
008D9200: cmp var_04, 00000000h
008D9204: jnl 8D9220h
008D9206: push 000002B4h
008D920B: push 00446218h
008D9210: push [ebp+08h]
008D9213: push var_04
008D9216: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D921B: mov var_08, eax
008D921E: jmp 8D9224h
008D9220: and var_08, 00000000h
008D9224: xor eax, eax
008D9226: leave 
008D9227: retn 0004h
End Sub

