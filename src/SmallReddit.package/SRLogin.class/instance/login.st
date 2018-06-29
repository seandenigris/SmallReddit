actions
login
	self
		requireNotEmpty: #userName;
		requireNotEmpty: #password;
		ifNotValid: [ ^ self ].
		
	[ self validatePassword.
		self session user: self user.
		self answer ]
			on: Error
			do: [ :error | self errors add: error messageText ]