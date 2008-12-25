actions
validate
	super validate.
	self errors ifNotEmpty: [^ self].
	SRSiteUser find: 
		[ :each | 
		each userName = pendingModel userName and: [ each password = pendingModel password ] ]
		ifAbsent: [ self error: 'Inalid username or password' ]