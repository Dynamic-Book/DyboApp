'From Cuis7.9 [latest update: #8014] on 24 June 2026 at 11:01:55 pm'!
'Description '!
!provides: 'DyboTools-Geometry' 1 67!
!requires: 'VectorGraphics' 1 185 nil!
SystemOrganization addCategory: #'DyboTools-Geometry'!


!classDefinition: #GradMorph category: #'DyboTools-Geometry'!
Morph subclass: #GradMorph
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'GradMorph class' category: #'DyboTools-Geometry'!
GradMorph class
	instanceVariableNames: ''!

!classDefinition: #SubGradMorph category: #'DyboTools-Geometry'!
GradMorph subclass: #SubGradMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'SubGradMorph class' category: #'DyboTools-Geometry'!
SubGradMorph class
	instanceVariableNames: ''!

!classDefinition: #MarkMorph category: #'DyboTools-Geometry'!
Morph subclass: #MarkMorph
	instanceVariableNames: 'center'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'MarkMorph class' category: #'DyboTools-Geometry'!
MarkMorph class
	instanceVariableNames: ''!

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

!classDefinition: #Geodreieck category: #'DyboTools-Geometry'!
GeometryTool subclass: #Geodreieck
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Geodreieck class' category: #'DyboTools-Geometry'!
Geodreieck class
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


!GeometryTool commentStamp: '<historical>' prior: 0!
Abstract class for tools with straight linear metric graduation. 
Those tools can be dragged, rotated and resized.
A tool view is divided in two zones: 
- a dragZone, sensible to drag the tool around, it is painted with a sem-transparent color 
- a strokeZone, sensible to pen strokes.  The stroke zone has generally a width of 25 pixels and 
it is painted with a plain color (non transparent) and the graduations.

Various kind of straight line can be drawn when a mouse stroke occures in its strokeZone(s)

- font : used font to draw the graduation
- extent: a point in pixel, tool extent in its own coordinates system. Its exact definition depends on the tool.
- length: a number or point, length in ox and/or oy directions, expressed in cm. Its exact definition depends on the tool
- lastHandPosition: used when rotating, moving or changing the extent!

!Compass commentStamp: 'hlsf 21/Jun/2026, 8:49:28 am (UTC)' prior: 0!
The two legs of the compass are symnetric to each other along the oy axis.
A leg has a rectangular shape.

- extent: a number, the distance between the compass legs extremities
- length: length in cm of each compass legs
- width: width in pixels of each legs
- legVertices : vertices of the leg holding the pen
!

