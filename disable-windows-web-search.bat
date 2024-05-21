:: Disables windows start menu web search which can improve performance and precision

:: Sets the title of the window
title Disable windows web search

:: Disables sticky keys (might affect multiple settings)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

:: Restart to make changes effective
echo Some settings need a restart to be applied.
echo Close this window to restart manually later.
echo Press any key to schedule a restart now.
pause > nul
shutdown /R /T 5 /C "Scheduled restart to apply changes (restart in 5 seconds)"
