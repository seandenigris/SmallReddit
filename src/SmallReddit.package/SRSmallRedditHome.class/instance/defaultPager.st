defaults
defaultPager
	"this is a built in component for creating paged lists, quite handy, and nice to subclass to specialize for real world use"

	^ (WABatchedList new)
		batchSize: self defaultBatchSize;
		yourself