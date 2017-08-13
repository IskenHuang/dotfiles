(*
## Goal
This script is make new calendar event to fantastical2 from things3 complete todos in 'Logbook' on specified date.
## How to use:
* Default is today
    * `$ osascript things-to-fantastical.applescript`
* The specified date
    * `$ osascript things-to-fantastical.applescript 2017/08/12`
*)
on run argv
    tell application "Things3"
        set todos to to dos of list "Logbook"
        set onDate to current date
        set shallArgv to item 1 of argv as text

        if shallArgv contains "/" then
            set onDate to date shallArgv as date
        end if

        set onDateString to "" & month of onDate & " " & day of onDate & " " & year of onDate as text

        repeat with todo in todos
            set myNote to notes of todo as text

            set query to "" & "'> " & name of todo & "' " & completion date of todo as text
            set title to "" & "'> " & name of todo & "' " & onDateString as text

            set calName to "Work" as text
            set myArea to area of todo
            set myAreaName to "" as text
            try
                set myAreaName to "" & name of myArea
            end try


            if myAreaName contains "Life" then
                set calName to "Life"
            end if

            if query contains onDateString then
                tell application "Fantastical 2" to parse sentence title notes myNote calendarName calName with add immediately
                delay 2.0
            end if
        end repeat
    end tell
end run


(*
tell application "Things3"
	set todos to to dos of list "Logbook"
	set result to "" as text
	repeat with todo in todos
        set result to result & "" & "'> " & name of todo & "' " & completion date of todo & linefeed
	end repeat
    return result
end tell
*)