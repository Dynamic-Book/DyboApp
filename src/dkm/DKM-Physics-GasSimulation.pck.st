'From Cuis7.5 [latest update: #7739] on 10 December 2025 at 9:56:03 pm'!
'Description '!
!provides: 'DKM-Physics-GasSimulation' 1 31!
!requires: 'DKM-Core' 1 0 nil!
SystemOrganization addCategory: #'DKM-Physics-GasSimulation'!


!classDefinition: #GasSimulation category: #'DKM-Physics-GasSimulation'!
DKMPresenter subclass: #GasSimulation
	instanceVariableNames: 'model view playing state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'GasSimulation class' category: #'DKM-Physics-GasSimulation'!
GasSimulation class
	instanceVariableNames: ''!

!classDefinition: #GasSimulationModel category: #'DKM-Physics-GasSimulation'!
Object subclass: #GasSimulationModel
	instanceVariableNames: 'molecules walls simulationStep reinject idealGas pixelExtent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'GasSimulationModel class' category: #'DKM-Physics-GasSimulation'!
GasSimulationModel class
	instanceVariableNames: ''!

!classDefinition: #Molecule category: #'DKM-Physics-GasSimulation'!
Object subclass: #Molecule
	instanceVariableNames: 'position velocity force'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'Molecule class' category: #'DKM-Physics-GasSimulation'!
Molecule class
	instanceVariableNames: ''!

!classDefinition: #Wall category: #'DKM-Physics-GasSimulation'!
Object subclass: #Wall
	instanceVariableNames: 'extremity1 extremity2 normal director heating bounced speedT'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'Wall class' category: #'DKM-Physics-GasSimulation'!
Wall class
	instanceVariableNames: ''!

!classDefinition: #MoleculeMorph category: #'DKM-Physics-GasSimulation'!
Morph subclass: #MoleculeMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'MoleculeMorph class' category: #'DKM-Physics-GasSimulation'!
MoleculeMorph class
	instanceVariableNames: ''!

!classDefinition: #WallMorph category: #'DKM-Physics-GasSimulation'!
PlacedMorph subclass: #WallMorph
	instanceVariableNames: 'model heating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'WallMorph class' category: #'DKM-Physics-GasSimulation'!
WallMorph class
	instanceVariableNames: ''!

!classDefinition: #GasSimulationCanvas category: #'DKM-Physics-GasSimulation'!
ColoredBoxMorph subclass: #GasSimulationCanvas
	instanceVariableNames: 'presenter sensorArea'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'GasSimulationCanvas class' category: #'DKM-Physics-GasSimulation'!
GasSimulationCanvas class
	instanceVariableNames: ''!

!classDefinition: #GasSimulationView category: #'DKM-Physics-GasSimulation'!
LinearLayoutMorph subclass: #GasSimulationView
	instanceVariableNames: 'presenter canvas temperatureViews'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'GasSimulationView class' category: #'DKM-Physics-GasSimulation'!
GasSimulationView class
	instanceVariableNames: ''!

!classDefinition: #TemperatureSensor category: #'DKM-Physics-GasSimulation'!
LinearLayoutMorph subclass: #TemperatureSensor
	instanceVariableNames: 'presenter measuredArea'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-Physics-GasSimulation'!
!classDefinition: 'TemperatureSensor class' category: #'DKM-Physics-GasSimulation'!
TemperatureSensor class
	instanceVariableNames: ''!


!GasSimulation commentStamp: '<historical>' prior: 0!
The presenter of the Gas Simulation to handle the DSL, the controllers and associated callbacks.

(GasSimulation new
	fenceOrigin: 0@0 corner: 300@200;
	addWallFrom: 100@0 to: 80@85;
	addWallFrom: 100@200 to: 80@105;
	addMolecules: 50 ;
	view) openInWorld!

!GasSimulationModel commentStamp: '<historical>' prior: 0!
I simulate idea gas in a fence. Additional inside wall can be added.
Temperature of the walls and fence can be adjusted during the simulation.

Real gas can be simulated, adding inter-molecules potential interactions.

- walls, a collection of wall models
- molecules, a collection of moleculte model (here just argon atom, not really molecule...)
- simulationStep, time interval between two step of the simulation
!

!Molecule commentStamp: '<historical>' prior: 0!
Model of a molecule in a gas simulation
!

!Wall commentStamp: '<historical>' prior: 0!
A wall modelised as a thick line between extremitoes 1 and 2.!

