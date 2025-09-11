'From Cuis7.5 [latest update: #7538] on 11 September 2025 at 10:38:17 pm'!
'Description '!
!provides: 'DyboTools-Geometry' 1 35!
!requires: 'VectorGraphics' 1 185 nil!
SystemOrganization addCategory: #'DyboTools-Geometry'!


!classDefinition: #CompassMorph category: #'DyboTools-Geometry'!
PlacedMorph subclass: #CompassMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'CompassMorph class' category: #'DyboTools-Geometry'!
CompassMorph class
	instanceVariableNames: ''!

!classDefinition: #ProtractorMorph category: #'DyboTools-Geometry'!
PlacedMorph subclass: #ProtractorMorph
	instanceVariableNames: 'lastHandPosition font zeroAtRight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'ProtractorMorph class' category: #'DyboTools-Geometry'!
ProtractorMorph class
	instanceVariableNames: ''!

!classDefinition: #StraightTool category: #'DyboTools-Geometry'!
PlacedMorph subclass: #StraightTool
	instanceVariableNames: 'font extent lastHandPosition length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'StraightTool class' category: #'DyboTools-Geometry'!
StraightTool class
	instanceVariableNames: ''!

!classDefinition: #Ruler category: #'DyboTools-Geometry'!
StraightTool subclass: #Ruler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Ruler class' category: #'DyboTools-Geometry'!
Ruler class
	instanceVariableNames: ''!

!classDefinition: #SetSquare category: #'DyboTools-Geometry'!
StraightTool subclass: #SetSquare
	instanceVariableNames: 'strokeZone strokeSide'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'SetSquare class' category: #'DyboTools-Geometry'!
SetSquare class
	instanceVariableNames: ''!


!StraightTool commentStamp: '<historical>' prior: 0!
Abstract class for tools with straight linear metric graduation. 
Those tools can be dragged, rotated and resized.
A straight line can be drawn when a mouse stroke occures in its strokeZone(s)

- font : used font to draw the graduation
- extent: tool extent in its own coordinates system, rounded to the nearest 0.5 cm
- length: length in ox and oy directions, expressed in pixels
- lastHandPosition: used when rotating or changing the extent!

!SetSquare commentStamp: '<historical>' prior: 0!
A set square with two sensible zones to draw straight lines!

!ProtractorMorph methodsFor: 'drawing' stamp: 'hlsf 1/7/2022 14:48:52'!
drawOn: canvas
|  p1 p2 |
	canvas strokeWidth: 0.2 color: Color black fillColor: (Color yellow alpha: 0.6) do: [: engine |
		engine moveTo: 100 negated @ 0.
		engine arcTo: 100 @ 0 radius: 100 @ 100 angleOfXAxis: 0 largeFlag: true sweepFlag: true.
		engine lineTo: -100 @ 		0		].
	canvas strokeWidth: 1 color: Color black do: [
		canvas moveTo: 0 @ -0.5; lineTo: 0 @ -8].
	-180 to: 0 do: [:degree |
		canvas strokeWidth: 0.5 color: Color black do: [:engine |
			p1 _ Point r: 100 degrees: degree.
			p2 _ Point r: 95 degrees: degree.
			engine moveTo: p1 ; lineTo: p2]]		.
	-170 to: -10 by: 10 do: [:degree |
		canvas strokeWidth: 1 color: Color black do: [:engine |
			p1 _ Point r: 100 degrees: degree.
			p2 _ Point r: 90 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]].
	-175 to: -5 by: 10 do: [:degree |
		canvas strokeWidth: 0.6 color: Color black do: [:engine |
			p1 _ Point r: 100 degrees: degree.
			p2 _ Point r: 92 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]]! !

!ProtractorMorph methodsFor: 'initialization' stamp: 'hlsf 1/16/2021 11:32:15'!
initialize
	super initialize .
	self setProperty: #'handlesMouseOver:'  toValue: true.
	font _ FontFamily familyName: FontFamily defaultFamilyName pointSize: 4.
	zeroAtRight _ true.
	self updateGraduations.
	self insertButtons ! !

