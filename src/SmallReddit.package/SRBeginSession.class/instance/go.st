running
go
	"this is the root of this application, here the basic workflow is laid out as simple code rather than being spread across many components, this ability is unique to continuation based frameworks like Seaside.  Here I go into an endless loop until the user either logs in successfully or registers, then I move on to the main component"

	[self session user isNil] whileTrue: 
			[self session 
				user: (self call: (SRComposeComponents 
								list: (Array with: SRLogin new with: SRRegister new)))].
	self call: SRSmallRedditHome new