logic
putPlayer: aPlayer at: index

  |current|

	current := brd at: index.
	
	(index = brd size) ifTrue: [ winner:= aPlayer  ].
	
	(current player isNil ) ifTrue: [ 
					
					(aPlayer  position = nil ) ifFalse: [self cleanCellAt: aPlayer position]. 
					
					current setPlayer: aPlayer. 
					
					] ifFalse: 
				
					[  self putPlayer: current player at: (index + 1 ).
						
					  	current setPlayer: aPlayer .
					 ].