input/output
showBoard: aStream

|tmp ind index first second res border|
index:=1.
ind := 1.

border:= self makeBorder.

res  := border clone.

tmp:= OrderedCollection new.

(1 to: y) do: [ :c |
		   
		tmp removeAll.
		
		[ind<(index+x)] whileTrue: [ 
			
			tmp add: (brd at: ind).
			ind:=ind+1. 
			
			].
		
		(index \\ 2 = 0) ifTrue: [ tmp := tmp reverse ].
		
		first:='|'.
		second:='|'.
		
		(1 to: x) do: [ :o |
			
			 first := (( tmp at: o ) printFirst: first ) .
			 second := (( tmp at: o ) printSecond:  second  ) .
			 index:= index + 1.
			 ].
		first:= first, String cr. 
		second := second , String cr.
		res :=  border, String cr, first, second, res.
		
	 ].

(winner = nil) ifFalse: [ 
	
		res:= res, String cr, 'Player ', winner name asString, ' won'. 
	
	 ].

aStream nextPutAll:  (res, String cr ).
^aStream 