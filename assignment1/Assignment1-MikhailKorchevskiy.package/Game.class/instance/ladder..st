setup
ladder: coordinates

		| start end cpy |
		
		cpy := coordinates asOrderedCollection copy.
		start:= cpy removeFirst .
		end := cpy removeFirst .
		
		aBoard newSpecial: (Powerup new initialize: 'L' end: end asNumber  ) at: start asNumber. 
		 

^self  