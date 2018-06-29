private
user

	^ user ifNil: [ user := SRSiteUser repository at: self userName ifAbsent: [ Error signal: 'Invalid username or password' ] ]