providedTests
testRead3
	game readFrom: 'board 3 4
players 2
dice 1 2 2 2 2
ladder 5 11
snake 8 4
turns 5'.
	self assert: (String streamContents: [: s | game printOn: s]) equals: '+---+---+---+
| 12| 11| 10|
|B  |   |   |
+---+---+---+
|  7|  8|  9|
|   |  S|   |
+---+---+---+
|  6|  5|  4|
|   |  L|A  |
+---+---+---+
|  1|  2|  3|
|   |   |   |
+---+---+---+
Player B won
'