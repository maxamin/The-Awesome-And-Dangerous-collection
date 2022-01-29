VERSION 5.00
Begin VB.Form frmReverseRelayHelp
  Caption = "Reverse Relay Instructions"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmReverseRelayHelp.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 8160
  ClientHeight = 6960
  StartUpPosition = 1 'CenterOwner
  Begin VB.Image Image1
    Picture = "frmReverseRelayHelp.frx":8E79
    Left = 0
    Top = 0
    Width = 8160
    Height = 4920
    Stretch = -1  'True
  End
  Begin VB.Label lblHelp
    Left = 0
    Top = 5040
    Width = 8175
    Height = 1815
    TabIndex = 0
  End
End

Attribute VB_Name = "frmReverseRelayHelp"


Private sub Form__8CD3EE
008CD3EE: push ebp
008CD3EF: mov ebp, esp
008CD3F1: sub esp, 0000000Ch
008CD3F4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CD3F9: mov eax, fs:[00h]
008CD3FF: push eax
008CD400: mov fs:[00000000h], esp
008CD407: push 0000004Ch
008CD409: pop eax
008CD40A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CD40F: push ebx
008CD410: push esi
008CD411: push edi
008CD412: mov var_0C, esp
008CD415: mov var_08, 0040F908h
008CD41C: mov eax, [ebp+08h]
008CD41F: and eax, 00000001h
008CD422: mov var_04, eax
008CD425: mov eax, [ebp+08h]
008CD428: and al, FEh
008CD42A: mov [ebp+08h], eax
008CD42D: mov eax, [ebp+08h]
008CD430: mov eax, [eax]
008CD432: push [ebp+08h]
008CD435: call [eax+04h]
008CD438: mov eax, [ebp+08h]
008CD43B: mov eax, [eax]
008CD43D: push [ebp+08h]
008CD440: call [eax+00000300h]
008CD446: push eax
008CD447: lea eax, var_4C
008CD44A: push eax
008CD44B: call 00410A84h ; Set (object)
008CD450: mov var_50, eax
008CD453: push 00460D58h ; Reverse relay is a little complicated to set up, but not as hard as you may imagine.
008CD458: push 00441264h ; vbCrLf
008CD45D: call 00410A18h ; &
008CD462: mov edx, eax
008CD464: lea ecx, var_18
008CD467: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD46C: push eax
008CD46D: push 00460E7Ch ; Firstly, you will need to pick a Daemon port. This can be whatever you want and changed at any time.
008CD472: call 00410A18h ; &
008CD477: mov edx, eax
008CD479: lea ecx, var_1C
008CD47C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD481: push eax
008CD482: push 00441264h ; vbCrLf
008CD487: call 00410A18h ; &
008CD48C: mov edx, eax
008CD48E: lea ecx, var_20
008CD491: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD496: push eax
008CD497: push 00460F4Ch ; The only thing that you will need to do is FORWARD this port. It is necessary for it to work.
008CD49C: call 00410A18h ; &
008CD4A1: mov edx, eax
008CD4A3: lea ecx, var_24
008CD4A6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD4AB: push eax
008CD4AC: push 00441264h ; vbCrLf
008CD4B1: call 00410A18h ; &
008CD4B6: mov edx, eax
008CD4B8: lea ecx, var_28
008CD4BB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD4C0: push eax
008CD4C1: push 00461070h ; Lastly, pick a browser port. This can also be anything you desire. This port doesn't need to be forwarded.
008CD4C6: call 00410A18h ; &
008CD4CB: mov edx, eax
008CD4CD: lea ecx, var_2C
008CD4D0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD4D5: push eax
008CD4D6: push 00441264h ; vbCrLf
008CD4DB: call 00410A18h ; &
008CD4E0: mov edx, eax
008CD4E2: lea ecx, var_30
008CD4E5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD4EA: push eax
008CD4EB: push 00441264h ; vbCrLf
008CD4F0: call 00410A18h ; &
008CD4F5: mov edx, eax
008CD4F7: lea ecx, var_34
008CD4FA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD4FF: push eax
008CD500: push 0046114Ch ; But there is one thing that you will need to do: Go to your browser and set a Socks4 proxy
008CD505: call 00410A18h ; &
008CD50A: mov edx, eax
008CD50C: lea ecx, var_38
008CD50F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD514: push eax
008CD515: push 00441264h ; vbCrLf
008CD51A: call 00410A18h ; &
008CD51F: mov edx, eax
008CD521: lea ecx, var_3C
008CD524: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD529: push eax
008CD52A: push 00461254h ; for 127.0.0.1 or localhost with the port as the browser port, which you have chosen here.
008CD52F: call 00410A18h ; &
008CD534: mov edx, eax
008CD536: lea ecx, var_40
008CD539: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD53E: push eax
008CD53F: push 00441264h ; vbCrLf
008CD544: call 00410A18h ; &
008CD549: mov edx, eax
008CD54B: lea ecx, var_44
008CD54E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD553: push eax
008CD554: push 0046130Ch ; Once all is done, you should now be able to browse!
008CD559: call 00410A18h ; &
008CD55E: mov edx, eax
008CD560: lea ecx, var_48
008CD563: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD568: push eax
008CD569: mov eax, var_50
008CD56C: mov eax, [eax]
008CD56E: push var_50
008CD571: call [eax+54h]
008CD574: fclex 
008CD576: mov var_54, eax
008CD579: cmp var_54, 00000000h
008CD57D: jnl 8CD596h
008CD57F: push 00000054h
008CD581: push 004425E4h
008CD586: push var_50
008CD589: push var_54
008CD58C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD591: mov var_60, eax
008CD594: jmp 8CD59Ah
008CD596: and var_60, 00000000h
008CD59A: lea eax, var_48
008CD59D: push eax
008CD59E: lea eax, var_44
008CD5A1: push eax
008CD5A2: lea eax, var_40
008CD5A5: push eax
008CD5A6: lea eax, var_3C
008CD5A9: push eax
008CD5AA: lea eax, var_38
008CD5AD: push eax
008CD5AE: lea eax, var_34
008CD5B1: push eax
008CD5B2: lea eax, var_30
008CD5B5: push eax
008CD5B6: lea eax, var_2C
008CD5B9: push eax
008CD5BA: lea eax, var_28
008CD5BD: push eax
008CD5BE: lea eax, var_24
008CD5C1: push eax
008CD5C2: lea eax, var_20
008CD5C5: push eax
008CD5C6: lea eax, var_1C
008CD5C9: push eax
008CD5CA: lea eax, var_18
008CD5CD: push eax
008CD5CE: push 0000000Dh
008CD5D0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CD5D5: add esp, 00000038h
008CD5D8: lea ecx, var_4C
008CD5DB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CD5E0: mov var_04, 00000000h
008CD5E7: push 008CD636h
008CD5EC: jmp 8CD635h
008CD5EE: lea eax, var_48
008CD5F1: push eax
008CD5F2: lea eax, var_44
008CD5F5: push eax
008CD5F6: lea eax, var_40
008CD5F9: push eax
008CD5FA: lea eax, var_3C
008CD5FD: push eax
008CD5FE: lea eax, var_38
008CD601: push eax
008CD602: lea eax, var_34
008CD605: push eax
008CD606: lea eax, var_30
008CD609: push eax
008CD60A: lea eax, var_2C
008CD60D: push eax
008CD60E: lea eax, var_28
008CD611: push eax
008CD612: lea eax, var_24
008CD615: push eax
008CD616: lea eax, var_20
008CD619: push eax
008CD61A: lea eax, var_1C
008CD61D: push eax
008CD61E: lea eax, var_18
008CD621: push eax
008CD622: push 0000000Dh
008CD624: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CD629: add esp, 00000038h
008CD62C: lea ecx, var_4C
008CD62F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CD634: ret 
End Sub

