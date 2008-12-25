actions
voteUpFor: anEntry 
	self session user
		likedIt: anEntry;
		save