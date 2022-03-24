#!/usr/bin/osascript

# <bitbar.title>zoomShareScreenState</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>nickjvturner</bitbar.author>
# <bitbar.author.github>nickjvturner</bitbar.author.github>
# <bitbar.desc>Zoom Share Screen State</bitbar.desc>
# <bitbar.image>http://www.hosted-somewhere/pluginimage</bitbar.image>
# <bitbar.dependencies>Applescript</bitbar.dependencies>
# <bitbar.abouturl>http://url-to-about.com/</bitbar.abouturl>

# <swiftbar.hideAbout>true</swiftbar.hideAbout>
# <swiftbar.hideRunInTerminal>true</swiftbar.hideRunInTerminal>
# <swiftbar.hideLastUpdated>true</swiftbar.hideLastUpdated>
# <swiftbar.hideDisablePlugin>true</swiftbar.hideDisablePlugin>
# <swiftbar.hideSwiftBar>false</swiftbar.hideSwiftBar>

property btnTitle : "Start Share"

if application "zoom.us" is running then
	tell application "System Events"
		tell application process "zoom.us"
			if exists (menu bar item "Meeting" of menu bar 1) then
				if exists (menu item btnTitle of menu 1 of menu bar item "Meeting" of menu bar 1) then
					set returnValue to ""
				else
					set returnValue to "SCREEN SHARE ACTIVE"
				end if
			else
				set returnValue to ""
			end if
		end tell
	end tell
else
	set returnValue to ""
end if

return returnValue & "| size=18
---
zoomScreenShareState"
