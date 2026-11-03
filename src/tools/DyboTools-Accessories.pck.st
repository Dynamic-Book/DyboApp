'From Cuis7.9 [latest update: #8290] on 3 November 2026 at 7:11:33 pm'!
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

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 5:18:08 pm (UTC)'!
colors
	^ `Dictionary newFromPairs: {
	'Gray' translated.  Color veryVeryLightGray . 
	'Black' translated . Color black . 
	'White' translated . Color white.
	'Pink' translated . Color pink.
	'Orange' translated . Color orange.
	'System color' translated. Theme current paneBackgroundFrom: Theme current transcript}`! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 5:23:22 pm (UTC)'!
edge
	^ edge! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 5:57:28 pm (UTC)'!
edge: symbol
	edge := symbol.
	self adjustButtons.
	self redrawNeeded ! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 5:24:12 pm (UTC)'!
edges
	^ `#(top bottom left right)`! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 9:22:17 am (UTC)'!
name
	^ 'Curtain' translated! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 10:27:46 am (UTC)'!
occulting: number
	occulting := number min: 100 max: 5.
	self adjustButtons.
	self redrawNeeded ! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 6:10:13 pm (UTC)'!
occultingWithDirection: vector
	edge = #bottom
		ifTrue: [^ self occulting: occulting - (vector y / 20)].
	edge = #top
		ifTrue: [^ self occulting: occulting + (vector y / 20)].
	edge = #left
		ifTrue: [^ self occulting: occulting + (vector x / 40)].
	edge = #right
		ifTrue: [^ self occulting: occulting - (vector x / 40)].! !

!CurtainMorph methodsFor: 'drawing' stamp: 'Dr. Geo User 3/Nov/2026, 11:17:09 am (UTC)'!
drawOn: aCanvas 
	aCanvas fillRectangle: self localBounds color: color! !

!CurtainMorph methodsFor: 'drawing' stamp: 'Dr. Geo User 2/Nov/2026, 6:27:40 pm (UTC)'!
icon
	^ DyboSystem icon: '<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24px" viewBox="0 0 24 24" width="24px" fill="#1f1f1f"><g><rect fill="none" height="24" width="24"/></g><g><path d="M20,19V3H4v16H2v2h20v-2H20z M6,19v-6h5v1.8c-0.4,0.3-0.8,0.8-0.8,1.4c0,1,0.8,1.8,1.8,1.8s1.8-0.8,1.8-1.8 c0-0.6-0.3-1.1-0.8-1.4V13h5v6H6z"/></g></svg>'! !

!CurtainMorph methodsFor: 'events' stamp: 'Dr. Geo User 2/Nov/2026, 6:53:46 pm (UTC)'!
handlesMouseDown: event
	^ true
! !

!CurtainMorph methodsFor: 'events' stamp: 'Dr. Geo User 2/Nov/2026, 6:54:17 pm (UTC)'!
mouseButton1Up: event localPosition: localPosition
	prevPosition := nil! !

!CurtainMorph methodsFor: 'events' stamp: 'Dr. Geo User 2/Nov/2026, 7:01:49 pm (UTC)'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [^ self ].
	prevPosition 
		ifNotNil:  [self occultingWithDirection: localPosition - prevPosition ].
	prevPosition := localPosition! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:59:20 pm (UTC)'!
adjustButtons
	| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := self localBounds topLeft + (buttonWidth * (0 @ 1) ).
	submorphs do: [:each | 
		each morphPosition: position.
		position := position translatedBy: buttonWidth + 4 @ 0]! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:44:46 pm (UTC)'!
localBounds
	edge = #bottom
		ifTrue: [^ self localBoundsBottom ].
	edge = #top
		ifTrue: [^ self localBoundsTop].
	edge = #left
		ifTrue: [^ self localBoundsLeft ].
	edge = #right
		ifTrue: [^ self localBoundsRight ].! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:42:10 pm (UTC)'!
