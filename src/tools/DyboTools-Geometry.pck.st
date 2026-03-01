'From Cuis7.7 [latest update: #7840] on 1 March 2026 at 10:11:09 pm'!
'Description '!
!provides: 'DyboTools-Geometry' 1 57!
!requires: 'VectorGraphics' 1 185 nil!
SystemOrganization addCategory: #'DyboTools-Geometry'!


!classDefinition: #GeometryTool category: #'DyboTools-Geometry'!
PlacedMorph subclass: #GeometryTool
	instanceVariableNames: 'font extent lastHandPosition length ppcm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'GeometryTool class' category: #'DyboTools-Geometry'!
GeometryTool class
	instanceVariableNames: ''!

!classDefinition: #Compass category: #'DyboTools-Geometry'!
GeometryTool subclass: #Compass
	instanceVariableNames: 'width legVertices lastHandPenPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Compass class' category: #'DyboTools-Geometry'!
Compass class
	instanceVariableNames: ''!

!classDefinition: #Protractor category: #'DyboTools-Geometry'!
GeometryTool subclass: #Protractor
	instanceVariableNames: 'zeroAtRight strokeAngle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Protractor class' category: #'DyboTools-Geometry'!
Protractor class
	instanceVariableNames: ''!

!classDefinition: #Ruler category: #'DyboTools-Geometry'!
GeometryTool subclass: #Ruler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Ruler class' category: #'DyboTools-Geometry'!
Ruler class
	instanceVariableNames: ''!

!classDefinition: #SetSquare category: #'DyboTools-Geometry'!
GeometryTool subclass: #SetSquare
	instanceVariableNames: 'strokeZone strokeSide oxButton oyButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'SetSquare class' category: #'DyboTools-Geometry'!
SetSquare class
	instanceVariableNames: ''!

!classDefinition: #CalibratorMorph category: #'DyboTools-Geometry'!
BoxMorph subclass: #CalibratorMorph
	instanceVariableNames: 'etalon ruler ppcm step'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'CalibratorMorph class' category: #'DyboTools-Geometry'!
CalibratorMorph class
	instanceVariableNames: ''!


!GeometryTool commentStamp: 'hlsf 9/16/2025 21:21:36' prior: 0!
Abstract class for tools with straight linear metric graduation. 
Those tools can be dragged, rotated and resized.
A tool view is divided in two zones: 
- a dragZone, sensible to drag the tool around, it is painted with a sem-transparent color 
- a strokeZone, sensible to pen strokes.  The stroke zone has generally a width of 25 pixels and 
it is painted with a plain color (non transparent) and the graduations.

Various kind of straight line can be drawn when a mouse stroke occures in its strokeZone(s)

- font : used font to draw the graduation
- extent: a point, tool extent in its own coordinates system, rounded to the nearest 0.5 cm
- length: a number or point, length in ox and/or oy directions, expressed in pixels
- lastHandPosition: used when rotating, moving or changing the extent!

!Compass commentStamp: '<historical>' prior: 0!
The two legs of the compass are symnetric to each other along the oy axis.
A leg has a rectangular shape.

- extent: a number, the distance between the compass legs extremities
- length, width: numbers, length and width in cm of each compass legs (identical)
- width: width in pixels of each legs
- legVertices : vertices of the leg holding the pen
!

!SetSquare commentStamp: '<historical>' prior: 0!
A set square with two sensible zones to draw straight lines!

!CalibratorMorph commentStamp: '<historical>' prior: 0!
A tool to calibrate manually screen and metric units.!

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025 22:00:16'!
detectNearby: toolSymbol
| myBounds |
	myBounds := self fullBoundsInOwner.
	^ self paper owner submorphs 
		detect: [:aMorph | (aMorph is: toolSymbol) and: [myBounds intersects: aMorph fullBoundsInOwner]]
		ifNone: [nil].! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2025 11:05:02'!
length: aNumberOrPoint
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2025 09:10:52'!
paper
	" The paper I may hand stroke into "
	^ owner paper! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026 15:07:51'!
ppcm
" pixels per cm "
	^ ppcm! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026 17:21:09'!
ppcm: aNumber
" pixels per cm "
	ppcm := aNumber asFloat! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 09:53:57'!
writingTool

	^ self paper writingTool! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 1/Mar/2026 22:04:18'!
initialize
	super initialize.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
	ppcm := DyboSystem ppcm! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025 09:11:59'!
