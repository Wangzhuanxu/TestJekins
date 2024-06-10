
SET CUR_DIR=%CD%
set PROJ_PATH=%CUR_DIR%\projectTest
echo %PROJ_PATH%
set APK_TARGET_FOLDER="/Volumes/BAK/apk_test/"
set GRADLE_PATH="/opt/gradle-6.7.1/bin/gradle"
del /f /q "%CUR_DIR%\.git\index.lock"
cd %PROJ_PATH%


del /f /q "%CUR_DIR%\BundleVersions\*"


set IsRemoveScriptAssembleDirectory=true
SCRIPT_ASSEMBLE_PATH=%PROJ_PATH%\Library\ScriptAssemblies
echo %SCRIPT_ASSEMBLE_PATH%
if %IsRemoveScriptAssembleDirectory%=="true"(
	if exist "%SCRIPT_ASSEMBLE_PATH%"(
		echo %SCRIPT_ASSEMBLE_PATH%
		rmdir /s /q %SCRIPT_ASSEMBLE_PATH%
	)
)
else(
)


git checkout -- .
git clean -df
git fetch -p
git checkout $BRANCH
git pull

echo pullover
