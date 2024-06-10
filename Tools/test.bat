
SET CUR_DIR=%CD%
SET PROJ_PATH=%CUR_DIR%\projectTest
ECHO %PROJ_PATH%
SET APK_TARGET_FOLDER="/Volumes/BAK/apk_test/"
SET GRADLE_PATH="/opt/gradle-6.7.1/bin/gradle"

IF EXIST "%CUR_DIR%\.git\index.lock" (
    DEL /f /q "%CUR_DIR%\.git\index.lock"
) ELSE (
    ECHO git not exist
)

CD %PROJ_PATH%

DEL /f /q "%CUR_DIR%\BundleVersions\*"

SET IsRemoveScriptAssembleDirectory=true
SET SCRIPT_ASSEMBLE_PATH=%PROJ_PATH%\Library\ScriptAssemblies
ECHO %SCRIPT_ASSEMBLE_PATH%
IF "%IsRemoveScriptAssembleDirectory%"=="true" (
    IF EXIST "%SCRIPT_ASSEMBLE_PATH%" (
        ECHO %SCRIPT_ASSEMBLE_PATH%
        RMDIR /s /q "%SCRIPT_ASSEMBLE_PATH%"
    )
)


REM git checkout -- .
REM git clean -df
REM git fetch -p
REM git checkout $BRANCH
REM git pull

echo pullover