!MoleculeMorph commentStamp: '<historical>' prior: 0!
A view of a molecule in a simulation
 - model, a Molecule instance!

!WallMorph commentStamp: '<historical>' prior: 0!
A view of a wall in a simulation
 - model, a Wall instance!

!GasSimulationView commentStamp: '<historical>' prior: 0!
The gas simulation view. My extent is computed depending on the installed walls in the simulation.
It comes with:
- a collection of buttons to pause/play the simulation
- a canvas to hold the simulation!

!GasSimulation methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 11:26:37'!
model
	^ model! !

!GasSimulation methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:06:36'!
view
	^ view ifNil: [view := GasSimulationView presenter: self]! !

!GasSimulation methodsFor: 'DSL' stamp: 'hlsf 19/Nov/2025 16:15:45'!
addMolecules: quantity
	model addMolecules: quantity at: nil! !

!GasSimulation methodsFor: 'DSL' stamp: 'hlsf 6/Dec/2025 15:05:59'!
addMolecules: quantity at: aPoint
	model addMolecules: quantity at: (aPoint ifNotNil: [GasSimulation pixelToModel: aPoint])! !

!GasSimulation methodsFor: 'DSL' stamp: 'hlsf 8/Dec/2025 00:02:21'!
addWallFrom: extremity1 to: extremity2
"	Shift the wall position of the half width of the wall "
	model addWall: (Array 
		with: (GasSimulation pixelToModel: extremity1 +  (WallMorph thickness / 2.0) )
		with: (GasSimulation pixelToModel: extremity2 + (WallMorph thickness / 2.0) ) 
		)! !

!GasSimulation methodsFor: 'DSL' stamp: 'hlsf 7/Dec/2025 23:13:16'!
fenceOrigin: origin corner: corner
	self addWallFrom: origin to: corner x @ origin y;
		addWallFrom: corner x @origin y to: corner;
		addWallFrom: corner to: origin x @ corner y;
		addWallFrom: origin x @ corner y to: origin! !

!GasSimulation methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 15:36:01'!
initialize
	model := GasSimulationModel new.
	playing := false.
	self simulationState ! !

!GasSimulation methodsFor: 'callback' stamp: 'hlsf 10/Dec/2025 21:40:12'!
addTemperatureSensor
	self setSensorState ! !

!GasSimulation methodsFor: 'callback' stamp: 'hlsf 19/Nov/2025 16:31:36'!
playStopSimulation
	playing ifTrue: [view stopStepping] ifFalse: [view startStepping].
	playing := playing not.
	self changed: #isPlaying! !

!GasSimulation methodsFor: 'callback' stamp: 'hlsf 4/Dec/2025 11:03:07'!
toggleIdealGas
	model idealGas: model idealGas not! !

!GasSimulation methodsFor: 'callback' stamp: 'hlsf 4/Dec/2025 10:06:58'!
toggleReinjecting
	model reinject: model reinject not! !

!GasSimulation methodsFor: 'testing' stamp: 'hlsf 4/Dec/2025 11:02:48'!
isIdealGas
	^ model idealGas ! !

!GasSimulation methodsFor: 'testing' stamp: 'hlsf 19/Nov/2025 16:29:43'!
isPlaying
	^ playing ! !

!GasSimulation methodsFor: 'testing' stamp: 'hlsf 4/Dec/2025 10:06:29'!
isReinjecting
	^ model reinject! !

!GasSimulation methodsFor: 'testing' stamp: 'hlsf 10/Dec/2025 15:35:23'!
isStateSetSensor
	^ state = #setSensor! !

!GasSimulation methodsFor: 'state' stamp: 'hlsf 10/Dec/2025 15:34:57'!
setSensorState
	state := #setSensor! !

!GasSimulation methodsFor: 'state' stamp: 'hlsf 10/Dec/2025 15:35:09'!
simulationState
	state := #simulation! !

!GasSimulation methodsFor: 'as yet unclassified' stamp: 'hlsf 10/Dec/2025 20:58:48'!
newSensorIn: rectangle
	rectangle extent > (10@10) ifTrue: [view addSensorIn: rectangle]! !

!GasSimulation class methodsFor: 'DKM' stamp: 'hlsf 29/Nov/2025 18:35:03'!
codeSample
	^ 'IdealGasSimulation new
	addFence: {0@0 . 300@0 . 300@200. 0@200};
	addWallFrom: 100@0 to: 80@85;
	addWallFrom: 100@200 to: 80@105;
	addMolecules: 1000 ;
	view'! !

