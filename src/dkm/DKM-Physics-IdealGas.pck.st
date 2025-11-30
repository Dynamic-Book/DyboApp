'From Cuis7.5 [latest update: #7689] on 30 November 2025 at 12:34:01 pm'!
'Description '!
!provides: 'DKM-Physics-IdealGas' 1 15!
!requires: 'DKM-Core' 1 0 nil!
SystemOrganization addCategory: #'DKM-Physics-IdealGas'!


!classDefinition: #IdealGasSimulation category: #'DKM-Physics-IdealGas'!
DKMPresenter subclass: #IdealGasSimulation
	instanceVariableNames: 'model view playing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'IdealGasSimulation class' category: #'DKM-Physics-IdealGas'!
IdealGasSimulation class
	instanceVariableNames: ''!

!classDefinition: #IdealGasSimulationModel category: #'DKM-Physics-IdealGas'!
Object subclass: #IdealGasSimulationModel
	instanceVariableNames: 'molecules walls simulationStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'IdealGasSimulationModel class' category: #'DKM-Physics-IdealGas'!
IdealGasSimulationModel class
	instanceVariableNames: ''!

!classDefinition: #Molecule category: #'DKM-Physics-IdealGas'!
Object subclass: #Molecule
	instanceVariableNames: 'position velocity bounced'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'Molecule class' category: #'DKM-Physics-IdealGas'!
Molecule class
	instanceVariableNames: ''!

!classDefinition: #Wall category: #'DKM-Physics-IdealGas'!
Object subclass: #Wall
	instanceVariableNames: 'extremity1 extremity2 normal director heating bounced speedT'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'Wall class' category: #'DKM-Physics-IdealGas'!
Wall class
	instanceVariableNames: ''!

!classDefinition: #MoleculeMorph category: #'DKM-Physics-IdealGas'!
Morph subclass: #MoleculeMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'MoleculeMorph class' category: #'DKM-Physics-IdealGas'!
MoleculeMorph class
	instanceVariableNames: ''!

!classDefinition: #WallMorph category: #'DKM-Physics-IdealGas'!
PlacedMorph subclass: #WallMorph
	instanceVariableNames: 'model heating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'WallMorph class' category: #'DKM-Physics-IdealGas'!
WallMorph class
	instanceVariableNames: ''!

!classDefinition: #IdealGasSimulationView category: #'DKM-Physics-IdealGas'!
LinearLayoutMorph subclass: #IdealGasSimulationView
	instanceVariableNames: 'presenter canvas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-IdealGas'!
!classDefinition: 'IdealGasSimulationView class' category: #'DKM-Physics-IdealGas'!
IdealGasSimulationView class
	instanceVariableNames: ''!


!IdealGasSimulation commentStamp: '<historical>' prior: 0!
The presenter of the Ideal Gas Simulation to handle the DSL, the controllers and associated callbacks.

(IdealGasSimulation new
	addFence: {0@0 . 300@0 . 300@200. 0@200};
	addWallFrom: 100@0 to: 80@85;
	addWallFrom: 100@200 to: 80@105;
	addMolecules: 1000 ;
	view) openInWorld!

!IdealGasSimulationModel commentStamp: '<historical>' prior: 0!
I simulate idea gas in a fence. Additional inside wall can be added.
Temperature of the walls and fence can be adjusted during the simulation.
We approximate 1 pixel = 10e-11 m

Real gas can be simulated, adding inter-molecules potential interactions.

- walls, a collection of wall models
- molecules, a collection of moleculte model (here just argon atom, not really molecule...)
- simulationStep, time interval between two step of the simulation
!

!Molecule commentStamp: '<historical>' prior: 0!
Model of a molecule in a gas simulation!

!Wall commentStamp: '<historical>' prior: 0!
A wall modelised as a thick line between extremitoes 1 and 2.!

!MoleculeMorph commentStamp: '<historical>' prior: 0!
A view of a molecule in a simulation
 - model, a Molecule instance!

!WallMorph commentStamp: '<historical>' prior: 0!
A view of a wall in a simulation
 - model, a Wall instance!

