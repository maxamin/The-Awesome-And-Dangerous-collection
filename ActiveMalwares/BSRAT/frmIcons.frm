VERSION 5.00
Begin VB.Form frmIcons
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 420
  ClientWidth = 10680
  ClientHeight = 5280
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox Picture1
    Left = 0
    Top = 0
    Width = 10080
    Height = 7125
    Visible = 0   'False
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Begin VB.Image imgSkype
      Picture = "frmIcons.frx":0
      Left = 8520
      Top = 2040
      Width = 240
      Height = 240
    End
    Begin VB.Image imgADClick
      Picture = "frmIcons.frx":270
      Left = 9120
      Top = 3360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgFav
      Picture = "frmIcons.frx":647
      Left = 4320
      Top = 240
      Width = 240
      Height = 240
    End
    Begin VB.Image imgSteam
      Picture = "frmIcons.frx":A35
      Left = 6120
      Top = 240
      Width = 240
      Height = 240
    End
    Begin VB.Image imgClipboard
      Picture = "frmIcons.frx":2A78
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgFB
      Picture = "frmIcons.frx":2E93
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgRedirect
      Picture = "frmIcons.frx":2F07
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgMag
      Picture = "frmIcons.frx":3148
      Left = 1440
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image img_Botkiller
      Picture = "frmIcons.frx":338C
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgFrmGrab
      Picture = "frmIcons.frx":379E
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgCookie
      Picture = "frmIcons.frx":3BDF
      Left = 7680
      Top = 3600
      Width = 240
      Height = 240
    End
    Begin VB.Image img_appWindows
      Picture = "frmIcons.frx":3FE8
      Left = 8760
      Top = 3720
      Width = 240
      Height = 240
    End
    Begin VB.Image imgArrRotate
      Picture = "frmIcons.frx":424C
      Left = 8520
      Top = 360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgAccept
      Picture = "frmIcons.frx":448D
      Left = 3960
      Top = 360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgResolve
      Picture = "frmIcons.frx":4899
      Left = 2160
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgNetwork
      Picture = "frmIcons.frx":4CD7
      Left = 120
      Top = 360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgSystem
      Picture = "frmIcons.frx":50EF
      Left = 480
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgColumn
      Picture = "frmIcons.frx":5357
      Left = 3480
      Top = 360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgServer
      Picture = "frmIcons.frx":55A5
      Left = 1680
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgMisc
      Picture = "frmIcons.frx":5804
      Left = 2520
      Top = 120
      Width = 240
      Height = 240
    End
    Begin VB.Image imgCopy
      Picture = "frmIcons.frx":5988
      Left = 3240
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgSurv
      Picture = "frmIcons.frx":5DBA
      Left = 1320
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgMap
      Picture = "frmIcons.frx":601B
      Left = 1920
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgChat
      Picture = "frmIcons.frx":6465
      Left = 960
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgFilter
      Picture = "frmIcons.frx":66D5
      Left = 480
      Top = 120
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPing
      Picture = "frmIcons.frx":6933
      Left = 0
      Top = 0
      Width = 240
      Height = 240
    End
    Begin VB.Image imgApp_get
      Picture = "frmIcons.frx":6B54
      Left = 960
      Top = 1560
      Width = 240
      Height = 240
    End
    Begin VB.Image img_appXP
      Picture = "frmIcons.frx":6DC6
      Left = 1440
      Top = 3360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgArrDivide
      Picture = "frmIcons.frx":704D
      Left = 6240
      Top = 3960
      Width = 240
      Height = 240
    End
    Begin VB.Image imgArrRedo
      Picture = "frmIcons.frx":72A4
      Left = 2880
      Top = 1800
      Width = 240
      Height = 240
    End
    Begin VB.Image imgRefresh
      Picture = "frmIcons.frx":7686
      Left = 2400
      Top = 2640
      Width = 240
      Height = 240
    End
    Begin VB.Image imgArrSwitch
      Picture = "frmIcons.frx":78E6
      Left = 2400
      Top = 1080
      Width = 240
      Height = 240
    End
    Begin VB.Image imgArrUp
      Picture = "frmIcons.frx":7CD5
      Left = 4200
      Top = 1320
      Width = 240
      Height = 240
    End
    Begin VB.Image imgClockPause
      Picture = "frmIcons.frx":7E18
      Left = 5520
      Top = 2640
      Width = 240
      Height = 240
    End
    Begin VB.Image imgCog
      Picture = "frmIcons.frx":8261
      Left = 4800
      Top = 3480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgConnect
      Picture = "frmIcons.frx":84F0
      Left = 4320
      Top = 5400
      Width = 240
      Height = 240
    End
    Begin VB.Image imgController
      Picture = "frmIcons.frx":88EC
      Left = 3360
      Top = 2880
      Width = 240
      Height = 240
    End
    Begin VB.Image imgDelete
      Picture = "frmIcons.frx":8B51
      Left = 6120
      Top = 1440
      Width = 240
      Height = 240
    End
    Begin VB.Image imgDisconnect
      Picture = "frmIcons.frx":8F4B
      Left = 2400
      Top = 4560
      Width = 240
      Height = 240
    End
    Begin VB.Image imgDriveCD
      Picture = "frmIcons.frx":9351
      Left = 840
      Top = 2760
      Width = 240
      Height = 240
    End
    Begin VB.Image imgEmailGo
      Picture = "frmIcons.frx":9782
      Left = 3120
      Top = 3480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgKey
      Picture = "frmIcons.frx":9B97
      Left = 1200
      Top = 1200
      Width = 240
      Height = 240
    End
    Begin VB.Image imgKeyboard
      Picture = "frmIcons.frx":9DED
      Left = 1080
      Top = 840
      Width = 240
      Height = 240
    End
    Begin VB.Image imgLink
      Picture = "frmIcons.frx":A049
      Left = 1200
      Top = 4560
      Width = 240
      Height = 240
    End
    Begin VB.Image imgMonitor
      Picture = "frmIcons.frx":A1A8
      Left = 4080
      Top = 2280
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPage
      Picture = "frmIcons.frx":A5B7
      Left = 5760
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageCopy
      Picture = "frmIcons.frx":A9EF
      Left = 5280
      Top = 1560
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageFind
      Picture = "frmIcons.frx":AE0C
      Left = 2880
      Top = 840
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageGo
      Picture = "frmIcons.frx":B251
      Left = 4560
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageGreen
      Picture = "frmIcons.frx":B68C
      Left = 4560
      Top = 1920
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageLight
      Picture = "frmIcons.frx":BAB0
      Left = 2160
      Top = 2040
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageRefresh
      Picture = "frmIcons.frx":BEF2
      Left = 4920
      Top = 4680
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageWhite
      Picture = "frmIcons.frx":C332
      Left = 1680
      Top = 5400
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageWhiteWorld
      Picture = "frmIcons.frx":C43B
      Left = 5880
      Top = 6120
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPageWorld
      Picture = "frmIcons.frx":C853
      Left = 7440
      Top = 3120
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPencil
      Picture = "frmIcons.frx":CC98
      Left = 6600
      Top = 480
      Width = 240
      Height = 240
    End
    Begin VB.Image imgPillGo
      Picture = "frmIcons.frx":CDEF
      Left = 5160
      Top = 1080
      Width = 240
      Height = 240
    End
    Begin VB.Image imgProcess
      Picture = "frmIcons.frx":D201
      Left = 7200
      Top = 5040
      Width = 240
      Height = 240
    End
    Begin VB.Image imgRegistry
      Picture = "frmIcons.frx":D5FC
      Left = 6600
      Top = 2160
      Width = 240
      Height = 240
    End
    Begin VB.Image imgShieldGo
      Picture = "frmIcons.frx":D9E7
      Left = 3600
      Top = 4560
      Width = 240
      Height = 240
    End
    Begin VB.Image imgSound
      Picture = "frmIcons.frx":DDF7
      Left = 5640
      Top = 3240
      Width = 240
      Height = 240
    End
    Begin VB.Image imgStatusOnline
      Picture = "frmIcons.frx":E041
      Left = 5280
      Top = 4080
      Width = 240
      Height = 240
    End
    Begin VB.Image imgTagEdit
      Picture = "frmIcons.frx":E43C
      Left = 5520
      Top = 2160
      Width = 240
      Height = 240
    End
    Begin VB.Image imgUserComment
      Picture = "frmIcons.frx":E845
      Left = 3480
      Top = 1560
      Width = 240
      Height = 240
    End
    Begin VB.Image imgWeather
      Picture = "frmIcons.frx":EC4C
      Left = 2280
      Top = 3360
      Width = 240
      Height = 240
    End
    Begin VB.Image imgWebcam
      Picture = "frmIcons.frx":EE9A
      Left = 120
      Top = 1200
      Width = 240
      Height = 240
    End
    Begin VB.Image imgWorldGo
      Picture = "frmIcons.frx":F11F
      Left = 1320
      Top = 2160
      Width = 240
      Height = 240
    End
    Begin VB.Image imgWrench
      Picture = "frmIcons.frx":F560
      Left = 4200
      Top = 2760
      Width = 240
      Height = 240
    End
    Begin VB.Image imgFolderPage
      Picture = "frmIcons.frx":F7A7
      Left = 8760
      Top = 2640
      Width = 240
      Height = 240
    End
    Begin VB.Image imgInfo
      Picture = "frmIcons.frx":FBCF
      Left = 7800
      Top = 1200
      Width = 240
      Height = 240
    End
  End
  Begin VB.Image imgUpEx
    Picture = "frmIcons.frx":FFDC
    Left = 0
    Top = 0
    Width = 240
    Height = 240
  End
  Begin VB.Image Image1
    Picture = "frmIcons.frx":1024E
    Left = 0
    Top = 0
    Width = 240
    Height = 240
  End
  Begin VB.Image imgLive
    Picture = "frmIcons.frx":10686
    Left = 0
    Top = 0
    Width = 240
    Height = 240
  End
End

Attribute VB_Name = "frmIcons"


Private sub unknown_8B29DD
008B29DD: push ebp
008B29DE: mov ebp, esp
008B29E0: xor eax, eax
008B29E2: pop ebp
008B29E3: retn 0004h
End Sub

