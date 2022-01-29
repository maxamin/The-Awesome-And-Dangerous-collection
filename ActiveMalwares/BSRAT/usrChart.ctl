VERSION 5.00
Begin VB.UserControl usrChart
  BackColor = &H80000005&
  ForeColor = &HFFFFFF&
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 8400
  ClientHeight = 5580
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 178
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
  BorderStyle = 1 'Fixed Single
  Begin VB.Timer tmrStart
    Enabled = 0   'False
    Interval = 100
    Left = 3600
    Top = 0
  End
End

Attribute VB_Name = "usrChart"


