'From Cuis7.5 [latest update: #7538] on 16 September 2025 at 7:23:43 pm'!
'Description '!
!provides: 'DyboTools-Geometry' 1 42!
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

!classDefinition: #GeometryTool category: #'DyboTools-Geometry'!
PlacedMorph subclass: #GeometryTool
	instanceVariableNames: 'font extent lastHandPosition length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'GeometryTool class' category: #'DyboTools-Geometry'!
GeometryTool class
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


!GeometryTool commentStamp: '<historical>' prior: 0!
Abstract class for tools with straight linear metric graduation. 
Those tools can be dragged, rotated and resized.
These tools representation is divided in two zones: 
- a dragZone, sensible to drag the tool around, it is painted with a sem-transparent color 
- a strokeZone, sensible to pen strokes.  The stroke zone has generally a width of 25 pixels and 
it is painted with a plain color (non transparent) and the graduations.

Various kind of straight line can be drawn when a mouse stroke occures in its strokeZone(s)

- font : used font to draw the graduation
- extent: a point, tool extent in its own coordinates system, rounded to the nearest 0.5 cm
- length: a number or point, length in ox and/or oy directions, expressed in pixels
- lastHandPosition: used when rotating or changing the extent!

!SetSquare commentStamp: '<historical>' prior: 0!
A set square with two sensible zones to draw straight lines!

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 11:05:02'!
length: aNumberOrPoint
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 09:10:52'!
paper
	" The paper I may hand stroke into "
	^ owner paper! !

!GeometryTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2025 09:11:02'!
ppcm
" pixels per cm "
	^ 50.0! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:10:00'!
initialize
	super initialize.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
! !

!GeometryTool methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 09:11:59'!
insertButtons
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 9/13/2025 16:37:42'!
constrainToDirection: localHandPosition
"
 When drawing in the sketch zone, the handPosition is constrained to follow a straight line, 
 by following the closest border of the tool. Return this constrained position "
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'geometry' stamp: 'hlsf 9/11/2025 09:13:42'!
rotationCenter
	^ `0@0`! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 9/11/2025 09:13:57'!
handlesMouseDown: event
	^ true! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 9/13/2025 16:37:42'!
mouseButton1Down: event localPosition: localPosition
	(self paper writingTool notNil and: [self inStrokeZone: localPosition])
		ifTrue: [" initiate stroke along the tool "
			lastHandPosition := nil.
			" Let the paper to handle the hand stroke, constraint the hand position to be aligned with a tool border !! "
			self paper mouseButton1Down: event  localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifFalse: ["Initate a drag of the tool " 
			lastHandPosition := self externalize: localPosition ]! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 9/13/2025 16:37:42'!
mouseButton1Up: event localPosition: localPosition
	lastHandPosition ifNil: [
		self paper mouseButton1Up: event localPosition: (self externalize: (self constrainToDirection: localPosition))]! !

!GeometryTool methodsFor: 'event handling' stamp: 'hlsf 9/13/2025 16:37:42'!
mouseMove: event localPosition: localPosition 
	| externalposition |
	lastHandPosition 
		ifNil: [self paper mouseMove: event localPosition: (self externalize: (self constrainToDirection: localPosition))]
		ifNotNil: [
			externalposition := self externalize: localPosition.
			self morphPosition: self morphPosition  + externalposition - lastHandPosition.
			lastHandPosition := externalposition ]! !

!GeometryTool methodsFor: 'testing' stamp: 'hlsf 9/11/2025 09:32:22'!
inStrokeZone: localPosition
	self subclassResponsibility ! !

!GeometryTool methodsFor: 'actions' stamp: 'hlsf 9/11/2025 13:25:56'!
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

!Protractor methodsFor: 'drawing' stamp: 'hlsf 9/13/2025 22:25:00'!
drawOn: canvas
|  p1 p2 innerR outerR|
	innerR := extent x.
	outerR := extent y.
	canvas "strokeWidth: 0.2 color: `Color black`" fillColor: `Color yellow alpha: 0.5` do: [
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
	canvas strokeWidth: 1 color: Color black do: [
		canvas moveTo: 0 @ -0.5; lineTo: 0 @ -8].
	-179 to: -1 do: [:degree |
		canvas strokeWidth: 0.5 color: Color black do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR -5 degrees: degree.
			engine moveTo: p1 ; lineTo: p2]]		.
	-180 to: 0 by: 10 do: [:degree |
		canvas strokeWidth: 1 color: Color black do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR -10 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]].
	-175 to: -5 by: 10 do: [:degree |
		canvas strokeWidth: 0.6 color: Color black do: [:engine |
			p1 := Point r: outerR degrees: degree.
			p2 := Point r: outerR - 8 degrees: degree.
			engine moveTo: p1; lineTo: p2 ]]! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 9/13/2025 16:22:38'!
