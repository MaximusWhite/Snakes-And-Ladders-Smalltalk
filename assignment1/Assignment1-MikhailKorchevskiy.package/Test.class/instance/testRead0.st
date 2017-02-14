providedTests
testRead0
	game readFrom: 'board 3 4
players 3'.
	self assert: (String streamContents: [: s | game printOn: s]) equals: '+---+---+---+
| 12| 11| 10|
|   |   |   |
+---+---+---+
|  7|  8|  9|
|   |   |   |
+---+---+---+
|  6|  5|  4|
|   |   |   |
+---+---+---+
|  1|  2|  3|
|C  |B  |A  |
+---+---+---+
'