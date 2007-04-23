accessing
hated
"return a copy of my hated to prevent someone from modifying
	me indirectly"
	^ (hated
		ifNil: [hated := OrderedCollection new]) copy