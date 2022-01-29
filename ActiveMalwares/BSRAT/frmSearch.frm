VERSION 5.00
Begin VB.Form frmSearch
  Caption = "Search files"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmSearch.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13020
  ClientHeight = 7050
  StartUpPosition = 3 'Windows Default
  Begin XtremeSuiteControls.ListView lstSearch
    Left = 0
    Top = 1560
    Width = 12975
    Height = 5175
    TabIndex = 0
  End
  Begin VB.Timer tmrItems
    Interval = 500
    Left = 12480
    Top = 0
  End
  Begin XtremeSuiteControls.GroupBox gbOptions
    Left = 0
    Top = 0
    Width = 12975
    Height = 1455
    TabIndex = 1
    Begin VB.TextBox txtMaxRes
      Left = 6720
      Top = 360
      Width = 615
      Height = 285
      Text = "255"
      TabIndex = 18
      MaxLength = 4
    End
    Begin VB.Frame frmOptions
      Index = 1
      Left = 2760
      Top = 720
      Width = 2655
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      Begin XtremeSuiteControls.RadioButton optSize
        Index = 0
        Left = 0
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 14
      End
      Begin XtremeSuiteControls.RadioButton optSize
        Index = 1
        Left = 840
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 15
      End
      Begin XtremeSuiteControls.RadioButton optSize
        Index = 2
        Left = 1440
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 16
      End
      Begin XtremeSuiteControls.RadioButton optSize
        Index = 3
        Left = 2040
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 17
      End
    End
    Begin VB.Frame frmOptions
      Index = 0
      Left = 2760
      Top = 360
      Width = 2175
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      Begin XtremeSuiteControls.RadioButton optFile
        Index = 0
        Left = 0
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 12
      End
      Begin XtremeSuiteControls.RadioButton optFile
        Index = 1
        Left = 840
        Top = 0
        Width = 855
        Height = 255
        TabIndex = 13
      End
    End
    Begin VB.TextBox txtSize
      Left = 1080
      Top = 720
      Width = 855
      Height = 285
      Text = "1"
      TabIndex = 5
      MaxLength = 4
    End
    Begin VB.TextBox txtFile
      Left = 1080
      Top = 360
      Width = 1575
      Height = 285
      Text = "file.mp3"
      TabIndex = 3
      MaxLength = 255
    End
    Begin XtremeSuiteControls.PushButton cmdSearch
      Left = 11760
      Top = 960
      Width = 1095
      Height = 375
      TabIndex = 10
    End
    Begin XtremeSuiteControls.CheckBox chkSize
      Left = 2040
      Top = 720
      Width = 615
      Height = 255
      TabIndex = 11
    End
    Begin VB.Label lblSearch
      Caption = "(0 = unlimited)"
      Index = 4
      Left = 7440
      Top = 360
      Width = 975
      Height = 255
      TabIndex = 20
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSearch
      Caption = "Max results:"
      Index = 3
      Left = 5760
      Top = 360
      Width = 855
      Height = 255
      TabIndex = 19
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblPath
      Caption = "N/A"
      Left = 1080
      Top = 1080
      Width = 10575
      Height = 255
      TabIndex = 9
    End
    Begin VB.Label lblSearch
      Caption = "Path:"
      Index = 2
      Left = 240
      Top = 1080
      Width = 735
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSearch
      Caption = "Size:"
      Index = 1
      Left = 240
      Top = 720
      Width = 735
      Height = 255
      TabIndex = 4
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSearch
      Caption = "Filename:"
      Index = 0
      Left = 240
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
    End
  End
  Begin MSComctlLib.StatusBar sbSearch
    Left = 0
    Top = 6750
    Width = 13020
    Height = 300
    TabIndex = 21
  End
  Begin VB.Menu mnuFilesMenu
    Visible = 0   'False
    Caption = "Files"
    Begin VB.Menu mnuFiles
      Index = 0
      Caption = "Download"
    End
    Begin VB.Menu mnuFiles
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuFiles
      Index = 2
      Caption = "Execute"
    End
    Begin VB.Menu mnuFiles
      Index = 3
      Caption = "Secure delete"
    End
  End
End

Attribute VB_Name = "frmSearch"


