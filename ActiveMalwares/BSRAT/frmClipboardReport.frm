VERSION 5.00
Begin VB.Form frmClipboardReport
  Caption = "Clipboard manager - Report"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmClipboardReport.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 6975
  ClientHeight = 6645
  StartUpPosition = 1 'CenterOwner
  Begin VB.TextBox txtClipboard
    Left = 0
    Top = 0
    Width = 6975
    Height = 6615
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
    Locked = -1  'True
  End
End

Attribute VB_Name = "frmClipboardReport"


Private sub Form__8D4123
008D4123: push ebp
008D4124: mov ebp, esp
008D4126: sub esp, 00000018h
008D4129: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D412E: mov eax, fs:[00h]
008D4134: push eax
008D4135: mov fs:[00000000h], esp
008D413C: push 0000006Ch
008D413E: pop eax
008D413F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D4144: push ebx
008D4145: push esi
008D4146: push edi
008D4147: mov var_18, esp
008D414A: mov var_14, 0040FB88h
008D4151: mov eax, [ebp+08h]
008D4154: and eax, 00000001h
008D4157: mov var_10, eax
008D415A: mov eax, [ebp+08h]
008D415D: and al, FEh
008D415F: mov [ebp+08h], eax
008D4162: mov var_0C, 00000000h
008D4169: mov eax, [ebp+08h]
008D416C: mov eax, [eax]
008D416E: push [ebp+08h]
008D4171: call [eax+04h]
008D4174: mov var_04, 00000001h
008D417B: mov var_04, 00000002h
008D4182: push FFFFFFFFh
008D4184: call 00410A60h ; On Error ...
008D4189: mov var_04, 00000003h
008D4190: lea eax, var_58
008D4193: push eax
008D4194: mov eax, [ebp+08h]
008D4197: mov eax, [eax]
008D4199: push [ebp+08h]
008D419C: call [eax+00000080h]
008D41A2: fclex 
008D41A4: mov var_60, eax
008D41A7: cmp var_60, 00000000h
008D41AB: jnl 8D41CAh
008D41AD: push 00000080h
008D41B2: push 0046138Ch
008D41B7: push [ebp+08h]
008D41BA: push var_60
008D41BD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D41C2: mov var_00000084, eax
008D41C8: jmp 8D41D1h
008D41CA: and var_00000084, 00000000h
008D41D1: mov eax, [ebp+08h]
008D41D4: mov eax, [eax]
008D41D6: push [ebp+08h]
008D41D9: call [eax+000002FCh]
008D41DF: push eax
008D41E0: lea eax, var_24
008D41E3: push eax
008D41E4: call 00410A84h ; Set (object)
008D41E9: mov var_68, eax
008D41EC: lea eax, var_5C
008D41EF: push eax
008D41F0: mov eax, [ebp+08h]
008D41F3: mov eax, [eax]
008D41F5: push [ebp+08h]
008D41F8: call [eax+00000088h]
008D41FE: fclex 
008D4200: mov var_64, eax
008D4203: cmp var_64, 00000000h
008D4207: jnl 8D4226h
008D4209: push 00000088h
008D420E: push 0046138Ch
008D4213: push [ebp+08h]
008D4216: push var_64
008D4219: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D421E: mov var_00000088, eax
008D4224: jmp 8D422Dh
008D4226: and var_00000088, 00000000h
008D422D: fld real4 ptr var_5C
008D4230: fsub real4 ptr [00402B80h]
008D4236: fstp real4 ptr var_4C
008D4239: fstsw ax
008D423B: test al, 0Dh
008D423D: jnz 008D4328h
008D4243: mov var_54, 00000004h
008D424A: fld real4 ptr var_58
008D424D: fsub real4 ptr [00402BA4h]
008D4253: fstp real4 ptr var_3C
008D4256: fstsw ax
008D4258: test al, 0Dh
008D425A: jnz 008D4328h
008D4260: mov var_44, 00000004h
008D4267: and var_2C, 00000000h
008D426B: mov var_34, 00000002h
008D4272: push 00000010h
008D4274: pop eax
008D4275: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D427A: lea esi, var_54
008D427D: mov edi, esp
008D427F: movsd 
008D4280: movsd 
008D4281: movsd 
008D4282: movsd 
008D4283: push 00000010h
008D4285: pop eax
008D4286: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D428B: lea esi, var_44
008D428E: mov edi, esp
008D4290: movsd 
008D4291: movsd 
008D4292: movsd 
008D4293: movsd 
008D4294: push 00000010h
008D4296: pop eax
008D4297: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D429C: lea esi, var_34
008D429F: mov edi, esp
008D42A1: movsd 
008D42A2: movsd 
008D42A3: movsd 
008D42A4: movsd 
008D42A5: fldz 
008D42A7: push ecx
008D42A8: fstp real4 ptr [esp]
008D42AB: mov eax, var_68
008D42AE: mov eax, [eax]
008D42B0: push var_68
008D42B3: call [eax+00000224h]
008D42B9: fclex 
008D42BB: mov var_6C, eax
008D42BE: cmp var_6C, 00000000h
008D42C2: jnl 8D42E1h
008D42C4: push 00000224h
008D42C9: push 00440E08h
008D42CE: push var_68
008D42D1: push var_6C
008D42D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D42D9: mov var_0000008C, eax
008D42DF: jmp 8D42E8h
008D42E1: and var_0000008C, 00000000h
008D42E8: lea ecx, var_24
008D42EB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D42F0: mov var_10, 00000000h
008D42F7: wait 
008D42F8: push 008D4309h
008D42FD: jmp 8D4308h
008D42FF: lea ecx, var_24
008D4302: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D4307: ret 
End Sub

