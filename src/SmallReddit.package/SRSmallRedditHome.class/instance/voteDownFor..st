actions
voteDownFor: anEntry 
	self session user
		hatedIt: anEntry;
		save