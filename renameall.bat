rem 本文件可将所在文件夹中，所有带'2022'的文件名批量改为'2023'
@echo off
setlocal enabledelayedexpansion

for %%i in (*2022*) do (
  set "filename=%%i"
  set "newfilename=!filename:2022=2023!"
  ren "!filename!" "!newfilename!"
	if errorlevel 1 (
	    echo !filename! 更名失败。
	) else (
	    echo !filename! 已更名为 !newfilename!
	)
)

endlocal