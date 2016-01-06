::gets the status of uncommitted items that should be marked for commits to TFS
cls
del /S /Q build
tf status .  /recursive  /format:brief