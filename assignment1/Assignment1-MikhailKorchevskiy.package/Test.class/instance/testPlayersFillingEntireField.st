testing
testPlayersFillingEntireField
	game readFrom: 'board 3 4
players 12
dice 1 2 2 2 2
ladder 5 11
snake 8 4
powerup escalator 6 9
powerup antivenom 7
powerup double 4
turns 10'.
	Transcript print: game.
	self assert: game asString equals: '+---+---+---+
| 12| 11| 10|
|A  |B  |C  |
+---+---+---+
|  7|  8|  9|
|Fa |E S|De |
+---+---+---+
|  6|  5|  4|
|Ge |H L|Id |
+---+---+---+
|  1|  2|  3|
|L  |K  |J  |
+---+---+---+
Player A won
'