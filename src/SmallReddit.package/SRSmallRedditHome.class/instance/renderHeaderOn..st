rendering
renderHeaderOn: html 
	html heading level1 with: 'Small Reddit'.
	html heading level3 with: 'A Seaside Sample Application'.
	self session user isNull 
		ifTrue: 
			[ html anchor 
				on: #register
				of: self.
			html text: ' | '.
			html anchor 
				on: #login
				of: self ]
		ifFalse: 
			[ html anchor 
				on: #submitArticle
				of: self.
			html text: ' | '.
			html anchor
				callback: [ self session user: nil ] ;
				with: 'Logout' ]