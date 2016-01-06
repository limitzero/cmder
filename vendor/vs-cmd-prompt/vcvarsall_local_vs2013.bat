@SET VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio 12.0
@SET VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio 12.0\VC
@SET FrameworkDir=C:\WINDOWS\Microsoft.NET\Framework64
@SET FrameworkVersion=v4.0.30319
@SET FrameworkSDKDir=C:\Program Files (x86)\Microsoft Visual Studio 12.0\SDK\v3.5
@if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
@if "%VCINSTALLDIR%"=="" goto error_no_VCINSTALLDIR

@echo Setting environment for using Microsoft Visual Studio 2013 x86/x64 tools (with TFS support).

@rem
@rem Root of Visual Studio IDE installed files.
@rem
@set DevEnvDir=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE

@set PATH=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE;C:\Program Files\Microsoft Visual Studio 12.0\VC\BIN;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\PlatformSDK\bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\SDK\v3.5\bin;C:\WINDOWS\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\VCPackages;C:\Program Files (x86)\Microsoft SDKs\Windows\v8.0A\bin\NETFX 4.0 Tools;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE;C:\repositories\cmder\cmder-master\vendor\vs-cmd-prompt;%PATH%
@set INCLUDE=C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\ATLMFC\INCLUDE;C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\INCLUDE;%INCLUDE%
@set LIB=C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\ATLMFC\LIB;C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\LIB;%LIB%
@set LIBPATH=C:\WINDOWS\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\ATLMFC\LIB

@goto end

:error_no_VSINSTALLDIR
@echo ERROR: VSINSTALLDIR variable is not set. 
@goto end

:error_no_VCINSTALLDIR
@echo ERROR: VCINSTALLDIR variable is not set. 
@goto end

:end