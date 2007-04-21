persistence
repository
	^ repository
		ifNil: [repository := self defaultRepository new]