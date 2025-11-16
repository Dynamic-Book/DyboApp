'From Cuis7.5 [latest update: #7689] on 16 November 2025 at 7:52:49 pm'!
'Description '!
!provides: 'DyboDKM-Physics' 1 1!
SystemOrganization addCategory: #'DyboDKM-Physics'!


!classDefinition: #IdealGasSimulation category: #'DyboDKM-Physics'!
Object subclass: #IdealGasSimulation
	instanceVariableNames: 'model view'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'IdealGasSimulation class' category: #'DyboDKM-Physics'!
IdealGasSimulation class
	instanceVariableNames: ''!

!classDefinition: #IdealGasSimulationModel category: #'DyboDKM-Physics'!
Object subclass: #IdealGasSimulationModel
	instanceVariableNames: 'molecules walls simulationStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'IdealGasSimulationModel class' category: #'DyboDKM-Physics'!
IdealGasSimulationModel class
	instanceVariableNames: ''!

!classDefinition: #Molecule category: #'DyboDKM-Physics'!
Object subclass: #Molecule
	instanceVariableNames: 'position speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'Molecule class' category: #'DyboDKM-Physics'!
Molecule class
	instanceVariableNames: ''!

!classDefinition: #Wall category: #'DyboDKM-Physics'!
Object subclass: #Wall
	instanceVariableNames: 'extremity1 extremity2 normal director'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'Wall class' category: #'DyboDKM-Physics'!
Wall class
	instanceVariableNames: ''!

!classDefinition: #MoleculeMorph category: #'DyboDKM-Physics'!
Morph subclass: #MoleculeMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'MoleculeMorph class' category: #'DyboDKM-Physics'!
MoleculeMorph class
	instanceVariableNames: ''!

!classDefinition: #WallMorph category: #'DyboDKM-Physics'!
PlacedMorph subclass: #WallMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'WallMorph class' category: #'DyboDKM-Physics'!
WallMorph class
	instanceVariableNames: ''!

!classDefinition: #IdealGasSimulationView category: #'DyboDKM-Physics'!
FormLayoutMorph subclass: #IdealGasSimulationView
	instanceVariableNames: 'presenter canvas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'IdealGasSimulationView class' category: #'DyboDKM-Physics'!
IdealGasSimulationView class
	instanceVariableNames: ''!


!IdealGasSimulation commentStamp: '<historical>' prior: 0!
The presenter of the Ideal Gas Simulation to handle the DSL, the controllers and associated callbacks!

!IdealGasSimulationModel commentStamp: '<historical>' prior: 0!
timeStep, time interval between two step of the simulation!

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

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/16/2025 17:53:07'!
addMolecules: quantity
	model addMolecules: quantity ! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/16/2025 17:53:29'!
addWallFrom: extremity1 to: extremity2
	model addWall: (Array with: extremity1 with: extremity2)! !

!IdealGasSimulation methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 18:16:45'!
initialize
	model := IdealGasSimulation new.
	view := IdealGasSimulationView presenter: self.
"
 	Simulation real world stepping time is 0.01s.
	For a speed of 300 m.s ⁻¹, at each simulation step, a molecule moves of 3 m
"	
	model simulationStep: 0.01 / (view stepTime / 1000) ! !

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

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:20:40'!
addMolecules: quantity
	| extent position |
	walls ifEmpty: [self error: 'Set the walls of the simulation first'].
	extent := self bounds extent.
	quantity timesRepeat: [
		[position := extent x atRandom @ extent y atRandom.
		self isValidPosition: position ] whileFalse.
		molecules add: (Molecule new position: position)]! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 17:50:40'!
addWall: array
	walls add: (Wall new vertices: array)! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 18:15:14'!
simulationStep: float
	simulationStep := float! !

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:38:02'!
walls
	^ walls! !

!IdealGasSimulationModel methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 15:58:05'!
initialize
	walls := OrderedCollection new.
	molecules := OrderedCollection new.! !

!IdealGasSimulationModel methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 19:51:39'!
update
	molecules do: [:molecule | | newPosition |
		newPosition := molecule nextPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [molecule position: newPosition]
		]
	
	
	! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 18:45:48'!
nextPosition: t
	^ speed * t + position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:24:05'!
position
	^ position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:23:32'!
position: aPoint
	position := aPoint ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:24:13'!
speed 
	^ speed ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:24:22'!
speed: aPoint
	speed := aPoint ! !

!Molecule methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 18:37:44'!
initialize
	speed := 340 + (20 atRandom - 10) * (100 atRandom @ 100 atRandom) normalized ! !

!Molecule class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 16:38:52'!
radius
	^ 3! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:01'!
extremity1
	^ extremity1 ! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:03'!
extremity2
	^ extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 19:14:24'!
intersectionWithTrajectory: position1 to: position2
	^ self 
		linesIntersectionOf: (self lineEquationParameters: extremity1 along: extremity2)
		and: (self lineEquationParameters: position1 along: position2)! !

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

!Wall methodsFor: 'testing' stamp: 'hlsf 11/16/2025 18:50:06'!
isOverlappedBy: aPoint
	^ aPoint onLineFrom: extremity1 to: extremity2 within: Wall thickness + Molecule radius! !

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

!Wall methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 19:41:23'!
bounce: molecule at: t1 to: timeInterval
	! !

!Wall methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 19:51:09'!
bounce: molecule over: newPosition with: timeInterval
	| a b collision t1 |
	collision := self intersectionWithTrajectory: molecule to: newPosition.
	t1 := (collision - molecule position) / molecule speed.
	a := molecule speed * director.
	b := molecule speed * normal.
	molecule 
		speed: a * director - (b * normal);
		position: (timeInterval - t1) * molecule speed + collision
! !

!Wall class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 16:39:17'!
thickness
	^ 5! !

!WallMorph methodsFor: 'drawing' stamp: 'hlsf 11/16/2025 16:39:41'!
drawOn: canvas
	canvas line: model extremity1 to: model extremity2 width: Wall thickness color: Color white! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:39:48'!
model: wall
	model := wall ! !

!WallMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 12:39:25'!
on: wall
	^ self basicNew
		model: wall;
		initialize
		! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:25:50'!
model
	^ presenter model! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:21:12'!
presenter: aPresenter
	presenter := aPresenter ! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 18:02:31'!
stepTime
" Update the view every 100 millisecond, 0.1 s "
	^ 100! !

!IdealGasSimulationView methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 12:46:44'!
initialize
	super initialize.
	canvas := ColoredBoxMorph new morphExtent: self model bounds corner.
	canvas color: Color black.
	self addMorph: canvas
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 0@0 offset: 0@0 
			brEdgesWeight: 1@1 offset: 0@-20).! !

!IdealGasSimulationView class methodsFor: 'instance creation' stamp: 'hlsf 11/16/2025 11:20:42'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !
