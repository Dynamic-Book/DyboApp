'From Cuis7.5 [latest update: #7387] on 30 July 2025 at 11:49:55 am'!
'Description '!
!provides: 'Morphic-DrawingTools' 1 24!
!requires: 'VectorGraphics' 1 185 nil!
SystemOrganization addCategory: #'Morphic-DrawingTools'!


!classDefinition: #CompassMorph category: #'Morphic-DrawingTools'!
PlacedMorph subclass: #CompassMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DrawingTools'!
!classDefinition: 'CompassMorph class' category: #'Morphic-DrawingTools'!
CompassMorph class
	instanceVariableNames: ''!

!classDefinition: #ProtractorMorph category: #'Morphic-DrawingTools'!
PlacedMorph subclass: #ProtractorMorph
	instanceVariableNames: 'previousHandPosition font zeroAtRight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DrawingTools'!
!classDefinition: 'ProtractorMorph class' category: #'Morphic-DrawingTools'!
ProtractorMorph class
	instanceVariableNames: ''!

!classDefinition: #RulerMorph category: #'Morphic-DrawingTools'!
PlacedMorph subclass: #RulerMorph
	instanceVariableNames: 'width'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DrawingTools'!
!classDefinition: 'RulerMorph class' category: #'Morphic-DrawingTools'!
RulerMorph class
	instanceVariableNames: ''!

!classDefinition: #SetSquareMorph category: #'Morphic-DrawingTools'!
PlacedMorph subclass: #SetSquareMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DrawingTools'!
!classDefinition: 'SetSquareMorph class' category: #'Morphic-DrawingTools'!
SetSquareMorph class
	instanceVariableNames: ''!

!classDefinition: #ToolButtonMorph category: #'Morphic-DrawingTools'!
PluggableButtonMorph subclass: #ToolButtonMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-DrawingTools'!
!classDefinition: 'ToolButtonMorph class' category: #'Morphic-DrawingTools'!
ToolButtonMorph class
	instanceVariableNames: ''!


!ToolButtonMorph commentStamp: '<historical>' prior: 0!
A button with icon or text to plug on a drawing tool!

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

!ProtractorMorph methodsFor: 'action' stamp: 'hlsf 1/7/2022 14:56:19'!
rotateProtractor
	| event p1 v1 v2|
	"any thing new to do?"
	event _ self activeHand lastMouseEvent.
	event isMove 
		ifTrue: [
			p1 _ location transform: 0@0.
			v1 _ previousHandPosition - p1.
			previousHandPosition _ event eventPosition.
			v2 _ 	previousHandPosition - p1.
			(v1 isZero or: [v2 isZero]) ifTrue: [^self].
			self rotateBy:  ((v1 crossProduct: v2) / (v1 r * v2 r)) arcSin	] 
		ifFalse: [
			previousHandPosition _ event eventPosition].! !

!ProtractorMorph methodsFor: 'action' stamp: 'hlsf 1/7/2022 14:56:00'!
scaleProtractor
	| event p1 v1 v2|
	"any thing new to do?"
	event _ self activeHand lastMouseEvent.
	event isMove 
		ifTrue: [
			p1 _ location transform: 0@0.
			v1 _ previousHandPosition - p1.
			previousHandPosition _ event eventPosition.
			v2 _ 	previousHandPosition - p1.
			v1 = v2 ifTrue: [^self].
			self scaleBy:  v2 r / v1 r	] 
		ifFalse: [
			previousHandPosition _ event eventPosition].! !

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

!RulerMorph methodsFor: 'drawing' stamp: 'hlsf 7/30/2025 11:26:14'!
drawOn: canvas
	| font grad posX extent step |
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
	extent := width * self ppcm + (self ppcm / 2) @ 60.
	
	canvas fillRectangle: (-5@0 corner: extent x @ 25) color: (Color yellow alpha: 0.8).
	canvas fillRectangle: (-5@25 corner: extent ) color: (Color yellow alpha: 0.4).
	canvas frameRectangle: (-5@0 corner: extent) borderWidth: 0.5 color: Color yellow muchDarker .

	step := self ppcm / 2. " half centimeter step "
	canvas strokeWidth: 0.8 color: Color black do: [
		posX := 0.
		width + 1 timesRepeat: [
			canvas moveTo: posX @ 0.5; lineToY: 10.
			canvas moveTo: (posX  + step) @ 0.5 ; lineToY: 6.
			posX := posX + self ppcm] ].

	step := self ppcm / 10. "millimeter step "
	canvas strokeWidth: 0.3 color: Color black do: [
		posX := step.
		width * 2 + 1 timesRepeat: [
			4 timesRepeat: [
				canvas moveTo: posX @ 0.2; lineToY: 4.
				posX := posX + step].
			posX := posX + step] ].
	
	grad := posX := 0.
	width + 1 timesRepeat: [
		canvas drawString: grad asString atCenterX: posX @12 font: font color: Color black.
		grad := grad + 1.
		posX := posX + self ppcm].! !

!RulerMorph methodsFor: 'accessing' stamp: 'hlsf 7/30/2025 10:25:02'!
ppcm
" pixels per cm "
	^ 50.0! !

!RulerMorph methodsFor: 'initialization' stamp: 'hlsf 7/30/2025 11:36:54'!
initialize
	super initialize.
	width := 10 "cm"! !

!RulerMorph methodsFor: 'geometry' stamp: 'hlsf 7/30/2025 09:14:26'!
rotationCenter
	^ `0@0`! !

!SetSquareMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 1/7/2022 14:59:16'!
drawOn: canvas
	| length  |
	length _ 205.
	canvas strokeWidth: 1 color: Color black fillColor: (Color yellow alpha: 0.8) do: [
		canvas moveTo: 0 @ 0 ; lineTo: length / 2.0 @ 0; lineTo: 0 @ length negated].
	canvas strokeWidth: 1 color: Color black fillColor: (Color white alpha: 1 ) do: [
		canvas moveTo: 20 @ 20 negated; lineTo: length / 2.0 -30 @ -20; lineTo: 20 @ (length negated + 80)]
	
	
	! !

!ToolButtonMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 1/7/2022 14:42:31'!
drawOn: canvas
	canvas ellipseCenter: 0 radius:  icon extent // 2 borderWidth: 1 borderColor: Color black fillColor: color.
	canvas image: icon at: 0@0! !