!ProtractorMorph methodsFor: 'initialization' stamp: 'hlsf 1/16/2021 11:41:00'!
insertButtons
| btn |
	btn _ PluggableButtonMorph new label: 'O' font: font.
	"icon: Theme current haloRotateIcon."
	btn model: self; actWhen: #buttonStillDown; action: #rotateProtractor.
	btn setProperty: #balloonText toValue: #helpRotate.
	self addMorph: btn.
	btn morphPosition: 65 @ -8.
	btn _ PluggableButtonMorph new label: '[]' font: font.
	"icon: Theme current haloScaleIcon."
	btn model: self; actWhen: #buttonStillDown; action: #scaleProtractor.
	btn setProperty: #balloonText toValue: #helpScale.
	self addMorph: btn.
	btn morphPosition: 45 @ -8.
	btn _ PluggableButtonMorph new label: '<>' font: font.
	"icon: Theme current undoIcon".
	btn model: self; action: #reverseGraduations.
	btn setProperty: #balloonText toValue: #helpReverse.
	self addMorph: btn.
	btn morphPosition: -80 @ -8.
	btn _ PluggableButtonMorph new label: 'X' font: font.
	"icon: Theme current undoIcon".
	btn model: self; action: #delete.
	btn setProperty: #balloonText toValue: #helpDelete.
	self addMorph: btn.
	btn morphPosition: -60 @ -8! !

!ProtractorMorph methodsFor: 'initialization' stamp: 'hlsf 1/14/2021 21:09:45'!
updateGraduations
	self graduations do: [:each | each delete].
	10 to: 170 by: 10 do: [:angle | 
		self 
			addLabel: (zeroAtRight ifTrue: [angle] ifFalse: [180 - angle]) asString 
			font: font 
			centeredAt: (Point r: 88 degrees: angle negated)
			rotationDegrees: angle].
! !

!ProtractorMorph methodsFor: 'action' stamp: 'hlsf 1/14/2021 21:10:10'!
reverseGraduations
	zeroAtRight _ zeroAtRight not.
	self updateGraduations ! !

!ProtractorMorph methodsFor: 'action' stamp: 'hlsf 7/31/2025 16:00:20'!
rotateProtractor
	| event p1 v1 v2|
	"any thing new to do?"
	event _ self activeHand lastMouseEvent.
	event isMove 
		ifTrue: [
			p1 _ location transform: 0@0.
			v1 _ lastHandPosition - p1.
			lastHandPosition _ event eventPosition.
			v2 _ 	lastHandPosition - p1.
			(v1 isZero or: [v2 isZero]) ifTrue: [^self].
			self rotateBy:  ((v1 crossProduct: v2) / (v1 r * v2 r)) arcSin	] 
		ifFalse: [
			lastHandPosition _ event eventPosition].! !

!ProtractorMorph methodsFor: 'action' stamp: 'hlsf 7/31/2025 16:00:20'!
scaleProtractor
	| event p1 v1 v2|
	"any thing new to do?"
	event _ self activeHand lastMouseEvent.
	event isMove 
		ifTrue: [
			p1 _ location transform: 0@0.
			v1 _ lastHandPosition - p1.
			lastHandPosition _ event eventPosition.
			v2 _ 	lastHandPosition - p1.
			v1 = v2 ifTrue: [^self].
			self scaleBy:  v2 r / v1 r	] 
		ifFalse: [
			lastHandPosition _ event eventPosition].! !

!ProtractorMorph methodsFor: 'accessing' stamp: 'hlsf 1/14/2021 20:59:29'!
addLabel: string font: aFont centeredAt: position rotationDegrees: angle
"Add a label top-centered at position and rotated of angle degrees"
	| p label |
	p _ position - (position normal * (aFont widthOfString: string asString) / 2). 
	label _ LabelMorph contents: string font: aFont.
	label rotation: (90 - angle) degreesToRadians.
	self addMorph: label.
	label morphPosition: p.
	^ label! !

