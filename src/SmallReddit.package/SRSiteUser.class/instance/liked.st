accessing
liked
	"return a copy of my liked to prevent someone from modifying
	me indirectly"
	^ (liked
		ifNil: [liked := OrderedCollection new]) copy