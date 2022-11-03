#!/bin/sh
osascript <<END
tell application "Terminal"
if not (exists window 1) then reopen
activate
do script "cd `pwd`; cd pplive-flutter; fvm flutter clean; fvm use 2.5.2; fvm flutter pub get;cd ../; pod install" in window 1
end tell
END
