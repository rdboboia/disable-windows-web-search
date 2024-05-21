:: Disables windows start menu web search which can improve performance and precision

:: Sets the title of the window
title Disable windows web search

:: Disables sticky keys (might affect multiple settings)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

:: Sets the restart required flag
set restartRequired=1