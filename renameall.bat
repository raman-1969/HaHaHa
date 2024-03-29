@echo off
rem 本文件可将所在文件夹中，所有带'参数1'的文件名批量改为'参数2'
rem 运行方式：renameall 参数1 参数2

setlocal enabledelayedexpansion

set "old=%1"
set "new=%2"

if not defined old (
    echo 运行方式：renameall 参数1 参数2
    goto :eof
)

for %%i in (*!old!*) do (
    set "filename=%%i"
    set "newfilename=!filename:%old%=%new%!"
    ren "!filename!" "!newfilename!"
		if errorlevel 1 (
		    echo !filename! 更名失败。
		) else (
		    echo !filename! 已更名为 !newfilename!
		)
)

endlocal 
 