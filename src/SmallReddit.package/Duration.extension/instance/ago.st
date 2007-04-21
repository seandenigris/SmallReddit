*smallreddit
ago
	self minutes < 1 ifTrue:[^self seconds asString, ' seconds ago'].
	self minutes < 2 ifTrue:[^self minutes asString, ' minute ago'].
	self hours < 1 ifTrue:[^self minutes asString, ' minutes ago'].
	self hours < 2 ifTrue:[^self hours asString, ' hour ago'].
	self days < 1 ifTrue:[^self hours asString, ' hours ago'].
	self days < 2 ifTrue:[^self days asString, ' day ago'].
	^self days asString, ' days ago'