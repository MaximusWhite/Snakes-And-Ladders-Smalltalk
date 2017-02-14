logic
executeTurn

		| die currentPlayer initial final |
		(winner = nil ) ifFalse: [ ^self ].
		
		(1 to: players size) do: [ :o |
				
				currentPlayer := players at: o.
				initial := currentPlayer position asNumber.
				
				die:= self popDice.
				
				(currentPlayer d asString = 'y') ifTrue: [ 
					
					die := die * 2. 
					
					currentPlayer switchDouble ]. 		
						
				final:= initial + die.	
				
				(final >= brd size) ifTrue: [ winner := currentPlayer.  	"CURRENT PLAYER WON"
						
					self cleanCellAt: currentPlayer position.
					
					(brd at: brd size) setPlayer: currentPlayer .
	
					^self.
					
					 ]
				
				ifFalse: [  	"CURRENT PLAYER DIDN'T WIN"
						
										((brd at: final) getSpecial isNil) ifFalse: [
					
				 	((brd at: final) getSpecial type asString = 'L' )  ifTrue: [ 
								
								 (currentPlayer e asString = 'y') ifTrue: [ 
											
											final:= ((brd at: final) getSpecial end asNumber - final) * 2.
										    currentPlayer switchEscalator .
									
									 ] ifFalse: [  
									
											final:= (brd at: final) getSpecial end asNumber .
									
									].
						
						 ] ifFalse: [ 
						
						
								((brd at: final) getSpecial type asString = 'S' )  ifTrue: [ 
									
									 (currentPlayer a asString = 'y') ifTrue: [ 
											
											   currentPlayer switchAntivenom .
									
									 ] ifFalse: [  
									
											final:= (brd at: final) getSpecial end.
									
									].
									
									
									
							 ].
						
						
						 ].
					 	
				].
								
						
				self cleanCellAt: currentPlayer position.		
						
				self putPlayer: currentPlayer at: final.
				
				self checkWin.
				
				].
			
			 ].
