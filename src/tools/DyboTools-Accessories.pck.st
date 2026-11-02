'From Cuis7.9 [latest update: #8290] on 2 November 2026 at 8:08:39 pm'!
'Description '!
!provides: 'DyboTools-Accessories' '1.0.0'!
SystemOrganization addCategory: #'DyboTools-Accessories'!


!classDefinition: #CurtainMorph category: #'DyboTools-Accessories'!
Morph subclass: #CurtainMorph
	instanceVariableNames: 'color edge occulting prevPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Accessories'!
!classDefinition: 'CurtainMorph class' category: #'DyboTools-Accessories'!
CurtainMorph class
	instanceVariableNames: ''!


!CurtainMorph commentStamp: '<historical>' prior: 0!
I am rectangular morph occulting part of a page. I adhere to one edge of the page, my owner.
- edge: a symbol value amoung #(top bottom left right)
- occulting: an integer number in [10 , 100]
- color: color of the curtain!

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 2/Nov/2026, 6:03:47 pm (UTC)'!
colors
	^ `{Color lightGray . Color black . Color white}`! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 2/Nov/2026, 6:51:31 pm (UTC)'!
occulting: number
	occulting := number min: 100 max: 5.
	self redrawNeeded ! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 2/Nov/2026, 7:06:49 pm (UTC)'!
occultingWithDirection: vector
	edge = #bottom
		ifTrue: [self occulting: occulting - (vector y / 20)].
	edge = #top
		ifTrue: [self occulting: occulting + (vector y / 20)]! !

!CurtainMorph methodsFor: 'drawing' stamp: 'Dr. Geo User 2/Nov/2026, 6:41:51 pm (UTC)'!
drawOn: aCanvas 
	aCanvas fillRectangle: self localBounds color: color
	! !

!CurtainMorph methodsFor: 'drawing' stamp: 'Dr. Geo User 2/Nov/2026, 6:27:40 pm (UTC)'!
icon
	^ DyboSystem icon: '<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#1f1f1f"><g><rect fill="none" height="24" width="24"/></g><g><path d="M20,19V3H4v16H2v2h20v-2H20z M6,19v-6h5v1.8c-0.4,0.3-0.8,0.8-0.8,1.4c0,1,0.8,1.8,1.8,1.8s1.8-0.8,1.8-1.8 c0-0.6-0.3-1.1-0.8-1.4V13h5v6H6z"/></g></svg>'! !

!CurtainMorph methodsFor: 'initialization' stamp: 'Dr. Geo User 2/Nov/2026, 6:48:20 pm (UTC)'!
initialize
	super initialize.
	edge := #bottom.
	occulting := 20.
	color := self colors first! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 2/Nov/2026, 6:38:38 pm (UTC)'!
localBounds
	^ self localBoundsBottom ! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 2/Nov/2026, 6:37:29 pm (UTC)'!
localBoundsBottom
	^ 0 @ (owner morphHeight * (100 - occulting) / 100) asInteger
	corner: owner morphExtent! !

!CurtainMorph methodsFor: 'event handling testing' stamp: 'Dr. Geo User 2/Nov/2026, 6:53:46 pm (UTC)'!
handlesMouseDown: event
	^ true
! !

!CurtainMorph methodsFor: 'as yet unclassified' stamp: 'Dr. Geo User 2/Nov/2026, 6:54:17 pm (UTC)'!
mouseButton1Up: event localPosition: localPosition
	prevPosition := nil! !

!CurtainMorph methodsFor: 'as yet unclassified' stamp: 'Dr. Geo User 2/Nov/2026, 7:01:49 pm (UTC)'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [^ self ].
	prevPosition 
		ifNotNil:  [self occultingWithDirection: localPosition - prevPosition ].
	prevPosition := localPosition! !
