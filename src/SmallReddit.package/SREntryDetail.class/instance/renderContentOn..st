rendering
renderContentOn: html 
	super renderContentOn: html.
	html
		heading level1 with: [html anchor url: self entry url;
				 with: self entry title].
		html anchor on: #back of: self.
	self entry comments
		do: [:each | self renderCommentsFor: each on: html]