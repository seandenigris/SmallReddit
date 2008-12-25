class initialization
initialize
	"self initialize"
	(self registerAsApplication: 'smallReddit')
		preferenceAt: #sessionClass put: SRSession;
		addLibrary: SULibrary