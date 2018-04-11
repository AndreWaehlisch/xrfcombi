# Microsoft Developer Studio Project File - Name="calscat" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=calscat - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "calscat.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "calscat.mak" CFG="calscat - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "calscat - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "calscat - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "calscat - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "calscat - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "calscat - Win32 Release"
# Name "calscat - Win32 Debug"
# Begin Source File

SOURCE=..\adapq.c
# End Source File
# Begin Source File

SOURCE=..\adapq.h
# End Source File
# Begin Source File

SOURCE=..\attilabda.c
# End Source File
# Begin Source File

SOURCE=..\bldatomd.c
# End Source File
# Begin Source File

SOURCE=..\bscatter.c
# End Source File
# Begin Source File

SOURCE=..\calcsxz.c
# End Source File
# Begin Source File

SOURCE=..\calscat.c
# End Source File
# Begin Source File

SOURCE=..\characwl.c
# End Source File
# Begin Source File

SOURCE=..\compdata.c
# End Source File
# Begin Source File

SOURCE=..\comptcrossmix.c
# End Source File
# Begin Source File

SOURCE=..\comptisesr.c
# End Source File
# Begin Source File

SOURCE=..\comptoninteg.c
# End Source File
# Begin Source File

SOURCE=..\convcomp.c
# End Source File
# Begin Source File

SOURCE=..\costerkr.c
# End Source File
# Begin Source File

SOURCE=..\define_smpl.c
# End Source File
# Begin Source File

SOURCE=..\edges.c
# End Source File
# Begin Source File

SOURCE=..\emutable.c
# End Source File
# Begin Source File

SOURCE=..\enhanc.c
# End Source File
# Begin Source File

SOURCE=..\ffstoresm.c
# End Source File
# Begin Source File

SOURCE=..\fotraylinteg.c
# End Source File
# Begin Source File

SOURCE=..\gen_spec.c
# End Source File
# Begin Source File

SOURCE=..\init_tables.c
# End Source File
# Begin Source File

SOURCE=..\intrasecflu.c
# End Source File
# Begin Source File

SOURCE=..\jmpedg.c
# End Source File
# Begin Source File

SOURCE=..\layerdata.c
# End Source File
# Begin Source File

SOURCE=..\linesms.c
# End Source File
# Begin Source File

SOURCE=..\lzero.c
# End Source File
# Begin Source File

SOURCE=..\mkbulklay.c
# End Source File
# Begin Source File

SOURCE=..\nkls.c
# End Source File
# Begin Source File

SOURCE=..\omega.c
# End Source File
# Begin Source File

SOURCE=..\pilabda.c
# End Source File
# Begin Source File

SOURCE=..\raylcrossmix.c
# End Source File
# Begin Source File

SOURCE=..\raylfotinteg.c
# End Source File
# Begin Source File

SOURCE=..\raylisesr.c
# End Source File
# Begin Source File

SOURCE=..\raylispfr.c
# End Source File
# Begin Source File

SOURCE=..\relrates.c
# End Source File
# Begin Source File

SOURCE=..\secfluij.c
# End Source File
# Begin Source File

SOURCE=..\selfattilabda.c
# End Source File
# Begin Source File

SOURCE=..\set_spectrom.c
# End Source File
# Begin Source File

SOURCE=..\xrfdefs.h
# End Source File
# Begin Source File

SOURCE=..\xrfluor.h
# End Source File
# End Target
# End Project
