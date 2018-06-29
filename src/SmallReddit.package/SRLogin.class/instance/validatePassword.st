private
validatePassword
	self password = self user password ifFalse: [ Error signal: 'Invalid username or password' ].