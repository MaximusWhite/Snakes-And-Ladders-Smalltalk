providedTests
testRead1
	game readFrom: 'board 3 4
players 2
dice 1
turns 4'.
	self assert: (String streamContents: [: s | game printOn: s]) equals: '+---+---+---+
| 12| 11| 10|
|   |   |   |
+---+---+---+
|  7|  8|  9|
|   |   |   |
+---+---+---+
|  6|  5|  4|
|A  |B  |   |
+---+---+---+
|  1|  2|  3|
|   |   |   |
+---+---+---+
'