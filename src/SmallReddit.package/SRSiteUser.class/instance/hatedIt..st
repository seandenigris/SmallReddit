actions
hatedIt: anArticle 
	anArticle removePoint.
	self hated; liked.
	(liked includes: anArticle) ifTrue: [liked remove: anArticle].
	hated add: anArticle