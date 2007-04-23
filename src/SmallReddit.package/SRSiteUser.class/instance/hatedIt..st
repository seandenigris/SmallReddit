actions
hatedIt: anArticle 
	anArticle removePoint.
	"force my hated to lazy load before accessing inst var directly,
	since adding to a copy via the hated accessor won't work"
	self hated.
	hated add: anArticle