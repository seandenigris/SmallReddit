actions
addCommentTo: aCommentable 
	"this is a controller method and unlike most framworks, paramaters are passed to controllers from the views as actual objects, not a request hash from a form post."
	
	| comment |
	"dynamically generate a seaside editor component for a comment by using the Magritte meta framework"
	comment := self 	call: ((SRComment descriptionBody asContainer asComponentOn: SRComment new)
		addValidatedForm addMessage: 'Submit Comment').
	
	"if magritte returns an actual object, we know the object was updated successfully, so we'll set the author to the currently logged in user and add the comment to the commentable object, which could be either an entry or another comment"
	comment ifNotNil: 
		[comment author: self session user.
		aCommentable addComment: comment]