defaults
defaultPager
	^ (WABatchedList new)
		batchSize: self defaultBatchSize;
		yourself