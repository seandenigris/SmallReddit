initialization
initialize
	"self initialize"
	"it's a good idea to programatically create your application and it's configuration so it'll set itself up in any new image you load it into, you will get tired of doing this manually from /seaside/config"
	| app |
	app := self registerAsApplication: 'smallReddit'.
	app preferenceAt: #sessionClass put: SRSession.
	app libraries add: SULibrary