persistence
repository
"Answer a global repository for storing instances in the image."
	^ repository
		ifNil: [repository := self defaultRepository new]