Private sub mnuFiles__84BE21
0084BE21: push ebp
0084BE22: mov ebp, esp
0084BE24: sub esp, 0000000Ch
0084BE27: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084BE2C: mov eax, fs:[00h]
0084BE32: push eax
0084BE33: mov fs:[00000000h], esp
0084BE3A: mov eax, 00000138h
0084BE3F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BE44: push ebx
0084BE45: push esi
0084BE46: push edi
0084BE47: mov var_0C, esp
0084BE4A: mov var_08, 0040C490h
0084BE51: mov eax, [ebp+08h]
0084BE54: and eax, 00000001h
0084BE57: mov var_04, eax
0084BE5A: mov eax, [ebp+08h]
0084BE5D: and al, FEh
0084BE5F: mov [ebp+08h], eax
0084BE62: mov eax, [ebp+08h]
0084BE65: mov eax, [eax]
0084BE67: push [ebp+08h]
0084BE6A: call [eax+04h]
0084BE6D: mov eax, [ebp+0Ch]
0084BE70: mov ax, [eax]
0084BE73: mov var_00000124, ax
0084BE7A: movsx eax, word ptr var_00000124
0084BE81: mov var_00000138, eax
0084BE87: cmp var_00000138, 00000000h
0084BE8E: jz 84BEAFh
0084BE90: cmp var_00000138, 00000002h
0084BE97: jz 0084C4D8h
0084BE9D: cmp var_00000138, 00000003h
0084BEA4: jz 0084C704h
0084BEAA: jmp 0084C92Bh
0084BEAF: mov var_000000BC, 00000001h
0084BEB9: mov var_000000C4, 00000002h
0084BEC3: push 00000000h
0084BEC5: push 00000001h
0084BEC7: push 00440E48h
0084BECC: push 00000000h
0084BECE: push 00000018h
0084BED0: mov eax, [ebp+08h]
0084BED3: mov eax, [eax]
0084BED5: push [ebp+08h]
0084BED8: call [eax+00000320h]
0084BEDE: push eax
0084BEDF: lea eax, var_34
0084BEE2: push eax
0084BEE3: call 00410A84h ; Set (object)
0084BEE8: push eax
0084BEE9: lea eax, var_60
0084BEEC: push eax
0084BEED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BEF2: add esp, 00000010h
0084BEF5: push eax
0084BEF6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084BEFB: push eax
0084BEFC: lea eax, var_38
0084BEFF: push eax
0084BF00: call 00410A84h ; Set (object)
0084BF05: push eax
0084BF06: lea eax, var_70
0084BF09: push eax
0084BF0A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BF0F: add esp, 00000010h
0084BF12: push eax
0084BF13: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084BF18: mov var_000000CC, eax
0084BF1E: mov var_000000D4, 00000003h
0084BF28: mov var_000000DC, 00000001h
0084BF32: mov var_000000E4, 00000002h
0084BF3C: lea eax, var_000000C4
0084BF42: push eax
0084BF43: lea eax, var_000000D4
0084BF49: push eax
0084BF4A: lea eax, var_000000E4
0084BF50: push eax
0084BF51: lea eax, var_00000120
0084BF57: push eax
0084BF58: lea eax, var_00000110
0084BF5E: push eax
0084BF5F: lea eax, var_24
0084BF62: push eax
0084BF63: call 00410A3Ch ; For
0084BF68: mov var_00000130, eax
0084BF6E: lea eax, var_38
0084BF71: push eax
0084BF72: lea eax, var_34
0084BF75: push eax
0084BF76: push 00000002h
0084BF78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084BF7D: add esp, 0000000Ch
0084BF80: lea eax, var_70
0084BF83: push eax
0084BF84: lea eax, var_60
0084BF87: push eax
0084BF88: push 00000002h
0084BF8A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084BF8F: add esp, 0000000Ch
0084BF92: jmp 0084C4C6h
0084BF97: lea eax, var_24
0084BF9A: mov var_000000BC, eax
0084BFA0: mov var_000000C4, 0000400Ch
0084BFAA: push 00000000h
0084BFAC: push 00000004h
0084BFAE: push 00440E58h
0084BFB3: push 00000010h
0084BFB5: pop eax
0084BFB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BFBB: lea esi, var_000000C4
0084BFC1: mov edi, esp
0084BFC3: movsd 
0084BFC4: movsd 
0084BFC5: movsd 
0084BFC6: movsd 
0084BFC7: push 00000001h
0084BFC9: push 00000000h
0084BFCB: push 00440E48h
0084BFD0: push 00000000h
0084BFD2: push 00000018h
0084BFD4: mov eax, [ebp+08h]
0084BFD7: mov eax, [eax]
0084BFD9: push [ebp+08h]
0084BFDC: call [eax+00000320h]
0084BFE2: push eax
0084BFE3: lea eax, var_34
0084BFE6: push eax
0084BFE7: call 00410A84h ; Set (object)
0084BFEC: push eax
0084BFED: lea eax, var_60
0084BFF0: push eax
0084BFF1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BFF6: add esp, 00000010h
0084BFF9: push eax
0084BFFA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084BFFF: push eax
0084C000: lea eax, var_38
0084C003: push eax
0084C004: call 00410A84h ; Set (object)
0084C009: push eax
0084C00A: lea eax, var_70
0084C00D: push eax
0084C00E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C013: add esp, 00000020h
0084C016: push eax
0084C017: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C01C: push eax
0084C01D: lea eax, var_3C
0084C020: push eax
0084C021: call 00410A84h ; Set (object)
0084C026: push eax
0084C027: lea eax, var_80
0084C02A: push eax
0084C02B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C030: add esp, 00000010h
0084C033: push eax
0084C034: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084C039: sub ax, FFFFh
0084C03D: neg ax
0084C040: sbb eax, eax
0084C042: inc eax
0084C043: neg eax
0084C045: mov var_00000100, ax
0084C04C: lea eax, var_3C
0084C04F: push eax
0084C050: lea eax, var_38
0084C053: push eax
0084C054: lea eax, var_34
0084C057: push eax
0084C058: push 00000003h
0084C05A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C05F: add esp, 00000010h
0084C062: lea eax, var_80
0084C065: push eax
0084C066: lea eax, var_70
0084C069: push eax
0084C06A: lea eax, var_60
0084C06D: push eax
0084C06E: push 00000003h
0084C070: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C075: add esp, 00000010h
0084C078: movsx eax, word ptr var_00000100
0084C07F: test eax, eax
0084C081: jz 0084C4A9h
0084C087: mov var_000000CC, 00000001h
0084C091: mov var_000000D4, 00000003h
0084C09B: lea eax, var_24
0084C09E: mov var_000000BC, eax
0084C0A4: mov var_000000C4, 0000400Ch
0084C0AE: push 00000010h
0084C0B0: pop eax
0084C0B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C0B6: lea esi, var_000000D4
0084C0BC: mov edi, esp
0084C0BE: movsd 
0084C0BF: movsd 
0084C0C0: movsd 
0084C0C1: movsd 
0084C0C2: push 00000001h
0084C0C4: push 00000010h
0084C0C6: push 00440E58h
0084C0CB: push 00000010h
0084C0CD: pop eax
0084C0CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C0D3: lea esi, var_000000C4
0084C0D9: mov edi, esp
0084C0DB: movsd 
0084C0DC: movsd 
0084C0DD: movsd 
0084C0DE: movsd 
0084C0DF: push 00000001h
0084C0E1: push 00000000h
0084C0E3: push 00440E48h
0084C0E8: push 00000000h
0084C0EA: push 00000018h
0084C0EC: mov eax, [ebp+08h]
0084C0EF: mov eax, [eax]
0084C0F1: push [ebp+08h]
0084C0F4: call [eax+00000320h]
0084C0FA: push eax
0084C0FB: lea eax, var_34
0084C0FE: push eax
0084C0FF: call 00410A84h ; Set (object)
0084C104: push eax
0084C105: lea eax, var_60
0084C108: push eax
0084C109: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C10E: add esp, 00000010h
0084C111: push eax
0084C112: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C117: push eax
0084C118: lea eax, var_38
0084C11B: push eax
0084C11C: call 00410A84h ; Set (object)
0084C121: push eax
0084C122: lea eax, var_70
0084C125: push eax
0084C126: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C12B: add esp, 00000020h
0084C12E: push eax
0084C12F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C134: push eax
0084C135: lea eax, var_3C
0084C138: push eax
0084C139: call 00410A84h ; Set (object)
0084C13E: push eax
0084C13F: lea eax, var_80
0084C142: push eax
0084C143: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C148: add esp, 00000020h
0084C14B: push eax
0084C14C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084C151: mov edx, eax
0084C153: lea ecx, var_28
0084C156: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084C15B: push eax
0084C15C: call 004109DCh ; Val(arg_1)
0084C161: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0084C166: fcomp real8 ptr [00401770h]
0084C16C: fstsw ax
0084C16E: sahf 
0084C16F: jbe 84C17Dh
0084C171: mov var_0000013C, 00000001h
0084C17B: jmp 84C184h
0084C17D: and var_0000013C, 00000000h
0084C184: mov eax, var_0000013C
0084C18A: neg eax
0084C18C: mov var_00000100, ax
0084C193: lea ecx, var_28
0084C196: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084C19B: lea eax, var_3C
0084C19E: push eax
0084C19F: lea eax, var_38
0084C1A2: push eax
0084C1A3: lea eax, var_34
0084C1A6: push eax
0084C1A7: push 00000003h
0084C1A9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C1AE: add esp, 00000010h
0084C1B1: lea eax, var_80
0084C1B4: push eax
0084C1B5: lea eax, var_70
0084C1B8: push eax
0084C1B9: lea eax, var_60
0084C1BC: push eax
0084C1BD: push 00000003h
0084C1BF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C1C4: add esp, 00000010h
0084C1C7: movsx eax, word ptr var_00000100
0084C1CE: test eax, eax
0084C1D0: jz 0084C4A9h
0084C1D6: lea eax, var_28
0084C1D9: push eax
0084C1DA: mov eax, [ebp+08h]
0084C1DD: mov eax, [eax]
0084C1DF: push [ebp+08h]
0084C1E2: call [eax+000001C0h]
0084C1E8: fclex 
0084C1EA: mov var_00000100, eax
0084C1F0: cmp var_00000100, 00000000h
0084C1F7: jnl 84C219h
0084C1F9: push 000001C0h
0084C1FE: push 00445034h
0084C203: push [ebp+08h]
0084C206: push var_00000100
0084C20C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084C211: mov var_00000140, eax
0084C217: jmp 84C220h
0084C219: and var_00000140, 00000000h
0084C220: push var_28
0084C223: call 004109DCh ; Val(arg_1)
0084C228: fstp real8 ptr var_000000FC
0084C22E: cmp [008F2010h], 00000000h
0084C235: jnz 84C252h
0084C237: push 008F2010h
0084C23C: push 00433984h
0084C241: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084C246: mov var_00000144, 008F2010h
0084C250: jmp 84C25Ch
0084C252: mov var_00000144, 008F2010h
0084C25C: mov eax, var_00000144
0084C262: mov eax, [eax]
0084C264: mov ecx, var_00000144
0084C26A: mov ecx, [ecx]
0084C26C: mov ecx, [ecx]
0084C26E: push eax
0084C26F: call [ecx+0000053Ch]
0084C275: push eax
0084C276: lea eax, var_50
0084C279: push eax
0084C27A: call 00410A84h ; Set (object)
0084C27F: lea eax, var_24
0084C282: mov var_000000BC, eax
0084C288: mov var_000000C4, 0000400Ch
0084C292: push 00000000h
0084C294: push 00000000h
0084C296: push 00440E58h
0084C29B: push 00000010h
0084C29D: pop eax
0084C29E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C2A3: lea esi, var_000000C4
0084C2A9: mov edi, esp
0084C2AB: movsd 
0084C2AC: movsd 
0084C2AD: movsd 
0084C2AE: movsd 
0084C2AF: push 00000001h
0084C2B1: push 00000000h
0084C2B3: push 00440E48h
0084C2B8: push 00000000h
0084C2BA: push 00000018h
0084C2BC: mov eax, [ebp+08h]
0084C2BF: mov eax, [eax]
0084C2C1: push [ebp+08h]
0084C2C4: call [eax+00000320h]
0084C2CA: push eax
0084C2CB: lea eax, var_34
0084C2CE: push eax
0084C2CF: call 00410A84h ; Set (object)
0084C2D4: push eax
0084C2D5: lea eax, var_60
0084C2D8: push eax
0084C2D9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C2DE: add esp, 00000010h
0084C2E1: push eax
0084C2E2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C2E7: push eax
0084C2E8: lea eax, var_38
0084C2EB: push eax
0084C2EC: call 00410A84h ; Set (object)
0084C2F1: push eax
0084C2F2: lea eax, var_70
0084C2F5: push eax
0084C2F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C2FB: add esp, 00000020h
0084C2FE: push eax
0084C2FF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C304: push eax
0084C305: lea eax, var_3C
0084C308: push eax
0084C309: call 00410A84h ; Set (object)
0084C30E: push eax
0084C30F: lea eax, var_80
0084C312: push eax
0084C313: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C318: add esp, 00000010h
0084C31B: mov var_000000DC, 00000001h
0084C325: mov var_000000E4, 00000003h
0084C32F: lea eax, var_24
0084C332: mov var_000000CC, eax
0084C338: mov var_000000D4, 0000400Ch
0084C342: mov eax, var_50
0084C345: mov var_00000134, eax
0084C34B: and var_50, 00000000h
0084C34F: push var_00000134
0084C355: lea eax, var_4C
0084C358: push eax
0084C359: call 00410A84h ; Set (object)
0084C35E: push 00000010h
0084C360: pop eax
0084C361: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C366: lea esi, var_000000E4
0084C36C: mov edi, esp
0084C36E: movsd 
0084C36F: movsd 
0084C370: movsd 
0084C371: movsd 
0084C372: push 00000001h
0084C374: push 00000010h
0084C376: push 00440E58h
0084C37B: push 00000010h
0084C37D: pop eax
0084C37E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C383: lea esi, var_000000D4
0084C389: mov edi, esp
0084C38B: movsd 
0084C38C: movsd 
0084C38D: movsd 
0084C38E: movsd 
0084C38F: push 00000001h
0084C391: push 00000000h
0084C393: push 00440E48h
0084C398: push 00000000h
0084C39A: push 00000018h
0084C39C: mov eax, [ebp+08h]
0084C39F: mov eax, [eax]
0084C3A1: push [ebp+08h]
0084C3A4: call [eax+00000320h]
0084C3AA: push eax
0084C3AB: lea eax, var_40
0084C3AE: push eax
0084C3AF: call 00410A84h ; Set (object)
0084C3B4: push eax
0084C3B5: lea eax, var_00000090
0084C3BB: push eax
0084C3BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C3C1: add esp, 00000010h
0084C3C4: push eax
0084C3C5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C3CA: push eax
0084C3CB: lea eax, var_44
0084C3CE: push eax
0084C3CF: call 00410A84h ; Set (object)
0084C3D4: push eax
0084C3D5: lea eax, var_000000A0
0084C3DB: push eax
0084C3DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C3E1: add esp, 00000020h
0084C3E4: push eax
0084C3E5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C3EA: push eax
0084C3EB: lea eax, var_48
0084C3EE: push eax
0084C3EF: call 00410A84h ; Set (object)
0084C3F4: push eax
0084C3F5: lea eax, var_000000B0
0084C3FB: push eax
0084C3FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C401: add esp, 00000020h
0084C404: push eax
0084C405: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084C40A: mov edx, eax
0084C40C: lea ecx, var_30
0084C40F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084C414: push eax
0084C415: lea eax, var_80
0084C418: push eax
0084C419: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084C41E: mov edx, eax
0084C420: lea ecx, var_2C
0084C423: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084C428: push eax
0084C429: lea eax, var_4C
0084C42C: push eax
0084C42D: fld real8 ptr var_000000FC
0084C433: call 00410814h ; msvbvm60.dll.__vbaFpI4
0084C438: push eax
0084C439: call 007C016Fh
0084C43E: lea eax, var_30
0084C441: push eax
0084C442: lea eax, var_2C
0084C445: push eax
0084C446: lea eax, var_28
0084C449: push eax
0084C44A: push 00000003h
0084C44C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084C451: add esp, 00000010h
0084C454: lea eax, var_50
0084C457: push eax
0084C458: lea eax, var_4C
0084C45B: push eax
0084C45C: lea eax, var_48
0084C45F: push eax
0084C460: lea eax, var_44
0084C463: push eax
0084C464: lea eax, var_40
0084C467: push eax
0084C468: lea eax, var_3C
0084C46B: push eax
0084C46C: lea eax, var_38
0084C46F: push eax
0084C470: lea eax, var_34
0084C473: push eax
0084C474: push 00000008h
0084C476: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C47B: add esp, 00000024h
0084C47E: lea eax, var_000000B0
0084C484: push eax
0084C485: lea eax, var_000000A0
0084C48B: push eax
0084C48C: lea eax, var_00000090
0084C492: push eax
0084C493: lea eax, var_80
0084C496: push eax
0084C497: lea eax, var_70
0084C49A: push eax
0084C49B: lea eax, var_60
0084C49E: push eax
0084C49F: push 00000006h
0084C4A1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C4A6: add esp, 0000001Ch
0084C4A9: lea eax, var_00000120
0084C4AF: push eax
0084C4B0: lea eax, var_00000110
0084C4B6: push eax
0084C4B7: lea eax, var_24
0084C4BA: push eax
0084C4BB: call 00410A36h ; Next
0084C4C0: mov var_00000130, eax
0084C4C6: cmp var_00000130, 00000000h
0084C4CD: jnz 0084BF97h
0084C4D3: jmp 0084C92Bh
0084C4D8: lea eax, var_28
0084C4DB: push eax
0084C4DC: mov eax, [ebp+08h]
0084C4DF: mov eax, [eax]
0084C4E1: push [ebp+08h]
0084C4E4: call [eax+000001C0h]
0084C4EA: fclex 
0084C4EC: mov var_00000100, eax
0084C4F2: cmp var_00000100, 00000000h
0084C4F9: jnl 84C51Bh
0084C4FB: push 000001C0h
0084C500: push 00445034h
0084C505: push [ebp+08h]
0084C508: push var_00000100
0084C50E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084C513: mov var_00000148, eax
0084C519: jmp 84C522h
0084C51B: and var_00000148, 00000000h
0084C522: push var_28
0084C525: call 004109DCh ; Val(arg_1)
0084C52A: fstp real8 ptr var_000000FC
0084C530: push 00000000h
0084C532: push 00000000h
0084C534: push 00000001h
0084C536: push 00000000h
0084C538: lea eax, var_000000B4
0084C53E: push eax
0084C53F: push 00000010h
0084C541: push 00000880h
0084C546: call 00410946h ; ReDim
0084C54B: add esp, 0000001Ch
0084C54E: push 00000000h
0084C550: push 00000008h
0084C552: push 00440E58h
0084C557: push 00000000h
0084C559: push 00000017h
0084C55B: mov eax, [ebp+08h]
0084C55E: mov eax, [eax]
0084C560: push [ebp+08h]
0084C563: call [eax+00000320h]
0084C569: push eax
0084C56A: lea eax, var_34
0084C56D: push eax
0084C56E: call 00410A84h ; Set (object)
0084C573: push eax
0084C574: lea eax, var_60
0084C577: push eax
0084C578: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C57D: add esp, 00000010h
0084C580: push eax
0084C581: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C586: push eax
0084C587: lea eax, var_38
0084C58A: push eax
0084C58B: call 00410A84h ; Set (object)
0084C590: push eax
0084C591: lea eax, var_70
0084C594: push eax
0084C595: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C59A: add esp, 00000010h
0084C59D: push eax
0084C59E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084C5A3: mov var_000000BC, eax
0084C5A9: mov var_000000C4, 00000003h
0084C5B3: push 00000000h
0084C5B5: push 00000000h
0084C5B7: push 00440E58h
0084C5BC: push 00000010h
0084C5BE: pop eax
0084C5BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C5C4: lea esi, var_000000C4
0084C5CA: mov edi, esp
0084C5CC: movsd 
0084C5CD: movsd 
0084C5CE: movsd 
0084C5CF: movsd 
0084C5D0: push 00000001h
0084C5D2: push 00000000h
0084C5D4: push 00440E48h
0084C5D9: push 00000000h
0084C5DB: push 00000018h
0084C5DD: mov eax, [ebp+08h]
0084C5E0: mov eax, [eax]
0084C5E2: push [ebp+08h]
0084C5E5: call [eax+00000320h]
0084C5EB: push eax
0084C5EC: lea eax, var_3C
0084C5EF: push eax
0084C5F0: call 00410A84h ; Set (object)
0084C5F5: push eax
0084C5F6: lea eax, var_80
0084C5F9: push eax
0084C5FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C5FF: add esp, 00000010h
0084C602: push eax
0084C603: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C608: push eax
0084C609: lea eax, var_40
0084C60C: push eax
0084C60D: call 00410A84h ; Set (object)
0084C612: push eax
0084C613: lea eax, var_00000090
0084C619: push eax
0084C61A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C61F: add esp, 00000020h
0084C622: push eax
0084C623: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C628: push eax
0084C629: lea eax, var_44
0084C62C: push eax
0084C62D: call 00410A84h ; Set (object)
0084C632: push eax
0084C633: lea eax, var_000000A0
0084C639: push eax
0084C63A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C63F: add esp, 00000010h
0084C642: push eax
0084C643: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084C648: mov var_000000A8, eax
0084C64E: mov var_000000B0, 00000008h
0084C658: lea esi, var_000000B0
0084C65E: push 00000000h
0084C660: push var_000000B4
0084C666: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084C66B: mov ecx, eax
0084C66D: mov edx, esi
0084C66F: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084C674: mov edx, 0043D504h ; x20
0084C679: lea ecx, var_2C
0084C67C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0084C681: lea eax, var_000000B4
0084C687: push eax
0084C688: lea eax, var_2C
0084C68B: push eax
0084C68C: fld real8 ptr var_000000FC
0084C692: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0084C697: push eax
0084C698: call 007A6910h
0084C69D: lea eax, var_000000B4
0084C6A3: push eax
0084C6A4: push 00000000h
0084C6A6: call 00410934h ; Erase
0084C6AB: lea eax, var_2C
0084C6AE: push eax
0084C6AF: lea eax, var_28
0084C6B2: push eax
0084C6B3: push 00000002h
0084C6B5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084C6BA: add esp, 0000000Ch
0084C6BD: lea eax, var_44
0084C6C0: push eax
0084C6C1: lea eax, var_40
0084C6C4: push eax
0084C6C5: lea eax, var_3C
0084C6C8: push eax
0084C6C9: lea eax, var_38
0084C6CC: push eax
0084C6CD: lea eax, var_34
0084C6D0: push eax
0084C6D1: push 00000005h
0084C6D3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C6D8: add esp, 00000018h
0084C6DB: lea eax, var_000000A0
0084C6E1: push eax
0084C6E2: lea eax, var_00000090
0084C6E8: push eax
0084C6E9: lea eax, var_80
0084C6EC: push eax
0084C6ED: lea eax, var_70
0084C6F0: push eax
0084C6F1: lea eax, var_60
0084C6F4: push eax
0084C6F5: push 00000005h
0084C6F7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C6FC: add esp, 00000018h
0084C6FF: jmp 0084C92Bh
0084C704: lea eax, var_28
0084C707: push eax
0084C708: mov eax, [ebp+08h]
0084C70B: mov eax, [eax]
0084C70D: push [ebp+08h]
0084C710: call [eax+000001C0h]
0084C716: fclex 
0084C718: mov var_00000100, eax
0084C71E: cmp var_00000100, 00000000h
0084C725: jnl 84C747h
0084C727: push 000001C0h
0084C72C: push 00445034h
0084C731: push [ebp+08h]
0084C734: push var_00000100
0084C73A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084C73F: mov var_0000014C, eax
0084C745: jmp 84C74Eh
0084C747: and var_0000014C, 00000000h
0084C74E: push var_28
0084C751: call 004109DCh ; Val(arg_1)
0084C756: fstp real8 ptr var_000000FC
0084C75C: push 00000000h
0084C75E: push 00000000h
0084C760: push 00000001h
0084C762: push 00000000h
0084C764: lea eax, var_000000B4
0084C76A: push eax
0084C76B: push 00000010h
0084C76D: push 00000880h
0084C772: call 00410946h ; ReDim
0084C777: add esp, 0000001Ch
0084C77A: push 00000000h
0084C77C: push 00000008h
0084C77E: push 00440E58h
0084C783: push 00000000h
0084C785: push 00000017h
0084C787: mov eax, [ebp+08h]
0084C78A: mov eax, [eax]
0084C78C: push [ebp+08h]
0084C78F: call [eax+00000320h]
0084C795: push eax
0084C796: lea eax, var_34
0084C799: push eax
0084C79A: call 00410A84h ; Set (object)
0084C79F: push eax
0084C7A0: lea eax, var_60
0084C7A3: push eax
0084C7A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C7A9: add esp, 00000010h
0084C7AC: push eax
0084C7AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C7B2: push eax
0084C7B3: lea eax, var_38
0084C7B6: push eax
0084C7B7: call 00410A84h ; Set (object)
0084C7BC: push eax
0084C7BD: lea eax, var_70
0084C7C0: push eax
0084C7C1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C7C6: add esp, 00000010h
0084C7C9: push eax
0084C7CA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084C7CF: mov var_000000BC, eax
0084C7D5: mov var_000000C4, 00000003h
0084C7DF: push 00000000h
0084C7E1: push 00000000h
0084C7E3: push 00440E58h
0084C7E8: push 00000010h
0084C7EA: pop eax
0084C7EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084C7F0: lea esi, var_000000C4
0084C7F6: mov edi, esp
0084C7F8: movsd 
0084C7F9: movsd 
0084C7FA: movsd 
0084C7FB: movsd 
0084C7FC: push 00000001h
0084C7FE: push 00000000h
0084C800: push 00440E48h
0084C805: push 00000000h
0084C807: push 00000018h
0084C809: mov eax, [ebp+08h]
0084C80C: mov eax, [eax]
0084C80E: push [ebp+08h]
0084C811: call [eax+00000320h]
0084C817: push eax
0084C818: lea eax, var_3C
0084C81B: push eax
0084C81C: call 00410A84h ; Set (object)
0084C821: push eax
0084C822: lea eax, var_80
0084C825: push eax
0084C826: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C82B: add esp, 00000010h
0084C82E: push eax
0084C82F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C834: push eax
0084C835: lea eax, var_40
0084C838: push eax
0084C839: call 00410A84h ; Set (object)
0084C83E: push eax
0084C83F: lea eax, var_00000090
0084C845: push eax
0084C846: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C84B: add esp, 00000020h
0084C84E: push eax
0084C84F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084C854: push eax
0084C855: lea eax, var_44
0084C858: push eax
0084C859: call 00410A84h ; Set (object)
0084C85E: push eax
0084C85F: lea eax, var_000000A0
0084C865: push eax
0084C866: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084C86B: add esp, 00000010h
0084C86E: push eax
0084C86F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084C874: mov var_000000A8, eax
0084C87A: mov var_000000B0, 00000008h
0084C884: lea esi, var_000000B0
0084C88A: push 00000000h
0084C88C: push var_000000B4
0084C892: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084C897: mov ecx, eax
0084C899: mov edx, esi
0084C89B: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084C8A0: mov edx, 0043D510h ; x21
0084C8A5: lea ecx, var_2C
0084C8A8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0084C8AD: lea eax, var_000000B4
0084C8B3: push eax
0084C8B4: lea eax, var_2C
0084C8B7: push eax
0084C8B8: fld real8 ptr var_000000FC
0084C8BE: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0084C8C3: push eax
0084C8C4: call 007A6910h
0084C8C9: lea eax, var_000000B4
0084C8CF: push eax
0084C8D0: push 00000000h
0084C8D2: call 00410934h ; Erase
0084C8D7: lea eax, var_2C
0084C8DA: push eax
0084C8DB: lea eax, var_28
0084C8DE: push eax
0084C8DF: push 00000002h
0084C8E1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084C8E6: add esp, 0000000Ch
0084C8E9: lea eax, var_44
0084C8EC: push eax
0084C8ED: lea eax, var_40
0084C8F0: push eax
0084C8F1: lea eax, var_3C
0084C8F4: push eax
0084C8F5: lea eax, var_38
0084C8F8: push eax
0084C8F9: lea eax, var_34
0084C8FC: push eax
0084C8FD: push 00000005h
0084C8FF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C904: add esp, 00000018h
0084C907: lea eax, var_000000A0
0084C90D: push eax
0084C90E: lea eax, var_00000090
0084C914: push eax
0084C915: lea eax, var_80
0084C918: push eax
0084C919: lea eax, var_70
0084C91C: push eax
0084C91D: lea eax, var_60
0084C920: push eax
0084C921: push 00000005h
0084C923: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C928: add esp, 00000018h
0084C92B: mov var_04, 00000000h
0084C932: wait 
0084C933: push 0084C9D5h
0084C938: jmp 84C9B4h
0084C93A: lea eax, var_30
0084C93D: push eax
0084C93E: lea eax, var_2C
0084C941: push eax
0084C942: lea eax, var_28
0084C945: push eax
0084C946: push 00000003h
0084C948: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084C94D: add esp, 00000010h
0084C950: lea eax, var_50
0084C953: push eax
0084C954: lea eax, var_4C
0084C957: push eax
0084C958: lea eax, var_48
0084C95B: push eax
0084C95C: lea eax, var_44
0084C95F: push eax
0084C960: lea eax, var_40
0084C963: push eax
0084C964: lea eax, var_3C
0084C967: push eax
0084C968: lea eax, var_38
0084C96B: push eax
0084C96C: lea eax, var_34
0084C96F: push eax
0084C970: push 00000008h
0084C972: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084C977: add esp, 00000024h
0084C97A: lea eax, var_000000B0
0084C980: push eax
0084C981: lea eax, var_000000A0
0084C987: push eax
0084C988: lea eax, var_00000090
0084C98E: push eax
0084C98F: lea eax, var_80
0084C992: push eax
0084C993: lea eax, var_70
0084C996: push eax
0084C997: lea eax, var_60
0084C99A: push eax
0084C99B: push 00000006h
0084C99D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084C9A2: add esp, 0000001Ch
0084C9A5: lea eax, var_000000B4
0084C9AB: push eax
0084C9AC: push 00000000h
0084C9AE: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0084C9B3: ret 
End Sub

