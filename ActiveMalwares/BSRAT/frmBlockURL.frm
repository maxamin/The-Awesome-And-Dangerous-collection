VERSION 5.00
Begin VB.Form frmBlockURL
  Caption = "Redirect/Block URLs"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmBlockURL.frx":0
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 9615
  ClientHeight = 5820
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtHosts
    Left = 0
    Top = 0
    Width = 9615
    Height = 5775
    Text = "127.0.0.1 www.google.com\n"
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
  End
  Begin VB.Menu mnuBlockeraMeny
    Visible = 0   'False
    Caption = "Blockera"
    Begin VB.Menu mnuBlockera
      Index = 0
      Caption = "Update"
    End
    Begin VB.Menu mnuBlockera
      Index = 1
      Caption = "Update Selected"
    End
    Begin VB.Menu mnuBlockera
      Index = 2
      Caption = "Update All"
    End
    Begin VB.Menu mnuBlockera
      Index = 3
      Caption = "Information"
    End
  End
End

Attribute VB_Name = "frmBlockURL"


Private sub mnuBlockera__7DF288
007DF288: push ebp
007DF289: mov ebp, esp
007DF28B: sub esp, 00000018h
007DF28E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DF293: mov eax, fs:[00h]
007DF299: push eax
007DF29A: mov fs:[00000000h], esp
007DF2A1: mov eax, 00000138h
007DF2A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF2AB: push ebx
007DF2AC: push esi
007DF2AD: push edi
007DF2AE: mov var_18, esp
007DF2B1: mov var_14, 00409790h
007DF2B8: mov eax, [ebp+08h]
007DF2BB: and eax, 00000001h
007DF2BE: mov var_10, eax
007DF2C1: mov eax, [ebp+08h]
007DF2C4: and al, FEh
007DF2C6: mov [ebp+08h], eax
007DF2C9: mov var_0C, 00000000h
007DF2D0: mov eax, [ebp+08h]
007DF2D3: mov eax, [eax]
007DF2D5: push [ebp+08h]
007DF2D8: call [eax+04h]
007DF2DB: mov var_04, 00000001h
007DF2E2: mov var_04, 00000002h
007DF2E9: push FFFFFFFFh
007DF2EB: call 00410A60h ; On Error ...
007DF2F0: mov var_04, 00000003h
007DF2F7: mov eax, [ebp+0Ch]
007DF2FA: mov ax, [eax]
007DF2FD: mov var_00000120, ax
007DF304: movsx eax, word ptr var_00000120
007DF30B: mov var_00000140, eax
007DF311: cmp var_00000140, 00000000h
007DF318: jz 7DF34Bh
007DF31A: cmp var_00000140, 00000001h
007DF321: jz 007DF447h
007DF327: cmp var_00000140, 00000002h
007DF32E: jz 007DF8A3h
007DF334: cmp var_00000140, 00000003h
007DF33B: jz 007DFAA5h
007DF341: jmp 007DFB32h
007DF346: jmp 007DFB32h
007DF34B: mov var_04, 00000005h
007DF352: lea eax, var_34
007DF355: push eax
007DF356: mov eax, [ebp+08h]
007DF359: mov eax, [eax]
007DF35B: push [ebp+08h]
007DF35E: call [eax+000001C0h]
007DF364: fclex 
007DF366: mov var_000000D8, eax
007DF36C: cmp var_000000D8, 00000000h
007DF373: jnl 7DF395h
007DF375: push 000001C0h
007DF37A: push 00443E00h
007DF37F: push [ebp+08h]
007DF382: push var_000000D8
007DF388: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DF38D: mov var_00000144, eax
007DF393: jmp 7DF39Ch
007DF395: and var_00000144, 00000000h
007DF39C: push var_34
007DF39F: call 004109DCh ; Val(arg_1)
007DF3A4: fstp real8 ptr var_000000D4
007DF3AA: push 00000000h
007DF3AC: push 00000000h
007DF3AE: push 00000001h
007DF3B0: push 00000000h
007DF3B2: lea eax, var_00000088
007DF3B8: push eax
007DF3B9: push 00000010h
007DF3BB: push 00000880h
007DF3C0: call 00410946h ; ReDim
007DF3C5: add esp, 0000001Ch
007DF3C8: mov eax, [ebp+08h]
007DF3CB: mov eax, [eax]
007DF3CD: push [ebp+08h]
007DF3D0: call [eax+000002FCh]
007DF3D6: mov var_4C, eax
007DF3D9: mov var_54, 00000009h
007DF3E0: lea esi, var_54
007DF3E3: push 00000000h
007DF3E5: push var_00000088
007DF3EB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DF3F0: mov ecx, eax
007DF3F2: mov edx, esi
007DF3F4: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DF3F9: mov edx, 0043D648h ; x47
007DF3FE: lea ecx, var_38
007DF401: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007DF406: lea eax, var_00000088
007DF40C: push eax
007DF40D: lea eax, var_38
007DF410: push eax
007DF411: fld real8 ptr var_000000D4
007DF417: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007DF41C: push eax
007DF41D: call 007A6910h
007DF422: lea eax, var_00000088
007DF428: push eax
007DF429: push 00000000h
007DF42B: call 00410934h ; Erase
007DF430: lea eax, var_38
007DF433: push eax
007DF434: lea eax, var_34
007DF437: push eax
007DF438: push 00000002h
007DF43A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DF43F: add esp, 0000000Ch
007DF442: jmp 007DFB32h
007DF447: mov var_04, 00000007h
007DF44E: mov var_00000090, 00000001h
007DF458: mov var_00000098, 00000002h
007DF462: cmp [008F2010h], 00000000h
007DF469: jnz 7DF486h
007DF46B: push 008F2010h
007DF470: push 00433984h
007DF475: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DF47A: mov var_00000148, 008F2010h
007DF484: jmp 7DF490h
007DF486: mov var_00000148, 008F2010h
007DF490: push 00000000h
007DF492: push 00000001h
007DF494: push 00440E48h
007DF499: push 00000000h
007DF49B: push 00000018h
007DF49D: mov eax, var_00000148
007DF4A3: mov eax, [eax]
007DF4A5: mov ecx, var_00000148
007DF4AB: mov ecx, [ecx]
007DF4AD: mov ecx, [ecx]
007DF4AF: push eax
007DF4B0: call [ecx+00000550h]
007DF4B6: push eax
007DF4B7: lea eax, var_3C
007DF4BA: push eax
007DF4BB: call 00410A84h ; Set (object)
007DF4C0: push eax
007DF4C1: lea eax, var_54
007DF4C4: push eax
007DF4C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF4CA: add esp, 00000010h
007DF4CD: push eax
007DF4CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DF4D3: push eax
007DF4D4: lea eax, var_40
007DF4D7: push eax
007DF4D8: call 00410A84h ; Set (object)
007DF4DD: push eax
007DF4DE: lea eax, var_64
007DF4E1: push eax
007DF4E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF4E7: add esp, 00000010h
007DF4EA: push eax
007DF4EB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DF4F0: mov var_000000A0, eax
007DF4F6: mov var_000000A8, 00000003h
007DF500: mov var_000000B0, 00000001h
007DF50A: mov var_000000B8, 00000002h
007DF514: lea eax, var_00000098
007DF51A: push eax
007DF51B: lea eax, var_000000A8
007DF521: push eax
007DF522: lea eax, var_000000B8
007DF528: push eax
007DF529: lea eax, var_000000FC
007DF52F: push eax
007DF530: lea eax, var_000000EC
007DF536: push eax
007DF537: lea eax, var_30
007DF53A: push eax
007DF53B: call 00410A3Ch ; For
007DF540: mov var_00000138, eax
007DF546: lea eax, var_40
007DF549: push eax
007DF54A: lea eax, var_3C
007DF54D: push eax
007DF54E: push 00000002h
007DF550: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DF555: add esp, 0000000Ch
007DF558: lea eax, var_64
007DF55B: push eax
007DF55C: lea eax, var_54
007DF55F: push eax
007DF560: push 00000002h
007DF562: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DF567: add esp, 0000000Ch
007DF56A: jmp 007DF891h
007DF56F: mov var_04, 00000008h
007DF576: lea eax, var_30
007DF579: mov var_00000090, eax
007DF57F: mov var_00000098, 0000400Ch
007DF589: cmp [008F2010h], 00000000h
007DF590: jnz 7DF5ADh
007DF592: push 008F2010h
007DF597: push 00433984h
007DF59C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DF5A1: mov var_0000014C, 008F2010h
007DF5AB: jmp 7DF5B7h
007DF5AD: mov var_0000014C, 008F2010h
007DF5B7: push 00000000h
007DF5B9: push 00000004h
007DF5BB: push 00440E58h
007DF5C0: push 00000010h
007DF5C2: pop eax
007DF5C3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF5C8: lea esi, var_00000098
007DF5CE: mov edi, esp
007DF5D0: movsd 
007DF5D1: movsd 
007DF5D2: movsd 
007DF5D3: movsd 
007DF5D4: push 00000001h
007DF5D6: push 00000000h
007DF5D8: push 00440E48h
007DF5DD: push 00000000h
007DF5DF: push 00000018h
007DF5E1: mov eax, var_0000014C
007DF5E7: mov eax, [eax]
007DF5E9: mov ecx, var_0000014C
007DF5EF: mov ecx, [ecx]
007DF5F1: mov ecx, [ecx]
007DF5F3: push eax
007DF5F4: call [ecx+00000550h]
007DF5FA: push eax
007DF5FB: lea eax, var_3C
007DF5FE: push eax
007DF5FF: call 00410A84h ; Set (object)
007DF604: push eax
007DF605: lea eax, var_54
007DF608: push eax
007DF609: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF60E: add esp, 00000010h
007DF611: push eax
007DF612: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DF617: push eax
007DF618: lea eax, var_40
007DF61B: push eax
007DF61C: call 00410A84h ; Set (object)
007DF621: push eax
007DF622: lea eax, var_64
007DF625: push eax
007DF626: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF62B: add esp, 00000020h
007DF62E: push eax
007DF62F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DF634: push eax
007DF635: lea eax, var_44
007DF638: push eax
007DF639: call 00410A84h ; Set (object)
007DF63E: push eax
007DF63F: lea eax, var_74
007DF642: push eax
007DF643: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF648: add esp, 00000010h
007DF64B: push eax
007DF64C: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007DF651: sub ax, FFFFh
007DF655: neg ax
007DF658: sbb eax, eax
007DF65A: inc eax
007DF65B: neg eax
007DF65D: mov var_000000D8, ax
007DF664: lea eax, var_44
007DF667: push eax
007DF668: lea eax, var_40
007DF66B: push eax
007DF66C: lea eax, var_3C
007DF66F: push eax
007DF670: push 00000003h
007DF672: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DF677: add esp, 00000010h
007DF67A: lea eax, var_74
007DF67D: push eax
007DF67E: lea eax, var_64
007DF681: push eax
007DF682: lea eax, var_54
007DF685: push eax
007DF686: push 00000003h
007DF688: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DF68D: add esp, 00000010h
007DF690: movsx eax, word ptr var_000000D8
007DF697: test eax, eax
007DF699: jz 007DF86Dh
007DF69F: mov var_04, 00000009h
007DF6A6: lea eax, var_30
007DF6A9: mov var_00000090, eax
007DF6AF: mov var_00000098, 0000400Ch
007DF6B9: cmp [008F2010h], 00000000h
007DF6C0: jnz 7DF6DDh
007DF6C2: push 008F2010h
007DF6C7: push 00433984h
007DF6CC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DF6D1: mov var_00000150, 008F2010h
007DF6DB: jmp 7DF6E7h
007DF6DD: mov var_00000150, 008F2010h
007DF6E7: push 00000000h
007DF6E9: push 00000014h
007DF6EB: push 00440E58h
007DF6F0: push 00000010h
007DF6F2: pop eax
007DF6F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF6F8: lea esi, var_00000098
007DF6FE: mov edi, esp
007DF700: movsd 
007DF701: movsd 
007DF702: movsd 
007DF703: movsd 
007DF704: push 00000001h
007DF706: push 00000000h
007DF708: push 00440E48h
007DF70D: push 00000000h
007DF70F: push 00000018h
007DF711: mov eax, var_00000150
007DF717: mov eax, [eax]
007DF719: mov ecx, var_00000150
007DF71F: mov ecx, [ecx]
007DF721: mov ecx, [ecx]
007DF723: push eax
007DF724: call [ecx+00000550h]
007DF72A: push eax
007DF72B: lea eax, var_3C
007DF72E: push eax
007DF72F: call 00410A84h ; Set (object)
007DF734: push eax
007DF735: lea eax, var_54
007DF738: push eax
007DF739: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF73E: add esp, 00000010h
007DF741: push eax
007DF742: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DF747: push eax
007DF748: lea eax, var_40
007DF74B: push eax
007DF74C: call 00410A84h ; Set (object)
007DF751: push eax
007DF752: lea eax, var_64
007DF755: push eax
007DF756: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF75B: add esp, 00000020h
007DF75E: push eax
007DF75F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DF764: push eax
007DF765: lea eax, var_44
007DF768: push eax
007DF769: call 00410A84h ; Set (object)
007DF76E: push eax
007DF76F: lea eax, var_74
007DF772: push eax
007DF773: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DF778: add esp, 00000010h
007DF77B: push eax
007DF77C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007DF781: mov edx, eax
007DF783: lea ecx, var_34
007DF786: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DF78B: push eax
007DF78C: call 004109DCh ; Val(arg_1)
007DF791: fstp real8 ptr var_000000D4
007DF797: push 00000000h
007DF799: push 00000000h
007DF79B: push 00000001h
007DF79D: push 00000000h
007DF79F: lea eax, var_00000088
007DF7A5: push eax
007DF7A6: push 00000010h
007DF7A8: push 00000880h
007DF7AD: call 00410946h ; ReDim
007DF7B2: add esp, 0000001Ch
007DF7B5: mov eax, [ebp+08h]
007DF7B8: mov eax, [eax]
007DF7BA: push [ebp+08h]
007DF7BD: call [eax+000002FCh]
007DF7C3: mov var_7C, eax
007DF7C6: mov var_00000084, 00000009h
007DF7D0: lea esi, var_00000084
007DF7D6: push 00000000h
007DF7D8: push var_00000088
007DF7DE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DF7E3: mov ecx, eax
007DF7E5: mov edx, esi
007DF7E7: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DF7EC: mov edx, 0043D648h ; x47
007DF7F1: lea ecx, var_38
007DF7F4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007DF7F9: lea eax, var_00000088
007DF7FF: push eax
007DF800: lea eax, var_38
007DF803: push eax
007DF804: fld real8 ptr var_000000D4
007DF80A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007DF80F: push eax
007DF810: call 007A6910h
007DF815: lea eax, var_00000088
007DF81B: push eax
007DF81C: push 00000000h
007DF81E: call 00410934h ; Erase
007DF823: lea eax, var_38
007DF826: push eax
007DF827: lea eax, var_34
007DF82A: push eax
007DF82B: push 00000002h
007DF82D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DF832: add esp, 0000000Ch
007DF835: lea eax, var_44
007DF838: push eax
007DF839: lea eax, var_40
007DF83C: push eax
007DF83D: lea eax, var_3C
007DF840: push eax
007DF841: push 00000003h
007DF843: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DF848: add esp, 00000010h
007DF84B: lea eax, var_74
007DF84E: push eax
007DF84F: lea eax, var_64
007DF852: push eax
007DF853: lea eax, var_54
007DF856: push eax
007DF857: push 00000003h
007DF859: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DF85E: add esp, 00000010h
007DF861: mov var_04, 0000000Ah
007DF868: call 0041096Ah ; DoEvents
007DF86D: mov var_04, 0000000Ch
007DF874: lea eax, var_000000FC
007DF87A: push eax
007DF87B: lea eax, var_000000EC
007DF881: push eax
007DF882: lea eax, var_30
007DF885: push eax
007DF886: call 00410A36h ; Next
007DF88B: mov var_00000138, eax
007DF891: cmp var_00000138, 00000000h
007DF898: jnz 007DF56Fh
007DF89E: jmp 007DFB32h
007DF8A3: mov var_04, 0000000Eh
007DF8AA: mov var_00000090, 00000001h
007DF8B4: mov var_00000098, 00000002h
007DF8BE: cmp [008F2010h], 00000000h
007DF8C5: jnz 7DF8E2h
007DF8C7: push 008F2010h
007DF8CC: push 00433984h
007DF8D1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DF8D6: mov var_00000154, 008F2010h
007DF8E0: jmp 7DF8ECh
007DF8E2: mov var_00000154, 008F2010h
007DF8EC: mov eax, var_00000154
007DF8F2: mov eax, [eax]
007DF8F4: mov ecx, var_00000154
007DF8FA: mov ecx, [ecx]
007DF8FC: mov ecx, [ecx]
007DF8FE: push eax
007DF8FF: call [ecx+00000524h]
007DF905: push eax
007DF906: lea eax, var_3C
007DF909: push eax
007DF90A: call 00410A84h ; Set (object)
007DF90F: mov var_000000D8, eax
007DF915: lea eax, var_000000CC
007DF91B: push eax
007DF91C: mov eax, var_000000D8
007DF922: mov eax, [eax]
007DF924: push var_000000D8
007DF92A: call [eax+48h]
007DF92D: fclex 
007DF92F: mov var_000000DC, eax
007DF935: cmp var_000000DC, 00000000h
007DF93C: jnl 7DF95Eh
007DF93E: push 00000048h
007DF940: push 00440DE8h
007DF945: push var_000000D8
007DF94B: push var_000000DC
007DF951: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DF956: mov var_00000158, eax
007DF95C: jmp 7DF965h
007DF95E: and var_00000158, 00000000h
007DF965: mov ax, var_000000CC
007DF96C: mov var_000000A0, ax
007DF973: mov var_000000A8, 00000002h
007DF97D: mov var_000000B0, 00000001h
007DF987: mov var_000000B8, 00000002h
007DF991: lea eax, var_00000098
007DF997: push eax
007DF998: lea eax, var_000000A8
007DF99E: push eax
007DF99F: lea eax, var_000000B8
007DF9A5: push eax
007DF9A6: lea eax, var_0000011C
007DF9AC: push eax
007DF9AD: lea eax, var_0000010C
007DF9B3: push eax
007DF9B4: lea eax, var_30
007DF9B7: push eax
007DF9B8: call 00410A3Ch ; For
007DF9BD: mov var_0000013C, eax
007DF9C3: lea ecx, var_3C
007DF9C6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DF9CB: jmp 007DFA93h
007DF9D0: mov var_04, 0000000Fh
007DF9D7: push 00000000h
007DF9D9: push 00000000h
007DF9DB: push 00000001h
007DF9DD: push 00000000h
007DF9DF: lea eax, var_00000088
007DF9E5: push eax
007DF9E6: push 00000010h
007DF9E8: push 00000880h
007DF9ED: call 00410946h ; ReDim
007DF9F2: add esp, 0000001Ch
007DF9F5: mov eax, [ebp+08h]
007DF9F8: mov eax, [eax]
007DF9FA: push [ebp+08h]
007DF9FD: call [eax+000002FCh]
007DFA03: mov var_4C, eax
007DFA06: mov var_54, 00000009h
007DFA0D: lea esi, var_54
007DFA10: push 00000000h
007DFA12: push var_00000088
007DFA18: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DFA1D: mov ecx, eax
007DFA1F: mov edx, esi
007DFA21: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DFA26: mov edx, 0043D648h ; x47
007DFA2B: lea ecx, var_34
007DFA2E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007DFA33: lea eax, var_00000088
007DFA39: push eax
007DFA3A: lea eax, var_34
007DFA3D: push eax
007DFA3E: lea eax, var_30
007DFA41: push eax
007DFA42: call 004109D0h ; msvbvm60.dll.__vbaI2Var
007DFA47: push eax
007DFA48: call 007A6910h
007DFA4D: lea eax, var_00000088
007DFA53: push eax
007DFA54: push 00000000h
007DFA56: call 00410934h ; Erase
007DFA5B: lea ecx, var_34
007DFA5E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007DFA63: mov var_04, 00000010h
007DFA6A: call 0041096Ah ; DoEvents
007DFA6F: mov var_04, 00000011h
007DFA76: lea eax, var_0000011C
007DFA7C: push eax
007DFA7D: lea eax, var_0000010C
007DFA83: push eax
007DFA84: lea eax, var_30
007DFA87: push eax
007DFA88: call 00410A36h ; Next
007DFA8D: mov var_0000013C, eax
007DFA93: cmp var_0000013C, 00000000h
007DFA9A: jnz 007DF9D0h
007DFAA0: jmp 007DFB32h
007DFAA5: mov var_04, 00000013h
007DFAAC: mov var_7C, 80020004h
007DFAB3: mov var_00000084, 0000000Ah
007DFABD: mov var_6C, 80020004h
007DFAC4: mov var_74, 0000000Ah
007DFACB: mov var_5C, 80020004h
007DFAD2: mov var_64, 0000000Ah
007DFAD9: mov var_00000090, 004501A8h ; You must choose an Update to update your servers hosts file. The redirect should be in this order: IP Address, then website. To block access to a site, you can use the IP address 127.0.0.1 (localhost). Also, you may want to block www.google.com and google.com
007DFAE3: mov var_00000098, 00000008h
007DFAED: lea edx, var_00000098
007DFAF3: lea ecx, var_54
007DFAF6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007DFAFB: lea eax, var_00000084
007DFB01: push eax
007DFB02: lea eax, var_74
007DFB05: push eax
007DFB06: lea eax, var_64
007DFB09: push eax
007DFB0A: push 00000040h
007DFB0C: lea eax, var_54
007DFB0F: push eax
007DFB10: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007DFB15: lea eax, var_00000084
007DFB1B: push eax
007DFB1C: lea eax, var_74
007DFB1F: push eax
007DFB20: lea eax, var_64
007DFB23: push eax
007DFB24: lea eax, var_54
007DFB27: push eax
007DFB28: push 00000004h
007DFB2A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DFB2F: add esp, 00000014h
007DFB32: mov var_10, 00000000h
007DFB39: wait 
007DFB3A: push 007DFBC4h
007DFB3F: jmp 7DFB95h
007DFB41: lea eax, var_38
007DFB44: push eax
007DFB45: lea eax, var_34
007DFB48: push eax
007DFB49: push 00000002h
007DFB4B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DFB50: add esp, 0000000Ch
007DFB53: lea eax, var_44
007DFB56: push eax
007DFB57: lea eax, var_40
007DFB5A: push eax
007DFB5B: lea eax, var_3C
007DFB5E: push eax
007DFB5F: push 00000003h
007DFB61: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DFB66: add esp, 00000010h
007DFB69: lea eax, var_00000084
007DFB6F: push eax
007DFB70: lea eax, var_74
007DFB73: push eax
007DFB74: lea eax, var_64
007DFB77: push eax
007DFB78: lea eax, var_54
007DFB7B: push eax
007DFB7C: push 00000004h
007DFB7E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DFB83: add esp, 00000014h
007DFB86: lea eax, var_00000088
007DFB8C: push eax
007DFB8D: push 00000000h
007DFB8F: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007DFB94: ret 
End Sub

