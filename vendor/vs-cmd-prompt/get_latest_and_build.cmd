ECHO OFF
cls
set PATH="C:\Program Files (x86)\Google\Chrome\Application";%PATH%
taskkill /IM MSBUILD.EXE*32 /F
tf get . /recursive /force /all 
go build
taskkill /IM MSBUILD.EXE*32 /F
start chrome.exe
chrome.exe "%CD%\TestResults\Hps.PinDebit.AdjustmentWriter.Impl.Tests-results.html"
chrome.exe "%CD%\TestResults\Hps.PinDebit.ExportCommon.Impl.Tests-results.html"
chrome.exe "%CD%\TestResults\Hps.PinDebit.FiservImportEngine.Implementation.Tests-results.html"
chrome.exe "%CD%\TestResults\Hps.PinDebit.ProviderFileImportManager.Implementation.Tests-results.html"
chrome.exe "%CD%\TestResults\Hps.PinDebit.TxnReconManager.Implementation.Tests-results.html"