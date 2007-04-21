accessing
pagedEntries
	"lazily initialize a child component, a common thing to do when you have a real component based framework to work with"
	^pagedEntries ifNil:[pagedEntries := self defaultPager]