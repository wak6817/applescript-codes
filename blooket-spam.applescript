set blooketID to text returned of (display dialog "Enter Blooket ID:" default answer "")
set repeatCount to text returned of (display dialog "Enter times:" default answer "1")

tell application "Firefox Developer Edition"
	activate
end tell

repeat with i from 1 to (repeatCount as integer)
	
	tell application "System Events"
		keystroke "t" using {command down}
	end tell
	
	open location "https://play.blooket.com/play?id=" & blooketID
	
	tell application "Firefox Developer Edition"
		activate
	end tell
	
	delay 1.0
	
	tell application "System Events"
		keystroke "bot " & (i as string)
		key code 36
	end tell
end repeat
