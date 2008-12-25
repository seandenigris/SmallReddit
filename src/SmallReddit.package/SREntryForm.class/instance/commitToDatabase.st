actions
commitToDatabase
	committedModel submitter: self session user.
	self session user likedIt: committedModel.
	committedModel save