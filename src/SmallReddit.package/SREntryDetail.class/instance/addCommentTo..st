actions
addCommentTo: aCommentable 
	| comment |
	comment := self call: (SRCommentForm model: SRComment new).
	comment ifNotNil: 
		[ comment author: self session user.
		aCommentable addComment: comment.
		entry save ]