!GasSimulation class methodsFor: 'DKM' stamp: 'hlsf 29/Nov/2025 19:00:15'!
description
	^ 'A simulation of ideal gas. In top of the fence, arbitrary walls can be arranged inside the fence. Each wall temperature is adjusted by mouse clic.' translated! !

!GasSimulation class methodsFor: 'DKM' stamp: 'hlsf 29/Nov/2025 23:47:56'!
svgIcon
	^'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!!--!!Font Awesome Free v5.15.4 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M156.7 256H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h142.2c15.9 0 30.8 10.9 33.4 26.6 3.3 20-12.1 37.4-31.6 37.4-14.1 0-26.1-9.2-30.4-21.9-2.1-6.3-8.6-10.1-15.2-10.1H81.6c-9.8 0-17.7 8.8-15.9 18.4 8.6 44.1 47.6 77.6 94.2 77.6 57.1 0 102.7-50.1 95.2-108.6C249 291 205.4 256 156.7 256zM16 224h336c59.7 0 106.8-54.8 93.8-116.7-7.6-36.2-36.9-65.5-73.1-73.1-55.4-11.6-105.1 24.9-114.9 75.5-1.9 9.6 6.1 18.3 15.8 18.3h32.8c6.7 0 13.1-3.8 15.2-10.1C325.9 105.2 337.9 96 352 96c19.4 0 34.9 17.4 31.6 37.4-2.6 15.7-17.4 26.6-33.4 26.6H16c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16zm384 32H243.7c19.3 16.6 33.2 38.8 39.8 64H400c26.5 0 48 21.5 48 48s-21.5 48-48 48c-17.9 0-33.3-9.9-41.6-24.4-2.9-5-8.7-7.6-14.5-7.6h-33.8c-10.9 0-19 10.8-15.3 21.1 17.8 50.6 70.5 84.8 129.4 72.3 41.2-8.7 75.1-41.6 84.7-82.7C526 321.5 470.5 256 400 256z"/></svg>'! !

!GasSimulation class methodsFor: 'DKM' stamp: 'hlsf 29/Nov/2025 18:39:10'!
title 
	^ 'Ideal gas' translated! !

!GasSimulation class methodsFor: 'convert' stamp: 'hlsf 4/Dec/2025 09:42:00'!
modelToPixel: aPosition
	^ aPosition / self scale! !

!GasSimulation class methodsFor: 'convert' stamp: 'hlsf 4/Dec/2025 09:41:53'!
pixelToModel: aPoint
	^ aPoint * self scale! !

!GasSimulation class methodsFor: 'convert' stamp: 'hlsf 10/Dec/2025 21:09:53'!
rectModelToPixel: rect
	^ rect scaledBy: 1 / self scale! !

!GasSimulation class methodsFor: 'convert' stamp: 'hlsf 10/Dec/2025 21:10:15'!
rectPixelToModel: rect
	^ rect scaledBy: self scale! !

!GasSimulation class methodsFor: 'convert' stamp: 'hlsf 7/Dec/2025 23:19:58'!
scale
"	Length of one pixel in meter "
	^ 3e-11! !

!GasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 16/Nov/2025 11:45:43'!
bounds
	^ Rectangle encompassing: self wallVertices :: encompass: 0@0! !

!GasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 30/Nov/2025 23:47:20'!
centerBounds
	| bounds |
	bounds := self bounds.
	^ bounds topLeft + bounds bottomRight / 2! !

!GasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 6/Dec/2025 15:06:24'!
isValidPosition: aPoint
" Does aPoint overlap any wall? "
	| realPositon minDist |
	realPositon := GasSimulation pixelToModel: aPoint.
	minDist := GasSimulationModel delta * 1.1.
	^ (walls noneSatisfy: [:aWall | aWall isOverlappedBy: aPoint ])
		and: [molecules noneSatisfy: [:aMolecule | (aMolecule position dist: realPositon) < minDist ] ]
			! !

!GasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 6/Dec/2025 15:11:11'!
pixelExtent
	^ pixelExtent ifNil: [pixelExtent := (GasSimulation modelToPixel: self bounds extent) rounded]! !

!GasSimulationModel methodsFor: 'geometry' stamp: 'hlsf 16/Nov/2025 11:39:38'!
wallVertices
	^ (walls collect: [:aWall | aWall vertices]) flatten! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
