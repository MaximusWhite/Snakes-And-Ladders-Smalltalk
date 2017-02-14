output
printSecond: aString
	
	| c1 c2 c3 |
	 
	(player isNil) ifTrue: [ c1:= ' ' ] ifFalse: [ c1:= player name asString ].
	
	 (special isNil) ifTrue: [ c2:=' '. c3:=' '. ] ifFalse: [ 
		    
		       (special type = 'L' ) ifTrue: [ 
			             
			             c2:=' '.
			             c3:= 'L'.
			    ] ifFalse: [ 
			
			        (special type = 'S' ) ifTrue: 
			
							[ 
							
								  c2:=' '.
			             		  c3:= 'S'.
							
							 ] ifFalse: [ 
							
								 c2:= special type asString .
			             		 c3:= ' '.
							
							 ] 
			
			    ]
	
		 ]. 
	 	
^  aString, c1, c2, c3, '|'