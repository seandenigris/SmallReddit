rendering
renderContentOn: html
	html heading level: 1; with: 'Register'.
	super renderContentOn: html.
	html
		form: [ self renderField: #userName on: html.
			self renderPasswordField: #password on: html.
			html submitButton on: #register of: self ]