addMolecules: quantity at: aPosition
	| position |
	walls ifEmpty: [self error: 'Set the walls of the simulation first'].
	quantity timesRepeat: [
		position := aPosition ifNil: [self suitablePositionForMolecule].
		molecules add: (Molecule new position: (GasSimulation pixelToModel: position) ) ]! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 17:50:40'!
addWall: array
	walls add: (Wall new vertices: array)! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 4/Dec/2025 11:01:35'!
idealGas
	^ idealGas ! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:08:24'!
idealGas: boolean
	idealGas := boolean! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 17/Nov/2025 22:14:23'!
molecules
	^ molecules ! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 4/Dec/2025 10:01:48'!
reinject
" Some molecule may escape de the fence, do we reinject them within the fence "
	^ reinject ! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 4/Dec/2025 10:01:57'!
reinject: boolean
	reinject := boolean ! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 30/Nov/2025 14:37:26'!
simulationStep
	^ simulationStep! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 18:15:14'!
simulationStep: float
	simulationStep := float! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:10:45'!
suitablePositionForMolecule
	| position |
	[position := self pixelExtent x atRandom @ self pixelExtent y atRandom.
	self isValidPosition: position ] whileFalse.
	^ position! !

!GasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 12:38:02'!
walls
	^ walls! !

!GasSimulationModel methodsFor: 'initialization' stamp: 'hlsf 6/Dec/2025 15:08:16'!
initialize
	walls := OrderedCollection new.
	molecules := OrderedCollection new.
	reinject := true.
	simulationStep := 1.0e-14.
	idealGas := true! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 10/Dec/2025 19:26:16'!
energy
	^ self energyOf: molecules! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 10/Dec/2025 19:26:03'!
energyOf: someMolecules
	^ someMolecules inject: 0 into: [: theEnergy :aMolecule| 
		theEnergy + (0.5 * Molecule mass * (aMolecule velocity dotProduct: aMolecule velocity) )]! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 6/Dec/2025 15:06:24'!
forcesOn: aMolecule
	| r rVector val e24 potentialMolecules cutOff |
	cutOff := GasSimulationModel cutOff squared.
	e24 := GasSimulationModel E₀ * 24.
	potentialMolecules := molecules select: [:anotherMolecule | | dist |
		dist := aMolecule position squaredDistanceTo: anotherMolecule position.
		anotherMolecule ~= aMolecule 
			and: [dist < cutOff
			and: [dist ~= 0] ] ].
	^ potentialMolecules inject: 0@0 into: [:subForces :nextMolecule | 
		rVector := aMolecule position - nextMolecule position.
		r := rVector r.
		val := (GasSimulationModel delta / r) raisedToInteger: 6. 
		subForces + ((e24 / r) *val * (2 * val -1) * rVector / r) ]
	! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 6/Dec/2025 15:06:24'!
temperature
	^ self energy / (GasSimulationModel kb * molecules size)! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 10/Dec/2025 21:29:49'!
temperatureIn: aRectangle
	| moleculesInArea |
	moleculesInArea := molecules select: [:molecule | aRectangle containsPoint: molecule position].
	^ moleculesInArea 
		ifEmpty: [0]  
		ifNotEmpty: [ 
			(self energyOf: moleculesInArea) / (GasSimulationModel kb * moleculesInArea size)]! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 8/Dec/2025 21:55:01'!
updateIdealGasSimulation
	| bounds |
	walls do: #reset.
	bounds := self bounds.
	molecules do: [:molecule | | newPosition |
		newPosition := molecule forwardPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [molecule position: newPosition].
		(reinject and: [(bounds containsPoint: molecule position) not]) 
			ifTrue: [molecule position: (GasSimulation pixelToModel: self suitablePositionForMolecule) ] ]
! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 6/Dec/2025 15:18:48'!
updateRealGas: molecule
"
	v1 : v(t + δt / 2)
"
	| v1 a |
	a := molecule force / Molecule mass.
	v1 := molecule velocity +  (a * simulationStep / 2).
	molecule position: molecule position + (v1 * simulationStep).
	molecule force: (self forcesOn: molecule).
	a := molecule force / Molecule mass.
	molecule velocity: v1 + (a * simulationStep / 2)
	
	! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 8/Dec/2025 22:03:37'!
