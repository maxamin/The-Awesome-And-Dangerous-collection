VERSION 5.00
Begin VB.UserControl uSplit
  ForeColor = &H80000006&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawStyle = 4
  DrawWidth = 3
  FillColor = &HE2E7E9&
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 1950
  ClientHeight = 2040
  Appearance = 0 'Flat
  Begin VB.PictureBox picIndicator
    BackColor = &H8000000D&
    ForeColor = &H80000008&
    Left = 270
    Top = 315
    Width = 1380
    Height = 1410
    Visible = 0   'False
    TabIndex = 0
    ScaleMode = 0
    ScaleLeft = 0
    ScaleTop = 0
    ScaleWidth = 1,036316E+09
    ScaleHeight = 1,074985E+09
    AutoRedraw = True
    FontTransparent = True
    FillColor = &H808080&
    BorderStyle = 0 'None
    Tag = "LOCAL"
    ClipControls = 0   'False
    Appearance = 0 'Flat
  End
  Begin VB.Image imgSense
    Left = 120
    Top = 105
    Width = 1695
    Height = 1800
    MousePointer = 9 'Size W E
    Tag = "LOCAL"
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "uSplit"


