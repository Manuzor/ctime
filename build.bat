@where.exe cl.exe > NUL 2>&1
@if %ERRORLEVEL% NEQ 0 (
    @echo cl.exe could not be found. Make sure your environment is setup correctly.
    @exit /b 1
)

cl -nologo -Ox -Zi ctime.c -Fdctime.pdb -link Winmm.lib
rm *.obj *.ilk
