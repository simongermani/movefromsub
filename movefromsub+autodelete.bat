pushd
	for /r %%a in (*) do (
	 MOVE "%%a"
	)
	popd
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
(goto) 2>nul & del "%~f0"