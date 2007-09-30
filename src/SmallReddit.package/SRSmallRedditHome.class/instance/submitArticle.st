actions
submitArticle
	| article |
	article := self 
				call: ((SREntry descriptionTitle , SREntry descriptionUrl 
						asComponentOn: SREntry new) addValidatedForm ;
						addMessage: 'Submit New Article';yourself).
	article ifNotNil: 
			[article submitter: self session user.
			SREntry repository add: article]