Private sub Form__84B2E9
0084B2E9: push ebp
0084B2EA: mov ebp, esp
0084B2EC: sub esp, 0000000Ch
0084B2EF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084B2F4: mov eax, fs:[00h]
0084B2FA: push eax
0084B2FB: mov fs:[00000000h], esp
0084B302: mov eax, 000000A0h
0084B307: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B30C: push ebx
0084B30D: push esi
0084B30E: push edi
0084B30F: mov var_0C, esp
0084B312: mov var_08, 0040C428h
0084B319: mov eax, [ebp+08h]
0084B31C: and eax, 00000001h
0084B31F: mov var_04, eax
0084B322: mov eax, [ebp+08h]
0084B325: and al, FEh
0084B327: mov [ebp+08h], eax
0084B32A: mov eax, [ebp+08h]
0084B32D: mov eax, [eax]
0084B32F: push [ebp+08h]
0084B332: call [eax+04h]
0084B335: mov var_34, 80020004h
0084B33C: mov var_3C, 0000000Ah
0084B343: mov var_54, 80020004h
0084B34A: mov var_5C, 0000000Ah
0084B351: mov var_74, 00455230h ; Filename
0084B358: mov var_7C, 00000008h
0084B35F: mov var_00000094, 00001F40h
0084B369: mov var_0000009C, 00000002h
0084B373: push 00000010h
0084B375: pop eax
0084B376: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B37B: lea esi, var_3C
0084B37E: mov edi, esp
0084B380: movsd 
0084B381: movsd 
0084B382: movsd 
0084B383: movsd 
0084B384: push 00000010h
0084B386: pop eax
0084B387: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B38C: lea esi, var_5C
0084B38F: mov edi, esp
0084B391: movsd 
0084B392: movsd 
0084B393: movsd 
0084B394: movsd 
0084B395: push 00000010h
0084B397: pop eax
0084B398: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B39D: lea esi, var_7C
0084B3A0: mov edi, esp
0084B3A2: movsd 
0084B3A3: movsd 
0084B3A4: movsd 
0084B3A5: movsd 
0084B3A6: push 00000010h
0084B3A8: pop eax
0084B3A9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B3AE: lea esi, var_0000009C
0084B3B4: mov edi, esp
0084B3B6: movsd 
0084B3B7: movsd 
0084B3B8: movsd 
0084B3B9: movsd 
0084B3BA: push 00000004h
0084B3BC: push 00000002h
0084B3BE: push 00445534h
0084B3C3: push 00000000h
0084B3C5: push 00000019h
0084B3C7: mov eax, [ebp+08h]
0084B3CA: mov eax, [eax]
0084B3CC: push [ebp+08h]
0084B3CF: call [eax+00000320h]
0084B3D5: push eax
0084B3D6: lea eax, var_18
0084B3D9: push eax
0084B3DA: call 00410A84h ; Set (object)
0084B3DF: push eax
0084B3E0: lea eax, var_2C
0084B3E3: push eax
0084B3E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B3E9: add esp, 00000010h
0084B3EC: push eax
0084B3ED: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084B3F2: push eax
0084B3F3: lea eax, var_1C
0084B3F6: push eax
0084B3F7: call 00410A84h ; Set (object)
0084B3FC: push eax
0084B3FD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084B402: add esp, 0000004Ch
0084B405: lea eax, var_1C
0084B408: push eax
0084B409: lea eax, var_18
0084B40C: push eax
0084B40D: push 00000002h
0084B40F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B414: add esp, 0000000Ch
0084B417: lea ecx, var_2C
0084B41A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084B41F: mov var_34, 80020004h
0084B426: mov var_3C, 0000000Ah
0084B42D: mov var_54, 80020004h
0084B434: mov var_5C, 0000000Ah
0084B43B: mov var_74, 00446840h ; Size
0084B442: mov var_7C, 00000008h
0084B449: mov var_00000094, 000007D0h
0084B453: mov var_0000009C, 00000002h
0084B45D: push 00000010h
0084B45F: pop eax
0084B460: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B465: lea esi, var_3C
0084B468: mov edi, esp
0084B46A: movsd 
0084B46B: movsd 
0084B46C: movsd 
0084B46D: movsd 
0084B46E: push 00000010h
0084B470: pop eax
0084B471: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B476: lea esi, var_5C
0084B479: mov edi, esp
0084B47B: movsd 
0084B47C: movsd 
0084B47D: movsd 
0084B47E: movsd 
0084B47F: push 00000010h
0084B481: pop eax
0084B482: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B487: lea esi, var_7C
0084B48A: mov edi, esp
0084B48C: movsd 
0084B48D: movsd 
0084B48E: movsd 
0084B48F: movsd 
0084B490: push 00000010h
0084B492: pop eax
0084B493: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B498: lea esi, var_0000009C
0084B49E: mov edi, esp
0084B4A0: movsd 
0084B4A1: movsd 
0084B4A2: movsd 
0084B4A3: movsd 
0084B4A4: push 00000004h
0084B4A6: push 00000002h
0084B4A8: push 00445534h
0084B4AD: push 00000000h
0084B4AF: push 00000019h
0084B4B1: mov eax, [ebp+08h]
0084B4B4: mov eax, [eax]
0084B4B6: push [ebp+08h]
0084B4B9: call [eax+00000320h]
0084B4BF: push eax
0084B4C0: lea eax, var_18
0084B4C3: push eax
0084B4C4: call 00410A84h ; Set (object)
0084B4C9: push eax
0084B4CA: lea eax, var_2C
0084B4CD: push eax
0084B4CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B4D3: add esp, 00000010h
0084B4D6: push eax
0084B4D7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084B4DC: push eax
0084B4DD: lea eax, var_1C
0084B4E0: push eax
0084B4E1: call 00410A84h ; Set (object)
0084B4E6: push eax
0084B4E7: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084B4EC: add esp, 0000004Ch
0084B4EF: lea eax, var_1C
0084B4F2: push eax
0084B4F3: lea eax, var_18
0084B4F6: push eax
0084B4F7: push 00000002h
0084B4F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B4FE: add esp, 0000000Ch
0084B501: lea ecx, var_2C
0084B504: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084B509: mov var_04, 00000000h
0084B510: push 0084B533h
0084B515: jmp 84B532h
0084B517: lea eax, var_1C
0084B51A: push eax
0084B51B: lea eax, var_18
0084B51E: push eax
0084B51F: push 00000002h
0084B521: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B526: add esp, 0000000Ch
0084B529: lea ecx, var_2C
0084B52C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084B531: ret 
End Sub

Private sub Form__84B552
0084B552: push ebp
0084B553: mov ebp, esp
0084B555: sub esp, 00000018h
0084B558: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084B55D: mov eax, fs:[00h]
0084B563: push eax
0084B564: mov fs:[00000000h], esp
0084B56B: mov eax, 00000120h
0084B570: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B575: push ebx
0084B576: push esi
0084B577: push edi
0084B578: mov var_18, esp
0084B57B: mov var_14, 0040C438h
0084B582: mov eax, [ebp+08h]
0084B585: and eax, 00000001h
0084B588: mov var_10, eax
0084B58B: mov eax, [ebp+08h]
0084B58E: and al, FEh
0084B590: mov [ebp+08h], eax
0084B593: mov var_0C, 00000000h
0084B59A: mov eax, [ebp+08h]
0084B59D: mov eax, [eax]
0084B59F: push [ebp+08h]
0084B5A2: call [eax+04h]
0084B5A5: mov var_04, 00000001h
0084B5AC: mov var_04, 00000002h
0084B5B3: push FFFFFFFFh
0084B5B5: call 00410A60h ; On Error ...
0084B5BA: mov var_04, 00000003h
0084B5C1: push 00000000h
0084B5C3: push 80010006h
0084B5C8: mov eax, [ebp+08h]
0084B5CB: mov eax, [eax]
0084B5CD: push [ebp+08h]
0084B5D0: call [eax+00000324h]
0084B5D6: push eax
0084B5D7: lea eax, var_24
0084B5DA: push eax
0084B5DB: call 00410A84h ; Set (object)
0084B5E0: push eax
0084B5E1: lea eax, var_48
0084B5E4: push eax
0084B5E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B5EA: add esp, 00000010h
0084B5ED: push 00000000h
0084B5EF: push 80010006h
0084B5F4: mov eax, [ebp+08h]
0084B5F7: mov eax, [eax]
0084B5F9: push [ebp+08h]
0084B5FC: call [eax+00000324h]
0084B602: push eax
0084B603: lea eax, var_28
0084B606: push eax
0084B607: call 00410A84h ; Set (object)
0084B60C: push eax
0084B60D: lea eax, var_58
0084B610: push eax
0084B611: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B616: add esp, 00000010h
0084B619: push 00000000h
0084B61B: push 80010006h
0084B620: mov eax, [ebp+08h]
0084B623: mov eax, [eax]
0084B625: push [ebp+08h]
0084B628: call [eax+00000338h]
0084B62E: push eax
0084B62F: lea eax, var_2C
0084B632: push eax
0084B633: call 00410A84h ; Set (object)
0084B638: push eax
0084B639: lea eax, var_68
0084B63C: push eax
0084B63D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B642: add esp, 00000010h
0084B645: fld real4 ptr [00402BA8h]
0084B64B: fstp real4 ptr var_00000090
0084B651: mov var_00000098, 00000004h
0084B65B: lea eax, var_48
0084B65E: push eax
0084B65F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084B664: fadd real4 ptr [00402B44h]
0084B66A: fstp real4 ptr var_000000B0
0084B670: fstsw ax
0084B672: test al, 0Dh
0084B674: jnz 0084BC43h
0084B67A: mov var_000000B8, 00000004h
0084B684: lea eax, var_0000010C
0084B68A: push eax
0084B68B: mov eax, [ebp+08h]
0084B68E: mov eax, [eax]
0084B690: push [ebp+08h]
0084B693: call [eax+00000080h]
0084B699: fclex 
0084B69B: mov var_00000114, eax
0084B6A1: cmp var_00000114, 00000000h
0084B6A8: jnl 84B6CAh
0084B6AA: push 00000080h
0084B6AF: push 00445034h
0084B6B4: push [ebp+08h]
0084B6B7: push var_00000114
0084B6BD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B6C2: mov var_00000130, eax
0084B6C8: jmp 84B6D1h
0084B6CA: and var_00000130, 00000000h
0084B6D1: fld real4 ptr var_0000010C
0084B6D7: fsub real4 ptr [00402BA4h]
0084B6DD: fstp real4 ptr var_000000D0
0084B6E3: fstsw ax
0084B6E5: test al, 0Dh
0084B6E7: jnz 0084BC43h
0084B6ED: mov var_000000D8, 00000004h
0084B6F7: lea eax, var_00000110
0084B6FD: push eax
0084B6FE: mov eax, [ebp+08h]
0084B701: mov eax, [eax]
0084B703: push [ebp+08h]
0084B706: call [eax+00000088h]
0084B70C: fclex 
0084B70E: mov var_00000118, eax
0084B714: cmp var_00000118, 00000000h
0084B71B: jnl 84B73Dh
0084B71D: push 00000088h
0084B722: push 00445034h
0084B727: push [ebp+08h]
0084B72A: push var_00000118
0084B730: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B735: mov var_00000134, eax
0084B73B: jmp 84B744h
0084B73D: and var_00000134, 00000000h
0084B744: lea eax, var_58
0084B747: push eax
0084B748: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084B74D: fsubr real4 ptr var_00000110
0084B753: fstsw ax
0084B755: test al, 0Dh
0084B757: jnz 0084BC43h
0084B75D: fstp real4 ptr var_00000138
0084B763: lea eax, var_68
0084B766: push eax
0084B767: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084B76C: fsubr real4 ptr var_00000138
0084B772: fsub real4 ptr [0040C470h]
0084B778: fstp real4 ptr var_000000F0
0084B77E: fstsw ax
0084B780: test al, 0Dh
0084B782: jnz 0084BC43h
0084B788: mov var_000000F8, 00000004h
0084B792: push 00000010h
0084B794: pop eax
0084B795: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B79A: lea esi, var_00000098
0084B7A0: mov edi, esp
0084B7A2: movsd 
0084B7A3: movsd 
0084B7A4: movsd 
0084B7A5: movsd 
0084B7A6: push 00000010h
0084B7A8: pop eax
0084B7A9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B7AE: lea esi, var_000000B8
0084B7B4: mov edi, esp
0084B7B6: movsd 
0084B7B7: movsd 
0084B7B8: movsd 
0084B7B9: movsd 
0084B7BA: push 00000010h
0084B7BC: pop eax
0084B7BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B7C2: lea esi, var_000000D8
0084B7C8: mov edi, esp
0084B7CA: movsd 
0084B7CB: movsd 
0084B7CC: movsd 
0084B7CD: movsd 
0084B7CE: push 00000010h
0084B7D0: pop eax
0084B7D1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B7D6: lea esi, var_000000F8
0084B7DC: mov edi, esp
0084B7DE: movsd 
0084B7DF: movsd 
0084B7E0: movsd 
0084B7E1: movsd 
0084B7E2: push 00000004h
0084B7E4: push 80011002h
0084B7E9: mov eax, [ebp+08h]
0084B7EC: mov eax, [eax]
0084B7EE: push [ebp+08h]
0084B7F1: call [eax+00000320h]
0084B7F7: push eax
0084B7F8: lea eax, var_30
0084B7FB: push eax
0084B7FC: call 00410A84h ; Set (object)
0084B801: push eax
0084B802: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084B807: add esp, 0000004Ch
0084B80A: lea eax, var_30
0084B80D: push eax
0084B80E: lea eax, var_2C
0084B811: push eax
0084B812: lea eax, var_28
0084B815: push eax
0084B816: lea eax, var_24
0084B819: push eax
0084B81A: push 00000004h
0084B81C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B821: add esp, 00000014h
0084B824: lea eax, var_68
0084B827: push eax
0084B828: lea eax, var_58
0084B82B: push eax
0084B82C: lea eax, var_48
0084B82F: push eax
0084B830: push 00000003h
0084B832: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084B837: add esp, 00000010h
0084B83A: mov var_04, 00000004h
0084B841: fld real4 ptr [00402BA8h]
0084B847: fstp real4 ptr var_00000090
0084B84D: mov var_00000098, 00000004h
0084B857: mov var_000000B0, 00000014h
0084B861: mov var_000000B8, 00000002h
0084B86B: lea eax, var_0000010C
0084B871: push eax
0084B872: mov eax, [ebp+08h]
0084B875: mov eax, [eax]
0084B877: push [ebp+08h]
0084B87A: call [eax+00000080h]
0084B880: fclex 
0084B882: mov var_00000114, eax
0084B888: cmp var_00000114, 00000000h
0084B88F: jnl 84B8B1h
0084B891: push 00000080h
0084B896: push 00445034h
0084B89B: push [ebp+08h]
0084B89E: push var_00000114
0084B8A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B8A9: mov var_0000013C, eax
0084B8AF: jmp 84B8B8h
0084B8B1: and var_0000013C, 00000000h
0084B8B8: fld real4 ptr var_0000010C
0084B8BE: fsub real4 ptr [00402BA4h]
0084B8C4: fstp real4 ptr var_000000D0
0084B8CA: fstsw ax
0084B8CC: test al, 0Dh
0084B8CE: jnz 0084BC43h
0084B8D4: mov var_000000D8, 00000004h
0084B8DE: push 00000000h
0084B8E0: push 80010006h
0084B8E5: mov eax, [ebp+08h]
0084B8E8: mov eax, [eax]
0084B8EA: push [ebp+08h]
0084B8ED: call [eax+00000324h]
0084B8F3: push eax
0084B8F4: lea eax, var_24
0084B8F7: push eax
0084B8F8: call 00410A84h ; Set (object)
0084B8FD: push eax
0084B8FE: lea eax, var_48
0084B901: push eax
0084B902: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B907: add esp, 00000010h
0084B90A: push eax
0084B90B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084B910: fstp real4 ptr var_000000F0
0084B916: mov var_000000F8, 00000004h
0084B920: push 00000010h
0084B922: pop eax
0084B923: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B928: lea esi, var_00000098
0084B92E: mov edi, esp
0084B930: movsd 
0084B931: movsd 
0084B932: movsd 
0084B933: movsd 
0084B934: push 00000010h
0084B936: pop eax
0084B937: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B93C: lea esi, var_000000B8
0084B942: mov edi, esp
0084B944: movsd 
0084B945: movsd 
0084B946: movsd 
0084B947: movsd 
0084B948: push 00000010h
0084B94A: pop eax
0084B94B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B950: lea esi, var_000000D8
0084B956: mov edi, esp
0084B958: movsd 
0084B959: movsd 
0084B95A: movsd 
0084B95B: movsd 
0084B95C: push 00000010h
0084B95E: pop eax
0084B95F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084B964: lea esi, var_000000F8
0084B96A: mov edi, esp
0084B96C: movsd 
0084B96D: movsd 
0084B96E: movsd 
0084B96F: movsd 
0084B970: push 00000004h
0084B972: push 80011001h
0084B977: mov eax, [ebp+08h]
0084B97A: mov eax, [eax]
0084B97C: push [ebp+08h]
0084B97F: call [eax+00000324h]
0084B985: push eax
0084B986: lea eax, var_28
0084B989: push eax
0084B98A: call 00410A84h ; Set (object)
0084B98F: push eax
0084B990: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084B995: add esp, 0000004Ch
0084B998: lea eax, var_28
0084B99B: push eax
0084B99C: lea eax, var_24
0084B99F: push eax
0084B9A0: push 00000002h
0084B9A2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B9A7: add esp, 0000000Ch
0084B9AA: lea ecx, var_48
0084B9AD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084B9B2: mov var_04, 00000005h
0084B9B9: push 00000000h
0084B9BB: push 80010005h
0084B9C0: mov eax, [ebp+08h]
0084B9C3: mov eax, [eax]
0084B9C5: push [ebp+08h]
0084B9C8: call [eax+00000330h]
0084B9CE: push eax
0084B9CF: lea eax, var_28
0084B9D2: push eax
0084B9D3: call 00410A84h ; Set (object)
0084B9D8: push eax
0084B9D9: lea eax, var_58
0084B9DC: push eax
0084B9DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084B9E2: add esp, 00000010h
0084B9E5: push 00000000h
0084B9E7: push 80010005h
0084B9EC: mov eax, [ebp+08h]
0084B9EF: mov eax, [eax]
0084B9F1: push [ebp+08h]
0084B9F4: call [eax+00000324h]
0084B9FA: push eax
0084B9FB: lea eax, var_24
0084B9FE: push eax
0084B9FF: call 00410A84h ; Set (object)
0084BA04: push eax
0084BA05: lea eax, var_48
0084BA08: push eax
0084BA09: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BA0E: add esp, 00000010h
0084BA11: push eax
0084BA12: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084BA17: fstp real4 ptr var_00000140
0084BA1D: lea eax, var_58
0084BA20: push eax
0084BA21: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084BA26: fsubr real4 ptr var_00000140
0084BA2C: fsub real4 ptr [00402BA4h]
0084BA32: fstp real4 ptr var_00000090
0084BA38: fstsw ax
0084BA3A: test al, 0Dh
0084BA3C: jnz 0084BC43h
0084BA42: mov var_00000098, 00000004h
0084BA4C: push 00000000h
0084BA4E: push 80010004h
0084BA53: mov eax, [ebp+08h]
0084BA56: mov eax, [eax]
0084BA58: push [ebp+08h]
0084BA5B: call [eax+00000330h]
0084BA61: push eax
0084BA62: lea eax, var_2C
0084BA65: push eax
0084BA66: call 00410A84h ; Set (object)
0084BA6B: push eax
0084BA6C: lea eax, var_68
0084BA6F: push eax
0084BA70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BA75: add esp, 00000010h
0084BA78: push eax
0084BA79: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084BA7E: fstp real4 ptr var_000000B0
0084BA84: mov var_000000B8, 00000004h
0084BA8E: push 00000000h
0084BA90: push 80010005h
0084BA95: mov eax, [ebp+08h]
0084BA98: mov eax, [eax]
0084BA9A: push [ebp+08h]
0084BA9D: call [eax+00000330h]
0084BAA3: push eax
0084BAA4: lea eax, var_30
0084BAA7: push eax
0084BAA8: call 00410A84h ; Set (object)
0084BAAD: push eax
0084BAAE: lea eax, var_78
0084BAB1: push eax
0084BAB2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BAB7: add esp, 00000010h
0084BABA: push eax
0084BABB: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084BAC0: fstp real4 ptr var_000000D0
0084BAC6: mov var_000000D8, 00000004h
0084BAD0: push 00000000h
0084BAD2: push 80010006h
0084BAD7: mov eax, [ebp+08h]
0084BADA: mov eax, [eax]
0084BADC: push [ebp+08h]
0084BADF: call [eax+00000330h]
0084BAE5: push eax
0084BAE6: lea eax, var_34
0084BAE9: push eax
0084BAEA: call 00410A84h ; Set (object)
0084BAEF: push eax
0084BAF0: lea eax, var_00000088
0084BAF6: push eax
0084BAF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084BAFC: add esp, 00000010h
0084BAFF: push eax
0084BB00: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084BB05: fstp real4 ptr var_000000F0
0084BB0B: mov var_000000F8, 00000004h
0084BB15: push 00000010h
0084BB17: pop eax
0084BB18: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BB1D: lea esi, var_00000098
0084BB23: mov edi, esp
0084BB25: movsd 
0084BB26: movsd 
0084BB27: movsd 
0084BB28: movsd 
0084BB29: push 00000010h
0084BB2B: pop eax
0084BB2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BB31: lea esi, var_000000B8
0084BB37: mov edi, esp
0084BB39: movsd 
0084BB3A: movsd 
0084BB3B: movsd 
0084BB3C: movsd 
0084BB3D: push 00000010h
0084BB3F: pop eax
0084BB40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BB45: lea esi, var_000000D8
0084BB4B: mov edi, esp
0084BB4D: movsd 
0084BB4E: movsd 
0084BB4F: movsd 
0084BB50: movsd 
0084BB51: push 00000010h
0084BB53: pop eax
0084BB54: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BB59: lea esi, var_000000F8
0084BB5F: mov edi, esp
0084BB61: movsd 
0084BB62: movsd 
0084BB63: movsd 
0084BB64: movsd 
0084BB65: push 00000004h
0084BB67: push 80011002h
0084BB6C: mov eax, [ebp+08h]
0084BB6F: mov eax, [eax]
0084BB71: push [ebp+08h]
0084BB74: call [eax+00000330h]
0084BB7A: push eax
0084BB7B: lea eax, var_38
0084BB7E: push eax
0084BB7F: call 00410A84h ; Set (object)
0084BB84: push eax
0084BB85: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084BB8A: add esp, 0000004Ch
0084BB8D: lea eax, var_38
0084BB90: push eax
0084BB91: lea eax, var_34
0084BB94: push eax
0084BB95: lea eax, var_30
0084BB98: push eax
0084BB99: lea eax, var_2C
0084BB9C: push eax
0084BB9D: lea eax, var_28
0084BBA0: push eax
0084BBA1: lea eax, var_24
0084BBA4: push eax
0084BBA5: push 00000006h
0084BBA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084BBAC: add esp, 0000001Ch
0084BBAF: lea eax, var_00000088
0084BBB5: push eax
0084BBB6: lea eax, var_78
0084BBB9: push eax
0084BBBA: lea eax, var_68
0084BBBD: push eax
0084BBBE: lea eax, var_58
0084BBC1: push eax
0084BBC2: lea eax, var_48
0084BBC5: push eax
0084BBC6: push 00000005h
0084BBC8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084BBCD: add esp, 00000018h
0084BBD0: mov var_10, 00000000h
0084BBD7: wait 
0084BBD8: push 0084BC24h
0084BBDD: jmp 84BC23h
0084BBDF: lea eax, var_38
0084BBE2: push eax
0084BBE3: lea eax, var_34
0084BBE6: push eax
0084BBE7: lea eax, var_30
0084BBEA: push eax
0084BBEB: lea eax, var_2C
0084BBEE: push eax
0084BBEF: lea eax, var_28
0084BBF2: push eax
0084BBF3: lea eax, var_24
0084BBF6: push eax
0084BBF7: push 00000006h
0084BBF9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084BBFE: add esp, 0000001Ch
0084BC01: lea eax, var_00000088
0084BC07: push eax
0084BC08: lea eax, var_78
0084BC0B: push eax
0084BC0C: lea eax, var_68
0084BC0F: push eax
0084BC10: lea eax, var_58
0084BC13: push eax
0084BC14: lea eax, var_48
0084BC17: push eax
0084BC18: push 00000005h
0084BC1A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084BC1F: add esp, 00000018h
0084BC22: ret 
End Sub

