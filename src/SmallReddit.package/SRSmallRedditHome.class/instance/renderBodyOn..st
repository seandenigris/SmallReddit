rendering
renderBodyOn: html 
	((self pagedEntries)
		items: SREntry findAll;
		batch) do: [:each | self renderEntry: each on: html]