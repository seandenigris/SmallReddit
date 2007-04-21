rendering
renderBodyOn: html 
	"render the current batch of entries in reverse order from the repository using the canvase api, which is the correct api to use, despite all the outdated tutorials on the net.  The old api suffered from a combinatoial explosion of methods, this api mimics html tags directly and maps strait to html.  The canvas returns tags, tags have attributes set by cascading accessors, and tags are given content using the #with: method.  It's pretty much just that simple"
	
	(self pagedEntries items: SREntry repository reversed; batch)
		do: [:each | html div class: #entry;
				with: [html div class: #title;
						with: [html anchor url: each url; with: each title].
					html div class: #subtitle;
						with: [
							(self session user hasVotedOn: each) 
								"these actions are so trivial I did them inline instead of as seperate methods"
								ifFalse:[html anchor callback:[self session user likedIt: each]; with: ' + '.
										html anchor callback:[self session user hatedIt: each]; with: ' - '].
							html text: each submitter asString, ' ', (TimeStamp now - each createdOn) ago; text: ' '; text: each points;
								 text: ' points  '.
							each totalComments = 0
								ifTrue: [html anchor
										callback: [self addCommentTo: each];
										 with: 'add comment']
								ifFalse: [html anchor
										callback: [self viewCommentsOf: each];
										with: [html text: each totalComments; text: ' comments']]]]]