Private sub tmrItems__84C9F4
0084C9F4: push ebp
0084C9F5: mov ebp, esp
0084C9F7: sub esp, 0000000Ch
0084C9FA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084C9FF: mov eax, fs:[00h]
0084CA05: push eax
0084CA06: mov fs:[00000000h], esp
0084CA0D: mov eax, 0000008Ch
0084CA12: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084CA17: push ebx
0084CA18: push esi
0084CA19: push edi
0084CA1A: mov var_0C, esp
0084CA1D: mov var_08, 0040C4A0h
0084CA24: mov eax, [ebp+08h]
0084CA27: and eax, 00000001h
0084CA2A: mov var_04, eax
0084CA2D: mov eax, [ebp+08h]
0084CA30: and al, FEh
0084CA32: mov [ebp+08h], eax
0084CA35: mov eax, [ebp+08h]
0084CA38: mov eax, [eax]
0084CA3A: push [ebp+08h]
0084CA3D: call [eax+04h]
0084CA40: push 0044A87Ch
0084CA45: push 00000000h
0084CA47: push 00000003h
0084CA49: mov eax, [ebp+08h]
0084CA4C: mov eax, [eax]
0084CA4E: push [ebp+08h]
0084CA51: call [eax+00000338h]
0084CA57: push eax
0084CA58: lea eax, var_28
0084CA5B: push eax
0084CA5C: call 00410A84h ; Set (object)
0084CA61: push eax
0084CA62: lea eax, var_60
0084CA65: push eax
0084CA66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084CA6B: add esp, 00000010h
0084CA6E: push eax
0084CA6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084CA74: push eax
0084CA75: lea eax, var_2C
0084CA78: push eax
0084CA79: call 00410A84h ; Set (object)
0084CA7E: mov var_00000084, eax
0084CA84: mov var_68, 00000003h
0084CA8B: mov var_70, 00000002h
0084CA92: lea eax, var_30
0084CA95: push eax
0084CA96: lea eax, var_70
0084CA99: push eax
0084CA9A: mov eax, var_00000084
0084CAA0: mov eax, [eax]
0084CAA2: push var_00000084
0084CAA8: call [eax+24h]
0084CAAB: fclex 
0084CAAD: mov var_00000088, eax
0084CAB3: cmp var_00000088, 00000000h
0084CABA: jnl 84CADCh
0084CABC: push 00000024h
0084CABE: push 0044A87Ch
0084CAC3: push var_00000084
0084CAC9: push var_00000088
0084CACF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CAD4: mov var_0000009C, eax
0084CADA: jmp 84CAE3h
0084CADC: and var_0000009C, 00000000h
0084CAE3: mov eax, var_30
0084CAE6: mov var_0000008C, eax
0084CAEC: push 00455248h ; Items:
0084CAF1: push 00000000h
0084CAF3: push 00000001h
0084CAF5: push 00440E48h
0084CAFA: push 00000000h
0084CAFC: push 00000018h
0084CAFE: mov eax, [ebp+08h]
0084CB01: mov eax, [eax]
0084CB03: push [ebp+08h]
0084CB06: call [eax+00000320h]
0084CB0C: push eax
0084CB0D: lea eax, var_20
0084CB10: push eax
0084CB11: call 00410A84h ; Set (object)
0084CB16: push eax
0084CB17: lea eax, var_40
0084CB1A: push eax
0084CB1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084CB20: add esp, 00000010h
0084CB23: push eax
0084CB24: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084CB29: push eax
0084CB2A: lea eax, var_24
0084CB2D: push eax
0084CB2E: call 00410A84h ; Set (object)
0084CB33: push eax
0084CB34: lea eax, var_50
0084CB37: push eax
0084CB38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084CB3D: add esp, 00000010h
0084CB40: push eax
0084CB41: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084CB46: push eax
0084CB47: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0084CB4C: mov edx, eax
0084CB4E: lea ecx, var_18
0084CB51: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084CB56: push eax
0084CB57: call 00410A18h ; &
0084CB5C: mov edx, eax
0084CB5E: lea ecx, var_1C
0084CB61: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084CB66: push eax
0084CB67: mov eax, var_0000008C
0084CB6D: mov eax, [eax]
0084CB6F: push var_0000008C
0084CB75: call [eax+00000080h]
0084CB7B: fclex 
0084CB7D: mov var_00000090, eax
0084CB83: cmp var_00000090, 00000000h
0084CB8A: jnl 84CBAFh
0084CB8C: push 00000080h
0084CB91: push 0044A88Ch
0084CB96: push var_0000008C
0084CB9C: push var_00000090
0084CBA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CBA7: mov var_000000A0, eax
0084CBAD: jmp 84CBB6h
0084CBAF: and var_000000A0, 00000000h
0084CBB6: lea eax, var_1C
0084CBB9: push eax
0084CBBA: lea eax, var_18
0084CBBD: push eax
0084CBBE: push 00000002h
0084CBC0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084CBC5: add esp, 0000000Ch
0084CBC8: lea eax, var_30
0084CBCB: push eax
0084CBCC: lea eax, var_2C
0084CBCF: push eax
0084CBD0: lea eax, var_28
0084CBD3: push eax
0084CBD4: lea eax, var_24
0084CBD7: push eax
0084CBD8: lea eax, var_20
0084CBDB: push eax
0084CBDC: push 00000005h
0084CBDE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084CBE3: add esp, 00000018h
0084CBE6: lea eax, var_70
0084CBE9: push eax
0084CBEA: lea eax, var_60
0084CBED: push eax
0084CBEE: lea eax, var_50
0084CBF1: push eax
0084CBF2: lea eax, var_40
0084CBF5: push eax
0084CBF6: push 00000004h
0084CBF8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084CBFD: add esp, 00000014h
0084CC00: mov var_04, 00000000h
0084CC07: push 0084CC5Ah
0084CC0C: jmp 84CC59h
0084CC0E: lea eax, var_1C
0084CC11: push eax
0084CC12: lea eax, var_18
0084CC15: push eax
0084CC16: push 00000002h
0084CC18: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084CC1D: add esp, 0000000Ch
0084CC20: lea eax, var_30
0084CC23: push eax
0084CC24: lea eax, var_2C
0084CC27: push eax
0084CC28: lea eax, var_28
0084CC2B: push eax
0084CC2C: lea eax, var_24
0084CC2F: push eax
0084CC30: lea eax, var_20
0084CC33: push eax
0084CC34: push 00000005h
0084CC36: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084CC3B: add esp, 00000018h
0084CC3E: lea eax, var_70
0084CC41: push eax
0084CC42: lea eax, var_60
0084CC45: push eax
0084CC46: lea eax, var_50
0084CC49: push eax
0084CC4A: lea eax, var_40
0084CC4D: push eax
0084CC4E: push 00000004h
0084CC50: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084CC55: add esp, 00000014h
0084CC58: ret 
End Sub

