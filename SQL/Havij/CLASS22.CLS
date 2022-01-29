VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CRijndael"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
' This class rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:50
Option Explicit 
 
' Declare Function RtlMoveMemory Lib "kernel32" ()
 
' Declare Function FtpFindFirstFileA Lib "wininet.dll" ()
 
' Declare Function InternetFindNextFileA Lib "wininet.dll" ()
 
' Declare Function InternetGetLastResponseInfoA Lib "wininet.dll" ()
 
' Declare Function FtpGetCurrentDirectoryA Lib "wininet.dll" ()
 
' Declare Function FtpSetCurrentDirectoryA Lib "wininet.dll" ()
 
' Declare Function InternetOpenUrlA Lib "wininet.dll" ()
 
' Declare Function InternetOpenA Lib "wininet.dll" ()
 
' Declare Function InternetConnectA Lib "wininet.dll" ()
 
' Declare Function InternetReadFile Lib "wininet.dll" ()
 
' Declare Function HttpQueryInfoA Lib "wininet.dll" ()
 
' Declare Function HttpOpenRequestA Lib "wininet.dll" ()
 
' Declare Function HttpSendRequestA Lib "wininet.dll" ()
 
' Declare Function InternetCloseHandle Lib "wininet.dll" ()
 
' Declare Function HttpAddRequestHeadersA Lib "wininet.dll" ()
 
Sub Class_Initialize()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
End Sub
 
'Sub Subr_757()
'N  * ref: __vbaExceptHandler
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_758()
'N  * ref: __vbaExceptHandler
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_759()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_760()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_761()
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_762()
'N  * ref: __vbaUI1I2
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_763()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI2I4
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_764()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI2I4
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_765()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'End Sub
 
'Sub Subr_766()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_767()
'N  * ref: __vbaUI1I2
'End Sub
 
'Sub Subr_768()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_769()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryDestruct
'End Sub
 
'Sub Subr_770()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaAryDestruct
'End Sub
 
'Sub Subr_771()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaUI1I4
'N  * ref: __vbaAryDestruct
'End Sub
 
'Sub Subr_772()
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub gentables()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub gkey()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Encrypt()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Decrypt()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_777()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub DecryptData()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaOnError
'N  * ref: __vbaUbound
'N  * ref: __vbaUbound
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaRedim
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryUnlock
'N  * API ref: RtlMoveMemory
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * API ref: RtlMoveMemory
'N  * ref: __vbaSetSystemError
'N  * ref: VarPtr(
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryUnlock
'N  * API ref: RtlMoveMemory
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaRedim
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: VarPtr(
'N  * ref: __vbaAryUnlock
'N  * API ref: RtlMoveMemory
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaAryMove
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaErrorOverflow
'End Sub
 
