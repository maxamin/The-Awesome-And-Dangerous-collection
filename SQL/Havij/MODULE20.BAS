Attribute VB_Name = "MD5Driver"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:45
Option Explicit 
 
'Sub Subr_745()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_746
'N  * ref: Subr_747
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenBstr
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: __vbaStrVarMove
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: IsNumeric(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaVarMod
'N  * ref: __vbaVarAdd
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_746()
'N  * ref: __vbaRecUniToAnsi
'N  * API ref: GetVersionExA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaRecAnsiToUni
'N  * ref: __vbaStrCopy
'N  * ref: "Unk"
'N  * ref: "WNT"
'N  * ref: "W95"
'N  * ref: "W98"
'N  * ref: "32S"
'End Sub
 
'Sub Subr_747()
'N  * ref: __vbaExceptHandler
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: "Illegal HD Data type"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "WNT"
'N  * ref: __vbaStrCmp
'N  * ref: "\\.\PhysicalDrive"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrToAnsi
'N  * API ref: CreateFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "W95"
'N  * ref: __vbaStrCmp
'N  * ref: "W98"
'N  * ref: __vbaStrCmp
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: "Illegal platform (only WNT, W98 or W95)"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "\\.\Smartvsd"
'N  * ref: __vbaStrToAnsi
'N  * API ref: CreateFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStr
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: "Error on CreateFile"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * API ref: RtlZeroMemory
'N  * ref: __vbaSetSystemError
'N  * API ref: RtlZeroMemory
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaUI1Var
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaUI1I2
'N  * API ref: DeviceIoControl
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * API ref: CloseHandle
'N  * ref: __vbaSetSystemError
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_748()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: __vbaStrToAnsi
'N  * API ref: CreateFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaStrToUnicode
'N  * ref: __vbaFreeStr
'N  * API ref: GetFileSize
'N  * ref: __vbaRedim
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * API ref: ReadFile
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaRedimPreserve
'N  * API ref: CryptAcquireContextA
'N  * API ref: CryptCreateHash
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * API ref: CryptHashData
'N  * ref: __vbaAryUnlock
'N  * API ref: CryptGetHashParam
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Hex$(
'N  * ref: "0"
'N  * ref: Right$(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrMove
'N  * API ref: CryptDestroyHash
'N  * API ref: CryptReleaseContext
'N  * API ref: CloseHandle
'N  * ref: __vbaSetSystemError
'N  * API ref: CryptDestroyHash
'N  * API ref: CryptReleaseContext
'N  * API ref: CloseHandle
'N  * ref: __vbaStrMove
'N  * API ref: CryptReleaseContext
'N  * API ref: CloseHandle
'N  * ref: __vbaStrMove
'N  * API ref: CloseHandle
'N  * ref: __vbaStrMove
'N  * ref: LCase$(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_749()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaAryConstruct2
'N  * ref: StrConv(
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaAryMove
'N  * ref: __vbaFreeVar
'N  * API ref: CryptAcquireContextA
'N  * ref: __vbaSetSystemError
'N  * API ref: CryptCreateHash
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaLenBstr
'N  * API ref: CryptHashData
'N  * ref: __vbaAryUnlock
'N  * API ref: CryptGetHashParam
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Hex$(
'N  * ref: "0"
'N  * ref: Right$(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrMove
'N  * API ref: CryptDestroyHash
'N  * API ref: CryptReleaseContext
'N  * ref: __vbaSetSystemError
'N  * API ref: CryptDestroyHash
'N  * API ref: CryptReleaseContext
'N  * ref: __vbaStrMove
'N  * API ref: CryptReleaseContext
'N  * ref: __vbaStrMove
'N  * ref: LCase$(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_750()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeVarList
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMod
'N  * ref: __vbaI2Var
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaI2Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_751()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeVarList
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: Randomize
'N  * ref: __vbaFreeVar
'N  * ref: Rnd(
'N  * ref: __vbaFPInt
'N  * ref: __vbaFpUI1
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMod
'N  * ref: __vbaUI1Var
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaUI1Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFPException
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_752()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: Right(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaUI1I2
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaUI1I2
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMod
'N  * ref: __vbaUI1Var
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaUI1Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaUI1I2
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_753()
'N  * ref: __vbaExceptHandler
'N  * ref: Left(
'N  * ref: """"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: Mid(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaVarVargNofree
'N  * ref: Left(
'N  * ref: """"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: Mid(
'N  * ref: __vbaVargVarMove
'N  * ref: Left(
'N  * ref: """"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: Mid(
'N  * ref: __vbaVargVarMove
'N  * ref: ":"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_749
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: "auth"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarTstEq
'N  * ref: "auth-int"
'N  * ref: __vbaVarTstEq
'N  * ref: ":"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_749
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: ":"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_749
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVargVarMove
'N  * ref: Timer
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrMove
'N  * ref: Subr_749
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: Hex(
'N  * ref: Hex(
'N  * ref: """" & ", "
'N  * ref: ":"
'N  * ref: "Digest username=" & """"
'N  * ref: "realm=" & """"
'N  * ref: "nonce=" & """"
'N  * ref: "uri=" & """"
'N  * ref: "algorithm=" & """" & "MD5" & """" & ", "
'N  * ref: "response=" & """"
'N  * ref: "0#######"
'N  * ref: __vbaVarDup
'N  * ref: Format(
'N  * ref: ":"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_749
'N  * ref: """" & ", "
'N  * ref: "qop="
'N  * ref: ", "
'N  * ref: "nc="
'N  * ref: "0#######"
'N  * ref: __vbaVarDup
'N  * ref: Format(
'N  * ref: ", "
'N  * ref: "cnonce=" & """"
'N  * ref: """"
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
