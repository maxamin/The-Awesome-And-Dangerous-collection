Attribute VB_Name = "Oracle"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:21
Option Explicit 
 
'Sub Subr_653()
'N  * ref: __vbaExceptHandler
'N  * ref: "999999.9"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: " "
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_654()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "("
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: " from dual where "
'N  * ref: " 1=1"
'N  * ref: "x"
'N  * ref: "="
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_655()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "%String_Col%"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_656()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: "chr(126)||chr(39)||cast(SYS.DATABASE_NAME as char(100))||chr(39)||chr(126)"
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Current DB: "
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Current DB: "
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "Cannot get current db name!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_657()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarMove
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarCat
'N  * ref: "(select distinct chr(126)||chr(39)||cast(owner as char(50))||chr(39)||chr(126) from (select distinct rownum r,owner from all_tables)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
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
'N  * ref: "Data Base Found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Data Bases: "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select distinct chr(126)||chr(39)||cast(owner as char(50))||chr(39)||chr(126) from (select distinct rownum r,owner from all_tables)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
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
'N  * ref: "Data Base Found: "
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
'N  * ref: vbCrLf
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_658()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCopy
'N  * ref: "chr(126)||chr(39)||cast(sys.login_user as char(50))||chr(39)||chr(126)"
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
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
'N  * ref: __vbaVarCat
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "chr(126)||chr(39)||cast(SYS_CONTEXT('USERENV', 'ISDBA') as char(10))||chr(39)||chr(126)"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
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
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarCat
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select chr(126)||chr(39)||cast(banner as char(150))||chr(39)||chr(126) from v$version where banner like 'Oracle%25')"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
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
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarCat
'N  * ref: Subr_656
'N  * ref: __vbaFreeVar
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "chr(126)||chr(39)||cast(SYS_CONTEXT('USERENV', 'HOST') as char(50))||chr(39)||chr(126)"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
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
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select distinct chr(126)||chr(39)||cast(username as char(50))||chr(39)||chr(126) from (select distinct rownum r,username from all_users)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCmp
'N  * ref: "Db user found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
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
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrCmp
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select distinct chr(126)||chr(39)||cast(username as char(50))||chr(39)||chr(126) from (select distinct rownum r,username from all_users)where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Db user found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
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
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: Subr_657
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_659()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: "owner<>'SYS' and owner <>'SYSTEM' and owner<>'CTXSYS' and owner<>'WMSYS' and owner<>'MDSYS' and owner<>'OLAPSYS'"
'N  * ref: __vbaStrCopy
'N  * ref: "table_name"
'N  * ref: __vbaStrCopy
'N  * ref: "all_tables"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_662
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarMove
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select distinct chr(126)||chr(39)||cast(table_name as char(50))||chr(39)||chr(126) from (select distinct rownum r,table_name from all_tables where owner<>'SYS' and owner <>'SYSTEM' and owner<>'CTXSYS' and owner<>'WMSYS' and owner<>'MDSYS' and owner<>'OLAPSYS')where r="
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
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
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select distinct chr(126)||chr(39)||cast(table_name as char(50))||chr(39)||chr(126) from (select distinct rownum r,table_name from all_tables where owner<>'SYS' and owner <>'SYSTEM' and owner<>'CTXSYS' and owner<>'WMSYS' and owner<>'MDSYS' and owner<>'OLAPSYS')where r="
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
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
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_660()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: "table_name='"
'N  * ref: __vbaStrMove
'N  * ref: "'"
'N  * ref: "column_name"
'N  * ref: __vbaStrCopy
'N  * ref: "all_tab_columns"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_662
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarMove
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select chr(126)||chr(39)||cast(column_name as char(50))||chr(39)||chr(126) from (select rownum r,column_name from all_tab_columns where table_name='"
'N  * ref: "')where r="
'N  * ref: __vbaVarCat
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Column found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCmp
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(select chr(126)||chr(39)||cast(column_name as char(50))||chr(39)||chr(126) from (select rownum r,column_name from all_tab_columns where table_name='"
'N  * ref: __vbaStrCat
'N  * ref: "')where r="
'N  * ref: __vbaStrCat
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "Column found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarAdd
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_661()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_653
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: "null"
'N  * ref: "(select chr(126)||chr(39)||"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "||chr(39)||chr(126) from (select ROWNUM r, "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: " from "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: " order BY "
'N  * ref: ") where r="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
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
'N  * ref: __vbaStrCat
'N  * ref: "Data Found: "
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_662()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_653
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCat
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "null"
'N  * ref: "(select chr(126)||chr(39)||cast(Count("
'N  * ref: __vbaStrMove
'N  * ref: ") as char(10))||chr(39)||chr(126) from "
'N  * ref: ")"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
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
 
'Sub Subr_663()
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
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: Subr_653
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "(chr(126)||chr(39)||("
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: ")||chr(39)||chr(126))"
'N  * ref: __vbaStrCat
'N  * ref: Subr_153
'N  * ref: Subr_654
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
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
'End Sub
 