Private sub Form__7DF07E
007DF07E: push ebp
007DF07F: mov ebp, esp
007DF081: sub esp, 00000018h
007DF084: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DF089: mov eax, fs:[00h]
007DF08F: push eax
007DF090: mov fs:[00000000h], esp
007DF097: push 0000006Ch
007DF099: pop eax
007DF09A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF09F: push ebx
007DF0A0: push esi
007DF0A1: push edi
007DF0A2: mov var_18, esp
007DF0A5: mov var_14, 00409760h
007DF0AC: mov eax, [ebp+08h]
007DF0AF: and eax, 00000001h
007DF0B2: mov var_10, eax
007DF0B5: mov eax, [ebp+08h]
007DF0B8: and al, FEh
007DF0BA: mov [ebp+08h], eax
007DF0BD: mov var_0C, 00000000h
007DF0C4: mov eax, [ebp+08h]
007DF0C7: mov eax, [eax]
007DF0C9: push [ebp+08h]
007DF0CC: call [eax+04h]
007DF0CF: mov var_04, 00000001h
007DF0D6: mov var_04, 00000002h
007DF0DD: push FFFFFFFFh
007DF0DF: call 00410A60h ; On Error ...
007DF0E4: mov var_04, 00000003h
007DF0EB: lea eax, var_58
007DF0EE: push eax
007DF0EF: mov eax, [ebp+08h]
007DF0F2: mov eax, [eax]
007DF0F4: push [ebp+08h]
007DF0F7: call [eax+00000080h]
007DF0FD: fclex 
007DF0FF: mov var_60, eax
007DF102: cmp var_60, 00000000h
007DF106: jnl 7DF125h
007DF108: push 00000080h
007DF10D: push 00443E00h
007DF112: push [ebp+08h]
007DF115: push var_60
007DF118: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DF11D: mov var_00000084, eax
007DF123: jmp 7DF12Ch
007DF125: and var_00000084, 00000000h
007DF12C: mov eax, [ebp+08h]
007DF12F: mov eax, [eax]
007DF131: push [ebp+08h]
007DF134: call [eax+000002FCh]
007DF13A: push eax
007DF13B: lea eax, var_24
007DF13E: push eax
007DF13F: call 00410A84h ; Set (object)
007DF144: mov var_68, eax
007DF147: lea eax, var_5C
007DF14A: push eax
007DF14B: mov eax, [ebp+08h]
007DF14E: mov eax, [eax]
007DF150: push [ebp+08h]
007DF153: call [eax+00000088h]
007DF159: fclex 
007DF15B: mov var_64, eax
007DF15E: cmp var_64, 00000000h
007DF162: jnl 7DF181h
007DF164: push 00000088h
007DF169: push 00443E00h
007DF16E: push [ebp+08h]
007DF171: push var_64
007DF174: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DF179: mov var_00000088, eax
007DF17F: jmp 7DF188h
007DF181: and var_00000088, 00000000h
007DF188: fld real4 ptr var_5C
007DF18B: fsub real4 ptr [00402B80h]
007DF191: fstp real4 ptr var_4C
007DF194: fstsw ax
007DF196: test al, 0Dh
007DF198: jnz 007DF283h
007DF19E: mov var_54, 00000004h
007DF1A5: fld real4 ptr var_58
007DF1A8: fsub real4 ptr [00402BA4h]
007DF1AE: fstp real4 ptr var_3C
007DF1B1: fstsw ax
007DF1B3: test al, 0Dh
007DF1B5: jnz 007DF283h
007DF1BB: mov var_44, 00000004h
007DF1C2: and var_2C, 00000000h
007DF1C6: mov var_34, 00000002h
007DF1CD: push 00000010h
007DF1CF: pop eax
007DF1D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF1D5: lea esi, var_54
007DF1D8: mov edi, esp
007DF1DA: movsd 
007DF1DB: movsd 
007DF1DC: movsd 
007DF1DD: movsd 
007DF1DE: push 00000010h
007DF1E0: pop eax
007DF1E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF1E6: lea esi, var_44
007DF1E9: mov edi, esp
007DF1EB: movsd 
007DF1EC: movsd 
007DF1ED: movsd 
007DF1EE: movsd 
007DF1EF: push 00000010h
007DF1F1: pop eax
007DF1F2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DF1F7: lea esi, var_34
007DF1FA: mov edi, esp
007DF1FC: movsd 
007DF1FD: movsd 
007DF1FE: movsd 
007DF1FF: movsd 
007DF200: fldz 
007DF202: push ecx
007DF203: fstp real4 ptr [esp]
007DF206: mov eax, var_68
007DF209: mov eax, [eax]
007DF20B: push var_68
007DF20E: call [eax+00000224h]
007DF214: fclex 
007DF216: mov var_6C, eax
007DF219: cmp var_6C, 00000000h
007DF21D: jnl 7DF23Ch
007DF21F: push 00000224h
007DF224: push 00440E08h
007DF229: push var_68
007DF22C: push var_6C
007DF22F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DF234: mov var_0000008C, eax
007DF23A: jmp 7DF243h
007DF23C: and var_0000008C, 00000000h
007DF243: lea ecx, var_24
007DF246: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DF24B: mov var_10, 00000000h
007DF252: wait 
007DF253: push 007DF264h
007DF258: jmp 7DF263h
007DF25A: lea ecx, var_24
007DF25D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DF262: ret 
End Sub