Private sub txtSize__84CC79
0084CC79: push ebp
0084CC7A: mov ebp, esp
0084CC7C: sub esp, 00000018h
0084CC7F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084CC84: mov eax, fs:[00h]
0084CC8A: push eax
0084CC8B: mov fs:[00000000h], esp
0084CC92: mov eax, 000000A0h
0084CC97: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084CC9C: push ebx
0084CC9D: push esi
0084CC9E: push edi
0084CC9F: mov var_18, esp
0084CCA2: mov var_14, 0040C4B0h
0084CCA9: mov eax, [ebp+08h]
0084CCAC: and eax, 00000001h
0084CCAF: mov var_10, eax
0084CCB2: mov eax, [ebp+08h]
0084CCB5: and al, FEh
0084CCB7: mov [ebp+08h], eax
0084CCBA: mov var_0C, 00000000h
0084CCC1: mov eax, [ebp+08h]
0084CCC4: mov eax, [eax]
0084CCC6: push [ebp+08h]
0084CCC9: call [eax+04h]
0084CCCC: mov var_04, 00000001h
0084CCD3: mov var_04, 00000002h
0084CCDA: push FFFFFFFFh
0084CCDC: call 00410A60h ; On Error ...
0084CCE1: mov var_04, 00000003h
0084CCE8: mov eax, [ebp+08h]
0084CCEB: mov eax, [eax]
0084CCED: push [ebp+08h]
0084CCF0: call [eax+00000308h]
0084CCF6: push eax
0084CCF7: lea eax, var_2C
0084CCFA: push eax
0084CCFB: call 00410A84h ; Set (object)
0084CD00: mov var_78, eax
0084CD03: lea eax, var_24
0084CD06: push eax
0084CD07: mov eax, var_78
0084CD0A: mov eax, [eax]
0084CD0C: push var_78
0084CD0F: call [eax+000000A0h]
0084CD15: fclex 
0084CD17: mov var_7C, eax
0084CD1A: cmp var_7C, 00000000h
0084CD1E: jnl 84CD3Dh
0084CD20: push 000000A0h
0084CD25: push 00440E08h
0084CD2A: push var_78
0084CD2D: push var_7C
0084CD30: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CD35: mov var_000000A0, eax
0084CD3B: jmp 84CD44h
0084CD3D: and var_000000A0, 00000000h
0084CD44: mov eax, [ebp+08h]
0084CD47: mov eax, [eax]
0084CD49: push [ebp+08h]
0084CD4C: call [eax+00000308h]
0084CD52: mov var_3C, eax
0084CD55: mov var_44, 00000009h
0084CD5C: push var_24
0084CD5F: call 0041098Eh ; Len(arg_1)
0084CD64: xor ebx, ebx
0084CD66: test eax, eax
0084CD68: setnle bl
0084CD6B: neg ebx
0084CD6D: lea eax, var_44
0084CD70: push eax
0084CD71: call 004109EEh ; IsNumeric(arg_1)
0084CD76: neg ax
0084CD79: sbb eax, eax
0084CD7B: inc eax
0084CD7C: neg eax
0084CD7E: and bx, ax
0084CD81: mov var_80, bx
0084CD85: lea ecx, var_24
0084CD88: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084CD8D: lea ecx, var_2C
0084CD90: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084CD95: lea ecx, var_44
0084CD98: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084CD9D: movsx eax, word ptr var_80
0084CDA1: test eax, eax
0084CDA3: jz 0084CF1Ch
0084CDA9: mov var_04, 00000004h
0084CDB0: mov eax, [ebp+08h]
0084CDB3: mov eax, [eax]
0084CDB5: push [ebp+08h]
0084CDB8: call [eax+00000308h]
0084CDBE: push eax
0084CDBF: lea eax, var_34
0084CDC2: push eax
0084CDC3: call 00410A84h ; Set (object)
0084CDC8: mov eax, [ebp+08h]
0084CDCB: mov eax, [eax]
0084CDCD: push [ebp+08h]
0084CDD0: call [eax+00000308h]
0084CDD6: push eax
0084CDD7: lea eax, var_30
0084CDDA: push eax
0084CDDB: call 00410A84h ; Set (object)
0084CDE0: mov var_80, eax
0084CDE3: mov eax, [ebp+08h]
0084CDE6: mov eax, [eax]
0084CDE8: push [ebp+08h]
0084CDEB: call [eax+00000308h]
0084CDF1: push eax
0084CDF2: lea eax, var_2C
0084CDF5: push eax
0084CDF6: call 00410A84h ; Set (object)
0084CDFB: mov var_78, eax
0084CDFE: lea eax, var_24
0084CE01: push eax
0084CE02: mov eax, var_78
0084CE05: mov eax, [eax]
0084CE07: push var_78
0084CE0A: call [eax+000000A0h]
0084CE10: fclex 
0084CE12: mov var_7C, eax
0084CE15: cmp var_7C, 00000000h
0084CE19: jnl 84CE38h
0084CE1B: push 000000A0h
0084CE20: push 00440E08h
0084CE25: push var_78
0084CE28: push var_7C
0084CE2B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CE30: mov var_000000A4, eax
0084CE36: jmp 84CE3Fh
0084CE38: and var_000000A4, 00000000h
0084CE3F: push var_24
0084CE42: call 0041098Eh ; Len(arg_1)
0084CE47: sub eax, 00000001h
0084CE4A: jo 0084D21Eh
0084CE50: mov var_4C, eax
0084CE53: mov var_54, 00000003h
0084CE5A: mov eax, var_34
0084CE5D: mov var_0000009C, eax
0084CE63: and var_34, 00000000h
0084CE67: mov eax, var_0000009C
0084CE6D: mov var_3C, eax
0084CE70: mov var_44, 00000009h
0084CE77: lea eax, var_54
0084CE7A: push eax
0084CE7B: push 00000001h
0084CE7D: lea eax, var_44
0084CE80: push eax
0084CE81: lea eax, var_64
0084CE84: push eax
0084CE85: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0084CE8A: lea eax, var_64
0084CE8D: push eax
0084CE8E: lea eax, var_28
0084CE91: push eax
0084CE92: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0084CE97: push eax
0084CE98: mov eax, var_80
0084CE9B: mov eax, [eax]
0084CE9D: push var_80
0084CEA0: call [eax+000000A4h]
0084CEA6: fclex 
0084CEA8: mov var_00000084, eax
0084CEAE: cmp var_00000084, 00000000h
0084CEB5: jnl 84CED7h
0084CEB7: push 000000A4h
0084CEBC: push 00440E08h
0084CEC1: push var_80
0084CEC4: push var_00000084
0084CECA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CECF: mov var_000000A8, eax
0084CED5: jmp 84CEDEh
0084CED7: and var_000000A8, 00000000h
0084CEDE: lea eax, var_28
0084CEE1: push eax
0084CEE2: lea eax, var_24
0084CEE5: push eax
0084CEE6: push 00000002h
0084CEE8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084CEED: add esp, 0000000Ch
0084CEF0: lea eax, var_34
0084CEF3: push eax
0084CEF4: lea eax, var_30
0084CEF7: push eax
0084CEF8: lea eax, var_2C
0084CEFB: push eax
0084CEFC: push 00000003h
0084CEFE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084CF03: add esp, 00000010h
0084CF06: lea eax, var_64
0084CF09: push eax
0084CF0A: lea eax, var_54
0084CF0D: push eax
0084CF0E: lea eax, var_44
0084CF11: push eax
0084CF12: push 00000003h
0084CF14: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084CF19: add esp, 00000010h
0084CF1C: mov var_04, 00000006h
0084CF23: mov var_3C, 80020004h
0084CF2A: mov var_44, 0000000Ah
0084CF31: lea eax, var_44
0084CF34: push eax
0084CF35: push 0044AED4h ; {End}
0084CF3A: call 00410736h ; SendKeys
0084CF3F: lea ecx, var_44
0084CF42: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084CF47: mov var_04, 00000007h
0084CF4E: mov eax, [ebp+08h]
0084CF51: mov eax, [eax]
0084CF53: push [ebp+08h]
0084CF56: call [eax+00000308h]
0084CF5C: push eax
0084CF5D: lea eax, var_2C
0084CF60: push eax
0084CF61: call 00410A84h ; Set (object)
0084CF66: mov var_78, eax
0084CF69: lea eax, var_24
0084CF6C: push eax
0084CF6D: mov eax, var_78
0084CF70: mov eax, [eax]
0084CF72: push var_78
0084CF75: call [eax+000000A0h]
0084CF7B: fclex 
0084CF7D: mov var_7C, eax
0084CF80: cmp var_7C, 00000000h
0084CF84: jnl 84CFA3h
0084CF86: push 000000A0h
0084CF8B: push 00440E08h
0084CF90: push var_78
0084CF93: push var_7C
0084CF96: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084CF9B: mov var_000000AC, eax
0084CFA1: jmp 84CFAAh
0084CFA3: and var_000000AC, 00000000h
0084CFAA: push var_24
0084CFAD: call 00410754h ; msvbvm60.dll.__vbaR8Str
0084CFB2: fcomp real8 ptr [00404D48h]
0084CFB8: fstsw ax
0084CFBA: sahf 
0084CFBB: jbe 84CFC9h
0084CFBD: mov var_000000B0, 00000001h
0084CFC7: jmp 84CFD0h
0084CFC9: and var_000000B0, 00000000h
0084CFD0: mov eax, var_000000B0
0084CFD6: neg eax
0084CFD8: mov var_80, ax
0084CFDC: lea ecx, var_24
0084CFDF: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084CFE4: lea ecx, var_2C
0084CFE7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084CFEC: movsx eax, word ptr var_80
0084CFF0: test eax, eax
0084CFF2: jz 0084D079h
0084CFF8: mov var_04, 00000008h
0084CFFF: mov eax, [ebp+08h]
0084D002: mov eax, [eax]
0084D004: push [ebp+08h]
0084D007: call [eax+00000308h]
0084D00D: push eax
0084D00E: lea eax, var_2C
0084D011: push eax
0084D012: call 00410A84h ; Set (object)
0084D017: mov var_78, eax
0084D01A: push 00000000h
0084D01C: call 00410964h ; msvbvm60.dll.__vbaStrI2
0084D021: mov edx, eax
0084D023: lea ecx, var_24
0084D026: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084D02B: push eax
0084D02C: mov eax, var_78
0084D02F: mov eax, [eax]
0084D031: push var_78
0084D034: call [eax+000000A4h]
0084D03A: fclex 
0084D03C: mov var_7C, eax
0084D03F: cmp var_7C, 00000000h
0084D043: jnl 84D062h
0084D045: push 000000A4h
0084D04A: push 00440E08h
0084D04F: push var_78
0084D052: push var_7C
0084D055: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D05A: mov var_000000B4, eax
0084D060: jmp 84D069h
0084D062: and var_000000B4, 00000000h
0084D069: lea ecx, var_24
0084D06C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084D071: lea ecx, var_2C
0084D074: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D079: mov var_04, 0000000Ah
0084D080: mov eax, [ebp+08h]
0084D083: mov eax, [eax]
0084D085: push [ebp+08h]
0084D088: call [eax+00000308h]
0084D08E: push eax
0084D08F: lea eax, var_2C
0084D092: push eax
0084D093: call 00410A84h ; Set (object)
0084D098: mov var_78, eax
0084D09B: lea eax, var_24
0084D09E: push eax
0084D09F: mov eax, var_78
0084D0A2: mov eax, [eax]
0084D0A4: push var_78
0084D0A7: call [eax+000000A0h]
0084D0AD: fclex 
0084D0AF: mov var_7C, eax
0084D0B2: cmp var_7C, 00000000h
0084D0B6: jnl 84D0D5h
0084D0B8: push 000000A0h
0084D0BD: push 00440E08h
0084D0C2: push var_78
0084D0C5: push var_7C
0084D0C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D0CD: mov var_000000B8, eax
0084D0D3: jmp 84D0DCh
0084D0D5: and var_000000B8, 00000000h
0084D0DC: push var_24
0084D0DF: call 004109DCh ; Val(arg_1)
0084D0E4: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0084D0E9: fcomp real8 ptr [00401770h]
0084D0EF: fstsw ax
0084D0F1: sahf 
0084D0F2: jnz 84D100h
0084D0F4: mov var_000000BC, 00000001h
0084D0FE: jmp 84D107h
0084D100: and var_000000BC, 00000000h
0084D107: mov eax, var_000000BC
0084D10D: neg eax
0084D10F: mov var_80, ax
0084D113: lea ecx, var_24
0084D116: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084D11B: lea ecx, var_2C
0084D11E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D123: movsx eax, word ptr var_80
0084D127: test eax, eax
0084D129: jz 0084D1B0h
0084D12F: mov var_04, 0000000Bh
0084D136: mov eax, [ebp+08h]
0084D139: mov eax, [eax]
0084D13B: push [ebp+08h]
0084D13E: call [eax+00000308h]
0084D144: push eax
0084D145: lea eax, var_2C
0084D148: push eax
0084D149: call 00410A84h ; Set (object)
0084D14E: mov var_78, eax
0084D151: push 00000001h
0084D153: call 00410964h ; msvbvm60.dll.__vbaStrI2
0084D158: mov edx, eax
0084D15A: lea ecx, var_24
0084D15D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084D162: push eax
0084D163: mov eax, var_78
0084D166: mov eax, [eax]
0084D168: push var_78
0084D16B: call [eax+000000A4h]
0084D171: fclex 
0084D173: mov var_7C, eax
0084D176: cmp var_7C, 00000000h
0084D17A: jnl 84D199h
0084D17C: push 000000A4h
0084D181: push 00440E08h
0084D186: push var_78
0084D189: push var_7C
0084D18C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D191: mov var_000000C0, eax
0084D197: jmp 84D1A0h
0084D199: and var_000000C0, 00000000h
0084D1A0: lea ecx, var_24
0084D1A3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084D1A8: lea ecx, var_2C
0084D1AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D1B0: mov var_10, 00000000h
0084D1B7: wait 
0084D1B8: push 0084D1FFh
0084D1BD: jmp 84D1FEh
0084D1BF: lea eax, var_28
0084D1C2: push eax
0084D1C3: lea eax, var_24
0084D1C6: push eax
0084D1C7: push 00000002h
0084D1C9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084D1CE: add esp, 0000000Ch
0084D1D1: lea eax, var_34
0084D1D4: push eax
0084D1D5: lea eax, var_30
0084D1D8: push eax
0084D1D9: lea eax, var_2C
0084D1DC: push eax
0084D1DD: push 00000003h
0084D1DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084D1E4: add esp, 00000010h
0084D1E7: lea eax, var_64
0084D1EA: push eax
0084D1EB: lea eax, var_54
0084D1EE: push eax
0084D1EF: lea eax, var_44
0084D1F2: push eax
0084D1F3: push 00000003h
0084D1F5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084D1FA: add esp, 00000010h
0084D1FD: ret 
End Sub

