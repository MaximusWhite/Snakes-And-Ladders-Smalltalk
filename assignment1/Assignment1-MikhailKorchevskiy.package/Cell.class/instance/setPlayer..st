setup
setPlayer: aPlayer

player := aPlayer.

(player isNil ) ifFalse: [
	
	player position: index. 
	
	(special isNil) ifFalse: [ 
	

			
			(special type asString = 'a') ifTrue: [ 
						
						player switchAntivenom.
					
				 ] ifFalse: [ 
				
				
						(special type asString = 'd') ifTrue: [ 
						
						player switchDouble .
						] ifFalse: [ 
					
							(special type asString = 'e' ) ifTrue: [player switchEscalator] .
						 ].
				
				 ].
	

		].
	] .