initialize
	super initialize .
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 7.
	extent := 130 @160.
	zeroAtRight := true.
	self updateGraduations.
	self insertButtons ! !

!Protractor methodsFor: 'initialization' stamp: 'hlsf 9/14/2025 19:18:13'!
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

!Protractor methodsFor: 'initialization' stamp: 'hlsf 9/13/2025 16:19:12'!
updateGraduations
	self graduations do: [:each | each delete].
	10 to: 170 by: 10 do: [:angle | 
		self 
			addLabel: (zeroAtRight ifTrue: [angle] ifFalse: [180 - angle]) asString 
			font: font 
			centeredAt: (Point r: extent y - 12 degrees: angle negated)
			rotationDegrees: angle].
! !

!Protractor methodsFor: 'action' stamp: 'hlsf 1/14/2021 21:10:10'!
reverseGraduations
	zeroAtRight _ zeroAtRight not.
	self updateGraduations ! !

!Protractor methodsFor: 'action' stamp: 'hlsf 9/13/2025 16:51:38'!
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

!Protractor methodsFor: 'accessing' stamp: 'hlsf 9/13/2025 16:54:47'!
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

!Protractor methodsFor: 'accessing' stamp: 'hlsf 1/15/2021 10:10:30'!
buttons
	^ self submorphsSatisfying: [:each | each is: #PluggableButtonMorph ]! !

!Protractor methodsFor: 'accessing' stamp: 'hlsf 1/14/2021 20:52:10'!
graduations
	^ self submorphsSatisfying: [:each | each class == LabelMorph]! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 9/14/2025 11:11:26'!
inStrokeZone: localPosition
	localPosition r > extent x	ifTrue: [
		strokeAngle := localPosition degrees rounded degreesToRadians .
		^ true].
	strokeAngle := nil.
	^ false! !

!Protractor methodsFor: 'testing' stamp: 'hlsf 9/13/2025 16:33:56'!
is: aSymbol
	^ aSymbol == #Protractor or: [super is: aSymbol]! !

!Protractor methodsFor: 'geometry' stamp: 'hlsf 9/13/2025 16:43:31'!
constrainToDirection: localHandPosition
	^ Point rho: localHandPosition rho theta: strokeAngle ! !

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

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/14/2025 19:25:38'!
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

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/14/2025 19:24:38'!
positioningButtons
| buttonWidth position |
	submorphs isEmptyOrNil ifTrue: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := length rounded * self ppcm -4 @ 30.
	(submorphs first: 2) do: [:btn |
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

!Ruler methodsFor: 'testing' stamp: 'hlsf 9/13/2025 16:33:42'!
is: aSymbol
	^ aSymbol == #Ruler or: [super is: aSymbol]! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 9/13/2025 16:37:42'!
constrainToDirection: localHandPosition
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

!SetSquare methodsFor: 'geometry' stamp: 'hlsf 9/13/2025 16:37:42'!
constrainToDirection: localHandPosition
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

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 9/16/2025 19:06:06'!
length: newLength
	length := newLength max: 2@2.
	extent := length rounded * self ppcm + (self ppcm / 2).
	strokeZone := nil.
	self positioningButtons.
	self redrawNeeded ! !

!SetSquare methodsFor: 'accessing' stamp: 'hlsf 9/16/2025 19:22:01'!
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

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/11/2025 13:29:16'!
initialize
	super initialize.
	self length: 5@10.
	self insertButtons 
	! !

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/16/2025 19:00:10'!
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

!SetSquare methodsFor: 'initialization' stamp: 'hlsf 9/16/2025 19:00:27'!
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

!SetSquare methodsFor: 'testing' stamp: 'hlsf 9/13/2025 16:34:05'!
is: aSymbol
	^ aSymbol == #SetSquare or: [super is: aSymbol]! !

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

!SetSquare methodsFor: 'actions' stamp: 'hlsf 9/16/2025 19:03:21'!
resizeOX
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x + (lastHandPosition x - prev x / self ppcm)) @ length y] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!SetSquare methodsFor: 'actions' stamp: 'hlsf 9/16/2025 19:04:01'!
resizeOY
	| event prev |
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: (length x @ (length y + (lastHandPosition y - prev y / self ppcm)) )] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !
