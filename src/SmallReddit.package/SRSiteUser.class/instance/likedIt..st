actions
likedIt: anArticle 
	anArticle addPoint.
	self liked; hated.
	(hated includes: anArticle) ifTrue: [hated remove: anArticle].
	liked add: anArticle