updateRealGasSimulation
	| bounds |
	walls do: #reset.
	bounds := self bounds.
	molecules do: [:molecule | | newPosition |
		newPosition := molecule forwardPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [	self updateRealGas: molecule].
		(reinject and: [(bounds containsPoint: molecule position) not]) 
			ifTrue: [ " likely got creazy, calm it down if needed "
				molecule velocity r > 500 ifTrue: [molecule initialize].
				molecule position: (GasSimulation pixelToModel: self suitablePositionForMolecule) ] ]
	
	
	! !

!GasSimulationModel methodsFor: 'model' stamp: 'hlsf 4/Dec/2025 11:02:10'!
updateSimulation
	idealGas 
		ifFalse: [self updateRealGasSimulation]
		ifTrue: [self updateIdealGasSimulation ]
	
	! !

!GasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 3/Dec/2025 22:02:48'!
E₀ 
"	ε : depth of the potential well "
	^ 1.66e-21! !

!GasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 4/Dec/2025 09:50:50'!
cutOff
"	Cut off distance, potential is considered zero over that distance ≈ 10e-9 m  "
	^ 3 * self delta 
! !

!GasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 30/Nov/2025 11:39:29'!
delta
"	δ : distance at which the molecule-molecule potential energy is zero "
	^ 3.4e-10! !

!GasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 30/Nov/2025 11:39:23'!
epsilon
"	ε : depth of the potential well "
	^ 1.66e-21! !

!GasSimulationModel class methodsFor: 'constants' stamp: 'hlsf 27/Nov/2025 21:29:30'!
kb
" Boltzmann constant "
	^ 1.3806e-23! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 3/Dec/2025 22:22:44'!
force
	^ force! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 3/Dec/2025 23:15:26'!
force: aVector
"force print."
	force := aVector .! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 16:24:05'!
position
	^ position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 16:23:32'!
position: aPoint
	position := aPoint ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 22/Nov/2025 10:15:25'!
velocity 
	^ velocity ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 30/Nov/2025 22:20:04'!
velocity: aVector
	velocity := aVector ! !

!Molecule methodsFor: 'initialization' stamp: 'hlsf 6/Dec/2025 00:24:57'!
initialize
	| a |
	a := Random next * Float twoPi.
	velocity := (a cos @ a sin) * (340 + (0.5 - Random next * 20)). 
	force := 0@0.! !

!Molecule methodsFor: 'printing' stamp: 'hlsf 22/Nov/2025 10:14:58'!
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

!Molecule methodsFor: 'model' stamp: 'hlsf 22/Nov/2025 10:20:33'!
forwardPosition: t
	^ velocity * t + position! !

!Molecule methodsFor: 'model' stamp: 'hlsf 22/Nov/2025 10:18:26'!
updatePositionAt: t from: aPosition
	position := t * velocity + aPosition ! !

!Molecule class methodsFor: 'constants' stamp: 'hlsf 5/Dec/2025 22:43:16'!
mass
" Argon atom mass kg "
	^  6.6335e-26! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 23/Nov/2025 11:19:14'!
bounced
	^ bounced! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 12:46:01'!
extremity1
	^ extremity1 ! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 12:46:03'!
extremity2
	^ extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 22/Nov/2025 09:48:24'!
heating
	^ heating! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:06:24'!
heating: index
	heating := index.
	speedT := (2 * GasSimulationModel kb * self temperature / Molecule mass) sqrt! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 27/Nov/2025 10:59:05'!
incrHeating
"	heating ∈ [1 ; 5]. 
	Cycle in this interval "
	self heating: heating \\ 5 + 1! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 27/Nov/2025 10:32:09'!
temperature
	^ self temperatures at: heating! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 12:44:43'!
vertices
	^ Array with: extremity1 with: extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 19:42:51'!
vertices: array
	extremity1 := array first.
	extremity2 := array second.
	director := (extremity2 - extremity1) normalized.
	normal := director y negated @ director x! !

!Wall methodsFor: 'testing' stamp: 'hlsf 16/Nov/2025 19:03:08'!
collidedByTrajectory: position1 to: position2
	^ extremity1 to: extremity2 intersects: position1 to: position2 ! !

!Wall methodsFor: 'testing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
isOverlappedBy: aPoint
" 	Checking done in the screen coordinates system (pixels) "
	^ aPoint 
		onLineFrom: (GasSimulation modelToPixel: extremity1)
		to: (GasSimulation modelToPixel: extremity2)
		within: WallMorph thickness + MoleculeMorph radius! !

