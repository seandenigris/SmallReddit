accessing
comments
	"return a copy of my comments to prevent someone from modifying
	me indirectly"
	^ (comments
		ifNil: [comments := OrderedCollection new]) copy