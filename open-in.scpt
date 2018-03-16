(*
 Open in any App
 To use:
  * Drag Open In App to the toolbar of any finder
  window to add it to the toolbar
*)

on run
	tell application "Finder"
		if selection is {} then
			set finderSelection to folder of the front window as string
		else
			set finderSelection to selection as alias list
		end if
	end tell
	
	openApp(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	openApp(theList)
end open

-- open in App (Terminal as an example)
on openApp(listOfAliases)
	tell application "Terminal"
		activate
		open listOfAliases
	end tell
end openApp
