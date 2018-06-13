rendering
renderHeaderOn: html 
	html heading level: 1; with: 'Small Reddit'.
	html heading level: 3; with: 'A Seaside Sample Application'.
	html anchor on: #submitArticle of: self