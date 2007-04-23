actions
likedIt: anArticle 
	anArticle addPoint.
	"force my liked to lazy load before accessing inst var directly,
	since adding to a copy via the liked accessor won't work"
	self liked.
	liked add: anArticle