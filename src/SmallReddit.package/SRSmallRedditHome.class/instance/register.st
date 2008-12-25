actions
register
	(self call: SRRegisterForm new) ifNotNilDo: [ :user | self session user: user ]