!IdealGasSimulationView commentStamp: '<historical>' prior: 0!
The ideal gas simulation view. My extent is computed depending on the installed walls in the simulation.
It comes with:
- a collection of buttons to pause/play the simulation
- a canvas to hold the simulation!

!IdealGasSimulation methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:26:37'!
model
	^ model! !

!IdealGasSimulation methodsFor: 'accessing' stamp: 'hlsf 11/17/2025 21:55:56'!
view
	^ view ifNil: [view := IdealGasSimulationView presenter: self]! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/19/2025 21:00:40'!
addFence: array4
	array4 size ~= 4 ifTrue: [self error: 'Fence must be a quadrangle'].
	array4 withPreviousCyclicDo: [:vertex1 :vertex2 | self addWallFrom: vertex1 to: vertex2 ]! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/19/2025 16:15:45'!
addMolecules: quantity
	model addMolecules: quantity at: nil! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/30/2025 12:18:18'!
addMolecules: quantity at: aPoint
	model addMolecules: quantity at: (aPoint ifNotNil: [IdealGasSimulation pixelToModel: aPoint])! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/30/2025 12:17:27'!
addWallFrom: extremity1 to: extremity2
"	Shift the wall position of the half width of the wall "
	model addWall: (Array 
		with: (IdealGasSimulation pixelToModel: extremity1 + (WallMorph thickness // 2) )
		with: (IdealGasSimulation pixelToModel: extremity2 + (WallMorph thickness // 2) ) 
		)! !

!IdealGasSimulation methodsFor: 'initialization' stamp: 'hlsf 11/19/2025 16:29:26'!
initialize
	model := IdealGasSimulationModel new.
	playing := false.! !

!IdealGasSimulation methodsFor: 'as yet unclassified' stamp: 'hlsf 11/19/2025 16:29:43'!
isPlaying
	^ playing ! !

!IdealGasSimulation methodsFor: 'as yet unclassified' stamp: 'hlsf 11/19/2025 16:31:36'!
playStopSimulation
	playing ifTrue: [view stopStepping] ifFalse: [view startStepping].
	playing := playing not.
	self changed: #isPlaying! !

!IdealGasSimulation class methodsFor: 'DKM' stamp: 'hlsf 11/29/2025 18:35:03'!
codeSample
	^ 'IdealGasSimulation new
	addFence: {0@0 . 300@0 . 300@200. 0@200};
	addWallFrom: 100@0 to: 80@85;
	addWallFrom: 100@200 to: 80@105;
	addMolecules: 1000 ;
	view'! !

!IdealGasSimulation class methodsFor: 'DKM' stamp: 'hlsf 11/29/2025 19:00:15'!
description
	^ 'A simulation of ideal gas. In top of the fence, arbitrary walls can be arranged inside the fence. Each wall temperature is adjusted by mouse clic.' translated! !

!IdealGasSimulation class methodsFor: 'DKM' stamp: 'hlsf 11/29/2025 23:47:56'!
svgIcon
	^'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!!--!!Font Awesome Free v5.15.4 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M156.7 256H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h142.2c15.9 0 30.8 10.9 33.4 26.6 3.3 20-12.1 37.4-31.6 37.4-14.1 0-26.1-9.2-30.4-21.9-2.1-6.3-8.6-10.1-15.2-10.1H81.6c-9.8 0-17.7 8.8-15.9 18.4 8.6 44.1 47.6 77.6 94.2 77.6 57.1 0 102.7-50.1 95.2-108.6C249 291 205.4 256 156.7 256zM16 224h336c59.7 0 106.8-54.8 93.8-116.7-7.6-36.2-36.9-65.5-73.1-73.1-55.4-11.6-105.1 24.9-114.9 75.5-1.9 9.6 6.1 18.3 15.8 18.3h32.8c6.7 0 13.1-3.8 15.2-10.1C325.9 105.2 337.9 96 352 96c19.4 0 34.9 17.4 31.6 37.4-2.6 15.7-17.4 26.6-33.4 26.6H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16zm384 32H243.7c19.3 16.6 33.2 38.8 39.8 64H400c26.5 0 48 21.5 48 48s-21.5 48-48 48c-17.9 0-33.3-9.9-41.6-24.4-2.9-5-8.7-7.6-14.5-7.6h-33.8c-10.9 0-19 10.8-15.3 21.1 17.8 50.6 70.5 84.8 129.4 72.3 41.2-8.7 75.1-41.6 84.7-82.7C526 321.5 470.5 256 400 256z"/></svg>'! !

!IdealGasSimulation class methodsFor: 'DKM' stamp: 'hlsf 11/29/2025 18:39:10'!
title 
	^ 'Ideal gas' translated! !

!IdealGasSimulation class methodsFor: 'convert' stamp: 'hlsf 11/30/2025 12:16:28'!
modelToPixel: aPosition
	^ aPosition * 1e11! !

!IdealGasSimulation class methodsFor: 'convert' stamp: 'hlsf 11/30/2025 12:16:33'!
pixelToModel: aPoint
	^ aPoint * 1e-11! !

!IdealGasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 11/16/2025 11:45:43'!
bounds
	^ Rectangle encompassing: self wallVertices :: encompass: 0@0! !

!IdealGasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 11/16/2025 18:51:21'!
isValidPosition: aPoint
" Does aPoint overlap any wall? "
	^ walls noneSatisfy: [:aWall | aWall isOverlappedBy: aPoint ]! !

!IdealGasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 11/16/2025 11:39:38'!
wallVertices
	^ (walls collect: [:aWall | aWall vertices]) flatten! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/30/2025 12:31:44'!
addMolecules: quantity at: aPosition
	| extent position |
	walls ifEmpty: [self error: 'Set the walls of the simulation first'].
	extent := IdealGasSimulation modelToPixel: self bounds extent.
	quantity timesRepeat: [
		aPosition ifNil: [
			[position := extent x atRandom @ extent y atRandom.
			self isValidPosition: position ] whileFalse].
		molecules add: (Molecule new position: (aPosition ifNil: [(IdealGasSimulation pixelToModel: position)]) ) ]! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 17:50:40'!
addWall: array
	walls add: (Wall new vertices: array)! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/17/2025 22:14:23'!
molecules
	^ molecules ! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 18:15:14'!
simulationStep: float
	simulationStep := float! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:38:02'!
walls
	^ walls! !

!IdealGasSimulationModel methodsFor: 'initialization' stamp: 'hlsf 11/27/2025 21:22:22'!
initialize
	walls := OrderedCollection new.
	molecules := OrderedCollection new.
	energy := 0.! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/27/2025 21:48:22'!
energy
	^ molecules inject: 0 into: [: theEnergy :aMolecule| 
		theEnergy + (0.5 * Molecule mass * (aMolecule velocity dotProduct: aMolecule velocity) )]! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/27/2025 21:49:19'!
temperature
	^ self energy / (IdealGasSimulationModel kb * molecules size)! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/30/2025 11:08:43'!
update
	self updateIdealGas ! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/30/2025 11:00:57'!
updateIdealGas
	| bounds |
	walls do: #reset.
	bounds := self bounds.
	molecules do: [:molecule | | newPosition |
		molecule reset.
		newPosition := molecule forwardPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | 
				collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [molecule position: newPosition].
		(bounds containsPoint: molecule position) ifFalse: [molecule position: bounds center] ]
	
	
	! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/30/2025 11:08:32'!
updateRealGas
	| bounds |
	walls do: #reset.
	bounds := self bounds.
	molecules do: [:molecule | | newPosition |
		molecule reset.
		newPosition := molecule forwardPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | 
				collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [molecule position: newPosition].
		(bounds containsPoint: molecule position) ifFalse: [molecule position: bounds center] ]
	
	
	! !

!IdealGasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 11/30/2025 11:39:33'!
cutOff
"	Cut off distance, potiential is considered zero over that distance "
	^ 3 * self delta 
! !

!IdealGasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 11/30/2025 11:39:29'!
delta
"	δ : distance at which the molecule-molecule potential energy is zero "
	^ 3.4e-10! !

!IdealGasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 11/30/2025 11:39:23'!
epsilon
"	ε : depth of the potential well "
	^ 1.66e-21! !

!IdealGasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 11/27/2025 21:29:30'!
kb
" Boltzmann constant "
	^ 1.3806e-23! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/23/2025 11:17:30'!
bounced
	bounced := true! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:20:33'!
forwardPosition: t
	^ velocity * t + position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:24:05'!
position
	^ position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:23:32'!
position: aPoint
	position := aPoint ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/23/2025 11:17:43'!
reset
	bounced := false! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:15:25'!
velocity 
	^ velocity ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:15:41'!
velocity: aPoint
	velocity := aPoint ! !

!Molecule methodsFor: 'initialization' stamp: 'hlsf 11/23/2025 11:16:03'!
initialize
	velocity := 340 + (30 atRandom - 15) * (100 atRandom - 50 @ (100 atRandom - 50)) normalized .
	bounced := false! !

!Molecule methodsFor: 'printing' stamp: 'hlsf 11/22/2025 10:14:58'!
printOn: aStream
	aStream nextPutAll: 'Molecule :: ('.
	position x printOn: aStream fractionDigits: 1.
	aStream nextPutAll: ' ; '.
	position y printOn: aStream fractionDigits: 1.
	aStream nextPutAll: ') v=('.
	velocity x printOn: aStream fractionDigits: 1.
	aStream nextPutAll: ' ; '.
	velocity y printOn: aStream fractionDigits: 1.
	aStream nextPut: $).! !

!Molecule methodsFor: 'model' stamp: 'hlsf 11/22/2025 10:18:26'!
updatePositionAt: t from: aPosition
	position := t * velocity + aPosition ! !

!Molecule class methodsFor: 'constants' stamp: 'hlsf 11/30/2025 11:09:35'!
mass
" Argon atom mass "
	^  6.6335e-26! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/23/2025 11:19:14'!
bounced
	^ bounced! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:01'!
extremity1
	^ extremity1 ! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:03'!
extremity2
	^ extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 09:48:24'!
heating
	^ heating! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/27/2025 21:28:43'!
heating: index
	heating := index.
	speedT := (2 * IdealGasSimulationModel kb * self temperature / Molecule mass) sqrt! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/27/2025 10:59:05'!
incrHeating
"	heating ∈ [1 ; 5]. 
	Cycle in this interval "
	self heating: heating \\ 5 + 1! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/27/2025 10:32:09'!
temperature
	^ self temperatures at: heating! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:44:43'!
vertices
	^ Array with: extremity1 with: extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 19:42:51'!
vertices: array
	extremity1 := array first.
	extremity2 := array second.
	director := (extremity2 - extremity1) normalized.
	normal := director y negated @ director x! !

!Wall methodsFor: 'testing' stamp: 'hlsf 11/16/2025 19:03:08'!
collidedByTrajectory: position1 to: position2
	^ extremity1 to: extremity2 intersects: position1 to: position2 ! !

!Wall methodsFor: 'testing' stamp: 'hlsf 11/30/2025 12:27:17'!
isOverlappedBy: aPoint
" 	Checking done in the screen coordinates system (pixels) "
	^ aPoint 
		onLineFrom: (IdealGasSimulation modelToPixel: extremity1)
		to: (IdealGasSimulation modelToPixel: extremity2)
		within: WallMorph thickness + MoleculeMorph radius! !

!Wall methodsFor: 'helpers' stamp: 'hlsf 11/16/2025 19:11:05'!
lineEquationParameters: point along: direction
" Given a point and a direction (vector) determine the cartesian equation parameter 
of the line going through a point and in a direction
Returns the parameters a, b and c of the equation ax + by + c = 0"
	^ Array 
		with: direction y 
		with: 0 - direction x 
		with: point y * direction x - (point x * direction y)! !

!Wall methodsFor: 'helpers' stamp: 'hlsf 11/16/2025 19:10:54'!
linesIntersectionOf: para1 and: para2
" Intersection between two lines charactersized by their equation parameters ax + by + c = 0 "
	| det |
	det := para2 first * para1 second - (para1 first * para2 second).
	(det  - 0) abs < 1e-5 ifTrue: [ ^ nil].
	^ Point
		x: para1 third  * para2 second - (para1 second * para2 third) / det
		y: para1 first * para2 third - (para1 third * para2 first) / det! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/27/2025 10:54:52'!
bounce: molecule over: newPosition with: timeInterval
	| collision t1 |
	collision := self intersectionWithTrajectory: molecule position to: newPosition. 
	collision ifNil: [^ molecule velocity: molecule velocity * (0.8@1.1)].
	bounced := true.
	t1 := (collision - molecule position) r / molecule velocity r.
	self diffuseBouncingVelocity: molecule.
	molecule updatePositionAt: timeInterval - t1 from: collision
! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/27/2025 19:23:34'!
diffuseBouncingVelocity: molecule
	| a b myNormal newVelocity |
	myNormal := (molecule velocity dotProduct: normal) < 0 
		ifTrue: [normal negated] 
		ifFalse: [normal].
	a := (Random next ln negated) sqrt * (Float twoPi * Random next) cos * speedT.
	b := (Random next ln negated) sqrt * speedT.
	newVelocity  := a * director - (b * myNormal ).
	molecule velocity: newVelocity ! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/18/2025 21:35:55'!
intersectionWithTrajectory: position1 to: position2
	^ self 
		linesIntersectionOf: (self lineEquationParameters: extremity1 along: extremity2 - extremity1)
		and: (self lineEquationParameters: position1 along: position2 - position1)! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/27/2025 10:39:21'!
stupidBouncingVelocity: molecule
	| a b newVelocity |
	a := molecule velocity dotProduct: director.
	b := molecule velocity dotProduct: normal.
	newVelocity  := a * director - (b * normal).
"	Make the direction to fluctuate of 10 degrees maximum"
	newVelocity := Point r: newVelocity r degrees: newVelocity degrees + (20 atRandom -10).
"	Apply the energy transfer "
	newVelocity := newVelocity * (1 + (heating * 2  / 10)).
"	Velocity remains below 500m/s "
	(newVelocity dotProduct: newVelocity) > `500 squared` 
		ifTrue: [ newVelocity := newVelocity normalized * 500].
	molecule velocity: newVelocity ! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/27/2025 11:05:46'!
temperatures
	^ `Array 
		with:  273.15 + (-273)
		with:  273.15 + (-100)
		with:  273.15 + (0)
		with:  273.15 + (20)
		with: 273.15 + (50)`! !

!Wall methodsFor: 'initialization' stamp: 'hlsf 11/27/2025 10:55:58'!
initialize
	self heating: 3.
	bounced := false! !

!Wall methodsFor: 'initialization' stamp: 'hlsf 11/23/2025 11:17:06'!
reset
	bounced := false! !

!Wall methodsFor: 'printing' stamp: 'hlsf 11/27/2025 21:13:44'!
printOn: aStream
	aStream nextPutAll: 'Wall :: '.
	extremity1 printOn: aStream.
	aStream nextPutAll: ' → '.
	extremity2 printOn: aStream .
	aStream nextPutAll: ', T = '.
	self temperature printOn: aStream .
	aStream nextPutAll: 'K'.
	! !

!MoleculeMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 11/17/2025 22:10:35'!
model: aMolecule
	model := aMolecule ! !

!MoleculeMorph methodsFor: 'drawing' stamp: 'hlsf 11/30/2025 10:54:48'!
drawOn: canvas
	canvas ellipseCenter: model position radius: MoleculeMorph radius borderWidth: 0 borderColor: nil fillColor: Color green.
"	canvas 
		ellipseCenter: model position 
		radius: (model position dist: (model forwardPosition: 0.01))
		borderWidth: 0.5 
		borderColor: Color white
		fillColor: nil.
"! !

!MoleculeMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/30/2025 10:54:36'!
radius
	^ 3! !

!WallMorph methodsFor: 'drawing' stamp: 'hlsf 11/30/2025 10:55:46'!
drawOn: canvas
	canvas line: model extremity1 to: model extremity2 width: WallMorph thickness color: (self colors at: model heating).
	model bounced ifTrue: [
		canvas line: model extremity1 to: model extremity2 width: 1 color: (self bounceColors at: model heating)]! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 11/23/2025 11:21:53'!
bounceColors
	^ `Array 
		with: Color blue muchLighter 
		with: Color blue 
		with: Color white
		with: Color red 
		with: Color red muchLighter `! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 11/23/2025 11:24:29'!
colors
	^ `Array 
		with: Color blue 
		with: Color blue muchLighter 
		with: Color grey muchLighter
		with:  Color red muchLighter 
		with: Color red`! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:39:48'!
model: wall
	model := wall ! !

!WallMorph methodsFor: 'event handling testing' stamp: 'hlsf 11/22/2025 09:43:25'!
handlesMouseDown:  event 
	^ true! !

!WallMorph methodsFor: 'initialization' stamp: 'hlsf 11/22/2025 09:47:33'!
initialize
	super initialize.
	heating := 0! !

!WallMorph methodsFor: 'events' stamp: 'hlsf 11/22/2025 09:56:01'!
mouseButton1Down: aEvent localPosition: aPosition 
"mouse click on the wall increase the heating parameter "
	model incrHeating.
	self redrawNeeded ! !

!WallMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/30/2025 10:55:18'!
thickness
	^ 10! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/30/2025 12:20:48'!
bounds
	^ IdealGasSimulation modelToPixel: self model bounds! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/19/2025 16:06:03'!
defaultBorderWidth
	^ 10 ! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:25:50'!
model
	^ presenter model! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:21:12'!
presenter: aPresenter
	presenter := aPresenter ! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/27/2025 21:53:49'!
temperatureString
	^ String streamContents: [:str |
		str nextPutAll: 'Temperature: '.
		self model temperature rounded printOn: str.
		str nextPutAll: ' K']! !

!IdealGasSimulationView methodsFor: 'initialization' stamp: 'hlsf 11/30/2025 12:21:00'!
initialize
	| row label |
	super initialize.
	self beColumn.
	self padding: 5@5.
"	Simulation step (δt)  at each view update (view' step and stepTime related):
	For a speed of 300 m.s ⁻¹, a molecule moves of 3m per view update (stepTime=0.1s) is visually appealing
	This makes a δt of 0.01 per stepTime (0.1), those δt=stepTime*0.1
	For a smoother animation, edit IdealGasSimulationView>>stepTime, ie 50, δt is set accordingly
"	
	self model simulationStep: (self stepTime /1000) / 10. 
	self morphExtent: self bounds corner + (borderWidth + padding * 2) asPoint + (10@50).
	canvas := ColoredBoxMorph new morphExtent: self bounds corner.
	canvas color: Color black.
	self addMorphUseAll: canvas.		
	row := LayoutMorph newRow.
	label := UpdatingLabelMorph new
		target: self;
		getSelector: #temperatureString;
		stepTime: 1000.
	row
		addMorph: label;
		 addMorph: (PluggableButtonMorph model: presenter stateGetter: #isPlaying action: #playStopSimulation label: 'Play').
	self addMorphKeepMorphHeight: row .
	self installSimulationViews.! !

!IdealGasSimulationView methodsFor: 'initialization' stamp: 'hlsf 11/27/2025 20:57:35'!
installSimulationViews
	self model molecules do: [:aMolecule | canvas addMorph: (MoleculeMorph new model: aMolecule) ].
	self model walls do: [:aWall | canvas addMorph: (WallMorph new model: aWall)]
! !

!IdealGasSimulationView methodsFor: 'stepping' stamp: 'hlsf 11/17/2025 21:46:23'!
step
	self model update.
	self redrawNeeded ! !

!IdealGasSimulationView methodsFor: 'stepping' stamp: 'hlsf 11/20/2025 11:17:32'!
stepTime
" Update the view every 100 millisecond, 0.1 s "
	^ 100! !

!IdealGasSimulationView class methodsFor: 'instance creation' stamp: 'hlsf 11/16/2025 11:20:42'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !
