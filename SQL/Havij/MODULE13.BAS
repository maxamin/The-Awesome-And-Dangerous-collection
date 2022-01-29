Attribute VB_Name = "MsAccessBlind"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:25
Option Explicit 
 
' Declare Function GetTickCount Lib "kernel32.dll" ()
 
' Declare Function ReadFile Lib "kernel32" ()
 
' Declare Function GetFileSize Lib "kernel32" ()
 
' Declare Function CryptAcquireContextA Lib "advapi32.dll" ()
 
' Declare Function CryptCreateHash Lib "advapi32.dll" ()
 
' Declare Function CryptHashData Lib "advapi32.dll" ()
 
' Declare Function CryptGetHashParam Lib "advapi32.dll" ()
 
' Declare Function CryptDestroyKey Lib "advapi32.dll" ()
 
' Declare Function CryptDestroyHash Lib "advapi32.dll" ()
 
' Declare Function CryptReleaseContext Lib "advapi32.dll" ()
 
' Declare Function GetVersionExA Lib "kernel32" ()
 
' Declare Function CreateFileA Lib "kernel32" ()
 
' Declare Function CloseHandle Lib "kernel32" ()
 
' Declare Function DeviceIoControl Lib "kernel32" ()
 
' Declare Function RtlZeroMemory Lib "kernel32" ()
 
' Declare Function GetLastError Lib "kernel32" ()
 
'Sub Subr_702()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Check if length of '"
'N  * ref: "' is <"
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "))<"
'N  * ref: __vbaStrVarVal
'N  * ref: "%True_Expression%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: __vbaVargVarCopy
'N  * ref: Subr_702
'N  * ref: __vbaVargVarCopy
'N  * ref: Subr_702
'N  * ref: __vbaVarTstLe
'N  * ref: "Can not get Length of '"
'N  * ref: "'"
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaVargVarMove
'N  * ref: "Check if length of '"
'N  * ref: "' is ="
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Len(("
'N  * ref: "))="
'N  * ref: __vbaStrVarVal
'N  * ref: "%True_Expression%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "Length of '"
'N  * ref: "' is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: Subr_702
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_703()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: "Find length of '"
'N  * ref: "'"
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_702
'N  * ref: __vbaI2Var
'N  * ref: ": "
'N  * ref: __vbaVarVargNofree
'N  * ref: Subr_143
'N  * ref: __vbaLenBstr
'N  * ref: __vbaVarForInit
'N  * ref: ": "
'N  * ref: __vbaVarVargNofree
'N  * ref: Subr_143
'N  * ref: Subr_701
'N  * ref: __vbaI4Var
'N  * ref: Chr(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_704()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaLenBstr
'N  * ref: "NULL"
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: __vbaI4Var
'N  * ref: "chr("
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: ")||"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: Left(
'N  * ref: __vbaStrCat
'N  * ref: "'"
'N  * ref: __vbaStrMove
'N  * ref: "'"
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
