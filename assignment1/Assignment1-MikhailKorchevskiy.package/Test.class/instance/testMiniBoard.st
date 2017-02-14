testing
testMiniBoard
game readFrom: 'board 2 1
players 2'.  
	Transcript print: game.
	self assert: game asString equals: '+---+---+
|  1|  2|
|B  |A  |
+---+---+
Player A won
'