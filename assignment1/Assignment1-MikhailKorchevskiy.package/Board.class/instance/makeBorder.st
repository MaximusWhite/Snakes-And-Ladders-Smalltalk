setup
makeBorder

| result chunk |

result := '+'.
chunk:='---+'. 
(1 to: x) do: [ :o |
	
	result := result, chunk.
	
	 ].

^ result 