logic
turns: aNumber

	turns := aNumber asOrderedCollection removeFirst asNumber.
	
	(1 to: turns) do: [ :o |
		
		aBoard executeTurn.
		
		 ].

^self 