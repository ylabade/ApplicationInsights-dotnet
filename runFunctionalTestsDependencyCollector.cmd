@echo off
@setlocal enabledelayedexpansion enableextensions

set BuildRoot=%~dp0..\bin\Release\
set VSTestPath=%PROGRAMFILES(x86)%\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe

CALL "%VSTestPath%" /UseVsixExtensions:true "%BuildRoot%Test\E2ETests\E2ETests\DependencyCollectionTests.dll" /TestCaseFilter:"TestCategory=Core20" /logger:trx

CALL "%VSTestPath%" /UseVsixExtensions:true "%BuildRoot%Test\E2ETests\E2ETests\DependencyCollectionTests.dll" /TestCaseFilter:"TestCategory=Net452OnNet462" /logger:trx

CALL "%VSTestPath%" /UseVsixExtensions:true "%BuildRoot%Test\E2ETests\E2ETests\DependencyCollectionTests.dll" /TestCaseFilter:"TestCategory=Net452OnNet462SM" /logger:trx

PAUSE
