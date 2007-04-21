actions
register
	self
		requireNotEmpty: #userName;
		requireNotEmpty: #password;
		ifNotValid: [^ self].
	
	[SRSiteUser repository at: self userName
		ifPresent: [:user | Error signal: 'User already exists'].
	SRSiteUser repository at: self userName
		put: (SRSiteUser userName: self userName password: self password).
	self answer: (SRSiteUser repository at: self userName)] 
			on: Error
			do: [:error | self errors add: error messageText]