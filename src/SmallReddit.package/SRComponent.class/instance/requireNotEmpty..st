validation
requireNotEmpty: aSelector 
	(self perform: aSelector)
		ifEmptyOrNil: [self errors add: aSelector asCapitalizedPhrase , ' is required.']