localBoundsBottom
	^ 2 @ (owner morphHeight * (100 - occulting) / 100) asInteger
	corner: owner morphExtent - 2 asPoint! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:52:10 pm (UTC)'!
localBoundsLeft
	^ 2 @ 2
	corner: (owner morphWidth * occulting / 100) asInteger @ (owner morphHeight - 2)! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:57:03 pm (UTC)'!
localBoundsRight
	^ 2 + (100 - occulting * owner morphWidth / 100) asInteger @ 2
	corner:  owner morphExtent - 2 asPoint! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 5:47:55 pm (UTC)'!
localBoundsTop
	^ 2 @ 2
	corner: owner morphWidth - 2 @ ((owner morphHeight * occulting / 100) asInteger - 2)! !

!CurtainMorph methodsFor: 'initialization' stamp: 'Dr. Geo User 3/Nov/2026, 5:11:15 pm (UTC)'!
initialize
	super initialize.
	edge := #bottom.
	occulting := 20.
	color := self colors at: 'Gray' translated.
	self insertButtons ! !

!CurtainMorph methodsFor: 'initialization' stamp: 'Dr. Geo User 3/Nov/2026, 5:19:02 pm (UTC)'!
insertButtons
	| btn buttonExtent |
	buttonExtent := Theme current preferencesIcon extent * 3.
	btn := ButtonMorph model: self action: #preferences ::
		icon: (Theme current preferencesIcon magnifyBy: 2);
		color: Color transparent;
		selectedColor: Color orange lighter;
		setBalloonText: 'Adjust the preferences of this curtain.' translated;
		morphExtent: buttonExtent.
	self addMorph: btn.	
	btn := ButtonMorph model: self action: #delete ::
		icon: (Theme current closeIcon magnifyBy: 2);
		color: Color transparent ;
		selectedColor: Color orange lighter;
		setBalloonText: 'Close this curtain' translated;
		morphExtent: buttonExtent.
	self addMorph: btn
	! !

!CurtainMorph methodsFor: 'testing' stamp: 'Dr. Geo User 3/Nov/2026, 9:27:50 am (UTC)'!
is: aSymbol
	^ aSymbol == #CurtainMorph or: [super is: aSymbol]
	! !

!CurtainMorph methodsFor: 'testing' stamp: 'Dr. Geo User 3/Nov/2026, 10:29:00 am (UTC)'!
yAxisPointsUp
	^ true! !

!CurtainMorph methodsFor: 'submorphs-accessing' stamp: 'Dr. Geo User 3/Nov/2026, 10:34:05 am (UTC)'!
noteNewOwner: pageMorph
	self adjustButtons ! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 5:14:04 pm (UTC)'!
colorMenuString: colorName
	^ (color = (self colors at: colorName)) asMenuItemTextPrefix, colorName! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 5:05:12 pm (UTC)'!
edgeMenuString: edgeSymbol
	^ (edgeSymbol = edge) asMenuItemTextPrefix, (self edgeString: edgeSymbol)! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 5:04:51 pm (UTC)'!
edgeString: edgeSymbol
	edgeSymbol = #top ifTrue: [^ 'Top' translated].
	edgeSymbol = #bottom ifTrue: [^ 'Bottom' translated].
	edgeSymbol = #right ifTrue: [^ 'Right' translated].
	edgeSymbol = #left ifTrue: [^ 'Left' translated].! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 5:15:31 pm (UTC)'!
preferences
	| menu |
	menu := MenuMorph new.
	self colors keysDo: [:aColorName |
		menu 
			addUpdating: #colorMenuString: target: self action: #setColor: argumentList: {aColorName}].
	menu addLine.
	self edges do: [:aSymbol |
		menu 
			addUpdating: #edgeMenuString: 
			target: self action: #edge: 
			argumentList: (Array with: aSymbol)].
	menu popUpInWorld 
		! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 5:13:06 pm (UTC)'!
setColor: colorName
	color := self colors at: colorName.
	self redrawNeeded ! !
