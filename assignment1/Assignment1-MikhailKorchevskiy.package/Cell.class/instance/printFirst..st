output
printFirst: aString

	|spacing len|
	
	len := index asString size. 
	spacing:=''.
	( len < 3 ) ifTrue: [ 
			
			(1 to: (3-len) ) do: [ :o | 
				
				spacing:=spacing,' '.
				
			].
	 ].
	
	
	
^  aString, spacing, index asString, '|'