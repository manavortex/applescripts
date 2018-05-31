tell application "Adobe Photoshop CC 2017"
 	
 	set docRef to current document
 	tell docRef
 		set layerName to name of current layer as string
 		set newLayerName to ""
 		set Wordlist to words of layerName
 		set numWords to length of Wordlist
 		repeat with a from numWords to numWords
 			set theCurrentListItem to item a of Wordlist
 			set item a of Wordlist to ((theCurrentListItem as number) + 1) as string
 		end repeat
 		set Separator to ""
 		repeat with a from 1 to numWords
 			set newLayerName to newLayerName & Separator & item a of Wordlist
 			set Separator to " "
 		end repeat
 		set newLayer to make new art layer before current layer with properties {name:newLayerName}
 	end tell
end tell
