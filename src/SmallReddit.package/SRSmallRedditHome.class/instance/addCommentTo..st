actions
addCommentTo: anEntry 
	| comment |
	comment := self call: (SRCommentForm model: SRComment new).
	comment ifNotNil: 
		[ comment
			author: self session user;
			createdOn: DateAndTime now.
		anEntry
			addComment: comment;
			save ]