Private sub cmdSearch__849F77
00849F77: push ebp
00849F78: mov ebp, esp
00849F7A: sub esp, 0000000Ch
00849F7D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00849F82: mov eax, fs:[00h]
00849F88: push eax
00849F89: mov fs:[00000000h], esp
00849F90: mov eax, 00000134h
00849F95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849F9A: push ebx
00849F9B: push esi
00849F9C: push edi
00849F9D: mov var_0C, esp
00849FA0: mov var_08, 0040C418h
00849FA7: mov eax, [ebp+08h]
00849FAA: and eax, 00000001h
00849FAD: mov var_04, eax
00849FB0: mov eax, [ebp+08h]
00849FB3: and al, FEh
00849FB5: mov [ebp+08h], eax
00849FB8: mov eax, [ebp+08h]
00849FBB: mov eax, [eax]
00849FBD: push [ebp+08h]
00849FC0: call [eax+04h]
00849FC3: push 00000000h
00849FC5: push FFFFFDFAh
00849FCA: mov eax, [ebp+08h]
00849FCD: mov eax, [eax]
00849FCF: push [ebp+08h]
00849FD2: call [eax+00000330h]
00849FD8: push eax
00849FD9: lea eax, var_30
00849FDC: push eax
00849FDD: call 00410A84h ; Set (object)
00849FE2: push eax
00849FE3: lea eax, var_4C
00849FE6: push eax
00849FE7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00849FEC: add esp, 00000010h
00849FEF: push eax
00849FF0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00849FF5: mov edx, eax
00849FF7: lea ecx, var_28
00849FFA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00849FFF: push eax
0084A000: push 0044C054h ; Search
0084A005: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0084A00A: neg eax
0084A00C: sbb eax, eax
0084A00E: inc eax
0084A00F: neg eax
0084A011: mov var_000000CC, ax
0084A018: lea ecx, var_28
0084A01B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A020: lea ecx, var_30
0084A023: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084A028: lea ecx, var_4C
0084A02B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A030: movsx eax, word ptr var_000000CC
0084A037: test eax, eax
0084A039: jz 0084B180h
0084A03F: mov eax, [ebp+08h]
0084A042: mov eax, [eax]
0084A044: push [ebp+08h]
0084A047: call [eax+0000030Ch]
0084A04D: push eax
0084A04E: lea eax, var_30
0084A051: push eax
0084A052: call 00410A84h ; Set (object)
0084A057: mov var_000000CC, eax
0084A05D: lea eax, var_28
0084A060: push eax
0084A061: mov eax, var_000000CC
0084A067: mov eax, [eax]
0084A069: push var_000000CC
0084A06F: call [eax+000000A0h]
0084A075: fclex 
0084A077: mov var_000000D0, eax
0084A07D: cmp var_000000D0, 00000000h
0084A084: jnl 84A0A9h
0084A086: push 000000A0h
0084A08B: push 00440E08h
0084A090: push var_000000CC
0084A096: push var_000000D0
0084A09C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A0A1: mov var_000000EC, eax
0084A0A7: jmp 84A0B0h
0084A0A9: and var_000000EC, 00000000h
0084A0B0: push var_28
0084A0B3: push 00000000h
0084A0B5: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0084A0BA: neg eax
0084A0BC: sbb eax, eax
0084A0BE: inc eax
0084A0BF: neg eax
0084A0C1: mov var_000000D4, ax
0084A0C8: lea ecx, var_28
0084A0CB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A0D0: lea ecx, var_30
0084A0D3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084A0D8: movsx eax, word ptr var_000000D4
0084A0DF: test eax, eax
0084A0E1: jz 0084A169h
0084A0E7: mov var_74, 80020004h
0084A0EE: mov var_7C, 0000000Ah
0084A0F5: mov var_64, 80020004h
0084A0FC: mov var_6C, 0000000Ah
0084A103: mov var_54, 80020004h
0084A10A: mov var_5C, 0000000Ah
0084A111: mov var_00000088, 004550A0h ; Please enter a valid file name
0084A11B: mov var_00000090, 00000008h
0084A125: lea edx, var_00000090
0084A12B: lea ecx, var_4C
0084A12E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0084A133: lea eax, var_7C
0084A136: push eax
0084A137: lea eax, var_6C
0084A13A: push eax
0084A13B: lea eax, var_5C
0084A13E: push eax
0084A13F: push 00000010h
0084A141: lea eax, var_4C
0084A144: push eax
0084A145: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0084A14A: lea eax, var_7C
0084A14D: push eax
0084A14E: lea eax, var_6C
0084A151: push eax
0084A152: lea eax, var_5C
0084A155: push eax
0084A156: lea eax, var_4C
0084A159: push eax
0084A15A: push 00000004h
0084A15C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084A161: add esp, 00000014h
0084A164: jmp 0084B263h
0084A169: mov eax, [ebp+08h]
0084A16C: mov eax, [eax]
0084A16E: push [ebp+08h]
0084A171: call [eax+00000300h]
0084A177: push eax
0084A178: lea eax, var_30
0084A17B: push eax
0084A17C: call 00410A84h ; Set (object)
0084A181: mov var_000000CC, eax
0084A187: lea eax, var_28
0084A18A: push eax
0084A18B: mov eax, var_000000CC
0084A191: mov eax, [eax]
0084A193: push var_000000CC
0084A199: call [eax+000000A0h]
0084A19F: fclex 
0084A1A1: mov var_000000D0, eax
0084A1A7: cmp var_000000D0, 00000000h
0084A1AE: jnl 84A1D3h
0084A1B0: push 000000A0h
0084A1B5: push 00440E08h
0084A1BA: push var_000000CC
0084A1C0: push var_000000D0
0084A1C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A1CB: mov var_000000F0, eax
0084A1D1: jmp 84A1DAh
0084A1D3: and var_000000F0, 00000000h
0084A1DA: push var_28
0084A1DD: call 004109DCh ; Val(arg_1)
0084A1E2: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0084A1E7: fcomp real8 ptr [00401770h]
0084A1ED: fstsw ax
0084A1EF: sahf 
0084A1F0: jnz 84A1FEh
0084A1F2: mov var_000000F4, 00000001h
0084A1FC: jmp 84A205h
0084A1FE: and var_000000F4, 00000000h
0084A205: mov eax, var_000000F4
0084A20B: neg eax
0084A20D: mov var_000000D4, ax
0084A214: lea ecx, var_28
0084A217: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A21C: lea ecx, var_30
0084A21F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084A224: movsx eax, word ptr var_000000D4
0084A22B: test eax, eax
0084A22D: jz 0084A2E5h
0084A233: mov var_74, 80020004h
0084A23A: mov var_7C, 0000000Ah
0084A241: mov var_64, 80020004h
0084A248: mov var_6C, 0000000Ah
0084A24F: mov var_54, 80020004h
0084A256: mov var_5C, 0000000Ah
0084A25D: push 004550E4h ; WARNING: Unlimited number of search results may result in heavy data traffic.
0084A262: push 00441264h ; vbCrLf
0084A267: call 00410A18h ; &
0084A26C: mov edx, eax
0084A26E: lea ecx, var_28
0084A271: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084A276: push eax
0084A277: push 00455184h ; Are you sure you want to continue?
0084A27C: call 00410A18h ; &
0084A281: mov var_44, eax
0084A284: mov var_4C, 00000008h
0084A28B: lea eax, var_7C
0084A28E: push eax
0084A28F: lea eax, var_6C
0084A292: push eax
0084A293: lea eax, var_5C
0084A296: push eax
0084A297: push 00000034h
0084A299: lea eax, var_4C
0084A29C: push eax
0084A29D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0084A2A2: sub eax, 00000007h
0084A2A5: neg eax
0084A2A7: sbb eax, eax
0084A2A9: inc eax
0084A2AA: neg eax
0084A2AC: mov var_000000CC, ax
0084A2B3: lea ecx, var_28
0084A2B6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A2BB: lea eax, var_7C
0084A2BE: push eax
0084A2BF: lea eax, var_6C
0084A2C2: push eax
0084A2C3: lea eax, var_5C
0084A2C6: push eax
0084A2C7: lea eax, var_4C
0084A2CA: push eax
0084A2CB: push 00000004h
0084A2CD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084A2D2: add esp, 00000014h
0084A2D5: movsx eax, word ptr var_000000CC
0084A2DC: test eax, eax
0084A2DE: jz 84A2E5h
0084A2E0: jmp 0084B263h
0084A2E5: push 00000000h
0084A2E7: push 00000001h
0084A2E9: push 00440E48h
0084A2EE: push 00000000h
0084A2F0: push 00000018h
0084A2F2: mov eax, [ebp+08h]
0084A2F5: mov eax, [eax]
0084A2F7: push [ebp+08h]
0084A2FA: call [eax+00000320h]
0084A300: push eax
0084A301: lea eax, var_30
0084A304: push eax
0084A305: call 00410A84h ; Set (object)
0084A30A: push eax
0084A30B: lea eax, var_4C
0084A30E: push eax
0084A30F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A314: add esp, 00000010h
0084A317: push eax
0084A318: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084A31D: push eax
0084A31E: lea eax, var_34
0084A321: push eax
0084A322: call 00410A84h ; Set (object)
0084A327: push eax
0084A328: lea eax, var_5C
0084A32B: push eax
0084A32C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A331: add esp, 00000010h
0084A334: push eax
0084A335: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084A33A: xor ecx, ecx
0084A33C: test eax, eax
0084A33E: setnle cl
0084A341: neg ecx
0084A343: mov var_000000CC, cx
0084A34A: lea eax, var_34
0084A34D: push eax
0084A34E: lea eax, var_30
0084A351: push eax
0084A352: push 00000002h
0084A354: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A359: add esp, 0000000Ch
0084A35C: lea eax, var_5C
0084A35F: push eax
0084A360: lea eax, var_4C
0084A363: push eax
0084A364: push 00000002h
0084A366: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084A36B: add esp, 0000000Ch
0084A36E: movsx eax, word ptr var_000000CC
0084A375: test eax, eax
0084A377: jz 0084A47Bh
0084A37D: mov var_74, 80020004h
0084A384: mov var_7C, 0000000Ah
0084A38B: mov var_64, 80020004h
0084A392: mov var_6C, 0000000Ah
0084A399: mov var_54, 80020004h
0084A3A0: mov var_5C, 0000000Ah
0084A3A7: mov var_00000088, 004551D0h ; Clear list?
0084A3B1: mov var_00000090, 00000008h
0084A3BB: lea edx, var_00000090
0084A3C1: lea ecx, var_4C
0084A3C4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0084A3C9: lea eax, var_7C
0084A3CC: push eax
0084A3CD: lea eax, var_6C
0084A3D0: push eax
0084A3D1: lea eax, var_5C
0084A3D4: push eax
0084A3D5: push 00000034h
0084A3D7: lea eax, var_4C
0084A3DA: push eax
0084A3DB: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0084A3E0: sub eax, 00000006h
0084A3E3: neg eax
0084A3E5: sbb eax, eax
0084A3E7: inc eax
0084A3E8: neg eax
0084A3EA: mov var_000000CC, ax
0084A3F1: lea eax, var_7C
0084A3F4: push eax
0084A3F5: lea eax, var_6C
0084A3F8: push eax
0084A3F9: lea eax, var_5C
0084A3FC: push eax
0084A3FD: lea eax, var_4C
0084A400: push eax
0084A401: push 00000004h
0084A403: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084A408: add esp, 00000014h
0084A40B: movsx eax, word ptr var_000000CC
0084A412: test eax, eax
0084A414: jz 84A47Bh
0084A416: push 00000000h
0084A418: push 00000003h
0084A41A: push 00440E48h
0084A41F: push 00000000h
0084A421: push 00000018h
0084A423: mov eax, [ebp+08h]
0084A426: mov eax, [eax]
0084A428: push [ebp+08h]
0084A42B: call [eax+00000320h]
0084A431: push eax
0084A432: lea eax, var_30
0084A435: push eax
0084A436: call 00410A84h ; Set (object)
0084A43B: push eax
0084A43C: lea eax, var_4C
0084A43F: push eax
0084A440: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A445: add esp, 00000010h
0084A448: push eax
0084A449: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084A44E: push eax
0084A44F: lea eax, var_34
0084A452: push eax
0084A453: call 00410A84h ; Set (object)
0084A458: push eax
0084A459: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084A45E: add esp, 0000000Ch
0084A461: lea eax, var_34
0084A464: push eax
0084A465: lea eax, var_30
0084A468: push eax
0084A469: push 00000002h
0084A46B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A470: add esp, 0000000Ch
0084A473: lea ecx, var_4C
0084A476: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A47B: mov eax, [ebp+08h]
0084A47E: mov eax, [eax]
0084A480: push [ebp+08h]
0084A483: call [eax+0000032Ch]
0084A489: push eax
0084A48A: lea eax, var_30
0084A48D: push eax
0084A48E: call 00410A84h ; Set (object)
0084A493: mov var_000000CC, eax
0084A499: lea eax, var_34
0084A49C: push eax
0084A49D: push 00000000h
0084A49F: mov eax, var_000000CC
0084A4A5: mov eax, [eax]
0084A4A7: push var_000000CC
0084A4AD: call [eax+40h]
0084A4B0: fclex 
0084A4B2: mov var_000000D0, eax
0084A4B8: cmp var_000000D0, 00000000h
0084A4BF: jnl 84A4E1h
0084A4C1: push 00000040h
0084A4C3: push 00440DE8h
0084A4C8: push var_000000CC
0084A4CE: push var_000000D0
0084A4D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A4D9: mov var_000000F8, eax
0084A4DF: jmp 84A4E8h
0084A4E1: and var_000000F8, 00000000h
0084A4E8: push 00000000h
0084A4EA: push 00000000h
0084A4EC: push var_34
0084A4EF: lea eax, var_4C
0084A4F2: push eax
0084A4F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A4F8: add esp, 00000010h
0084A4FB: push eax
0084A4FC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084A501: sub ax, FFFFh
0084A505: neg ax
0084A508: sbb eax, eax
0084A50A: inc eax
0084A50B: neg eax
0084A50D: mov var_000000D4, ax
0084A514: lea eax, var_34
0084A517: push eax
0084A518: lea eax, var_30
0084A51B: push eax
0084A51C: push 00000002h
0084A51E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A523: add esp, 0000000Ch
0084A526: lea ecx, var_4C
0084A529: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A52E: movsx eax, word ptr var_000000D4
0084A535: test eax, eax
0084A537: jz 84A545h
0084A539: mov cx, 0001h
0084A53D: call 00410928h ; msvbvm60.dll.__vbaUI1I2
0084A542: mov var_24, al
0084A545: mov eax, [ebp+08h]
0084A548: mov eax, [eax]
0084A54A: push [ebp+08h]
0084A54D: call [eax+0000032Ch]
0084A553: push eax
0084A554: lea eax, var_30
0084A557: push eax
0084A558: call 00410A84h ; Set (object)
0084A55D: mov var_000000CC, eax
0084A563: lea eax, var_34
0084A566: push eax
0084A567: push 00000001h
0084A569: mov eax, var_000000CC
0084A56F: mov eax, [eax]
0084A571: push var_000000CC
0084A577: call [eax+40h]
0084A57A: fclex 
0084A57C: mov var_000000D0, eax
0084A582: cmp var_000000D0, 00000000h
0084A589: jnl 84A5ABh
0084A58B: push 00000040h
0084A58D: push 00440DE8h
0084A592: push var_000000CC
0084A598: push var_000000D0
0084A59E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A5A3: mov var_000000FC, eax
0084A5A9: jmp 84A5B2h
0084A5AB: and var_000000FC, 00000000h
0084A5B2: push 00000000h
0084A5B4: push 00000000h
0084A5B6: push var_34
0084A5B9: lea eax, var_4C
0084A5BC: push eax
0084A5BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A5C2: add esp, 00000010h
0084A5C5: push eax
0084A5C6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084A5CB: sub ax, FFFFh
0084A5CF: neg ax
0084A5D2: sbb eax, eax
0084A5D4: inc eax
0084A5D5: neg eax
0084A5D7: mov var_000000D4, ax
0084A5DE: lea eax, var_34
0084A5E1: push eax
0084A5E2: lea eax, var_30
0084A5E5: push eax
0084A5E6: push 00000002h
0084A5E8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A5ED: add esp, 0000000Ch
0084A5F0: lea ecx, var_4C
0084A5F3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A5F8: movsx eax, word ptr var_000000D4
0084A5FF: test eax, eax
0084A601: jz 84A60Eh
0084A603: xor cx, cx
0084A606: call 00410928h ; msvbvm60.dll.__vbaUI1I2
0084A60B: mov var_24, al
0084A60E: mov eax, [ebp+08h]
0084A611: mov eax, [eax]
0084A613: push [ebp+08h]
0084A616: call [eax+00000328h]
0084A61C: push eax
0084A61D: lea eax, var_30
0084A620: push eax
0084A621: call 00410A84h ; Set (object)
0084A626: mov var_000000CC, eax
0084A62C: lea eax, var_34
0084A62F: push eax
0084A630: push 00000000h
0084A632: mov eax, var_000000CC
0084A638: mov eax, [eax]
0084A63A: push var_000000CC
0084A640: call [eax+40h]
0084A643: fclex 
0084A645: mov var_000000D0, eax
0084A64B: cmp var_000000D0, 00000000h
0084A652: jnl 84A674h
0084A654: push 00000040h
0084A656: push 00440DE8h
0084A65B: push var_000000CC
0084A661: push var_000000D0
0084A667: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A66C: mov var_00000100, eax
0084A672: jmp 84A67Bh
0084A674: and var_00000100, 00000000h
0084A67B: push 00000000h
0084A67D: push 00000000h
0084A67F: push var_34
0084A682: lea eax, var_4C
0084A685: push eax
0084A686: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A68B: add esp, 00000010h
0084A68E: push eax
0084A68F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084A694: sub ax, FFFFh
0084A698: neg ax
0084A69B: sbb eax, eax
0084A69D: inc eax
0084A69E: neg eax
0084A6A0: mov var_000000D4, ax
0084A6A7: lea eax, var_34
0084A6AA: push eax
0084A6AB: lea eax, var_30
0084A6AE: push eax
0084A6AF: push 00000002h
0084A6B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A6B6: add esp, 0000000Ch
0084A6B9: lea ecx, var_4C
0084A6BC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A6C1: movsx eax, word ptr var_000000D4
0084A6C8: test eax, eax
0084A6CA: jz 0084A75Ch
0084A6D0: mov eax, [ebp+08h]
0084A6D3: mov eax, [eax]
0084A6D5: push [ebp+08h]
0084A6D8: call [eax+00000308h]
0084A6DE: push eax
0084A6DF: lea eax, var_30
0084A6E2: push eax
0084A6E3: call 00410A84h ; Set (object)
0084A6E8: mov var_000000CC, eax
0084A6EE: lea eax, var_28
0084A6F1: push eax
0084A6F2: mov eax, var_000000CC
0084A6F8: mov eax, [eax]
0084A6FA: push var_000000CC
0084A700: call [eax+000000A0h]
0084A706: fclex 
0084A708: mov var_000000D0, eax
0084A70E: cmp var_000000D0, 00000000h
0084A715: jnl 84A73Ah
0084A717: push 000000A0h
0084A71C: push 00440E08h
0084A721: push var_000000CC
0084A727: push var_000000D0
0084A72D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A732: mov var_00000104, eax
0084A738: jmp 84A741h
0084A73A: and var_00000104, 00000000h
0084A741: push var_28
0084A744: call 004109DCh ; Val(arg_1)
0084A749: fstp real8 ptr var_1C
0084A74C: lea ecx, var_28
0084A74F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A754: lea ecx, var_30
0084A757: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084A75C: mov eax, [ebp+08h]
0084A75F: mov eax, [eax]
0084A761: push [ebp+08h]
0084A764: call [eax+00000328h]
0084A76A: push eax
0084A76B: lea eax, var_30
0084A76E: push eax
0084A76F: call 00410A84h ; Set (object)
0084A774: mov var_000000CC, eax
0084A77A: lea eax, var_34
0084A77D: push eax
0084A77E: push 00000001h
0084A780: mov eax, var_000000CC
0084A786: mov eax, [eax]
0084A788: push var_000000CC
0084A78E: call [eax+40h]
0084A791: fclex 
0084A793: mov var_000000D0, eax
0084A799: cmp var_000000D0, 00000000h
0084A7A0: jnl 84A7C2h
0084A7A2: push 00000040h
0084A7A4: push 00440DE8h
0084A7A9: push var_000000CC
0084A7AF: push var_000000D0
0084A7B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A7BA: mov var_00000108, eax
0084A7C0: jmp 84A7C9h
0084A7C2: and var_00000108, 00000000h
0084A7C9: push 00000000h
0084A7CB: push 00000000h
0084A7CD: push var_34
0084A7D0: lea eax, var_4C
0084A7D3: push eax
0084A7D4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A7D9: add esp, 00000010h
0084A7DC: push eax
0084A7DD: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084A7E2: sub ax, FFFFh
0084A7E6: neg ax
0084A7E9: sbb eax, eax
0084A7EB: inc eax
0084A7EC: neg eax
0084A7EE: mov var_000000D4, ax
0084A7F5: lea eax, var_34
0084A7F8: push eax
0084A7F9: lea eax, var_30
0084A7FC: push eax
0084A7FD: push 00000002h
0084A7FF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A804: add esp, 0000000Ch
0084A807: lea ecx, var_4C
0084A80A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A80F: movsx eax, word ptr var_000000D4
0084A816: test eax, eax
0084A818: jz 0084A8BAh
0084A81E: mov eax, [ebp+08h]
0084A821: mov eax, [eax]
0084A823: push [ebp+08h]
0084A826: call [eax+00000308h]
0084A82C: push eax
0084A82D: lea eax, var_30
0084A830: push eax
0084A831: call 00410A84h ; Set (object)
0084A836: mov var_000000CC, eax
0084A83C: lea eax, var_28
0084A83F: push eax
0084A840: mov eax, var_000000CC
0084A846: mov eax, [eax]
0084A848: push var_000000CC
0084A84E: call [eax+000000A0h]
0084A854: fclex 
0084A856: mov var_000000D0, eax
0084A85C: cmp var_000000D0, 00000000h
0084A863: jnl 84A888h
0084A865: push 000000A0h
0084A86A: push 00440E08h
0084A86F: push var_000000CC
0084A875: push var_000000D0
0084A87B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A880: mov var_0000010C, eax
0084A886: jmp 84A88Fh
0084A888: and var_0000010C, 00000000h
0084A88F: push var_28
0084A892: call 004109DCh ; Val(arg_1)
0084A897: fmul real8 ptr [00404D48h]
0084A89D: fstp real8 ptr var_1C
0084A8A0: fstsw ax
0084A8A2: test al, 0Dh
0084A8A4: jnz 0084B2E4h
0084A8AA: lea ecx, var_28
0084A8AD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084A8B2: lea ecx, var_30
0084A8B5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084A8BA: mov eax, [ebp+08h]
0084A8BD: mov eax, [eax]
0084A8BF: push [ebp+08h]
0084A8C2: call [eax+00000328h]
0084A8C8: push eax
0084A8C9: lea eax, var_30
0084A8CC: push eax
0084A8CD: call 00410A84h ; Set (object)
0084A8D2: mov var_000000CC, eax
0084A8D8: lea eax, var_34
0084A8DB: push eax
0084A8DC: push 00000002h
0084A8DE: mov eax, var_000000CC
0084A8E4: mov eax, [eax]
0084A8E6: push var_000000CC
0084A8EC: call [eax+40h]
0084A8EF: fclex 
0084A8F1: mov var_000000D0, eax
0084A8F7: cmp var_000000D0, 00000000h
0084A8FE: jnl 84A920h
0084A900: push 00000040h
0084A902: push 00440DE8h
0084A907: push var_000000CC
0084A90D: push var_000000D0
0084A913: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A918: mov var_00000110, eax
0084A91E: jmp 84A927h
0084A920: and var_00000110, 00000000h
0084A927: push 00000000h
0084A929: push 00000000h
0084A92B: push var_34
0084A92E: lea eax, var_4C
0084A931: push eax
0084A932: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084A937: add esp, 00000010h
0084A93A: push eax
0084A93B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084A940: sub ax, FFFFh
0084A944: neg ax
0084A947: sbb eax, eax
0084A949: inc eax
0084A94A: neg eax
0084A94C: mov var_000000D4, ax
0084A953: lea eax, var_34
0084A956: push eax
0084A957: lea eax, var_30
0084A95A: push eax
0084A95B: push 00000002h
0084A95D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084A962: add esp, 0000000Ch
0084A965: lea ecx, var_4C
0084A968: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084A96D: movsx eax, word ptr var_000000D4
0084A974: test eax, eax
0084A976: jz 0084AA39h
0084A97C: mov eax, [ebp+08h]
0084A97F: mov eax, [eax]
0084A981: push [ebp+08h]
0084A984: call [eax+00000308h]
0084A98A: push eax
0084A98B: lea eax, var_30
0084A98E: push eax
0084A98F: call 00410A84h ; Set (object)
0084A994: mov var_000000CC, eax
0084A99A: lea eax, var_28
0084A99D: push eax
0084A99E: mov eax, var_000000CC
0084A9A4: mov eax, [eax]
0084A9A6: push var_000000CC
0084A9AC: call [eax+000000A0h]
0084A9B2: fclex 
0084A9B4: mov var_000000D0, eax
0084A9BA: cmp var_000000D0, 00000000h
0084A9C1: jnl 84A9E6h
0084A9C3: push 000000A0h
0084A9C8: push 00440E08h
0084A9CD: push var_000000CC
0084A9D3: push var_000000D0
0084A9D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084A9DE: mov var_00000114, eax
0084A9E4: jmp 84A9EDh
0084A9E6: and var_00000114, 00000000h
0084A9ED: push var_28
0084A9F0: call 004109DCh ; Val(arg_1)
0084A9F5: fstp real8 ptr var_0000011C
0084A9FB: fld real8 ptr [00401758h]
0084AA01: push ecx
0084AA02: push ecx
0084AA03: fstp real8 ptr [esp]
0084AA06: fld real8 ptr [00404D48h]
0084AA0C: push ecx
0084AA0D: push ecx
0084AA0E: fstp real8 ptr [esp]
0084AA11: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
0084AA16: fmul real8 ptr var_0000011C
0084AA1C: fstp real8 ptr var_1C
0084AA1F: fstsw ax
0084AA21: test al, 0Dh
0084AA23: jnz 0084B2E4h
0084AA29: lea ecx, var_28
0084AA2C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084AA31: lea ecx, var_30
0084AA34: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084AA39: mov eax, [ebp+08h]
0084AA3C: mov eax, [eax]
0084AA3E: push [ebp+08h]
0084AA41: call [eax+00000328h]
0084AA47: push eax
0084AA48: lea eax, var_30
0084AA4B: push eax
0084AA4C: call 00410A84h ; Set (object)
0084AA51: mov var_000000CC, eax
0084AA57: lea eax, var_34
0084AA5A: push eax
0084AA5B: push 00000003h
0084AA5D: mov eax, var_000000CC
0084AA63: mov eax, [eax]
0084AA65: push var_000000CC
0084AA6B: call [eax+40h]
0084AA6E: fclex 
0084AA70: mov var_000000D0, eax
0084AA76: cmp var_000000D0, 00000000h
0084AA7D: jnl 84AA9Fh
0084AA7F: push 00000040h
0084AA81: push 00440DE8h
0084AA86: push var_000000CC
0084AA8C: push var_000000D0
0084AA92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084AA97: mov var_00000120, eax
0084AA9D: jmp 84AAA6h
0084AA9F: and var_00000120, 00000000h
0084AAA6: push 00000000h
0084AAA8: push 00000000h
0084AAAA: push var_34
0084AAAD: lea eax, var_4C
0084AAB0: push eax
0084AAB1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084AAB6: add esp, 00000010h
0084AAB9: push eax
0084AABA: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084AABF: sub ax, FFFFh
0084AAC3: neg ax
0084AAC6: sbb eax, eax
0084AAC8: inc eax
0084AAC9: neg eax
0084AACB: mov var_000000D4, ax
0084AAD2: lea eax, var_34
0084AAD5: push eax
0084AAD6: lea eax, var_30
0084AAD9: push eax
0084AADA: push 00000002h
0084AADC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084AAE1: add esp, 0000000Ch
0084AAE4: lea ecx, var_4C
0084AAE7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084AAEC: movsx eax, word ptr var_000000D4
0084AAF3: test eax, eax
0084AAF5: jz 0084ABB8h
0084AAFB: mov eax, [ebp+08h]
0084AAFE: mov eax, [eax]
0084AB00: push [ebp+08h]
0084AB03: call [eax+00000308h]
0084AB09: push eax
0084AB0A: lea eax, var_30
0084AB0D: push eax
0084AB0E: call 00410A84h ; Set (object)
0084AB13: mov var_000000CC, eax
0084AB19: lea eax, var_28
0084AB1C: push eax
0084AB1D: mov eax, var_000000CC
0084AB23: mov eax, [eax]
0084AB25: push var_000000CC
0084AB2B: call [eax+000000A0h]
0084AB31: fclex 
0084AB33: mov var_000000D0, eax
0084AB39: cmp var_000000D0, 00000000h
0084AB40: jnl 84AB65h
0084AB42: push 000000A0h
0084AB47: push 00440E08h
0084AB4C: push var_000000CC
0084AB52: push var_000000D0
0084AB58: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084AB5D: mov var_00000124, eax
0084AB63: jmp 84AB6Ch
0084AB65: and var_00000124, 00000000h
0084AB6C: push var_28
0084AB6F: call 004109DCh ; Val(arg_1)
0084AB74: fstp real8 ptr var_0000012C
0084AB7A: fld real8 ptr [00405830h]
0084AB80: push ecx
0084AB81: push ecx
0084AB82: fstp real8 ptr [esp]
0084AB85: fld real8 ptr [00404D48h]
0084AB8B: push ecx
0084AB8C: push ecx
0084AB8D: fstp real8 ptr [esp]
0084AB90: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
0084AB95: fmul real8 ptr var_0000012C
0084AB9B: fstp real8 ptr var_1C
0084AB9E: fstsw ax
0084ABA0: test al, 0Dh
0084ABA2: jnz 0084B2E4h
0084ABA8: lea ecx, var_28
0084ABAB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084ABB0: lea ecx, var_30
0084ABB3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084ABB8: push 00000000h
0084ABBA: push 00000000h
0084ABBC: mov eax, [ebp+08h]
0084ABBF: mov eax, [eax]
0084ABC1: push [ebp+08h]
0084ABC4: call [eax+00000334h]
0084ABCA: push eax
0084ABCB: lea eax, var_30
0084ABCE: push eax
0084ABCF: call 00410A84h ; Set (object)
0084ABD4: push eax
0084ABD5: lea eax, var_4C
0084ABD8: push eax
0084ABD9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084ABDE: add esp, 00000010h
0084ABE1: push eax
0084ABE2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084ABE7: dec eax
0084ABE8: neg eax
0084ABEA: sbb eax, eax
0084ABEC: inc eax
0084ABED: neg eax
0084ABEF: mov var_000000CC, ax
0084ABF6: lea ecx, var_30
0084ABF9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084ABFE: lea ecx, var_4C
0084AC01: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084AC06: movsx eax, word ptr var_000000CC
0084AC0D: test eax, eax
0084AC0F: jz 84AC1Dh
0084AC11: mov cx, 0001h
0084AC15: call 00410928h ; msvbvm60.dll.__vbaUI1I2
0084AC1A: mov var_20, al
0084AC1D: push 00000000h
0084AC1F: push 00000000h
0084AC21: mov eax, [ebp+08h]
0084AC24: mov eax, [eax]
0084AC26: push [ebp+08h]
0084AC29: call [eax+00000334h]
0084AC2F: push eax
0084AC30: lea eax, var_30
0084AC33: push eax
0084AC34: call 00410A84h ; Set (object)
0084AC39: push eax
0084AC3A: lea eax, var_4C
0084AC3D: push eax
0084AC3E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084AC43: add esp, 00000010h
0084AC46: push eax
0084AC47: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084AC4C: neg eax
0084AC4E: sbb eax, eax
0084AC50: inc eax
0084AC51: neg eax
0084AC53: mov var_000000CC, ax
0084AC5A: lea ecx, var_30
0084AC5D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084AC62: lea ecx, var_4C
0084AC65: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084AC6A: movsx eax, word ptr var_000000CC
0084AC71: test eax, eax
0084AC73: jz 84AC80h
0084AC75: xor cx, cx
0084AC78: call 00410928h ; msvbvm60.dll.__vbaUI1I2
0084AC7D: mov var_20, al
0084AC80: lea eax, var_28
0084AC83: push eax
0084AC84: mov eax, [ebp+08h]
0084AC87: mov eax, [eax]
0084AC89: push [ebp+08h]
0084AC8C: call [eax+000001C0h]
0084AC92: fclex 
0084AC94: mov var_000000CC, eax
0084AC9A: cmp var_000000CC, 00000000h
0084ACA1: jnl 84ACC3h
0084ACA3: push 000001C0h
0084ACA8: push 00445034h
0084ACAD: push [ebp+08h]
0084ACB0: push var_000000CC
0084ACB6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084ACBB: mov var_00000130, eax
0084ACC1: jmp 84ACCAh
0084ACC3: and var_00000130, 00000000h
0084ACCA: push var_28
0084ACCD: call 004109DCh ; Val(arg_1)
0084ACD2: fstp real8 ptr var_000000C8
0084ACD8: push 00000000h
0084ACDA: push 00000005h
0084ACDC: push 00000001h
0084ACDE: push 00000000h
0084ACE0: lea eax, var_80
0084ACE3: push eax
0084ACE4: push 00000010h
0084ACE6: push 00000880h
0084ACEB: call 00410946h ; ReDim
0084ACF0: add esp, 0000001Ch
0084ACF3: mov eax, [ebp+08h]
0084ACF6: mov eax, [eax]
0084ACF8: push [ebp+08h]
0084ACFB: call [eax+00000314h]
0084AD01: mov var_44, eax
0084AD04: mov var_4C, 00000009h
0084AD0B: lea esi, var_4C
0084AD0E: push 00000000h
0084AD10: push var_80
0084AD13: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084AD18: mov ecx, eax
0084AD1A: mov edx, esi
0084AD1C: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084AD21: mov eax, [ebp+08h]
0084AD24: mov eax, [eax]
0084AD26: push [ebp+08h]
0084AD29: call [eax+0000030Ch]
0084AD2F: mov var_54, eax
0084AD32: mov var_5C, 00000009h
0084AD39: lea esi, var_5C
0084AD3C: push 00000001h
0084AD3E: push var_80
0084AD41: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084AD46: mov ecx, eax
0084AD48: mov edx, esi
0084AD4A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084AD4F: lea eax, var_24
0084AD52: mov var_00000088, eax
0084AD58: mov var_00000090, 00004011h
0084AD62: lea esi, var_00000090
0084AD68: push 00000002h
0084AD6A: push var_80
0084AD6D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084AD72: mov ecx, eax
0084AD74: mov edx, esi
0084AD76: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084AD7B: lea eax, var_1C
0084AD7E: mov var_00000098, eax
0084AD84: mov var_000000A0, 00004005h
0084AD8E: lea esi, var_000000A0
0084AD94: push 00000003h
0084AD96: push var_80
0084AD99: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084AD9E: mov ecx, eax
0084ADA0: mov edx, esi
0084ADA2: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084ADA7: lea eax, var_20
0084ADAA: mov var_000000A8, eax
0084ADB0: mov var_000000B0, 00004011h
0084ADBA: lea esi, var_000000B0
0084ADC0: push 00000004h
0084ADC2: push var_80
0084ADC5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084ADCA: mov ecx, eax
0084ADCC: mov edx, esi
0084ADCE: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084ADD3: mov eax, [ebp+08h]
0084ADD6: mov eax, [eax]
0084ADD8: push [ebp+08h]
0084ADDB: call [eax+00000300h]
0084ADE1: mov var_64, eax
0084ADE4: mov var_6C, 00000009h
0084ADEB: lea esi, var_6C
0084ADEE: push 00000005h
0084ADF0: push var_80
0084ADF3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084ADF8: mov ecx, eax
0084ADFA: mov edx, esi
0084ADFC: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084AE01: mov edx, 0043D744h ; x68
0084AE06: lea ecx, var_2C
0084AE09: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0084AE0E: lea eax, var_80
0084AE11: push eax
0084AE12: lea eax, var_2C
0084AE15: push eax
0084AE16: fld real8 ptr var_000000C8
0084AE1C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0084AE21: push eax
0084AE22: call 007A6910h
0084AE27: lea eax, var_80
0084AE2A: push eax
0084AE2B: push 00000000h
0084AE2D: call 00410934h ; Erase
0084AE32: lea eax, var_2C
0084AE35: push eax
0084AE36: lea eax, var_28
0084AE39: push eax
0084AE3A: push 00000002h
0084AE3C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084AE41: add esp, 0000000Ch
0084AE44: mov var_00000088, 004551ECh ; Cancel
0084AE4E: mov var_00000090, 00000008h
0084AE58: push 00000010h
0084AE5A: pop eax
0084AE5B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084AE60: lea esi, var_00000090
0084AE66: mov edi, esp
0084AE68: movsd 
0084AE69: movsd 
0084AE6A: movsd 
0084AE6B: movsd 
0084AE6C: push FFFFFDFAh
0084AE71: mov eax, [ebp+08h]
0084AE74: mov eax, [eax]
0084AE76: push [ebp+08h]
0084AE79: call [eax+00000330h]
0084AE7F: push eax
0084AE80: lea eax, var_30
0084AE83: push eax
0084AE84: call 00410A84h ; Set (object)
0084AE89: push eax
0084AE8A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084AE8F: lea ecx, var_30
0084AE92: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084AE97: push 0044A87Ch
0084AE9C: push 00000000h
0084AE9E: push 00000003h
0084AEA0: mov eax, [ebp+08h]
0084AEA3: mov eax, [eax]
0084AEA5: push [ebp+08h]
0084AEA8: call [eax+00000338h]
0084AEAE: push eax
0084AEAF: lea eax, var_30
0084AEB2: push eax
0084AEB3: call 00410A84h ; Set (object)
0084AEB8: push eax
0084AEB9: lea eax, var_4C
0084AEBC: push eax
0084AEBD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084AEC2: add esp, 00000010h
0084AEC5: push eax
0084AEC6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084AECB: push eax
0084AECC: lea eax, var_34
0084AECF: push eax
0084AED0: call 00410A84h ; Set (object)
0084AED5: mov var_000000CC, eax
0084AEDB: mov var_54, 00000001h
0084AEE2: mov var_5C, 00000002h
0084AEE9: lea eax, var_38
0084AEEC: push eax
0084AEED: lea eax, var_5C
0084AEF0: push eax
0084AEF1: mov eax, var_000000CC
0084AEF7: mov eax, [eax]
0084AEF9: push var_000000CC
0084AEFF: call [eax+24h]
0084AF02: fclex 
0084AF04: mov var_000000D0, eax
0084AF0A: cmp var_000000D0, 00000000h
0084AF11: jnl 84AF33h
0084AF13: push 00000024h
0084AF15: push 0044A87Ch
0084AF1A: push var_000000CC
0084AF20: push var_000000D0
0084AF26: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084AF2B: mov var_00000134, eax
0084AF31: jmp 84AF3Ah
0084AF33: and var_00000134, 00000000h
0084AF3A: mov eax, var_38
0084AF3D: mov var_000000D4, eax
0084AF43: push 00455200h ; Status: Searching...
0084AF48: mov eax, var_000000D4
0084AF4E: mov eax, [eax]
0084AF50: push var_000000D4
0084AF56: call [eax+00000080h]
0084AF5C: fclex 
0084AF5E: mov var_000000D8, eax
0084AF64: cmp var_000000D8, 00000000h
0084AF6B: jnl 84AF90h
0084AF6D: push 00000080h
0084AF72: push 0044A88Ch
0084AF77: push var_000000D4
0084AF7D: push var_000000D8
0084AF83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084AF88: mov var_00000138, eax
0084AF8E: jmp 84AF97h
0084AF90: and var_00000138, 00000000h
0084AF97: lea eax, var_38
0084AF9A: push eax
0084AF9B: lea eax, var_34
0084AF9E: push eax
0084AF9F: lea eax, var_30
0084AFA2: push eax
0084AFA3: push 00000003h
0084AFA5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084AFAA: add esp, 00000010h
0084AFAD: lea eax, var_5C
0084AFB0: push eax
0084AFB1: lea eax, var_4C
0084AFB4: push eax
0084AFB5: push 00000002h
0084AFB7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084AFBC: add esp, 0000000Ch
0084AFBF: push 0044A87Ch
0084AFC4: push 00000000h
0084AFC6: push 00000003h
0084AFC8: mov eax, [ebp+08h]
0084AFCB: mov eax, [eax]
0084AFCD: push [ebp+08h]
0084AFD0: call [eax+00000338h]
0084AFD6: push eax
0084AFD7: lea eax, var_34
0084AFDA: push eax
0084AFDB: call 00410A84h ; Set (object)
0084AFE0: push eax
0084AFE1: lea eax, var_4C
0084AFE4: push eax
0084AFE5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084AFEA: add esp, 00000010h
0084AFED: push eax
0084AFEE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084AFF3: push eax
0084AFF4: lea eax, var_38
0084AFF7: push eax
0084AFF8: call 00410A84h ; Set (object)
0084AFFD: mov var_000000D4, eax
0084B003: mov var_54, 00000002h
0084B00A: mov var_5C, 00000002h
0084B011: lea eax, var_3C
0084B014: push eax
0084B015: lea eax, var_5C
0084B018: push eax
0084B019: mov eax, var_000000D4
0084B01F: mov eax, [eax]
0084B021: push var_000000D4
0084B027: call [eax+24h]
0084B02A: fclex 
0084B02C: mov var_000000D8, eax
0084B032: cmp var_000000D8, 00000000h
0084B039: jnl 84B05Bh
0084B03B: push 00000024h
0084B03D: push 0044A87Ch
0084B042: push var_000000D4
0084B048: push var_000000D8
0084B04E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B053: mov var_0000013C, eax
0084B059: jmp 84B062h
0084B05B: and var_0000013C, 00000000h
0084B062: mov eax, var_3C
0084B065: mov var_000000DC, eax
0084B06B: mov eax, [ebp+08h]
0084B06E: mov eax, [eax]
0084B070: push [ebp+08h]
0084B073: call [eax+00000314h]
0084B079: push eax
0084B07A: lea eax, var_30
0084B07D: push eax
0084B07E: call 00410A84h ; Set (object)
0084B083: mov var_000000CC, eax
0084B089: lea eax, var_28
0084B08C: push eax
0084B08D: mov eax, var_000000CC
0084B093: mov eax, [eax]
0084B095: push var_000000CC
0084B09B: call [eax+50h]
0084B09E: fclex 
0084B0A0: mov var_000000D0, eax
0084B0A6: cmp var_000000D0, 00000000h
0084B0AD: jnl 84B0CFh
0084B0AF: push 00000050h
0084B0B1: push 004425E4h
0084B0B6: push var_000000CC
0084B0BC: push var_000000D0
0084B0C2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B0C7: mov var_00000140, eax
0084B0CD: jmp 84B0D6h
0084B0CF: and var_00000140, 00000000h
0084B0D6: push 0044B600h ; Current:
0084B0DB: push var_28
0084B0DE: call 00410A18h ; &
0084B0E3: mov edx, eax
0084B0E5: lea ecx, var_2C
0084B0E8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084B0ED: push eax
0084B0EE: mov eax, var_000000DC
0084B0F4: mov eax, [eax]
0084B0F6: push var_000000DC
0084B0FC: call [eax+00000080h]
0084B102: fclex 
0084B104: mov var_000000E0, eax
0084B10A: cmp var_000000E0, 00000000h
0084B111: jnl 84B136h
0084B113: push 00000080h
0084B118: push 0044A88Ch
0084B11D: push var_000000DC
0084B123: push var_000000E0
0084B129: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B12E: mov var_00000144, eax
0084B134: jmp 84B13Dh
0084B136: and var_00000144, 00000000h
0084B13D: lea eax, var_2C
0084B140: push eax
0084B141: lea eax, var_28
0084B144: push eax
0084B145: push 00000002h
0084B147: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084B14C: add esp, 0000000Ch
0084B14F: lea eax, var_3C
0084B152: push eax
0084B153: lea eax, var_38
0084B156: push eax
0084B157: lea eax, var_34
0084B15A: push eax
0084B15B: lea eax, var_30
0084B15E: push eax
0084B15F: push 00000004h
0084B161: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B166: add esp, 00000014h
0084B169: lea eax, var_5C
0084B16C: push eax
0084B16D: lea eax, var_4C
0084B170: push eax
0084B171: push 00000002h
0084B173: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084B178: add esp, 0000000Ch
0084B17B: jmp 0084B263h
0084B180: lea eax, var_28
0084B183: push eax
0084B184: mov eax, [ebp+08h]
0084B187: mov eax, [eax]
0084B189: push [ebp+08h]
0084B18C: call [eax+000001C0h]
0084B192: fclex 
0084B194: mov var_000000CC, eax
0084B19A: cmp var_000000CC, 00000000h
0084B1A1: jnl 84B1C3h
0084B1A3: push 000001C0h
0084B1A8: push 00445034h
0084B1AD: push [ebp+08h]
0084B1B0: push var_000000CC
0084B1B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084B1BB: mov var_00000148, eax
0084B1C1: jmp 84B1CAh
0084B1C3: and var_00000148, 00000000h
0084B1CA: push var_28
0084B1CD: call 004109DCh ; Val(arg_1)
0084B1D2: fstp real8 ptr var_000000C8
0084B1D8: push 00000000h
0084B1DA: push 00000000h
0084B1DC: push 00000001h
0084B1DE: push 00000000h
0084B1E0: lea eax, var_80
0084B1E3: push eax
0084B1E4: push 00000010h
0084B1E6: push 00000880h
0084B1EB: call 00410946h ; ReDim
0084B1F0: add esp, 0000001Ch
0084B1F3: mov var_00000088, 00442930h
0084B1FD: mov var_00000090, 00000008h
0084B207: lea esi, var_00000090
0084B20D: push 00000000h
0084B20F: push var_80
0084B212: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084B217: mov ecx, eax
0084B219: mov edx, esi
0084B21B: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0084B220: mov edx, 0043D744h ; x68
0084B225: lea ecx, var_2C
0084B228: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0084B22D: lea eax, var_80
0084B230: push eax
0084B231: lea eax, var_2C
0084B234: push eax
0084B235: fld real8 ptr var_000000C8
0084B23B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0084B240: push eax
0084B241: call 007A6910h
0084B246: lea eax, var_80
0084B249: push eax
0084B24A: push 00000000h
0084B24C: call 00410934h ; Erase
0084B251: lea eax, var_2C
0084B254: push eax
0084B255: lea eax, var_28
0084B258: push eax
0084B259: push 00000002h
0084B25B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084B260: add esp, 0000000Ch
0084B263: mov var_04, 00000000h
0084B26A: wait 
0084B26B: push 0084B2C5h
0084B270: jmp 84B2C4h
0084B272: lea eax, var_2C
0084B275: push eax
0084B276: lea eax, var_28
0084B279: push eax
0084B27A: push 00000002h
0084B27C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084B281: add esp, 0000000Ch
0084B284: lea eax, var_3C
0084B287: push eax
0084B288: lea eax, var_38
0084B28B: push eax
0084B28C: lea eax, var_34
0084B28F: push eax
0084B290: lea eax, var_30
0084B293: push eax
0084B294: push 00000004h
0084B296: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084B29B: add esp, 00000014h
0084B29E: lea eax, var_7C
0084B2A1: push eax
0084B2A2: lea eax, var_6C
0084B2A5: push eax
0084B2A6: lea eax, var_5C
0084B2A9: push eax
0084B2AA: lea eax, var_4C
0084B2AD: push eax
0084B2AE: push 00000004h
0084B2B0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084B2B5: add esp, 00000014h
0084B2B8: lea eax, var_80
0084B2BB: push eax
0084B2BC: push 00000000h
0084B2BE: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0084B2C3: ret 
End Sub

