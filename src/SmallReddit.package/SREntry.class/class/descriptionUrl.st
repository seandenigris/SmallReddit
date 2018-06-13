accessing metadata
descriptionUrl
	^ MAStringDescription new
			accessor: #url;
			label: 'Url';
			priority: 1000;
			beRequired;
			yourself