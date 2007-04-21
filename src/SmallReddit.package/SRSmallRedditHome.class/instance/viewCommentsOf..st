actions
viewCommentsOf: anEntry
	"the detail page with threaded comments is complex enough to be its own component, so we call it replacing the current screen with this one.  When the detail screen answers, we'll come back to this screen"
	
	self call: (SREntryDetail on: anEntry)