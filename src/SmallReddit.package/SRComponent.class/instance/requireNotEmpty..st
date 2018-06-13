validation
requireNotEmpty: aSelector
	(self perform: aSelector) isEmptyOrNil
		ifTrue: [ self errors add: aSelector asCapitalizedPhrase, ' is required.' ]