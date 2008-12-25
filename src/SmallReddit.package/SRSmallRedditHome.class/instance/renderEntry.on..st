rendering
renderEntry: each on: html 
	(html div)
		class: #entry;
		with: 
				[self renderEntryTitle: each on: html.
				(html div)
					class: #subtitle;
					with: 
							[self session user isNull 
								ifFalse: 
									[(self session user liked includes: each) 
										ifTrue: [html text: ' + ']
										ifFalse: 
											[(html anchor)
												callback: [self voteUpFor: each];
												with: ' + '].
									(self session user hated includes: each) 
										ifTrue: [html text: ' - ']
										ifFalse: 
											[(html anchor)
												callback: [self voteDownFor: each];
												with: ' - ']].
							html
								text: each submitter displayString , ' ' 
											, (DateAndTime now - each createdOn) ago;
								text: ' ';
								text: each points;
								text: ' points  '.
							self session user isNull 
								ifFalse: 
									[each totalComments = 0 
										ifTrue: 
											[(html anchor)
												callback: [self addCommentTo: each];
												with: 'discuss']
										ifFalse: 
											[(html anchor)
												callback: [self viewCommentsOf: each];
												with: 
														[html
															text: each totalComments;
															text: ' comments']]]]]