!ProtractorMorph methodsFor: 'accessing' stamp: 'hlsf 1/15/2021 10:10:30'!
buttons
	^ self submorphsSatisfying: [:each | each is: #PluggableButtonMorph ]! !

!ProtractorMorph methodsFor: 'accessing' stamp: 'hlsf 1/14/2021 20:52:10'!
graduations
	^ self submorphsSatisfying: [:each | each class == LabelMorph]! !

!ProtractorMorph methodsFor: 'events' stamp: 'hlsf 1/15/2021 10:10:59'!
mouseEnter: event
	self buttons do: [:each | each show]! !

!ProtractorMorph methodsFor: 'events' stamp: 'hlsf 1/16/2021 09:43:50'!
mouseLeave: event
	self buttons do: [:each | each hide]
"	| btns | 
	btns _ 	self buttons.
	btns 
		detect: [:btn | btn mouseIsOver] 
		ifNone: [btns do: [:each | each hide]]"! !

!ProtractorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/16/2021 11:41:19'!
helpDelete
	^ 'Close the protractor'! !

!ProtractorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/16/2021 11:37:31'!
helpReverse
	^ 'Change the graduation direction'! !

!ProtractorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/16/2021 11:36:42'!
helpRotate
	^ 'Rotate the protractor'! !

!ProtractorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/16/2021 11:37:07'!
helpScale
	^ 'Change the scale of the protractor'! !

!StraightTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 11:05:02'!
length: aNumberOrPoint
	self subclassResponsibility ! !

!StraightTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 09:10:52'!
paper
	" The paper I may hand stroke into "
	^ owner paper! !

!StraightTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 09:11:02'!
ppcm
" pixels per cm "
	^ 50.0! !

!StraightTool methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:10:00'!
initialize
	super initialize.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
! !

!StraightTool methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 09:11:59'!
insertButtons
	self subclassResponsibility ! !

!StraightTool methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 09:47:18'!
constrainToBorder: localHandPosition
"
 When drawing in the sketch zone, the handPosition is constrained to follow a straight line, 
 by following the closest border of the tool. Return this constrained position "
	self subclassResponsibility ! !

!StraightTool methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 09:13:42'!
rotationCenter
	^ `0@0`! !

!StraightTool methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 09:13:57'!
handlesMouseDown: event
	^ true! !

!StraightTool methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 09:47:18'!
mouseButton1Down: event localPosition: localPosition
	(self paper writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [" initiate stroke along the tool "
			lastHandPosition := nil.
			" Let the paper to handle the hand stroke, constraint the hand position to be aligned with a tool border !! "
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToBorder: localPosition))]
		ifFalse: ["Initate a drag of the tool " 
			lastHandPosition := self externalize: localPosition ]! !

!StraightTool methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 09:47:18'!
mouseButton1Up: event localPosition: localPosition
	lastHandPosition ifNil: [
		self paper mouseButton1Up: event localPosition: (self externalize: (self constrainToBorder: localPosition))]! !

!StraightTool methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 09:47:18'!
mouseMove: event localPosition: localPosition 
	| externalposition |
	lastHandPosition 
		ifNil: [self paper mouseMove: event localPosition: (self externalize: (self constrainToBorder: localPosition))]
		ifNotNil: [
			externalposition := self externalize: localPosition.
			self morphPosition: self morphPosition  + externalposition - lastHandPosition.
			lastHandPosition := externalposition ]! !

!StraightTool methodsFor: 'testing' stamp: 'hlsf 9/11/2025 09:32:22'!
inStrokeZone: localPosition
	self subclassResponsibility ! !

!StraightTool methodsFor: 'testing' stamp: 'hlsf 9/11/2025 22:05:31'!
is: aSymbol
	^ aSymbol == #Ruler or: [super is: aSymbol]! !

!StraightTool methodsFor: 'actions' stamp: 'hlsf 9/11/2025 13:25:56'!
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
		ifFalse: [lastHandPosition := event eventPosition].! !

!Ruler methodsFor: 'drawing' stamp: 'hlsf 9/11/2025 21:40:29'!
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

!Ruler methodsFor: 'accessing' stamp: 'hlsf 9/7/2025 12:08:24'!
length: newLength
	length := newLength max: 1.
	extent := length rounded * self ppcm + (self ppcm / 2) @ 60.
	self positioningButtons.
	self redrawNeeded ! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:11:15'!