Private sub lstSearch__84BCBF
0084BCBF: push ebp
0084BCC0: mov ebp, esp
0084BCC2: sub esp, 0000000Ch
0084BCC5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084BCCA: mov eax, fs:[00h]
0084BCD0: push eax
0084BCD1: mov fs:[00000000h], esp
0084BCD8: push 00000054h
0084BCDA: pop eax
0084BCDB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BCE0: push ebx
0084BCE1: push esi
0084BCE2: push edi
0084BCE3: mov var_0C, esp
0084BCE6: mov var_08, 0040C480h
0084BCED: mov eax, [ebp+08h]
0084BCF0: and eax, 00000001h
0084BCF3: mov var_04, eax
0084BCF6: mov eax, [ebp+08h]
0084BCF9: and al, FEh
0084BCFB: mov [ebp+08h], eax
0084BCFE: mov eax, [ebp+08h]
0084BD01: mov eax, [eax]
0084BD03: push [ebp+08h]
0084BD06: call [eax+04h]
0084BD09: mov eax, [ebp+0Ch]
0084BD0C: cmp word ptr [eax], 0002h
0084BD10: jnz 0084BDEAh
0084BD16: mov var_50, 80020004h
0084BD1D: mov var_58, 0000000Ah
0084BD24: mov var_40, 80020004h
0084BD2B: mov var_48, 0000000Ah
0084BD32: mov var_30, 80020004h
0084BD39: mov var_38, 0000000Ah
0084BD40: mov var_20, 80020004h
0084BD47: mov var_28, 0000000Ah
0084BD4E: push 00000010h
0084BD50: pop eax
0084BD51: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BD56: lea esi, var_58
0084BD59: mov edi, esp
0084BD5B: movsd 
0084BD5C: movsd 
0084BD5D: movsd 
0084BD5E: movsd 
0084BD5F: push 00000010h
0084BD61: pop eax
0084BD62: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BD67: lea esi, var_48
0084BD6A: mov edi, esp
0084BD6C: movsd 
0084BD6D: movsd 
0084BD6E: movsd 
0084BD6F: movsd 
0084BD70: push 00000010h
0084BD72: pop eax
0084BD73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BD78: lea esi, var_38
0084BD7B: mov edi, esp
0084BD7D: movsd 
0084BD7E: movsd 
0084BD7F: movsd 
0084BD80: movsd 
0084BD81: push 00000010h
0084BD83: pop eax
0084BD84: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BD89: lea esi, var_28
0084BD8C: mov edi, esp
0084BD8E: movsd 
0084BD8F: movsd 
0084BD90: movsd 
0084BD91: movsd 
0084BD92: mov eax, [ebp+08h]
0084BD95: mov eax, [eax]
0084BD97: push [ebp+08h]
0084BD9A: call [eax+00000318h]
0084BDA0: push eax
0084BDA1: lea eax, var_18
0084BDA4: push eax
0084BDA5: call 00410A84h ; Set (object)
0084BDAA: push eax
0084BDAB: mov eax, [ebp+08h]
0084BDAE: mov eax, [eax]
0084BDB0: push [ebp+08h]
0084BDB3: call [eax+000002BCh]
0084BDB9: fclex 
0084BDBB: mov var_5C, eax
0084BDBE: cmp var_5C, 00000000h
0084BDC2: jnl 84BDDEh
0084BDC4: push 000002BCh
0084BDC9: push 00445034h
0084BDCE: push [ebp+08h]
0084BDD1: push var_5C
0084BDD4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084BDD9: mov var_68, eax
0084BDDC: jmp 84BDE2h
0084BDDE: and var_68, 00000000h
0084BDE2: lea ecx, var_18
0084BDE5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084BDEA: mov var_04, 00000000h
0084BDF1: push 0084BE02h
0084BDF6: jmp 84BE01h
0084BDF8: lea ecx, var_18
0084BDFB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084BE00: ret 
End Sub

