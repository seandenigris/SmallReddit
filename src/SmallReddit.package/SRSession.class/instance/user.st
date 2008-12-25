accessing
user
	^ user ifNil: [ user := SRSiteUserNull new ]