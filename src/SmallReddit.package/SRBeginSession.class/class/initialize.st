initialization
initialize
	"self initialize"
	"It's a good idea to programmatically register your application and it's configuration so it'll set itself up in any new image you load it into. Otherwise, you will get tired of doing this manually from /seaside/config!"
	| app |
	app := WAAdmin register: self asApplicationAt: 'smallReddit'.
	app preferenceAt: #sessionClass put: SRSession.
	app libraries add: SULibrary