actions
addCommentTo: aCommentable 
	| comment |
	comment := self 
				call: ((SRComment descriptionBody asContainer asComponentOn: SRComment new) 
						addValidatedForm; addMessage: 'Submit Comment';yourself).
	comment ifNotNil: 
			[comment
				author: self session user;
				createdOn: DateAndTime now.
			aCommentable addComment: comment]