setup
players: args

| amount base players|

base:= $A asciiValue asNumber .
amount := args asOrderedCollection removeFirst asNumber.

players := OrderedCollection new.

(1 to: amount ) do: [ :index | 
	
	 players add: ((Player new)
		name: (Character value: (base + index  - 1)); 
		yourself).
			
	 ].

aBoard setupPlayers: players.