accessing
pagedEntries
	^ pagedEntries ifNil: [ pagedEntries := self defaultPager ]