TestCase subclass: #Dollar1Test
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dollar1-Tests'!

!Dollar1Test methodsFor: 'as yet unclassified' stamp: 'yo 8/20/2012 15:57'!
testTemplatePreprocess
	| maxX maxY minX minY |
	Dollar1Recognizer templates do: [:t |
		self assert: (t points sum closeTo: 0@0).
		self assert: (t points size = 64).
		minX := (t points collect: [:p | p x]) min.
		minY := (t points collect: [:p | p y]) min.
		maxX := (t points collect: [:p | p x]) max.
		maxY := (t points collect: [:p | p y]) max.
		self assert: (((maxX - minX) closeTo: 250) or: [(maxY - minY) closeTo: 250]).
		self assert: ((t points first theta closeTo: 0.0) or: [t points first theta closeTo: Float pi  *2]).
		self assert: (((t vector first theta * 8.0 / Float pi) fractionPart closeTo: 0.0) or: [(t vector first theta * 8.0 / Float pi) fractionPart closeTo: 1.0]).
		self assert: (t vector sum closeTo: 0@0).
		self assert: ((t vector collect: [:e | e x * e x + (e y * e y)]) sum closeTo: 1.0)]! !
