accessing metadata
descriptionBody
"Answer a Magritte description for automatic creation of forms etc."
	^ (MAMemoDescription
		selector: #body
		label: 'Body'
		priority: 10) beRequired; yourself