logic
popDice

	|val|
	
	(diceCpy isEmpty ) ifTrue: [ diceCpy := dice copy. ].
	
	val:= diceCpy removeFirst asNumber.
	

^ val