!Wall methodsFor: 'helpers' stamp: 'hlsf 16/Nov/2025 19:11:05'!
lineEquationParameters: point along: direction
" Given a point and a direction (vector) determine the cartesian equation parameter 
of the line going through a point and in a direction
Returns the parameters a, b and c of the equation ax + by + c = 0"
	^ Array 
		with: direction y 
		with: 0 - direction x 
		with: point y * direction x - (point x * direction y)! !

!Wall methodsFor: 'helpers' stamp: 'hlsf 30/Nov/2025 20:52:52'!
linesIntersectionOf: para1 and: para2
" Intersection between two lines charactersized by their equation parameters ax + by + c = 0 "
	| det |
	det := para2 first * para1 second - (para1 first * para2 second).
	(det  - 0) abs < 1e-100 ifTrue: [ ^ nil].
	^ Point
		x: para1 third  * para2 second - (para1 second * para2 third) / det
		y: para1 first * para2 third - (para1 third * para2 first) / det! !

!Wall methodsFor: 'model' stamp: 'hlsf 30/Nov/2025 22:10:28'!
bounce: molecule over: newPosition with: timeInterval
	| collision t1 |
	collision := self intersectionWithTrajectory: molecule position to: newPosition. 
	collision ifNil: [^ molecule velocity: molecule velocity * (0.8@1.1)].
	bounced := true.
	t1 := (collision - molecule position) r / molecule velocity r.
	self diffuseBouncingVelocity: molecule.
	molecule updatePositionAt: timeInterval - t1 from: collision
! !

!Wall methodsFor: 'model' stamp: 'hlsf 27/Nov/2025 19:23:34'!
diffuseBouncingVelocity: molecule
	| a b myNormal newVelocity |
	myNormal := (molecule velocity dotProduct: normal) < 0 
		ifTrue: [normal negated] 
		ifFalse: [normal].
	a := (Random next ln negated) sqrt * (Float twoPi * Random next) cos * speedT.
	b := (Random next ln negated) sqrt * speedT.
	newVelocity  := a * director - (b * myNormal ).
	molecule velocity: newVelocity ! !

!Wall methodsFor: 'model' stamp: 'hlsf 18/Nov/2025 21:35:55'!
intersectionWithTrajectory: position1 to: position2
	^ self 
		linesIntersectionOf: (self lineEquationParameters: extremity1 along: extremity2 - extremity1)
		and: (self lineEquationParameters: position1 along: position2 - position1)! !

!Wall methodsFor: 'model' stamp: 'hlsf 27/Nov/2025 10:39:21'!
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

!Wall methodsFor: 'model' stamp: 'hlsf 27/Nov/2025 11:05:46'!
temperatures
	^ `Array 
		with:  273.15 + (-273)
		with:  273.15 + (-100)
		with:  273.15 + (0)
		with:  273.15 + (20)
		with: 273.15 + (50)`! !

!Wall methodsFor: 'initialization' stamp: 'hlsf 27/Nov/2025 10:55:58'!
initialize
	self heating: 3.
	bounced := false! !

!Wall methodsFor: 'initialization' stamp: 'hlsf 23/Nov/2025 11:17:06'!
reset
	bounced := false! !

!Wall methodsFor: 'printing' stamp: 'hlsf 27/Nov/2025 21:13:44'!
printOn: aStream
	aStream nextPutAll: 'Wall :: '.
	extremity1 printOn: aStream.
	aStream nextPutAll: ' → '.
	extremity2 printOn: aStream .
	aStream nextPutAll: ', T = '.
	self temperature printOn: aStream .
	aStream nextPutAll: 'K'.
	! !

!MoleculeMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 17/Nov/2025 22:10:35'!
model: aMolecule
	model := aMolecule ! !

!MoleculeMorph methodsFor: 'drawing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
drawOn: canvas
	canvas 
		ellipseCenter: (GasSimulation modelToPixel: model position) 
		radius: MoleculeMorph radius 
		borderWidth: 0 
		borderColor: nil 
		fillColor: Color green! !

!MoleculeMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 30/Nov/2025 10:54:36'!
radius
	^ 3! !

!WallMorph methodsFor: 'drawing' stamp: 'hlsf 6/Dec/2025 00:27:23'!
drawOn: canvas
	canvas line: self extremity1 to: self extremity2 width: WallMorph thickness color: ((self colors at: model heating) alpha: 0.8).
	model bounced ifTrue: [
		canvas line: self extremity1 to: self extremity2 width: 1 color: (self bounceColors at: model heating)]! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 23/Nov/2025 11:21:53'!
