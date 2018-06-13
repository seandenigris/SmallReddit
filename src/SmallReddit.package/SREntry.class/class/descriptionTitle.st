accessing metadata
descriptionTitle
	^ MAStringDescription new
			accessor: #title;
			label: 'Title';
			priority: 10;
			beRequired;
			yourself