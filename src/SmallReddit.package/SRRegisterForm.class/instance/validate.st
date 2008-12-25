actions
validate
	super validate.
	self errors ifNotEmpty: [^ self].
	SRSiteUser 
		find: [ :each | each userName = self userName ]
		ifPresent: [ self error: 'User already exists' ]