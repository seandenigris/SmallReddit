rendering
renderContentOn: html 
	super renderContentOn: html.
	html
		heading: [html anchor url: self entry url;
				 with: self entry title]
		level: 1.
		html anchor on: #back of: self.
	self entry comments
		do: [:each | self renderCommentsFor: each on: html]