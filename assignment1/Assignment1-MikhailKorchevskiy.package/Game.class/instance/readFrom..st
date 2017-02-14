input/output
readFrom: aStringArray

| parts line command parameters |


Transcript open; clear.
parts := aStringArray splitOn: Character cr.
				 
parts do: [ :each | 
	
	line := (each splitOn: ' ') asArray. 
	
	command := (line at: 1). 
	
	parameters := (line reject: [:e | e = command] ) asArray .
	
	command := command,':'.
	
	self perform: (command asSymbol) withArguments: (Array with: parameters) 	
	].

^ aStringArray