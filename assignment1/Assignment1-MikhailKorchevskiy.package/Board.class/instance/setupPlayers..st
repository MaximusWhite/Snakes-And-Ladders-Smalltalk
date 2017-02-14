setup
setupPlayers: playerList
	
	players := playerList .
	playerList do: [ :p |
		
		self putPlayer: p at: 1.
		 
		].