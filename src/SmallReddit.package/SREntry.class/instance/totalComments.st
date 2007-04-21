accessing
totalComments
	^ self comments
		inject: 0
		into: [:sum :each | sum + each totalComments + 1]