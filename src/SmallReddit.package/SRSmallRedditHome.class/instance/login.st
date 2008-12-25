actions
login
	(self call: SRLoginForm new) ifNotNilDo: [ :user | self session user: user ]