bounceColors
	^ `Array 
		with: Color blue muchLighter 
		with: Color blue 
		with: Color white
		with: Color red 
		with: Color red muchLighter `! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 23/Nov/2025 11:24:29'!
colors
	^ `Array 
		with: Color blue 
		with: Color blue muchLighter 
		with: Color grey muchLighter
		with:  Color red muchLighter 
		with: Color red`! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
extremity1
	^ GasSimulation modelToPixel: model extremity1 ! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
extremity2
	^ GasSimulation modelToPixel: model extremity2! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 12:39:48'!
model: wall
	model := wall ! !

!WallMorph methodsFor: 'event handling testing' stamp: 'hlsf 22/Nov/2025 09:43:25'!
handlesMouseDown:  event 
	^ true! !

!WallMorph methodsFor: 'initialization' stamp: 'hlsf 22/Nov/2025 09:47:33'!
initialize
	super initialize.
	heating := 0! !

!WallMorph methodsFor: 'events' stamp: 'hlsf 22/Nov/2025 09:56:01'!
mouseButton1Down: aEvent localPosition: aPosition 
"mouse click on the wall increase the heating parameter "
	model incrHeating.
	self redrawNeeded ! !

!WallMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 30/Nov/2025 10:55:18'!
thickness
	^ 10! !

!GasSimulationCanvas methodsFor: 'accessing' stamp: 'hlsf 10/Dec/2025 21:41:08'!
initialize
	super initialize.
	self color: Color black.
	sensorArea := nil! !

!GasSimulationCanvas methodsFor: 'accessing' stamp: 'hlsf 10/Dec/2025 15:22:51'!
presenter: aPresenter
	presenter := aPresenter ! !

!GasSimulationCanvas methodsFor: 'drawing' stamp: 'hlsf 10/Dec/2025 21:41:16'!
drawOn: canvas
	super drawOn: canvas.
	 (presenter isStateSetSensor and: [sensorArea notNil])
		ifTrue: [canvas frameRectangle: sensorArea borderWidth: 2 color: Color white]! !

!GasSimulationCanvas methodsFor: 'event handling testing' stamp: 'hlsf 10/Dec/2025 15:33:42'!
handlesMouseDown: aMouseButtonEvent
	^ presenter isStateSetSensor ! !

!GasSimulationCanvas methodsFor: 'events' stamp: 'hlsf 10/Dec/2025 21:52:26'!
mouseButton1Down: event localPosition: localPosition 
	sensorArea := localPosition corner: localPosition ! !

!GasSimulationCanvas methodsFor: 'events' stamp: 'hlsf 10/Dec/2025 21:42:32'!
mouseButton1Up: event localPosition: localPosition 
	sensorArea := Rectangle origin: sensorArea origin corner: localPosition.
	presenter simulationState;
		newSensorIn: sensorArea.
	sensorArea := nil.
	self redrawNeeded ! !

!GasSimulationCanvas methodsFor: 'events' stamp: 'hlsf 10/Dec/2025 21:50:47'!
mouseMove: event localPosition: localPosition
	(event anyButtonPressed and: [presenter isStateSetSensor]) ifFalse: [^ self].
	sensorArea := Rectangle origin: sensorArea origin corner: localPosition.
	self redrawNeeded ! !

!GasSimulationCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/Dec/2025 15:22:32'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 15:05:59'!
bounds
	| modelBounds |
	modelBounds := self model bounds.
	^ Rectangle 
		origin: (GasSimulation modelToPixel: modelBounds origin)
		corner: (GasSimulation modelToPixel: modelBounds corner)! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 19/Nov/2025 16:06:03'!
defaultBorderWidth
	^ 10 ! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 11:25:50'!
model
	^ presenter model! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 6/Dec/2025 17:06:57'!
presenter
	^ presenter! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2025 11:21:12'!
presenter: aPresenter
	presenter := aPresenter ! !

!GasSimulationView methodsFor: 'accessing' stamp: 'hlsf 27/Nov/2025 21:53:49'!
temperatureString
	^ String streamContents: [:str |
		str nextPutAll: 'Temperature: '.
		self model temperature rounded printOn: str.
		str nextPutAll: ' K']! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 21:28:57'!
addSensorIn: rectangle
	| temperatureView |
	temperatureView := TemperatureSensor presenter: presenter.
	temperatureView measuredArea: (GasSimulation rectPixelToModel: rectangle).
	temperatureViews addMorph: temperatureView ! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 21:28:25'!