Private sub txtHosts__7DFBE3
007DFBE3: push ebp
007DFBE4: mov ebp, esp
007DFBE6: sub esp, 0000000Ch
007DFBE9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DFBEE: mov eax, fs:[00h]
007DFBF4: push eax
007DFBF5: mov fs:[00000000h], esp
007DFBFC: push 00000060h
007DFBFE: pop eax
007DFBFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFC04: push ebx
007DFC05: push esi
007DFC06: push edi
007DFC07: mov var_0C, esp
007DFC0A: mov var_08, 00409808h
007DFC11: mov eax, [ebp+08h]
007DFC14: and eax, 00000001h
007DFC17: mov var_04, eax
007DFC1A: mov eax, [ebp+08h]
007DFC1D: and al, FEh
007DFC1F: mov [ebp+08h], eax
007DFC22: mov eax, [ebp+08h]
007DFC25: mov eax, [eax]
007DFC27: push [ebp+08h]
007DFC2A: call [eax+04h]
007DFC2D: mov eax, [ebp+0Ch]
007DFC30: cmp word ptr [eax], 0002h
007DFC34: jnz 007DFDC6h
007DFC3A: mov eax, [ebp+08h]
007DFC3D: mov eax, [eax]
007DFC3F: push [ebp+08h]
007DFC42: call [eax+000002FCh]
007DFC48: push eax
007DFC49: lea eax, var_18
007DFC4C: push eax
007DFC4D: call 00410A84h ; Set (object)
007DFC52: mov var_5C, eax
007DFC55: push 00000000h
007DFC57: mov eax, var_5C
007DFC5A: mov eax, [eax]
007DFC5C: push var_5C
007DFC5F: call [eax+0000008Ch]
007DFC65: fclex 
007DFC67: mov var_60, eax
007DFC6A: cmp var_60, 00000000h
007DFC6E: jnl 7DFC8Ah
007DFC70: push 0000008Ch
007DFC75: push 00440E08h
007DFC7A: push var_5C
007DFC7D: push var_60
007DFC80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DFC85: mov var_6C, eax
007DFC88: jmp 7DFC8Eh
007DFC8A: and var_6C, 00000000h
007DFC8E: lea ecx, var_18
007DFC91: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DFC96: mov var_50, 80020004h
007DFC9D: mov var_58, 0000000Ah
007DFCA4: mov var_40, 80020004h
007DFCAB: mov var_48, 0000000Ah
007DFCB2: mov var_30, 80020004h
007DFCB9: mov var_38, 0000000Ah
007DFCC0: mov var_20, 80020004h
007DFCC7: mov var_28, 0000000Ah
007DFCCE: push 00000010h
007DFCD0: pop eax
007DFCD1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFCD6: lea esi, var_58
007DFCD9: mov edi, esp
007DFCDB: movsd 
007DFCDC: movsd 
007DFCDD: movsd 
007DFCDE: movsd 
007DFCDF: push 00000010h
007DFCE1: pop eax
007DFCE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFCE7: lea esi, var_48
007DFCEA: mov edi, esp
007DFCEC: movsd 
007DFCED: movsd 
007DFCEE: movsd 
007DFCEF: movsd 
007DFCF0: push 00000010h
007DFCF2: pop eax
007DFCF3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFCF8: lea esi, var_38
007DFCFB: mov edi, esp
007DFCFD: movsd 
007DFCFE: movsd 
007DFCFF: movsd 
007DFD00: movsd 
007DFD01: push 00000010h
007DFD03: pop eax
007DFD04: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFD09: lea esi, var_28
007DFD0C: mov edi, esp
007DFD0E: movsd 
007DFD0F: movsd 
007DFD10: movsd 
007DFD11: movsd 
007DFD12: mov eax, [ebp+08h]
007DFD15: mov eax, [eax]
007DFD17: push [ebp+08h]
007DFD1A: call [eax+00000300h]
007DFD20: push eax
007DFD21: lea eax, var_18
007DFD24: push eax
007DFD25: call 00410A84h ; Set (object)
007DFD2A: push eax
007DFD2B: mov eax, [ebp+08h]
007DFD2E: mov eax, [eax]
007DFD30: push [ebp+08h]
007DFD33: call [eax+000002BCh]
007DFD39: fclex 
007DFD3B: mov var_5C, eax
007DFD3E: cmp var_5C, 00000000h
007DFD42: jnl 7DFD5Eh
007DFD44: push 000002BCh
007DFD49: push 00443E00h
007DFD4E: push [ebp+08h]
007DFD51: push var_5C
007DFD54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DFD59: mov var_70, eax
007DFD5C: jmp 7DFD62h
007DFD5E: and var_70, 00000000h
007DFD62: lea ecx, var_18
007DFD65: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DFD6A: mov eax, [ebp+08h]
007DFD6D: mov eax, [eax]
007DFD6F: push [ebp+08h]
007DFD72: call [eax+000002FCh]
007DFD78: push eax
007DFD79: lea eax, var_18
007DFD7C: push eax
007DFD7D: call 00410A84h ; Set (object)
007DFD82: mov var_5C, eax
007DFD85: push FFFFFFFFh
007DFD87: mov eax, var_5C
007DFD8A: mov eax, [eax]
007DFD8C: push var_5C
007DFD8F: call [eax+0000008Ch]
007DFD95: fclex 
007DFD97: mov var_60, eax
007DFD9A: cmp var_60, 00000000h
007DFD9E: jnl 7DFDBAh
007DFDA0: push 0000008Ch
007DFDA5: push 00440E08h
007DFDAA: push var_5C
007DFDAD: push var_60
007DFDB0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DFDB5: mov var_74, eax
007DFDB8: jmp 7DFDBEh
007DFDBA: and var_74, 00000000h
007DFDBE: lea ecx, var_18
007DFDC1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DFDC6: mov var_04, 00000000h
007DFDCD: push 007DFDDEh
007DFDD2: jmp 7DFDDDh
007DFDD4: lea ecx, var_18
007DFDD7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DFDDC: ret 
End Sub

