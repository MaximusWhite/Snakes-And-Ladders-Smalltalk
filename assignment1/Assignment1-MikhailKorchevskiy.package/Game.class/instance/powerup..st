setup
powerup: args 

	| type |
	
	type := args asOrderedCollection removeFirst asString first.

	(2 to: args size) do: [ :e |
		
		aBoard newSpecial: ( Powerup new initialize: type) at: (args at: e) asNumber .  
		
		 ].


^self