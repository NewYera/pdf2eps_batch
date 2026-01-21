:: $Id: pdf2eps,v 0.01 2005/10/28 00:55:46 Herbert Voss Exp $
:: pdf2eps_all Batch file by NewYera <https://github.com/NewYera/> 2026/01/21
:: Batch convert PDF to encapsulated PostScript.
:: usage:
:: pdf2eps_all.bat <page number>
@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: 用法:
::   pdf2eps_all.bat [page]
::   默认页码为 1

set "PAGE=%~1"
if "%PAGE%"=="" set "PAGE=1"

for %%F in (*.pdf) do (
    set "PDF=%%~fF"
    set "BASE=%%~dpnF"

    echo Processing: %%~nxF  (page %PAGE%)

    pdfcrop "!PDF!"
    pdftops -f %PAGE% -l %PAGE% -eps "!BASE!-crop.pdf"
    erase "!BASE!-crop.pdf"
    move /Y "!BASE!-crop.eps" "!BASE!.eps"
)

echo Done.
endlocal