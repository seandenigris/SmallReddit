rendering
renderEntryTitle: each on: html 
	(html div)
		class: #title;
		with: 
				[each url ifNil: 
						[(html anchor)
							callback: [self viewCommentsOf: each];
							with: each title]
					ifNotNil: 
						[(html anchor)
							url: each url;
							with: each title]]