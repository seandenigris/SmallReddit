actions
login
	| user |
	self
		requireNotEmpty: #userName;
		requireNotEmpty: #password;
		ifNotValid: [^ self].
	
	[SRSiteUser repository at: self userName
		ifAbsent: [Error signal: 'Invalid username or password'].
	user := SRSiteUser repository at: self userName.
	self password = user password 
		ifFalse: [Error signal: 'Invalid username or password'].
	self answer: user] 
			on: Error
			do: [:error | self errors add: error messageText]