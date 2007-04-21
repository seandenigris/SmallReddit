accessing metadata
descriptionBody
	^ (MAMemoDescription selector: #body label: 'Body' priority: 10) 
		beRequired; 
		yourself