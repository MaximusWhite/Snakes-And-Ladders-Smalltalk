providedTests
testRead2
	Transcript clear;nextPutAll: 'testRead2';cr;flush.
	game readFrom: 'board 3 4
players 2
dice 1 2
turns 5'.
	self assert: (String streamContents: [: s | game printOn: s]) equals: '+---+---+---+
| 12| 11| 10|
|A  |B  |   |
+---+---+---+
|  7|  8|  9|
|   |   |   |
+---+---+---+
|  6|  5|  4|
|   |   |   |
+---+---+---+
|  1|  2|  3|
|   |   |   |
+---+---+---+
Player A won
'