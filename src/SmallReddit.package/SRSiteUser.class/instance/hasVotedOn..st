testing
hasVotedOn: anArticle
	(self liked includes: anArticle) ifTrue:[^true].
	(self hated includes: anArticle) ifTrue:[^true].
	^false