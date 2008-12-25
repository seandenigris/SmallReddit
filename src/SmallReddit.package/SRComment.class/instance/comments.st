accessing
comments
	^ (comments
		ifNil: [comments := OrderedCollection new]) copy