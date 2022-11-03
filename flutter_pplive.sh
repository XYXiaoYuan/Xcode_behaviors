#!/bin/sh
osascript <<END
tell application "iTerm"
if not (exists window 1) then reopen
activate
do script "cd `pwd`;cd pplive-flutter;flutter pub get;cd ../;pod update" in window 1
end tell
END