initialize
	super initialize.
	self beRow.
	self padding: 4@5; gap: 10.
	self addMorph: self simulationView ;
		addMorph: self temperatureViews layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0)! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 8/Dec/2025 22:58:32'!
installButtons
	| row |
	row := LayoutMorph newRow.
	row
		addMorph: (PluggableButtonMorph model: presenter stateGetter: #isReinjecting action: #toggleReinjecting label: 'Re-inject');
		addMorph: (PluggableButtonMorph model: presenter stateGetter: #isIdealGas action: #toggleIdealGas label: 'Ideal Gas');
		addMorph: (PluggableButtonMorph model: presenter stateGetter: #isPlaying action: #playStopSimulation label: 'Play').
	^ row
	! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 15:24:09'!
simulationView
	| view |
	canvas := GasSimulationCanvas presenter: presenter ::
		morphExtent: self bounds corner + WallMorph thickness - 2.
	view := LayoutMorph newColumn.
	view 
		addMorph: canvas layoutSpec: LayoutSpec keepMorphExtent;
		addMorph: self installButtons layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0).
	self model molecules do: [:aMolecule | canvas addMorph: (MoleculeMorph new model: aMolecule) ].
	self model walls do: [:aWall | canvas addMorph: (WallMorph new model: aWall)].
	^ view! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 9/Dec/2025 18:46:33'!
temperatureSensorAt: aRectangle! !

!GasSimulationView methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 21:40:23'!
temperatureViews
	| label row btn |
	temperatureViews := LayoutMorph newColumn.
	row := LayoutMorph newRow.
	label := UpdatingLabelMorph new
		target: self;
		getSelector: #temperatureString;
		stepTime: 1000.
	btn := PluggableButtonMorph model: presenter action:  #addTemperatureSensor ::
		setBalloonText: 'Add a temperature sensor for a designated rectangular area.' translated;
		icon: Theme current listAddIcon.
	row gap: 5;
		addMorphUseAll: label;
		addMorph: btn layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0).
	temperatureViews addMorph: row.
	^ temperatureViews! !

!GasSimulationView methodsFor: 'stepping' stamp: 'hlsf 3/Dec/2025 21:22:19'!
step
	self model updateSimulation.
	self redrawNeeded ! !

!GasSimulationView methodsFor: 'stepping' stamp: 'hlsf 5/Dec/2025 23:17:31'!
stepTime
" Update the view every 100 millisecond, 0.1 s "
	^ 10! !

!GasSimulationView class methodsFor: 'instance creation' stamp: 'hlsf 16/Nov/2025 11:20:42'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!TemperatureSensor methodsFor: 'accessing' stamp: 'hlsf 9/Dec/2025 18:57:36'!
measuredArea: aRectangle
" 	In model coordinates "
	measuredArea := aRectangle ! !

!TemperatureSensor methodsFor: 'accessing' stamp: 'hlsf 9/Dec/2025 18:54:19'!
presenter: aPresenter
	presenter := aPresenter ! !

!TemperatureSensor methodsFor: 'accessing' stamp: 'hlsf 10/Dec/2025 21:04:59'!
simulationModel
	^ presenter model! !

!TemperatureSensor methodsFor: 'accessing' stamp: 'hlsf 10/Dec/2025 21:14:58'!
temperatureString
	^ String streamContents: [:str |
		str nextPutAll: 'temperature: '.
		(self simulationModel temperatureIn: measuredArea) rounded printOn: str.
		str nextPutAll: ' K']! !

!TemperatureSensor methodsFor: 'callback' stamp: 'hlsf 10/Dec/2025 21:36:29'!
removeSensor
	owner removeMorph: self! !

!TemperatureSensor methodsFor: 'initialization' stamp: 'hlsf 10/Dec/2025 21:35:12'!
initialize
	| label deleteBtn |
	super initialize.
	self beRow;
		gap: 4.
	label := UpdatingLabelMorph new
		target: self;
		getSelector: #temperatureString;
		stepTime: 1000.
	deleteBtn := PluggableButtonMorph model: self action: #removeSensor :: 
		icon: Theme current deleteIcon;
		setBalloonText: 'Remove this temperature sensor.' translated.
	self addMorphUseAll: label;
		addMorph: deleteBtn layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0)! !

!TemperatureSensor class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/Dec/2025 18:53:42'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter;
		initialize;
		yourself! !
