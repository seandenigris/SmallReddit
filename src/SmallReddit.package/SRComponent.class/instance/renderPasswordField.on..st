rendering
renderPasswordField: aField on: html
	html div
		class: #field;
		with: [ 
			html
				label: aField asCapitalizedPhrase;
				break.
			html passwordInput on: aField of: self ]