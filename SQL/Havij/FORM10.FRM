VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "SHDOCVW.DLL"
Begin VB.Form Form2
   BorderStyle     =   3
   Caption         =   "Load Cookie"
   ClientHeight    =   6090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7470
   Icon            =   "FORM10.FRX":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0
   MinButton       =   0
   ScaleHeight     =   6090
   ScaleWidth      =   7470
   ShowInTaskbar   =   0
   StartUpPosition =   1
   Begin VB.CommandButton Command2
      Caption         =   "Add"
      Height          =   375
      Left            =   6360
      TabIndex        =   6
      Top             =   5480
      Width           =   735
   End
   Begin VB.TextBox Text2
      Height          =   285
      Left            =   1320
      Locked          =  -1
      TabIndex        =   5
      Top             =   5520
      Width           =   4815
   End
   Begin VB.CommandButton Command1
      Caption         =   "Load"
      Height          =   375
      Left            =   6360
      TabIndex        =   3
      Top             =   320
      Width           =   735
   End
   Begin VB.TextBox Text1
      Height          =   285
      Left            =   1320
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   360
      Width           =   4815
   End
   Begin SHDocVwCtl.WebBrowser Web
      Height          =   4215
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   6855
   End
   Begin VB.Label Label2
      AutoSize        =  -1
      BackStyle       =   0
      Caption         =   "Page Cookie:"
      Height          =   195
      Left            =   240
      TabIndex        =   4
      Top             =   5520
      Width           =   960
   End
   Begin VB.Label Label1
      AutoSize        =  -1
      BackStyle       =   0
      Caption         =   "Page Address:"
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   1035
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 
' This form rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:55:24
Option Explicit 
 
Sub Command1_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Command2_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Cookie"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "Cookie: "
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Form_Activate()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
End Sub
 
Sub Form_Initialize()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_132
End Sub
 
Sub Form_Load()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
End Sub
 
Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
End Sub
 
Sub Web_NavigateComplete2(ByVal pDisp As Object, URL As Variant)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarLateMemCallLd
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
End Sub
 
Sub Web_StatusTextChange(ByVal Text As String)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaStrCopy
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarLateMemCallLd
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
End Sub
 