!Geodreieck commentStamp: 'hlsf 21/Jun/2026, 2:03:06 pm (UTC)' prior: 0!
"In some European countries a common form of set square combines a 90-45-45 triangle, a ruler and a protractor into a single tool made of stiff or slightly flexible transparent plastic. Being a mandatory tool used by pupils in middle school and higher in German-speaking and neighbouring countries, this specific design is named Geodreieck (short form of Geometrie-Dreieck)." Wikipedia (https://en.wikipedia.org/wiki/Set_square#Geodreieck)

To optimize rendering time, part of the Morph is drawn by submorps and other within the drawOn: method.

The geodreieck is centered at the center of the protractor. Its shape is an isocele rectangle triangle.
- length: usally 8 cm, for both the apex from 0 and the demi-ruler length
- extent (in pixel):
	x: the ruler length in the ox direction
	y: the apex position in the oy direction, also half the ruler length (1/2 x)
!

!Protractor commentStamp: 'hlsf 21/Jun/2026, 9:24:33 am (UTC)' prior: 0!
An interactive Protractor. It can be rotated, scaled and its grads reversed
extent :
	- x is inner radius
	- y is outer radius!

!SetSquare commentStamp: '<historical>' prior: 0!
A set square with two sensible zones to draw straight lines!

!CalibratorMorph commentStamp: '<historical>' prior: 0!
A tool to calibrate manually screen and metric units.!

!GradMorph methodsFor: 'accessing' stamp: 'hlsf 22/Jun/2026, 3:02:09 pm (UTC)'!
end: aPoint
	end := aPoint! !

!GradMorph methodsFor: 'accessing' stamp: 'hlsf 22/Jun/2026, 3:02:04 pm (UTC)'!
start: aPoint
	start := aPoint! !

!GradMorph methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 3:04:54 pm (UTC)'!
drawOn: canvas
	canvas strokeWidth: 0.8 color: `Color black` do: [canvas moveTo: start; lineTo: end]! !

!GradMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 22/Jun/2026, 3:50:50 pm (UTC)'!
from: point1 to: point2
	^ self new
		start: point1;
		end: point2! !

!SubGradMorph methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 3:05:55 pm (UTC)'!
drawOn: canvas
	canvas strokeWidth: 0.3 color: `Color black` do: [canvas moveTo: start; lineTo: end]! !

!MarkMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 22/Jun/2026, 7:34:54 pm (UTC)'!
center: aPoint
	center := aPoint! !

!MarkMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 22/Jun/2026, 7:34:39 pm (UTC)'!
drawOn: canvas
	canvas strokeWidth: 0.3 color: `Color red` do: [canvas ellipseCenter: center radius: 4@4]! !

!MarkMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 22/Jun/2026, 7:35:08 pm (UTC)'!
center: aPoint
	^ self new center: aPoint! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 1:23:23 pm (UTC)'!
color
	^ `Color yellow`! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 1:29:53 pm (UTC)'!
darkerColor
	^ `Color yellow darker`! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025, 8:00:16 pm (UTC)'!
detectNearby: toolSymbol
| myBounds |
	myBounds := self fullBoundsInOwner.
	^ self paper owner submorphs 
		detect: [:aMorph | (aMorph is: toolSymbol) and: [myBounds intersects: aMorph fullBoundsInOwner]]
		ifNone: [nil].! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 9:56:03 am (UTC)'!
extent
	^ extent! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2025, 9:05:02 am (UTC)'!
length: aNumberOrPoint
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 2:28:54 pm (UTC)'!
paper
	" The paper I may hand stroke into "
	^ [owner paper] on: MessageNotUnderstood do: [owner]! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026, 1:07:51 pm (UTC)'!
ppcm
" pixels per cm "
	^ ppcm! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026, 3:21:09 pm (UTC)'!
ppcm: aNumber
" pixels per cm "
	ppcm := aNumber asFloat! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 1:25:35 pm (UTC)'!
transparentColor
	^ `Color yellow alpha: 0.5`! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 2:30:13 pm (UTC)'!
writingTool

	^ [self paper writingTool] on: MessageNotUnderstood do:[ nil]! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 1/Mar/2026, 8:04:18 pm (UTC)'!
initialize
	super initialize.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
	ppcm := DyboSystem ppcm! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025, 7:11:59 am (UTC)'!
insertButtons
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025, 2:37:42 pm (UTC)'!
constrainToDirection: localHandPosition
"
 When drawing in the sketch zone, the handPosition is constrained to follow a straight line, 
 by following the closest border of the tool. Return this constrained position "
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025, 7:13:42 am (UTC)'!
rotationCenter
	^ `0@0`! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025, 7:53:57 am (UTC)'!
mouseButton1Down: event localPosition: localPosition
	(self writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [" initiate stroke along the tool "
			lastHandPosition := nil.
			" Let the paper to handle the hand stroke, constraint the hand position to be aligned with a tool border !! "
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifFalse: ["Initate a drag of the tool " 
			lastHandPosition := self externalize: localPosition ]! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025, 9:37:24 am (UTC)'!
mouseButton1Up: event localPosition: localPosition
	lastHandPosition 
		ifNil: [^ self paper mouseButton1Up: event localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifNotNil: [
			self alignToNearbyTool.
			lastHandPosition := nil]
		! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025, 3:59:59 pm (UTC)'!
mouseMove: event localPosition: localPosition 
	| externalposition |
	event anyButtonPressed ifFalse: [ ^ self ].
	lastHandPosition 
		ifNil: [self paper mouseMove: event localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifNotNil: [
			externalposition := self externalize: localPosition.
			self morphPosition: self morphPosition  + externalposition - lastHandPosition.
			lastHandPosition := externalposition ]! !

!GeometryTool methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025, 7:32:22 am (UTC)'!
inStrokeZone: localPosition
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025, 7:20:09 pm (UTC)'!
alignToNearbyTool
	" Some tool may want to be aligned to each other "! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025, 7:57:31 pm (UTC)'!
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

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 21/Sep/2025, 9:57:11 am (UTC)'!
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

!GeometryTool methodsFor: 'event handling testing' stamp: 'hlsf 1/Mar/2026, 3:47:30 pm (UTC)'!
handlesMouseDown: evt
	^ true! !

!GeometryTool methodsFor: 'active model behavior' stamp: 'hlsf 2/Mar/2026, 8:20:44 pm (UTC)'!
postCopy
	ppcm := DyboSystem ppcm.! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025, 1:55:14 pm (UTC)'!
extent: newExtent
" The new extent can't excess the the two legs length "
	extent := newExtent min: length * 2 max: 0.
	legVertices := nil.
	self positioningButtons.
	self redrawNeeded ! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025, 9:55:08 am (UTC)'!
length: newLength
	length := newLength min: 10 max: 0.
	legVertices := nil.
	self positioningButtons.
	self redrawNeeded ! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025, 7:42:03 pm (UTC)'!
penColor
	^ self writingTool 
		ifNotNil: [:pen | pen color] ifNil: [Color white]! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 8:51:45 am (UTC)'!
width: pixels
	width := pixels.
	legVertices := nil.
	self positioningButtons.
	self redrawNeeded ! !

!Compass methodsFor: 'accessing' stamp: 'hlsf 21/Sep/2025, 7:49:56 pm (UTC)'!
writingTool
	^ (owner is: #PageMorph) 	
		ifTrue:  [self paper writingTool]
		ifFalse: [nil]! !

!Compass methodsFor: 'initialization' stamp: 'hlsf 21/Sep/2025, 8:42:32 am (UTC)'!
initialize
	super initialize.
	extent := 0.
	length := 5.
	width := 16.
	self insertButtons! !

!Compass methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 1:31:20 pm (UTC)'!
insertButtons
	| btn |
"	Rotate button "
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		color: self darkerColor ;
		selectedColor: self color.
	self addMorph: btn.
"	Apperture button "
	btn := ButtonMorph model: self action: #adjustAperture ::
		actWhen: #buttonStillDown;
		color: self darkerColor;
		selectedColor: self color.
	self addMorph: btn.
	
	self positioningButtons ! !

!Compass methodsFor: 'geometry testing' stamp: 'hlsf 20/Sep/2025, 7:44:20 pm (UTC)'!
yAxisPointsUp
	^ true ! !

!Compass methodsFor: 'drawing' stamp: 'hlsf 27/Feb/2026, 8:22:30 am (UTC)'!
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

!Compass methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 1:24:49 pm (UTC)'!
drawOn: canvas
	| symmetricLeg |
	self legVertices.
	" Leg holding the pen "
	canvas strokeWidth: 1 color: `Color black` fillColor: self color do: [canvas polyLine: (legVertices allButLast)].
	" Pen "
	canvas fillColor: self penColor do: [canvas polyLine: (legVertices last: 3)].
	" Aperture "
	canvas drawString: ((self aperture roundTo: 0.1) printStringFractionDigits: 1) at: legVertices fifth + (10@0) font: font color: `Color black`.
	symmetricLeg := legVertices * (-1 @ 1).
	" Leg holding the compass point "
	canvas strokeWidth: 1 color: `Color black` fillColor: self color do: [canvas polyLine: symmetricLeg allButLast ].
	" Compass point "
	canvas strokeWidth: 0.5 color: `Color black` fillColor: `Color grey` do: [canvas polyLine: (symmetricLeg last: 3)].
	" Handle "
	canvas strokeWidth: 1 color: `Color black` fillColor: self color do: [ canvas polyLine: self handleZone ]! !

!Compass methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 9:03:16 am (UTC)'!
icon
	^ (self class new 
		length: 1;
		width: 10;
		yourself) imageForm: 32 ! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 27/Feb/2026, 8:30:34 am (UTC)'!
aperture
	^ self legVertices fifth x * 2 / self ppcm ! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 21/Sep/2025, 7:06:56 pm (UTC)'!
constrainToDirection: localHandPosition
	^ self legVertices fifth ! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 21/Sep/2025, 8:15:19 am (UTC)'!
handleZone
	| pt |
	^ Array 
		with:  ( pt := self legVertices first - (0@10) )
		with:  ( pt := pt + (width @ 10) )
		with:  ( pt := pt + (0 @ (3 * width)) )
		with:  ( pt := pt - (2 * width @ 0) )
		with:  pt - (0 @ (3 * width))! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 21/Sep/2025, 8:59:10 am (UTC)'!
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

!Compass methodsFor: 'geometry' stamp: 'hlsf 21/Jun/2026, 9:06:19 am (UTC)'!
positioningButtons 
	| rotatorBtn apertureBtn |
	submorphs isEmptyOrNil ifTrue: [^ self].
	rotatorBtn := submorphs last.
	apertureBtn := submorphs first.
	" holder button: to rotate the compass"
	rotatorBtn 
		morphPosition: self legVertices first + (width negated @ (3 * width)) + (2 @ -2);
		morphExtent:  2 * width @ (3 * width) - (4@4).
	" positionning button: to adjust the compass extent "
	apertureBtn morphPosition: 
		legVertices third + legVertices fourth // 2 
		+ ( (legVertices third - legVertices fourth) normalized normal * 15 )
		- (8@-10);
		morphExtent:  (width + 4) asPoint! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 20/Sep/2025, 8:46:10 pm (UTC)'!
rotationCenter
	^ self legVertices fifth * (-1 @ 0)! !

!Compass methodsFor: 'geometry' stamp: 'hlsf 27/Feb/2026, 8:25:05 am (UTC)'!
writingPosition
	^ self legVertices fifth! !

!Compass methodsFor: 'testing' stamp: 'hlsf 21/Sep/2025, 9:09:13 am (UTC)'!
inStrokeZone: localPosition
	 ^ localPosition 
		insideTriangle: self legVertices third 
		with: legVertices fourth 
		with: legVertices fifth ! !

!Compass methodsFor: 'actions' stamp: 'hlsf 21/Jun/2026, 8:59:50 am (UTC)'!
adjustAperture
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

!Compass methodsFor: 'actions' stamp: 'hlsf 21/Sep/2025, 9:25:26 am (UTC)'!
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

!Compass methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025, 7:23:23 pm (UTC)'!
mouseButton1Down: event localPosition: localPosition
" See parent " 	
	(self writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [
			self drawCompassPoint.
			lastHandPenPosition  := lastHandPosition := nil.
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifFalse: [	lastHandPosition := self externalize: localPosition ]! !

!Compass methodsFor: 'event handling' stamp: 'hlsf 21/Sep/2025, 7:20:19 pm (UTC)'!
mouseButton1Up: event localPosition: localPosition 
	super mouseButton1Up: event localPosition: localPosition.
	lastHandPenPosition := nil! !

!Compass methodsFor: 'event handling' stamp: 'hlsf 23/Sep/2025, 4:00:07 pm (UTC)'!
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

!Compass methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026, 9:34:45 am (UTC)'!
name
	^ 'Compass' translated! !

!Geodreieck methodsFor: 'initialization' stamp: 'hlsf 24/Jun/2026, 4:50:34 pm (UTC)'!
initialize
	super initialize.
	self length: 8.
	self insertButtons.
	self setGraduationMorphs ! !

!Geodreieck methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 1:20:29 pm (UTC)'!
insertButtons
	! !

!Geodreieck methodsFor: 'initialization' stamp: 'hlsf 24/Jun/2026, 8:39:55 pm (UTC)'!
setGraduationMorphs
"	The set square graduations 
	For the record: 'extent x' is the raidus (usually 8 cm) expressed in pixels
"
	| posA | 
"	graduations & degrees on the two perpendicular sides "
	5 to: 175 by: 5 do: [:angle | self addMillimeterGradAt: angle].
	1 to: 179 by: 5 do: [:angle | 
		0 to: 3 do: [:subAngle | self addMillimeterSubGradAt: angle + subAngle] ].
"	millimeter numbers on the ruler side "
	posA := extent y negated + self ppcm.
	(length - 1) negated to: length - 1 do: [:grad |
		self addLabel: grad abs asString font: font centeredAt: posA @(14 + font pointSize)rotationDegrees: 180.
		posA := posA + self ppcm].
"	degrees on the yellow strip & circular graduations "
	10 to: 170 by: 10 do: [:angle | 
		self 	addLabel: angle asString font: font 
			centeredAt: (Point r: 4.35 * self ppcm degrees: 180 - angle)
			rotationDegrees: 270 - angle].
	11 to: 169 do: [:angle | self addDegreeGradAt: angle].
	" inner millimeter graduation"
	6 to: 38 do: [:mm |self addInnerMillimeterGradAt: mm]
! !

!Geodreieck methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 1:19:41 pm (UTC)'!
length: aNumber
	length := aNumber rounded max: 8.
	extent := ((2 * length) * self ppcm) @ (length * self ppcm).
	self positioningButtons.
	self redrawNeeded! !

!Geodreieck methodsFor: 'accessing' stamp: 'hlsf 21/Jun/2026, 2:42:45 pm (UTC)'!
transparentColor
	^ `Color lightGreen muchLighter alpha: 0.4`! !

!Geodreieck methodsFor: 'geometry' stamp: 'hlsf 22/Jun/2026, 7:40:39 pm (UTC)'!
constrainToDirection: aPoint 
	! !

!Geodreieck methodsFor: 'geometry' stamp: 'hlsf 21/Jun/2026, 1:39:32 pm (UTC)'!
positioningButtons! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 24/Jun/2026, 8:12:56 pm (UTC)'!
addDegreeGradAt: angle
	| morphClass posA posB line |
	(angle // 10) isZero ifTrue: [self halt ]. " Draw it elsewhere "
	posA := Point r: 5 * self ppcm degrees: 180 - angle.
	(angle \\ 5) isZero 
		ifTrue: [
			morphClass := GradMorph.
			posB := Point r: (5 - 0.4) * self ppcm degrees: 180 - angle.
			 ] 
		ifFalse: [
			morphClass := SubGradMorph.
			posB := Point r: (5 - 0.2) * self ppcm degrees: 180 - angle].
		
	line := morphClass from: posA to: posB.
	self addMorph: line.
	line lock.

	^ line! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 24/Jun/2026, 9:00:26 pm (UTC)'!
addInnerMillimeterGradAt: mm
	| posA posB line morphClass|
	posA := 1.1 @ (mm / 10) * self ppcm.
	posB := 1.5 @ (mm / 10) * self ppcm.
	morphClass := SubGradMorph.
	(mm \\ 5 ) isZero ifTrue: [
		morphClass := GradMorph.
		posA := (0.1 * self ppcm) @ posA y.
		posB := Point 
			x: 4 * self ppcm * ( mm / 10 / 4) arcSin cos
			y: posB y ].
	line := morphClass from:  posA to: posB.
	self addMorph: line .
	line lock.
	line := morphClass from:  posA x negated @ posA y to: posB x negated @ posB y.
	self addMorph: line .
	line lock! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 8:11:52 pm (UTC)'!
addLabel: string font: aFont centeredAt: position rotationDegrees: angle
"Add a label top-centered at position and rotated of angle degrees"
	| p label |
	p := position - ( (aFont widthOfString: string asString) @ (aFont pointSize negated) / 2). 
	label := LabelMorph contents: string font: aFont.
	self addMorph: label.
	label morphPosition: p.
	label rotateBy: angle negated degreesToRadians .
	"label lock."
	^ label! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 24/Jun/2026, 8:04:19 pm (UTC)'!
addMillimeterGradAt: angle
	| mark line |
	mark := self gradMarkAt: angle length: 12.
	line := GradMorph from: mark first to: mark second.
	self addMorph: line.
	line lock.
	" do we want graduation number? "
	(angle \\ 10) isZero ifTrue: [
		| u rotation |	
		u := (mark second - mark first) normalized.
		rotation := 135.
		angle = 90 ifTrue: [rotation := 180].
		angle > 90 ifTrue: [rotation := rotation + 90].		
		self addLabel: angle asString 
			font: font 
			centeredAt: mark second + (u * (font pointSize / 2 +1) ) 
			rotationDegrees: rotation].	
	^ line! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 24/Jun/2026, 8:04:36 pm (UTC)'!
addMillimeterSubGradAt: angle
	| mark line |

	mark := self gradMarkAt: angle length: 6.
	line := GradMorph from: mark first to: mark second.
	self addMorph: line.
	line lock.
	^ line! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 24/Jun/2026, 5:03:33 pm (UTC)'!
drawOn: canvas
"	The drawing requiring needing complex computation (trigonometric and division) are rendered as submorphs "
	| apex pos gradQty step |
	apex := extent y.
	canvas fillColor: self transparentColor do: [
		canvas moveTo: apex negated @ 0;
			lineTo: apex @ 0; lineTo: 0 @ apex].
		
	canvas fillColor: `Color yellow darker alpha: 0.6` do: [
		apex := 4.1 * self ppcm.
		pos := Point r: apex degrees: 7.5.
		canvas moveTo:  pos.
		canvas arcTo: pos x negated @ pos y radius: apex @ apex angleOfXAxis: 0 largeFlag: false sweepFlag: false.
		apex := 4.5 * self ppcm.
		pos := Point r: apex degrees: 7.
		canvas lineTo: pos x negated @ pos y.
		canvas arcTo: pos radius: apex @ apex angleOfXAxis: 0 largeFlag: false sweepFlag: true.
		"canvas lineTo: innerR negated @ 0"].
		
" Ruler cm graduation "
	" half centimer grad "
	pos := extent y negated + self ppcm.
	gradQty := (length - 1) * 2.
	step := self ppcm / 2.
	gradQty := (length -1) * 4 + 1.
	canvas strokeWidth: 0.8 color: `Color black` do: [
		gradQty timesRepeat: [
			canvas moveTo: pos @ 0.5; lineToY: 10.
			pos := pos + step ] ].
	" millimeter grad"
	pos := extent y negated + self ppcm.
	step := self ppcm / 10.
	canvas strokeWidth: 0.3 color: `Color black` do: [
		gradQty -1 timesRepeat: [
			4 timesRepeat: [
				pos := pos + step.
				canvas moveTo: pos @ 0.2; lineToY: 4].
			pos := pos + step] ]
! !

!Geodreieck methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 4:24:40 pm (UTC)'!
gradMarkAt: angle length: d
"	Compute a graduation mark (start and end position) given an angle
	 on the set square and its length at apex "
	| anglePt apex x startGrad endGrad k |
	
	k := angle > 90 ifTrue: [-1] ifFalse: [1].
	apex := extent y.
	anglePt := Point r: apex degrees: angle.
	""
	x := apex / (anglePt y / anglePt x + k ). 
	startGrad := x @ (apex - (x * k) ).
	""
	apex := apex - d. "pixels"
	x := apex / (anglePt y / anglePt x + k) . 
	endGrad := x @ (apex - (x * k) ).
	^ Array with: startGrad with: endGrad 
! !

!Geodreieck methodsFor: 'geometry testing' stamp: 'hlsf 21/Jun/2026, 2:26:42 pm (UTC)'!
yAxisPointsUp
	^ true ! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 15/Jan/2021, 8:10:30 am (UTC)'!
buttons
	^ self submorphsSatisfying: [:each | each is: #PluggableButtonMorph ]! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 14/Jan/2021, 6:52:10 pm (UTC)'!
graduations
	^ self submorphsSatisfying: [:each | each class == LabelMorph]! !

!Protractor methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026, 9:34:54 am (UTC)'!
name
	^ 'Protractor' translated! !

!Protractor methodsFor: 'action' stamp: 'hlsf 14/Jan/2021, 7:10:10 pm (UTC)'!
reverseGraduations
	zeroAtRight _ zeroAtRight not.
	self updateGraduations ! !

!Protractor methodsFor: 'action' stamp: 'hlsf 13/Sep/2025, 2:51:38 pm (UTC)'!
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

!Protractor methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 7:45:36 pm (UTC)'!
addLabel: string font: aFont centeredAt: position rotationDegrees: angle
"Add a label top-centered at position and rotated of angle degrees"
	| p label |
	p := position - (position normal * (aFont widthOfString: string asString) / 2). 
	label := LabelMorph contents: string font: aFont.
	label rotationDegrees: angle.
	self addMorph: label.
	label morphPosition: p.
	label lock.
	^ label! !

!Protractor methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 4:12:31 pm (UTC)'!
drawOn: canvas
|  p1 p2 innerR outerR|
	innerR := extent x.
	outerR := extent y.
	canvas fillColor: self transparentColor do: [
		canvas moveTo: innerR negated @ 0.
		canvas arcTo: innerR @ 0 radius: innerR @ innerR angleOfXAxis: 0 largeFlag: true sweepFlag: true.
		canvas lineTo: innerR negated @ 0].

	canvas fillColor: self color do: [		
		canvas moveTo: innerR negated@ 0.
		canvas arcTo: innerR @ 0 radius: innerR @ innerR angleOfXAxis: 0 largeFlag: true sweepFlag: true.
		canvas lineTo: outerR @0.
		canvas arcTo: outerR negated @ 0 radius: outerR @ outerR angleOfXAxis: 0 largeFlag: true sweepFlag: false.
		canvas lineTo: innerR negated @ 0].
	
	
	" graduation"
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

!Protractor methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 9:25:18 am (UTC)'!
icon
	^ (self imageForm: 32) magnifyBy: 100.0 / (extent y * 2)! !

!Protractor methodsFor: 'drawing' stamp: 'hlsf 22/Jun/2026, 4:53:21 pm (UTC)'!
updateGraduations
	self graduations do: [:each | each delete].
	10 to: 170 by: 10 do: [:angle | 
		self 
			addLabel: (zeroAtRight ifTrue: [angle] ifFalse: [180 - angle]) asString 
			font: font 
			centeredAt: (Point r: extent y - 12 degrees: angle negated)
			rotationDegrees: 90 - angle].
! !

!Protractor methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025, 2:43:31 pm (UTC)'!
constrainToDirection: localHandPosition
	^ Point rho: localHandPosition rho theta: strokeAngle ! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 13/Sep/2025, 2:22:38 pm (UTC)'!
initialize
	super initialize .
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 7.
	extent := 130 @160.
	zeroAtRight := true.
	self updateGraduations.
	self insertButtons ! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 1:32:02 pm (UTC)'!
insertButtons
| btn buttonExtent pos |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: self darkerColor ;
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := extent x - buttonExtent x.
	btn morphPosition: pos @ buttonExtent y negated.

	btn := ButtonMorph model: self action: #scaleMe ::
		actWhen: #buttonStillDown; action: #scaleMe;
		icon: (Theme current fetch: #('16x16' 'mimetypes' 'video-x-generic'));
		color: Color transparent;
		selectedColor: self darkerColor ;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := pos - buttonExtent x.
	btn morphPosition: pos @ buttonExtent y negated.


	btn := ButtonMorph model: self action: #delete ::
		icon: Theme current closeIcon ;
		color: Color transparent;
		selectedColor: self darkerColor ;		
		morphExtent: buttonExtent.
	self addMorph: btn.
	pos := extent x negated + 5.
	btn morphPosition: pos @ buttonExtent y negated.

	btn := ButtonMorph model: self action: #reverseGraduations ::
		icon: (Theme current fetch: #('16x16' 'actions' 'go-jump'));
		color: Color transparent;
		selectedColor: self darkerColor ;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn morphPosition: pos + buttonExtent x @ buttonExtent y negated

! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 14/Sep/2025, 9:11:26 am (UTC)'!
inStrokeZone: localPosition
	localPosition r > extent x	ifTrue: [
		strokeAngle := localPosition degrees rounded degreesToRadians .
		^ true].
	strokeAngle := nil.
	^ false! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025, 2:33:56 pm (UTC)'!
is: aSymbol
	^ aSymbol == #Protractor or: [super is: aSymbol]! !

!Ruler methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 2:48:24 pm (UTC)'!
drawOn: canvas
	| posX step roundedLength |
	roundedLength := length rounded.
	
	canvas fillRectangle: self strokeZone color: self color.
	canvas fillRectangle: self dragZone color: self transparentColor .
	canvas frameRectangle: (-5@0 corner: extent) borderWidth: 0.5 color: self darkerColor.

	step :=  self ppcm / 2. " half centimeter step "
	posX := 0.
	canvas strokeWidth: 0.8 color: `Color black` do: [
		roundedLength + 1 timesRepeat: [
			canvas moveTo: posX @ 0.5; lineToY: 10.
			canvas moveTo: (posX  + step) @ 0.5 ; lineToY: 6.
			posX := posX + self ppcm] ].

	posX := step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: `Color black` do: [
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

!Ruler methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 10:00:07 am (UTC)'!
icon
	| smallMorph |
	smallMorph := self class new length: 4.
	^ (smallMorph imageForm: 32) magnifyBy: 100 / smallMorph extent x! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2025, 10:08:24 am (UTC)'!
length: newLength
	length := newLength max: 1.
	extent := length rounded * self ppcm + (self ppcm / 2) @ 60.
	self positioningButtons.
	self redrawNeeded ! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025, 11:11:15 am (UTC)'!
initialize
	super initialize.
	self length: 10.
	self insertButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 14/Sep/2025, 5:25:38 pm (UTC)'!
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

!Ruler methodsFor: 'actions' stamp: 'hlsf 11/Sep/2025, 11:25:26 am (UTC)'!
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

!Ruler methodsFor: 'copying' stamp: 'hlsf 2/Mar/2026, 8:08:57 pm (UTC)'!
copy
	^ super copy postCopy! !

!Ruler methodsFor: 'copying' stamp: 'hlsf 2/Mar/2026, 8:21:00 pm (UTC)'!
postCopy
	super postCopy.
	self length: length! !

!Ruler methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025, 7:32:55 am (UTC)'!
inStrokeZone: localPosition

	^ self strokeZone containsPoint: localPosition! !

!Ruler methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025, 2:33:42 pm (UTC)'!
is: aSymbol
	^ aSymbol == #Ruler or: [super is: aSymbol]! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 16/Sep/2025, 7:56:02 pm (UTC)'!
alignToNearbyTool
	^ self alignToNearbyTool: #SetSquare! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025, 2:37:42 pm (UTC)'!
constrainToDirection: localHandPosition
	^ localHandPosition x @ 0! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 7/Sep/2025, 10:09:35 am (UTC)'!
dragZone

	^ -5@25 corner: extent! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 14/Sep/2025, 5:24:38 pm (UTC)'!
positioningButtons
| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := length rounded * self ppcm -4 @ 30.
	(submorphs first: 2) do: [:btn |
		btn morphPosition: position.
		position :=  position translatedBy:  - 4 - buttonWidth @ 0 ]
		! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 7/Sep/2025, 10:09:09 am (UTC)'!
strokeZone

	^ -5@0 corner: extent x @ 25! !

!Ruler methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026, 9:35:01 am (UTC)'!
name
	^  'Ruler' translated! !

!SetSquare methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 1:33:07 pm (UTC)'!
drawOn: canvas
	| roundedLength  step pos |
	roundedLength := length rounded.
	canvas fillColor: self color do: [canvas polyLine: self strokeZone].
	canvas fillColor: self transparentColor do: [	canvas polyLine: self dragZone].
	canvas 	strokeWidth: 0.5 color: self darkerColor do: [
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

!SetSquare methodsFor: 'drawing' stamp: 'hlsf 21/Jun/2026, 10:02:54 am (UTC)'!
icon
	| smallMorph |
	smallMorph := self class new ::
		 length: 4@4;
		rotationDegrees: 270.
	^ (smallMorph imageForm: 32) 
		magnifyBy: 100 / smallMorph extent x! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 13/Sep/2025, 2:37:42 pm (UTC)'!
constrainToDirection: localHandPosition
	^ strokeSide == #ox
		ifTrue: [localHandPosition x @ 0]
		ifFalse: [ 0 @ localHandPosition y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025, 9:11:19 am (UTC)'!
dragZone
	^ Array 
		with: 25@25
		with: (self strokeZone at: 3)
		with: (strokeZone at: 6)
! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 16/Sep/2025, 5:00:27 pm (UTC)'!
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

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025, 8:44:55 am (UTC)'!
strokeZone
	^ strokeZone ifNil: [ 
		strokeZone := Array 
			with: 0 @ 0
			with: extent x @ 0
			with: ( extent x - (25 * extent x / extent y) ) @ 25
			with: 25 @ 25
			with: 25 @ ( extent y - (25 * extent y / extent x) )
			with: 0 @ extent y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025, 1:51:59 pm (UTC)'!
strokeZoneX
" The stroke zone along the x-axis "
	^ Rectangle origin: 0@0 corner: extent x @ 25! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 11/Sep/2025, 1:52:16 pm (UTC)'!
strokeZoneY
" The stroke zone along the y-axis "
	^ Rectangle origin: 0@0 corner: 25 @ extent y! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025, 7:55:49 pm (UTC)'!
alignToNearbyTool
	^ self alignToNearbyTool: #Ruler! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025, 5:06:06 pm (UTC)'!
length: newLength
	length := newLength max: 2@2.
	extent := length rounded * self ppcm + (self ppcm / 2).
	strokeZone := nil.
	self positioningButtons.
	self redrawNeeded ! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 16/Sep/2025, 5:22:01 pm (UTC)'!
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

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2025, 11:29:16 am (UTC)'!
initialize
	super initialize.
	self length: 5@10.
	self insertButtons 
	! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 1:33:49 pm (UTC)'!
insertButtons
| btn buttonExtent |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #rotateMe ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: self darkerColor;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn := ButtonMorph model: self action: #delete ::
		icon: Theme current closeIcon ;
		color: Color transparent;
		selectedColor: self darkerColor ;		
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

!SetSquare methodsFor: 'testing' stamp: 'hlsf 11/Sep/2025, 1:50:55 pm (UTC)'!
inStrokeZone: localPosition
	(self strokeZoneX containsPoint: localPosition) ifTrue: [
		strokeSide := #ox.
		^ true].
	(self strokeZoneY containsPoint: localPosition) ifTrue: [
		strokeSide := #oy.
		^ true].
	strokeSide := nil.
	^ false! !

!SetSquare methodsFor: 'testing' stamp: 'hlsf 13/Sep/2025, 2:34:05 pm (UTC)'!
is: aSymbol
	^ aSymbol == #SetSquare or: [super is: aSymbol]! !

!SetSquare methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025, 5:03:21 pm (UTC)'!
resizeOX
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x + (lastHandPosition x - prev x / self ppcm)) @ length y] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!SetSquare methodsFor: 'actions' stamp: 'hlsf 16/Sep/2025, 5:04:01 pm (UTC)'!
resizeOY
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x @ (length y + (lastHandPosition y - prev y / self ppcm)) )] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!SetSquare methodsFor: 'accessing - properties' stamp: 'hlsf 12/Feb/2026, 9:35:13 am (UTC)'!
name
	^  'Set square' translated! !

!CalibratorMorph methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026, 1:04:16 pm (UTC)'!
etalon: form
	etalon := form! !

!CalibratorMorph methodsFor: 'accessing' stamp: 'hlsf 1/Mar/2026, 1:04:41 pm (UTC)'!
ppcm
	^ ppcm ! !

!CalibratorMorph methodsFor: 'initialization' stamp: 'hlsf 11/Jun/2026, 9:15:29 am (UTC)'!
initialize
	super initialize.
	ppcm := DyboSystem ppcm.
	step := 0.05.
	ruler := Ruler new 
		ppcm: ppcm;
		length: 10;
		lock.
	self	addMorph: ruler position: 22.5@80.
	self insertButtons! !

!CalibratorMorph methodsFor: 'initialization' stamp: 'hlsf 1/Mar/2026, 4:00:16 pm (UTC)'!
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

!CalibratorMorph methodsFor: 'drawing' stamp: 'hlsf 28/Apr/2026, 9:11:20 am (UTC)'!
drawOn: canvas
	canvas
		fillRectangle: self localBounds
		color: `Color transparent`.
	canvas image: etalon at: 0@0.! !

!CalibratorMorph methodsFor: 'actions' stamp: 'hlsf 1/Mar/2026, 4:06:00 pm (UTC)'!
decreasePPCM
	ppcm < 20 ifTrue: [^ self].
	ppcm := ppcm - step.
	ruler ppcm: ppcm;
		length: 10.
	self redrawNeeded ! !

!CalibratorMorph methodsFor: 'actions' stamp: 'hlsf 1/Mar/2026, 8:06:18 pm (UTC)'!
increasePPCM
	ppcm > 70 ifTrue: [^ self].
	ppcm := ppcm + step.
	ruler ppcm: ppcm;
		length: 10.
	self redrawNeeded ! !

!CalibratorMorph methodsFor: 'geometry testing' stamp: 'hlsf 1/Mar/2026, 8:06:01 pm (UTC)'!
clipsSubmorphs
	^ true! !

!CalibratorMorph methodsFor: 'geometry' stamp: 'hlsf 1/Mar/2026, 8:08:29 pm (UTC)'!
minimumExtent
	^ `700@180`! !
