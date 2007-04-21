*smallreddit
ago
	self days > 0
		ifTrue: [self days = 1
				ifTrue: [^ self days asString , ' day ago']
				ifFalse: [^ self days asString , ' days ago']].
	self hours > 0
		ifTrue: [self hours = 1
				ifTrue: [^ self hours asString , ' hour ago']
				ifFalse: [^ self hours asString , ' hours ago']].
	self minutes > 0
		ifTrue: [self minutes = 1
				ifTrue: [^ self minutes asString , ' minute ago']
				ifFalse: [^ self minutes asString , ' minutes ago']].
	self seconds = 1
		ifTrue: [^ self seconds asString , ' second ago'].
	^ self seconds asString , ' seconds ago'