Private sub lstSearch__84BC48
0084BC48: push ebp
0084BC49: mov ebp, esp
0084BC4B: sub esp, 0000000Ch
0084BC4E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084BC53: mov eax, fs:[00h]
0084BC59: push eax
0084BC5A: mov fs:[00000000h], esp
0084BC61: push 00000008h
0084BC63: pop eax
0084BC64: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084BC69: push ebx
0084BC6A: push esi
0084BC6B: push edi
0084BC6C: mov var_0C, esp
0084BC6F: mov var_08, 0040C478h
0084BC76: mov eax, [ebp+08h]
0084BC79: and eax, 00000001h
0084BC7C: mov var_04, eax
0084BC7F: mov eax, [ebp+08h]
0084BC82: and al, FEh
0084BC84: mov [ebp+08h], eax
0084BC87: mov eax, [ebp+08h]
0084BC8A: mov eax, [eax]
0084BC8C: push [ebp+08h]
0084BC8F: call [eax+04h]
0084BC92: mov eax, [ebp+0Ch]
0084BC95: or word ptr [eax], FFFFh
0084BC99: mov var_04, 00000000h
0084BCA0: mov eax, [ebp+08h]
0084BCA3: mov eax, [eax]
0084BCA5: push [ebp+08h]
0084BCA8: call [eax+08h]
0084BCAB: mov eax, var_04
0084BCAE: mov ecx, var_14
0084BCB1: mov fs:[00000000h], ecx
0084BCB8: pop edi
0084BCB9: pop esi
0084BCBA: pop ebx
0084BCBB: leave 
0084BCBC: retn 0008h
End Sub

