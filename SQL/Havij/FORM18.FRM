VERSION 5.00
Begin VB.Form Form3
   BorderStyle     =   3
   Caption         =   "Authentication"
   ClientHeight    =   3345
   ClientLeft      =   45
   ClientTop       =   450
   ClientWidth     =   5775
   Icon            =   "FORM18.FRX":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0
   MinButton       =   0
   ScaleHeight     =   3345
   ScaleWidth      =   5775
   ShowInTaskbar   =   0
   StartUpPosition =   1
   Begin VB.CommandButton Command2
      Cancel          =  -1
      Caption         =   "Cancel"
      Height          =   495
      Left            =   3480
      TabIndex        =   8
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton Command1
      Caption         =   "OK"
      Default         =  -1
      Height          =   495
      Left            =   4560
      TabIndex        =   7
      Top             =   2640
      Width           =   975
   End
   Begin VB.Frame Frame1
      Height          =   2295
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   5295
      Begin VB.ComboBox Combo1
         Height          =   315
         ItemData        =   "FORM18.FRX":629D
         Left            =   1200
         List            =   "FORM18.FRX":628A
         Style           =   2
         TabIndex        =   6
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox Text2
         Height          =   285
         Left            =   1200
         TabIndex        =   4
         Top             =   1320
         Width           =   3855
      End
      Begin VB.TextBox Text1
         Height          =   285
         Left            =   1200
         TabIndex        =   2
         Top             =   960
         Width           =   3855
      End
      Begin VB.Label Label4
         BackStyle       =   0
         Caption         =   "If you need authentication to inject target, use the following form to enter username and password."
         Height          =   615
         Left            =   240
         TabIndex        =   9
         Top             =   240
         Width           =   4875
      End
      Begin VB.Label Label3
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Method:"
         Height          =   195
         Left            =   240
         TabIndex        =   5
         Top             =   1680
         Width           =   585
      End
      Begin VB.Label Label2
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Password:"
         Height          =   195
         Left            =   240
         TabIndex        =   3
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label1
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Username:"
         Height          =   195
         Left            =   240
         TabIndex        =   1
         Top             =   960
         Width           =   765
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 
' This form rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:55:54
Option Explicit 
 
Sub Command1_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Basic"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Basic "
'N  * ref: ":"
'N  * ref: __vbaStrMove
'N  * ref: Subr_743
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Digest"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "%Digest%(%"
'N  * ref: __vbaStrMove
'N  * ref: "%:%"
'N  * ref: "%)"
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Authorization"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaNew2
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
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Subr_186
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: "Authorization: "
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Command2_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub Form_Load()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
