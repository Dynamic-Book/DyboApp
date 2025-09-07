'From Cuis7.5 [latest update: #7526] on 7 September 2025 at 6:47:42 pm'!
'Description '!
!provides: 'DyboTools-Geometry' 1 30!
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

!classDefinition: #Ruler category: #'DyboTools-Geometry'!
PlacedMorph subclass: #Ruler
	instanceVariableNames: 'length lastHandPosition font extent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'Ruler class' category: #'DyboTools-Geometry'!
Ruler class
	instanceVariableNames: ''!

!classDefinition: #SetSquareMorph category: #'DyboTools-Geometry'!
PlacedMorph subclass: #SetSquareMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Geometry'!
!classDefinition: 'SetSquareMorph class' category: #'DyboTools-Geometry'!
SetSquareMorph class
	instanceVariableNames: ''!


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

!Ruler methodsFor: 'drawing' stamp: 'hlsf 9/7/2025 12:09:52'!
drawOn: canvas
	| grad posX step roundedLength |
	roundedLength := length rounded.
	
	canvas fillRectangle: self strokeZone color: Color yellow.
	canvas fillRectangle: self dragZone color: (Color yellow alpha: 0.5).
	canvas frameRectangle: (-5@0 corner: extent) borderWidth: 0.5 color: Color yellow muchDarker .

	step :=  self ppcm / 2. " half centimeter step "
	canvas strokeWidth: 0.8 color: Color black do: [
		posX := 0.
		roundedLength + 1 timesRepeat: [
			canvas moveTo: posX @ 0.5; lineToY: 10.
			canvas moveTo: (posX  + step) @ 0.5 ; lineToY: 6.
			posX := posX + self ppcm] ].

	step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: Color black do: [
		posX := step.
		roundedLength * 2 + 1 timesRepeat: [
			4 timesRepeat: [
				canvas moveTo: posX @ 0.2; lineToY: 4.
				posX := posX + step].
			posX := posX + step] ].

	grad := posX := 0.
	roundedLength + 1 timesRepeat: [
		canvas drawString: grad asString atCenterX: posX @12 font: font color: Color black.
		grad := grad + 1.
		posX := posX + self ppcm].! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 9/7/2025 12:09:35'!
dragZone

	^ -5@25 corner: extent! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 9/7/2025 12:08:24'!
length: newLength
	length := newLength max: 1.
	extent := length rounded * self ppcm + (self ppcm / 2) @ 60.
	self positioningButtons.
	self redrawNeeded ! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 9/7/2025 17:36:02'!
paper
	" The paper I may hand stroke into "
	^ owner paper! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 8/5/2025 11:05:48'!
ppcm
" pixels per cm "
	^ 50.0! !

!Ruler methodsFor: 'accessing' stamp: 'hlsf 9/7/2025 12:09:09'!
strokeZone

	^ -5@0 corner: extent x @ 25! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/7/2025 11:59:54'!
initialize
	super initialize.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
	self length: 10.
	self insertButtons ! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 7/31/2025 20:28:28'!
insertButtons
| btn buttonExtent |
	buttonExtent := Theme current refreshIcon extent * 1.5. 
	btn := ButtonMorph model: self action: #rotateRuler ::
		actWhen: #buttonStillDown;
		icon: Theme current refreshIcon;
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	btn := ButtonMorph model: self action: #resizeRuler ::
		actWhen: #buttonStillDown;
		icon: (Theme current fetch: #( '16x16' 'actions' 'go-last' ));
		color: Color transparent;
		selectedColor: Color yellow darker;
		morphExtent: buttonExtent.
	self addMorph: btn.
	self positioningButtons 
	! !

!Ruler methodsFor: 'initialization' stamp: 'hlsf 9/7/2025 12:22:02'!
positioningButtons
| buttonWidth position |
	submorphs ifEmpty: [^ self].
	buttonWidth := submorphs first morphWidth.
	position := length rounded * self ppcm -4 @ 30.
	submorphs do: [:btn |
		btn morphPosition: position.
		position :=  position translatedBy:  - 4 - buttonWidth @ 0 ]
		! !

!Ruler methodsFor: 'geometry' stamp: 'hlsf 7/31/2025 14:36:31'!
rotationCenter
	^ `0@0`! !

!Ruler methodsFor: 'actions' stamp: 'hlsf 9/6/2025 15:56:45'!
resizeRuler
	| event prev |
	"any thing new to do?"
	event := self activeHand lastMouseEvent.
	event isMouseMove 
		ifTrue: [
			prev := lastHandPosition.
			lastHandPosition := self internalizeFromWorld: event eventPosition.
			self length: length + (lastHandPosition x - prev x / self ppcm)] 
		ifFalse: [lastHandPosition := self internalizeFromWorld: event eventPosition].! !

!Ruler methodsFor: 'actions' stamp: 'hlsf 9/6/2025 15:56:53'!
rotateRuler
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

!Ruler methodsFor: 'event handling' stamp: 'hlsf 9/7/2025 16:05:16'!
handlesMouseDown: event
	^ true! !

!Ruler methodsFor: 'event handling' stamp: 'hlsf 9/7/2025 18:13:55'!
mouseButton1Down: event localPosition: localPosition
	(self paper writingTool notNil and: [self strokeZone containsPoint: localPosition])
		ifTrue: [" initiate stroke along the ruler "
			lastHandPosition := nil.
			" Let the paper to handle the hand stroke, we only restrict the position to be aligned with the ruler!! "
			self paper mouseButton1Down: event  localPosition: (self externalize: localPosition x @ 0)]
		ifFalse: ["Initate a drag of the ruler " 
			lastHandPosition := self externalize: localPosition ]! !

!Ruler methodsFor: 'event handling' stamp: 'hlsf 9/7/2025 18:08:55'!
mouseButton1Up: event localPosition: localPosition
	lastHandPosition ifNil: [
		self paper mouseButton1Up: event localPosition: (self externalize: localPosition x @ 0)]! !

!Ruler methodsFor: 'event handling' stamp: 'hlsf 9/7/2025 18:09:31'!
mouseMove: event localPosition: localPosition 
	| externalposition |
	lastHandPosition 
		ifNil: [self paper mouseMove: event localPosition: (self externalize: localPosition x @ 0)]
		ifNotNil: [
			externalposition := self externalize: localPosition.
			self morphPosition: self morphPosition  + externalposition - lastHandPosition.
			lastHandPosition := externalposition ]! !

!Ruler methodsFor: 'copying' stamp: 'hlsf 9/7/2025 13:37:58'!
postCopy
	self length: length! !

!SetSquareMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 1/7/2022 14:59:16'!
drawOn: canvas
	| length  |
	length _ 205.
	canvas strokeWidth: 1 color: Color black fillColor: (Color yellow alpha: 0.8) do: [
		canvas moveTo: 0 @ 0 ; lineTo: length / 2.0 @ 0; lineTo: 0 @ length negated].
	canvas strokeWidth: 1 color: Color black fillColor: (Color white alpha: 1 ) do: [
		canvas moveTo: 20 @ 20 negated; lineTo: length / 2.0 -30 @ -20; lineTo: 20 @ (length negated + 80)]
	
	
	! !