insertButtons
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025 16:37:42'!
constrainToDirection: localHandPosition
"
 When drawing in the sketch zone, the handPosition is constrained to follow a straight line, 
 by following the closest border of the tool. Return this constrained position "
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025 09:13:42'!
rotationCenter
	^ `0@0`! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025 09:53:57'!
mouseButton1Down: event localPosition: localPosition
	(self writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [" initiate stroke along the tool "
			lastHandPosition := nil.
			" Let the paper to handle the hand stroke, constraint the hand position to be aligned with a tool border !! "
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifFalse: ["Initate a drag of the tool " 
			lastHandPosition := self externalize: localPosition ]! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025 11:37:24'!
mouseButton1Up: event localPosition: localPosition
	lastHandPosition 
		ifNil: [^ self paper mouseButton1Up: event localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifNotNil: [
			self alignToNearbyTool.
			lastHandPosition := nil]
		! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025 17:59:59'!
mouseMove: event localPosition: localPosition 
	| externalposition |
	event anyButtonPressed ifFalse: [ ^ self ].
	lastHandPosition 
		ifNil: [self paper mouseMove: event localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifNotNil: [
			externalposition := self externalize: localPosition.
			self morphPosition: self morphPosition  + externalposition - lastHandPosition.
			lastHandPosition := externalposition ]! !

!GeometryTool methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025 09:32:22'!
inStrokeZone: localPosition
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025 21:20:09'!
alignToNearbyTool
	" Some tool may want to be aligned to each other "! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025 21:57:31'!
alignToNearbyTool: aToolSymbol
	(self detectNearby: aToolSymbol) ifNotNil: [:aTool |
		" Align my ox and ruler's ox "				
		(aTool rotationDegrees - self rotationDegrees ) abs < 10 "Same orientation - likely not usefull "
			ifTrue: [
				'cas 1' print.
				^self rotation: aTool rotation].
		((aTool rotationDegrees - self rotationDegrees) abs - 180) abs < 10  "180 degree flipped "
			ifTrue: [
				'cas 2' print.
				^ self rotationDegrees: aTool rotationDegrees - 180].
		((aTool rotationDegrees - self rotationDegrees ) abs - 90) abs < 10 
			ifTrue: [
				'cas 3' print.
				^ (aTool rotationDegrees - self rotationDegrees) < 0
					ifTrue: [self rotationDegrees: aTool rotationDegrees + 90]
					ifFalse: [self rotationDegrees: aTool rotationDegrees - 90]].
		((aTool rotationDegrees - self rotationDegrees ) abs - 270) abs < 10 
			ifTrue: [
				'cas 4' print.
				^ self rotationDegrees: aTool rotationDegrees - 270].
		]
				
				
		 ! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 21/Sep/2025 11:57:11'!
rotateMe
	| event p1 v1 v2|
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			p1 := self externalizeToWorld: self rotationCenter.
			v1 := lastHandPosition - p1.
			lastHandPosition := event eventPosition.
			v2 := lastHandPosition - p1.
			(v1 isZero or: [v2 isZero]) ifTrue: [^self].
			self rotateBy:  ((v1 crossProduct: v2) / (v1 r * v2 r)) arcSin ] 
		ifFalse: [lastHandPosition := event eventPosition]! !

!GeometryTool methodsFor: 'event handling testing' stamp: 'hlsf 1/Mar/2026 17:47:30'!
handlesMouseDown: evt
	^ true! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 15:55:14'!
extent: newExtent
" The new extent can't excess the the two legs length "
	extent := newExtent min: length * 2 max: 0.
	legVertices := nil.
	self positioningButtons.
	self redrawNeeded ! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 10:15:19'!
handleZone
	| pt |
	^ Array 
		with:  ( pt := self legVertices first - (0@10) )
		with:  ( pt := pt + (width @ 10) )
		with:  ( pt := pt + (0 @ (3 * width)) )
		with:  ( pt := pt - (2 * width @ 0) )
		with:  pt - (0 @ (3 * width))! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 10:59:10'!
legVertices
	^ legVertices ifNil: [ | u |
		legVertices := Array new: 5.
		 "pen extremity"
		legVertices at: 5 put: (extent / 2.0 * self ppcm) @ 0.
		"junction of the two legs"
		legVertices at: 1 put: 0 @ ((length * self ppcm) squared - legVertices fifth x squared) sqrt.
		u := (legVertices first - legVertices fifth) normalized.
		legVertices at: 4 put: legVertices fifth + (u * 20).
		u := (u y @ u x negated) * width.
		legVertices at: 3 put: legVertices fourth + u.
		legVertices at: 2 put: legVertices first + u.
		legVertices]! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 11:55:08'!
length: newLength
	length := newLength min: 10 max: 0.
	legVertices := nil.
	self positioningButtons.
	self redrawNeeded ! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 21:42:03'!
penColor
	^ self writingTool 
		ifNotNil: [:pen | pen color] ifNil: [Color white]! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025 21:49:56'!
writingTool
	^ (owner is: #PageMorph) 	
		ifTrue:  [self paper writingTool]
		ifFalse: [nil]! !

!Compass methodsFor: 'initialization' stamp: 'hlsf 21/Sep/2025 10:42:32'!
initialize
	super initialize.
	extent := 0.
	length := 5.
	width := 16.
	self insertButtons! !

!Compass methodsFor: 'initialization' stamp: 'hlsf 21/Sep/2025 11:46:10'!
insertButtons
	| btn |
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		color: Color yellow darker;
		selectedColor: Color yellow;
		morphExtent:  2 * width @ (3 * width) - (4@4).
	self addMorph: btn.
	btn := ButtonMorph model: self action: #adjustExtent ::
		actWhen: #buttonStillDown;
		color: Color yellow darker;
		selectedColor: Color yellow;
		morphExtent:  (width + 4) asPoint.
	self addMorph: btn.
	
	self positioningButtons ! !

!Compass methodsFor: 'initialization' stamp: 'hlsf 21/Sep/2025 15:12:50'!
positioningButtons 
	submorphs isEmptyOrNil ifTrue: [^ self].
	" holder button: to rotate the compass"
	submorphs last morphPosition: self legVertices first + (width negated @ (3 * width)) + (2 @ -2).
	" positionning button: to adjust the compass extent "
	submorphs first morphPosition: 
		legVertices third + legVertices fourth // 2 
		+ ( (legVertices third - legVertices fourth) normalized normal * 15 )
		- (10@-10)! !

!Compass methodsFor: 'geometry testing' stamp: 'hlsf 20/Sep/2025 21:44:20'!
yAxisPointsUp
	^ true ! !

!Compass methodsFor: 'drawing' stamp: 'hlsf 27/Feb/2026 10:22:30'!
drawCompassPoint
" the user should know where is the center of the sketched arc or circle "
	| pen altPen event compassPoint |
	pen := owner presenter writingTool ifNil: [^ self].
	altPen := Pen new
		color: (Color  r: pen color red g: pen color green b: pen color blue);
		threshold: 4;
		width: 0.5.
	pen become: altPen.
	event := self activeHand lastMouseEvent.
	compassPoint := self legVertices fifth * (-1@1).
	self paper 
		mouseButton1Down: event  localPosition: (self externalize: compassPoint) - (5@0);
		mouseMove: event localPosition: (self externalize: compassPoint) + (5@0);
		mouseButton1Up: event localPosition: (self externalize: compassPoint) + (5@0);
		mouseButton1Down: event  localPosition: (self externalize: compassPoint) - (0@5);
		mouseMove: event localPosition: (self externalize: compassPoint) + (0@5);
		mouseButton1Up: event localPosition: (self externalize: compassPoint) + (0@5).
	pen become: altPen 
	! !

!Compass methodsFor: 'drawing' stamp: 'hlsf 27/Feb/2026 11:29:24'!
drawOn: canvas
	| symmetricLeg |
	self legVertices.
	" Leg holding the pen "
	canvas strokeWidth: 1.5 color: `Color black` fillColor: `Color yellow` do: [canvas polyLine: (legVertices allButLast)].
	" Pen "
	canvas fillColor: self penColor do: [canvas polyLine: (legVertices last: 3)].
	" Aperture "
	canvas drawString: (self aperture printStringFractionDigits: 2) at: legVertices fifth + (10@0) font: font color: `Color black`.
	symmetricLeg := legVertices * (-1 @ 1).
	" Leg holding the compass point "
	canvas strokeWidth: 1.5 color: `Color black` fillColor:`Color yellow` do: [canvas polyLine: symmetricLeg allButLast ].
	" Compass point "
	canvas strokeWidth: 1 color: `Color white` fillColor: `Color grey` do: [canvas polyLine: (symmetricLeg last: 3)].
	" Handle "
	canvas strokeWidth: 1.5 color: `Color black` fillColor: `Color yellow` do: [ canvas polyLine: self handleZone ]! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 27/Feb/2026 10:30:34'!
aperture
	^ self legVertices fifth x * 2 / self ppcm ! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 21/Sep/2025 21:06:56'!
constrainToDirection: localHandPosition
	^ self legVertices fifth ! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 20/Sep/2025 22:46:10'!
rotationCenter
	^ self legVertices fifth * (-1 @ 0)! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 27/Feb/2026 10:25:05'!
writingPosition
	^ self legVertices fifth! !

!Compass methodsFor: 'testing' stamp: 'hlsf 21/Sep/2025 11:09:13'!
inStrokeZone: localPosition
	 ^ localPosition 
		insideTriangle: self legVertices third 
		with: legVertices fourth 
		with: legVertices fifth ! !

!Compass methodsFor: 'actions' stamp: 'hlsf 27/Feb/2026 10:52:08'!
adjustExtent
	| event compassPoint pen newPen newExtent p1 v1 v2 |
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	(event isMouseMove and: [lastHandPosition notNil])
		ifTrue: [
			pen := self externalizeToWorld: self legVertices fifth.
			compassPoint := self externalizeToWorld: legVertices fifth * (-1 @ 0).
			p1 := event eventPosition.
			" New position of the pen "
			newPen := pen + p1 - lastHandPosition.
			lastHandPosition := p1.
			newExtent := ( (self internalizeDistanceFromWorld: newPen) dist: (self internalizeDistanceFromWorld: compassPoint) ) rounded / self ppcm.
			v1 := self internalizeDistanceFromWorld: pen - compassPoint.
			v2 := self internalizeDistanceFromWorld: newPen - compassPoint.
			self extent: newExtent .
			(newExtent > 0.5 and: [v1 isZero not and: [v2 isZero not ]]) ifTrue: [
				self rotateBy: ((v2 crossProduct: v1) / (v1 r * v2 r)) arcSin].
			"new compass point"
			compassPoint := self externalize: (self internalizeFromWorld: compassPoint).
			p1 := self externalize: self legVertices fifth * (-1 @0).
			self morphPosition: self morphPosition + compassPoint - p1.
			] 
		ifFalse: [lastHandPosition := event eventPosition]! !

!Compass methodsFor: 'actions' stamp: 'hlsf 21/Sep/2025 11:25:26'!
rotateMeSave
	| event p1 v1 v2 angle |
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			p1 := self externalizeToWorld: self rotationCenter.
			v1 := lastHandPosition - p1.
			lastHandPosition := event eventPosition.
			v2 := lastHandPosition - p1.
			(v1 isZero or: [v2 isZero]) ifTrue: [^self].
			angle := ((v1 crossProduct: v2) / (v1 r * v2 r)) arcSin negated.
			location := (location composedWith: (
				AffineTransformation withRadians: angle around: self rotationCenter)).
			self redrawNeeded ] 
		ifFalse: [lastHandPosition := event eventPosition].! !

!Compass methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025 21:23:23'!
mouseButton1Down: event localPosition: localPosition
" See parent " 	
	(self writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [
			self drawCompassPoint.
			lastHandPenPosition  := lastHandPosition := nil.
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifFalse: [	lastHandPosition := self externalize: localPosition ]! !

!Compass methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025 21:20:19'!
mouseButton1Up: event localPosition: localPosition 
	super mouseButton1Up: event localPosition: localPosition.
	lastHandPenPosition := nil! !

!Compass methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025 18:00:07'!
mouseMove: event localPosition: localPosition
	| p1 v1 v2 externalposition |
	event anyButtonPressed ifFalse: [ ^ self ].
	lastHandPosition 	ifNil: [
		self paper mouseMove: event localPosition: (self externalize: (self constrainToDirection: localPosition)).
		" rotate the compass too, if we are handling the pen "
		lastHandPenPosition ifNotNil: [
			p1 := self externalizeToWorld: self rotationCenter.
			v1 := lastHandPenPosition - p1.
			lastHandPenPosition := event eventPosition.
			v2 := lastHandPenPosition - p1.
			(v1 isZero or: [v2 isZero]) ifTrue: [^self].
			self rotateBy:  ((v1 crossProduct: v2) / (v1 r * v2 r)) arcSin]
		ifNil: [lastHandPenPosition := event eventPosition]	]
	ifNotNil: [
		externalposition := self externalize: localPosition.
		self morphPosition: self morphPosition  + externalposition - lastHandPosition.
		lastHandPosition := externalposition]! !

!Compass methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026 11:34:45'!
name
	^ 'Compass' translated! !

!Protractor methodsFor: 'drawing' stamp: 'hlsf 20/Sep/2025 22:05:25'!
drawOn: canvas
|  p1 p2 innerR outerR|
	innerR := extent x.
	outerR := extent y.
	canvas fillColor: `Color yellow alpha: 0.5` do: [
		canvas moveTo: innerR negated @ 0.
		canvas arcTo: innerR @ 0 radius: innerR @ innerR angleOfXAxis: 0 largeFlag: true sweepFlag: true.
		canvas lineTo: innerR negated @ 0].

	canvas fillColor: `Color yellow` do: [		
		canvas moveTo: innerR negated@ 0.
		canvas arcTo: innerR @ 0 radius: innerR @ innerR angleOfXAxis: 0 largeFlag: true sweepFlag: true.
		canvas lineTo: outerR @0.
		canvas arcTo: outerR negated @ 0 radius: outerR @ outerR angleOfXAxis: 0 largeFlag: true sweepFlag: false.
		canvas lineTo: innerR negated @ 0].
	
	
	" graduation Unmatched comment quote ->"
	canvas strokeWidth: 1 color: `Color black` do: [
		canvas moveTo: 0 @ -0.5; lineTo: 0 @ -8].
	-179 to: -1 do: [:degree |
		canvas strokeWidth: 0.5 color: `Color black` do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR -5 degrees: degree.
			engine moveTo: p1 ; lineTo: p2]].
	-180 to: 0 by: 10 do: [:degree |
		canvas strokeWidth: 1 color: `Color black` do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR -10 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]].
	-175 to: -5 by: 10 do: [:degree |
		canvas strokeWidth: 0.6 color: `Color black` do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR - 8 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]]! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 13/Sep/2025 16:22:38'!
initialize
	super initialize .
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 7.
	extent := 130 @160.
	zeroAtRight := true.
	self updateGraduations.
	self insertButtons ! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 14/Sep/2025 19:18:13'!
insertButtons
| btn buttonExtent pos |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := extent x - buttonExtent x.
	btn morphPosition: pos @ buttonExtent y negated.

	btn := ButtonMorph model: self action: #scaleMe ::
		actWhen: #buttonStillDown; action: #scaleMe;
		icon: (Theme current fetch: #('16x16' 'mimetypes' 'video-x-generic'));
		color: Color transparent;
		selectedColor: Color yellow darker;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := pos - buttonExtent x.
	btn morphPosition: pos @ buttonExtent y negated.


	btn := ButtonMorph model: self action: #delete ::
		icon: Theme current closeIcon ;
		color: Color transparent;
		selectedColor: Color yellow darker;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := extent x negated + 5.
	btn morphPosition: pos @ buttonExtent y negated.

	btn := ButtonMorph model: self action: #reverseGraduations ::
		icon: (Theme current fetch: #('16x16' 'actions' 'go-jump'));
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn morphPosition: pos + buttonExtent x @ buttonExtent y negated

! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 13/Sep/2025 16:19:12'!
updateGraduations
	self graduations do: [:each | each delete].
	10 to: 170 by: 10 do: [:angle | 
		self 
			addLabel: (zeroAtRight ifTrue: [angle] ifFalse: [180 - angle]) asString 
			font: font 
			centeredAt: (Point r: extent y - 12 degrees: angle negated)
			rotationDegrees: angle].
! !

!Protractor methodsFor: 'action' stamp: 'hlsf 14/Jan/2021 21:10:10'!
reverseGraduations
	zeroAtRight _ zeroAtRight not.
	self updateGraduations ! !

!Protractor methodsFor: 'action' stamp: 'hlsf 13/Sep/2025 16:51:38'!
scaleMe
	| event p1 v1 v2|
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			p1 := self externalizeToWorld: self rotationCenter.
			v1 := self internalizeDistance: lastHandPosition - p1.
			lastHandPosition := event eventPosition.
			v2 := self internalizeDistance: lastHandPosition - p1.
			v1 = v2 ifTrue: [^self].
			self scaleBy:  v2 r /  v1 r ] 
		ifFalse: [
			lastHandPosition := event eventPosition].! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 13/Sep/2025 16:54:47'!
addLabel: string font: aFont centeredAt: position rotationDegrees: angle
"Add a label top-centered at position and rotated of angle degrees"
	| p label |
	p := position - (position normal * (aFont widthOfString: string asString) / 2). 
	label := LabelMorph contents: string font: aFont.
	label rotationDegrees: 90 - angle.
	self addMorph: label.
	label morphPosition: p.
	label lock.
	^ label! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 15/Jan/2021 10:10:30'!
buttons
	^ self submorphsSatisfying: [:each | each is: #PluggableButtonMorph ]! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 14/Jan/2021 20:52:10'!
graduations
	^ self submorphsSatisfying: [:each | each class == LabelMorph]! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 14/Sep/2025 11:11:26'!
inStrokeZone: localPosition
	localPosition r > extent x	ifTrue: [
		strokeAngle := localPosition degrees rounded degreesToRadians .
		^ true].
	strokeAngle := nil.
	^ false! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025 16:33:56'!
is: aSymbol
	^ aSymbol == #Protractor or: [super is: aSymbol]! !

!Protractor methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025 16:43:31'!
constrainToDirection: localHandPosition
	^ Point rho: localHandPosition rho theta: strokeAngle ! !

!Protractor methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026 11:34:54'!
name
	^ 'Protractor' translated! !

!Ruler methodsFor: 'drawing' stamp: 'hlsf 11/Sep/2025 21:40:29'!
drawOn: canvas
	| posX step roundedLength |
	roundedLength := length rounded.
	
	canvas fillRectangle: self strokeZone color: `Color yellow`.
	canvas fillRectangle: self dragZone color: `Color yellow alpha: 0.5`.
	canvas frameRectangle: (-5@0 corner: extent) borderWidth: 0.5 color: `Color yellow darker` .

	step :=  self ppcm / 2. " half centimeter step "
	canvas strokeWidth: 0.8 color: `Color black` do: [
		posX := 0.
		roundedLength + 1 timesRepeat: [
			canvas moveTo: posX @ 0.5; lineToY: 10.
			canvas moveTo: (posX  + step) @ 0.5 ; lineToY: 6.
			posX := posX + self ppcm] ].

	step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: `Color black` do: [
		posX := step.
		roundedLength * 2 + 1 timesRepeat: [
			4 timesRepeat: [
				canvas moveTo: posX @ 0.2; lineToY: 4.
				posX := posX + step].
			posX := posX + step] ].

	step := posX := 0.
	roundedLength + 1 timesRepeat: [
		canvas drawString: step asString atCenterX: posX @12 font: font color: `Color black`.
		step := step + 1.
		posX := posX + self ppcm].! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025 21:56:02'!
alignToNearbyTool
	^ self alignToNearbyTool: #SetSquare! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2025 12:08:24'!
length: newLength
	length := newLength max: 1.
	extent := length rounded * self ppcm + (self ppcm / 2) @ 60.
	self positioningButtons.
	self redrawNeeded ! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025 13:11:15'!
initialize
	super initialize.
	self length: 10.
	self insertButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 14/Sep/2025 19:25:38'!
insertButtons
| btn buttonExtent |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	
	btn := ButtonMorph model: self action: #delete ::
		icon: Theme current closeIcon ;
		color: Color transparent;
		selectedColor: Color yellow darker;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn morphPosition: 0 @ 30.	
	
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn := ButtonMorph model: self action: #resizeMe ::
		actWhen: #buttonStillDown;
		icon: (Theme current fetch: #( '16x16' 'actions' 'go-last' ));
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	self positioningButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 14/Sep/2025 19:24:38'!
positioningButtons
| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := length rounded * self ppcm -4 @ 30.
	(submorphs first: 2) do: [:btn |
		btn morphPosition: position.
		position :=  position translatedBy:  - 4 - buttonWidth @ 0 ]
		! !

!Ruler methodsFor: 'actions' stamp: 'hlsf 11/Sep/2025 13:25:26'!
resizeMe
	| event prev |
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: length + (lastHandPosition x - prev x / self ppcm)] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!Ruler methodsFor: 'copying' stamp: 'hlsf 7/Sep/2025 13:37:58'!
postCopy
	self length: length! !

!Ruler methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025 09:32:55'!
inStrokeZone: localPosition

	^ self strokeZone containsPoint: localPosition! !

!Ruler methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025 16:33:42'!
is: aSymbol
	^ aSymbol == #Ruler or: [super is: aSymbol]! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025 16:37:42'!
constrainToDirection: localHandPosition
	^ localHandPosition x @ 0! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 7/Sep/2025 12:09:35'!
dragZone

	^ -5@25 corner: extent! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 7/Sep/2025 12:09:09'!
strokeZone

	^ -5@0 corner: extent x @ 25! !

!Ruler methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026 11:35:01'!
name
	^  'Ruler' translated! !

!SetSquare methodsFor: 'drawing' stamp: 'hlsf 11/Sep/2025 21:49:52'!
drawOn: canvas
	| roundedLength  step pos |
	roundedLength := length rounded.
	canvas fillColor: `Color yellow` do: [canvas polyLine: self strokeZone].
	canvas fillColor: `Color yellow alpha: 0.5` do: [	canvas polyLine: self dragZone].
	canvas 	strokeWidth: 0.5 color:  `Color yellow darker` do: [
		canvas moveTo: 0@0;
			lineTo: extent x @ 0;
			lineTo: 0 @ extent y;
			lineTo: 0@0].
		
	" ox graduation "
	pos := step :=  self ppcm / 2. " half centimeter step "
	canvas strokeWidth: 0.8 color: `Color black` do: [
		roundedLength x timesRepeat: [
			canvas moveTo: pos @ 0.5; lineToY: 6.
			canvas moveTo: (pos + step) @ 0.5 ; lineToY: 10.
			pos := pos + self ppcm] ].

	step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: `Color black` do: [
		pos := step.
		roundedLength x * 2 + 1 timesRepeat: [
			4 timesRepeat: [
				canvas moveTo: pos @ 0.2; lineToY: 4.
				pos := pos + step].
			pos := pos + step] ].
	
	" oy graduation "
	pos := step :=  self ppcm / 2. " half centimeter step "
	canvas strokeWidth: 0.8 color: `Color black` do: [
		roundedLength y timesRepeat: [
			canvas moveTo: 0.5 @ pos; lineToX: 6.
			canvas moveTo: 0.5 @ (pos + step) ; lineToX: 10.
			pos := pos + self ppcm] ].

	step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: `Color black` do: [
		pos := step.
		roundedLength y * 2 + 1 timesRepeat: [
			4 timesRepeat: [
				canvas moveTo: 0.2 @ pos; lineToX: 4.
				pos := pos + step].
			pos := pos + step] ].

	step := 1.
	pos := self ppcm.
	roundedLength x -1 timesRepeat: [
		canvas drawString: step asString atCenterX: pos @12 font: font color: `Color black`.
		step := step + 1.
		pos := pos + self ppcm].
	step := 1.
	pos := self ppcm.
	roundedLength y - 1 timesRepeat: [
		canvas drawString: step asString atWaistCenter: 15 @ pos font: font color: `Color black`.
		step := step + 1.
		pos := pos + self ppcm].! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025 16:37:42'!
constrainToDirection: localHandPosition
	^ strokeSide == #ox
		ifTrue: [localHandPosition x @ 0]
		ifFalse: [ 0 @ localHandPosition y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025 11:11:19'!
dragZone
	^ Array 
		with: 25@25
		with: (self strokeZone at: 3)
		with: (strokeZone at: 6)
! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025 10:44:55'!
strokeZone
	^ strokeZone ifNil: [ 
		strokeZone := Array 
			with: 0 @ 0
			with: extent x @ 0
			with: ( extent x - (25 * extent x / extent y) ) @ 25
			with: 25 @ 25
			with: 25 @ ( extent y - (25 * extent y / extent x) )
			with: 0 @ extent y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025 15:51:59'!
strokeZoneX
" The stroke zone along the x-axis "
	^ Rectangle origin: 0@0 corner: extent x @ 25! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025 15:52:16'!
strokeZoneY
" The stroke zone along the y-axis "
	^ Rectangle origin: 0@0 corner: 25 @ extent y! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025 21:55:49'!
alignToNearbyTool
	^ self alignToNearbyTool: #Ruler! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025 19:06:06'!
length: newLength
	length := newLength max: 2@2.
	extent := length rounded * self ppcm + (self ppcm / 2).
	strokeZone := nil.
	self positioningButtons.
	self redrawNeeded ! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025 19:22:01'!
resizeIcon
	| icon canvas iconExtent c |
	c := 50 * (extent x / extent y) sqrt.
	iconExtent := c @ (c * extent y / extent x) rounded.
	icon := Form extent: iconExtent depth: 32.
	canvas := VectorCanvas onForm: icon.
	canvas fillColor: `Color white alpha: 0.5` do: [
		canvas moveTo: 0@0;
			lineTo: iconExtent x @0;
			lineTo: 0 @ iconExtent y;
			lineTo: 0@0].
	^ icon! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025 13:29:16'!
initialize
	super initialize.
	self length: 5@10.
	self insertButtons 
	! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 16/Sep/2025 19:00:10'!
insertButtons
| btn buttonExtent |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn := ButtonMorph model: self action: #delete ::
		icon: Theme current closeIcon ;
		color: Color transparent;
		selectedColor: Color yellow darker;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn morphPosition: 25 @ 25.
	
	oxButton := ButtonMorph model: self action: #resizeOX ::
		actWhen: #buttonStillDown;
		color: Color transparent;
		borderWidth: 0;
		selectedColor: Color transparent.
	self addMorph: oxButton.
	
	oyButton := ButtonMorph model: self action: #resizeOY ::
		actWhen: #buttonStillDown;
		color: Color transparent;
		borderWidth: 0;
		selectedColor: Color transparent.
	self addMorph: oyButton.
		
	self positioningButtons ! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 16/Sep/2025 19:00:27'!
positioningButtons
| rotateBtn icon |
	submorphs isEmptyOrNil ifTrue: [^ self].
	rotateBtn := submorphs last.
	rotateBtn morphPosition: (extent // 3) - (rotateBtn morphWidth asPoint // 2 ).
	icon := self resizeIcon.
	oxButton 
		icon: icon;
		morphPosition: extent x - icon extent x - 2 @ -2.
	oyButton 
		icon: icon;
		morphPosition: -2 @ (extent y - icon extent y - 2).! !

!SetSquare methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025 15:50:55'!
inStrokeZone: localPosition
	(self strokeZoneX containsPoint: localPosition) ifTrue: [
		strokeSide := #ox.
		^ true].
	(self strokeZoneY containsPoint: localPosition) ifTrue: [
		strokeSide := #oy.
		^ true].
	strokeSide := nil.
	^ false! !

!SetSquare methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025 16:34:05'!
is: aSymbol
	^ aSymbol == #SetSquare or: [super is: aSymbol]! !

!SetSquare methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025 19:03:21'!
resizeOX
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x + (lastHandPosition x - prev x / self ppcm)) @ length y] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!SetSquare methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025 19:04:01'!
resizeOY
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x @ (length y + (lastHandPosition y - prev y / self ppcm)) )] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!SetSquare methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026 11:35:13'!
name
	^  'Set square' translated! !

!CalibratorMorph methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026 15:04:16'!
etalon: form
	etalon := form! !

!CalibratorMorph methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026 15:04:41'!
ppcm
	^ ppcm ! !

!CalibratorMorph methodsFor: 'initialization' stamp: 'hlsf 1/Mar/2026 22:02:15'!
initialize
	super initialize.
	ppcm := DyboSystem ppcm.
	step := 0.1.
	ruler := Ruler new 
		ppcm: ppcm;
		length: 10;
		lock.
	self	addMorph: ruler position: 22.5@80.
	self insertButtons! !

!CalibratorMorph methodsFor: 'initialization' stamp: 'hlsf 1/Mar/2026 18:00:16'!
insertButtons
	| btn buttonExtent |
	buttonExtent := Theme current listAddIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #increasePPCM ::
		actWhen: #buttonStillDown;
		icon: Theme current listAddIcon ;
		morphExtent: buttonExtent.
	self addMorph: btn position: 290@150.
	
	btn := ButtonMorph model: self action: #decreasePPCM ::
		actWhen: #buttonStillDown;
		icon: Theme current listRemoveIcon ;
		morphExtent: buttonExtent.
	self addMorph: btn position: (295 + buttonExtent x) @150
! !

!CalibratorMorph methodsFor: 'drawing' stamp: 'hlsf 1/Mar/2026 17:53:39'!
drawOn: canvas
	canvas
		fillRectangle: self localBounds
		color: `Color white`.
	canvas image: etalon at: 0@0.! !

!CalibratorMorph methodsFor: 'actions' stamp: 'hlsf 1/Mar/2026 18:06:00'!
decreasePPCM
	ppcm < 20 ifTrue: [^ self].
	ppcm := ppcm - step.
	ruler ppcm: ppcm;
		length: 10.
	self redrawNeeded ! !

!CalibratorMorph methodsFor: 'actions' stamp: 'hlsf 1/Mar/2026 22:06:18'!
increasePPCM
	ppcm > 70 ifTrue: [^ self].
	ppcm := ppcm + step.
	ruler ppcm: ppcm;
		length: 10.
	self redrawNeeded ! !

!CalibratorMorph methodsFor: 'geometry testing' stamp: 'hlsf 1/Mar/2026 22:06:01'!
clipsSubmorphs
	^ true! !

!CalibratorMorph methodsFor: 'geometry' stamp: 'hlsf 1/Mar/2026 22:08:29'!
minimumExtent
	^ `700@180`! !
