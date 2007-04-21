actions
submitArticle
	| article |
		"dynamically generate a seaside editor component for a comment by using the Magritte meta framework"
	article := self call: ((SREntry descriptionTitle , SREntry descriptionUrl asComponentOn: SREntry new)
		addValidatedForm addMessage: 'Submit New Article').

	"if magritte returns an actual object, we know the object was updated successfully, so we'll add it to the article repository"
	article
		ifNotNil: [
			article submitter: self session user.
			SREntry repository add: article]