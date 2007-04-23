accessing collaboration
addComment: aComment 
	"force my comments to lazy load before accessing inst var directly,
	since adding to a copy via the comments accessor won't work"
	self comments.
	^ comments add: aComment