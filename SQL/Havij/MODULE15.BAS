Attribute VB_Name = "PostgreSQL"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:30
Option Explicit 
 
'Sub Subr_706()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeVarList
'N  * ref: "chr(126)||chr(39)||(select datname from pg_database limit 1 offset "
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Database: "
'N  * ref: Subr_143
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Database: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
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
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_707()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: "user"
'N  * ref: __vbaStrMove
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "Current User: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Current User: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: "version()"
'N  * ref: __vbaStrCat
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
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
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_705
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: "current_setting('port')"
'N  * ref: __vbaStrCat
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "Port: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Port: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: "current_setting('config_file')"
'N  * ref: __vbaStrCat
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "Config File: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Config File: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: "current_setting('data_directory')"
'N  * ref: __vbaStrCat
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "Data Dir: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Data Dir: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarMove
'N  * ref: "chr(126)||chr(39)||(select usename from pg_user limit 1 offset "
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "Db User: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB User: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: Subr_706
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_708()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaOnError
'N  * ref: __vbaVarMove
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "r"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_704
'N  * ref: "pg_catalog"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_704
'N  * ref: "pg_toast"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_704
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "chr(126)||chr(39)||(select c.relname from "
'N  * ref: "pg_catalog.pg_class c LEFT JOIN "
'N  * ref: "pg_catalog.pg_namespace n ON n.oid = c.relnamespace where c.relkind IN ("
'N  * ref: ",Null) and n.nspname NOT IN ("
'N  * ref: ", "
'N  * ref: ") and "
'N  * ref: "pg_catalog.pg_table_is_visible(c.oid) limit 1 offset "
'N  * ref: ")||chr(39)||chr(126)"
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
'N  * ref: __vbaStrMove
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
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_709()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_704
'N  * ref: "r"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_704
'N  * ref: "public"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_704
'N  * ref: "chr(126)||chr(39)||(select A.attname from "
'N  * ref: "pg_class C, "
'N  * ref: "pg_namespace N, "
'N  * ref: "pg_attribute A, "
'N  * ref: "pg_type T where relname="
'N  * ref: " and (C.relkind="
'N  * ref: ") and (N.oid=C.relnamespace) and (A.attrelid=C.oid) and (A.atttypid=T.oid) and (A.attnum>0) and (NOT A.attisdropped) and (N.nspname ILIKE "
'N  * ref: ") limit 1 offset "
'N  * ref: ")||chr(39)||chr(126)"
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
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: "Column found: "
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
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_710()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaStrCmp
'N  * ref: IsArray(
'N  * ref: ",0x5e,"
'N  * ref: __vbaVarDup
'N  * ref: ",0x3545,"
'N  * ref: IIf(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCat
'N  * ref: ","
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "chr(126)||chr(39)||(select "
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: " from "
'N  * ref: " limit 1 offset "
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaVarCat
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
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "~'(.*?)'~"
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_188
'N  * ref: "Data Found: "
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_711()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: __vbaStrCat
'N  * ref: "chr(126)||chr(39)||(select count("
'N  * ref: __vbaStrMove
'N  * ref: ") from "
'N  * ref: __vbaStrMove
'N  * ref: ")||chr(39)||chr(126)"
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
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaFpI4
'N  * ref: __vbaFreeStr
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Count("
'N  * ref: __vbaStrMove
'N  * ref: ") of "
'N  * ref: " is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Can not get Count("
'N  * ref: __vbaStrMove
'N  * ref: ") of "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_712()
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
'N  * ref: "chr(126)||chr(39)||("
'N  * ref: __vbaStrCat
'N  * ref: ")||chr(39)||chr(126)"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "~'(.*?)'~"
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: "Query result: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: ";"
'N  * ref: "--"
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
 
'Sub Subr_713()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " "
'N  * ref: " "
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " "
'N  * ref: " "
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_714()
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
 
