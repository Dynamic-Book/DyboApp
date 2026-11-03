'From Cuis7.9 [latest update: #8290] on 3 November 2026 at 12:30:01 pm'!
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

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 11:07:57 am (UTC)'!
colors
	^ `{Color veryVeryLightGray . Color black . Color white}`! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 11:19:00 am (UTC)'!
edge: symbol
	edge := symbol.
	self redrawNeeded ! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 11:25:04 am (UTC)'!
edges
	^ #(top bottom left right)! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 9:22:17 am (UTC)'!
name
	^ 'Curtain' translated! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 3/Nov/2026, 10:27:46 am (UTC)'!
occulting: number
	occulting := number min: 100 max: 5.
	self adjustButtons.
	self redrawNeeded ! !

!CurtainMorph methodsFor: 'accessing' stamp: 'Dr. Geo User 2/Nov/2026, 7:06:49 pm (UTC)'!
occultingWithDirection: vector
	edge = #bottom
		ifTrue: [self occulting: occulting - (vector y / 20)].
	edge = #top
		ifTrue: [self occulting: occulting + (vector y / 20)]! !

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

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 10:49:08 am (UTC)'!
adjustButtons
	| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := self localBounds topLeft + (buttonWidth * (0 @1) ).
	submorphs do: [:each | 
		each morphPosition: position.
		position := position translatedBy: buttonWidth + 4 @ 0]! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 2/Nov/2026, 6:38:38 pm (UTC)'!
localBounds
	^ self localBoundsBottom ! !

!CurtainMorph methodsFor: 'geometry' stamp: 'Dr. Geo User 3/Nov/2026, 10:52:01 am (UTC)'!
localBoundsBottom
	^ 2 @ (owner morphHeight * (100 - occulting) / 100) asInteger
	corner: owner morphExtent - (2@2)! !

!CurtainMorph methodsFor: 'initialization' stamp: 'Dr. Geo User 3/Nov/2026, 11:04:41 am (UTC)'!
initialize
	super initialize.
	edge := #bottom.
	occulting := 20.
	color := self colors first..
	translucent := false.
	self insertButtons ! !

!CurtainMorph methodsFor: 'initialization' stamp: 'Dr. Geo User 3/Nov/2026, 10:50:20 am (UTC)'!
insertButtons
	| btn buttonExtent |
	buttonExtent := Theme current preferencesIcon extent * 3.
	btn := ButtonMorph model: self action: #preferences ::
		icon: (Theme current preferencesIcon magnifyBy: 2);
		color: Color transparent;
		selectedColor: Color orange;
		setBalloonText: 'Adjust the preferences of this curtain.' translated;
		morphExtent: buttonExtent.
	self addMorph: btn.	
	btn := ButtonMorph model: self action: #delete ::
		icon: (Theme current closeIcon magnifyBy: 2);
		color: Color transparent ;
		selectedColor: Color orange;
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

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 11:28:51 am (UTC)'!
edgeMenuString: edgeSymbol
	^ (edgeSymbol = edge) asMenuItemTextPrefix, ''! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 11:29:50 am (UTC)'!
edgeString: edgeSymbol
	edgeSymbol = #top ifTrue: ['Haut' translated].
	edgeSymbol = #bottom ifTrue: ['Haut' translated].
	edgeSymbol = #top ifTrue: ['Haut' translated].
	edgeSymbol = #top ifTrue: ['Haut' translated].! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 11:28:51 am (UTC)'!
preferences
	| menu |
	menu := MenuMorph new.
	menu 
		defaultTarget: self;
		add: 'Gray' translated action: #setColor: argument: 1;
		add: 'Black' translated action: #setColor: argument: 2;
		add: 'White' translated action: #setColor: argument: 3;
		addLine.
	self edges do: [:aSymbol |
		menu 
			addUpdating: #edgeMenuString: 
			target: self action: #edge: 
			argumentList: (Array with: aSymbol)].
	menu popUpInWorld 
		! !

!CurtainMorph methodsFor: 'menus' stamp: 'Dr. Geo User 3/Nov/2026, 11:06:37 am (UTC)'!
setColor: index
	color := self colors at: index.
	self redrawNeeded ! !
