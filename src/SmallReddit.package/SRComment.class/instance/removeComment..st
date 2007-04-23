accessing collaboration
removeComment: aComment 
	"force my comments to lazy load before accessing inst var directly,
	since removing from a copy via the comments accessor won't work"
	self comments.
	^ comments remove: aComment