initialize
	super initialize.
	self length: 10.
	self insertButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:25:26'!
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
	btn := ButtonMorph model: self action: #resizeMe ::
		actWhen: #buttonStillDown;
		icon: (Theme current fetch: #( '16x16' 'actions' 'go-last' ));
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	self positioningButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 11:30:46'!
positioningButtons
| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := length rounded * self ppcm -4 @ 30.
	submorphs do: [:btn |
		btn morphPosition: position.
		position :=  position translatedBy:  - 4 - buttonWidth @ 0 ]
		! !

!Ruler methodsFor: 'actions' stamp: 'hlsf 9/11/2025 13:25:26'!
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

!Ruler methodsFor: 'copying' stamp: 'hlsf 9/7/2025 13:37:58'!
postCopy
	self length: length! !

!Ruler methodsFor: 'testing' stamp: 'hlsf 9/11/2025 09:32:55'!
inStrokeZone: localPosition

	^ self strokeZone containsPoint: localPosition! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 09:47:18'!
constrainToBorder: localHandPosition
	^ localHandPosition x @ 0! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 9/7/2025 12:09:35'!
dragZone

	^ -5@25 corner: extent! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 9/7/2025 12:09:09'!
strokeZone

	^ -5@0 corner: extent x @ 25! !

!SetSquare methodsFor: 'drawing' stamp: 'hlsf 9/11/2025 21:49:52'!
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

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 13:49:03'!
constrainToBorder: localHandPosition
	^ strokeSide == #ox
		ifTrue: [localHandPosition x @ 0]
		ifFalse: [ 0 @ localHandPosition y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 11:11:19'!
dragZone
	^ Array 
		with: 25@25
		with: (self strokeZone at: 3)
		with: (strokeZone at: 6)
! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 10:44:55'!
strokeZone
	^ strokeZone ifNil: [ 
		strokeZone := Array 
			with: 0 @ 0
			with: extent x @ 0
			with: ( extent x - (25 * extent x / extent y) ) @ 25
			with: 25 @ 25
			with: 25 @ ( extent y - (25 * extent y / extent x) )
			with: 0 @ extent y]! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 15:51:59'!
strokeZoneX
" The stroke zone along the x-axis "
	^ Rectangle origin: 0@0 corner: extent x @ 25! !

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 15:52:16'!
strokeZoneY
" The stroke zone along the y-axis "
	^ Rectangle origin: 0@0 corner: 25 @ extent y! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 21:48:39'!
length: newLength
	length := newLength max: 1@1.
	extent := length rounded * self ppcm + (self ppcm / 2).
	strokeZone := nil.
	self positioningButtons.
	self redrawNeeded ! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:29:16'!
initialize
	super initialize.
	self length: 5@10.
	self insertButtons 
	! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:25:38'!
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
	self positioningButtons ! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:31:18'!
positioningButtons
| rotateBtn |
	submorphs isEmptyOrNil ifTrue: [^ self].
	rotateBtn := submorphs first.
	rotateBtn morphPosition: (extent // 3) - (rotateBtn morphWidth asPoint // 2 )! !

!SetSquare methodsFor: 'testing' stamp: 'hlsf 9/11/2025 15:50:55'!
inStrokeZone: localPosition
	(self strokeZoneX containsPoint: localPosition) ifTrue: [
		strokeSide := #ox.
		^ true].
	(self strokeZoneY containsPoint: localPosition) ifTrue: [
		strokeSide := #oy.
		^ true].
	strokeSide := nil.
	^ false! !

!SetSquare methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 22:38:12'!
mouseButton1Up: event localPosition: localPosition
	super mouseButton1Up: event localPosition: localPosition.
	lastHandPosition ifNotNil: [ " We were moved, see if we can get aligned and stuck with a nearby ruler "
		| anyRuler myBounds |
		myBounds := self fullBoundsInOwner.
		anyRuler := self paper owner submorphs 
			detect: [:aMorph | (aMorph is: #Ruler) and: [myBounds intersects: aMorph fullBoundsInOwner]]
			ifNone: [^ self].
		" Align my ox and ruler's ox "				
		(anyRuler rotationDegrees - self rotationDegrees ) abs < 10 "Same orientation - likely not usefull "
			ifTrue: [^self rotation: anyRuler rotation].
		((anyRuler rotationDegrees - self rotationDegrees) abs - 180) abs < 10  "180 degree flipped "
			ifTrue: [^ self rotationDegrees: anyRuler rotationDegrees - 180].
		((anyRuler rotationDegrees - self rotationDegrees ) abs - 90) abs < 10 
			ifTrue: [^self rotationDegrees: anyRuler rotationDegrees - 90].
		]! !
