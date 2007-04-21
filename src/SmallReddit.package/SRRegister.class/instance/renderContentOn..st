rendering
renderContentOn: html 
html heading: 'Register' level: 1.
	super renderContentOn: html.
	html
		form: [self renderField: #userName on: html.
			self renderPasswordField: #password on: html.
			html submitButton on: #register of: self]