rendering
renderCommentsFor: aComment on: html 
	html div class: #comment;
		
		with: [
			html div: aComment author asString, ' ', (TimeStamp now - aComment createdOn) ago.
			html text: aComment body.
			html div:[
			html anchor
				callback: [self addCommentTo: aComment];
				 with: 'reply'].
			aComment comments
				do: [:each | self renderCommentsFor: each on: html]]