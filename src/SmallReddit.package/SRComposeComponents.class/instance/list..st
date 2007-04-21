accessing
list: someComponents 
	"a common thing to do with subcomponents is to intercept their answers and do something with their values, here I'm saying whichever component answers, just answer its value from this components answer"
	
	someComponents do: [:each | each
		onAnswer: [:value | self answer: value]].
	list := someComponents