'From Cuis7.5 [latest update: #7689] on 22 November 2025 at 12:11:09 pm'!
'Description '!
!provides: 'DyboDKM-Physics' 1 7!
SystemOrganization addCategory: #'DyboDKM-Physics'!


!classDefinition: #IdealGasSimulation category: #'DyboDKM-Physics'!
Object subclass: #IdealGasSimulation
	instanceVariableNames: 'model view playing'
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
	instanceVariableNames: 'position velocity'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'Molecule class' category: #'DyboDKM-Physics'!
Molecule class
	instanceVariableNames: ''!

!classDefinition: #Wall category: #'DyboDKM-Physics'!
Object subclass: #Wall
	instanceVariableNames: 'extremity1 extremity2 normal director heating'
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
	instanceVariableNames: 'model heating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'WallMorph class' category: #'DyboDKM-Physics'!
WallMorph class
	instanceVariableNames: ''!

!classDefinition: #IdealGasSimulationView category: #'DyboDKM-Physics'!
LinearLayoutMorph subclass: #IdealGasSimulationView
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

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/19/2025 16:16:25'!
addMolecules: quantity at: aPosition
	model addMolecules: quantity at: aPosition ! !

!IdealGasSimulation methodsFor: 'DSL' stamp: 'hlsf 11/22/2025 10:02:43'!
addWallFrom: extremity1 to: extremity2
"	Shift the wall position of the half width of the wall "
	model addWall: (Array 
		with: extremity1 + (Wall thickness // 2) 
		with: extremity2 + (Wall thickness // 2) )! !

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

!IdealGasSimulationModel methodsFor: 'accessing' stamp: 'hlsf 11/19/2025 16:15:11'!
addMolecules: quantity at: aPosition
	| extent position |
	walls ifEmpty: [self error: 'Set the walls of the simulation first'].
	extent := self bounds extent.
	quantity timesRepeat: [
		aPosition ifNil: [
			[position := extent x atRandom @ extent y atRandom.
			self isValidPosition: position ] whileFalse].
		molecules add: (Molecule new position: (aPosition ifNil: [position]) ) ]
		! !

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

!IdealGasSimulationModel methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 15:58:05'!
initialize
	walls := OrderedCollection new.
	molecules := OrderedCollection new.! !

!IdealGasSimulationModel methodsFor: 'model' stamp: 'hlsf 11/22/2025 12:08:26'!
update
	| bounds |
	bounds := self bounds.
	molecules do: [:molecule | | newPosition |
		newPosition := molecule forwardPosition: simulationStep.
		walls 
			detect:  [:aWall | aWall collidedByTrajectory: molecule position to: newPosition]
			ifFound: [:collidedWall | 
				collidedWall bounce: molecule over: newPosition with: simulationStep]
			ifNone: [molecule position: newPosition].
		(bounds containsPoint: molecule position) ifFalse: [molecule position: bounds center] 	
		]
	
	
	! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:20:33'!
forwardPosition: t
	^ velocity * t + position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:24:05'!
position
	^ position! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 16:23:32'!
position: aPoint
	position := aPoint ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:15:25'!
velocity 
	^ velocity ! !

!Molecule methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 10:15:41'!
velocity: aPoint
	velocity := aPoint ! !

!Molecule methodsFor: 'initialization' stamp: 'hlsf 11/22/2025 10:14:58'!
initialize
	velocity := 340 + (30 atRandom - 15) * (100 atRandom - 50 @ (100 atRandom - 50)) normalized ! !

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

!Molecule class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/16/2025 16:38:52'!
radius
	^ 3! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:01'!
extremity1
	^ extremity1 ! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 12:46:03'!
extremity2
	^ extremity2! !

!Wall methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 09:48:24'!
heating
	^ heating! !

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

!Wall methodsFor: 'model' stamp: 'hlsf 11/22/2025 10:18:51'!
bounce: molecule over: newPosition with: timeInterval
	| collision t1 |
	collision := self intersectionWithTrajectory: molecule position to: newPosition. 
	collision ifNil: [^ molecule velocity: molecule velocity * (0.8@1.1)].
	t1 := (collision - molecule position) r / molecule velocity r.
	self updateVelocity: molecule.
	molecule updatePositionAt: timeInterval - t1 from: collision
! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/22/2025 09:50:47'!
incrHeating
"	heating ∈ [-2 ; 2]. 
	Cycle in this interval "
	heating := (heating + 2) +1 \\ 5 -2! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/18/2025 21:35:55'!
intersectionWithTrajectory: position1 to: position2
	^ self 
		linesIntersectionOf: (self lineEquationParameters: extremity1 along: extremity2 - extremity1)
		and: (self lineEquationParameters: position1 along: position2 - position1)! !

!Wall methodsFor: 'model' stamp: 'hlsf 11/22/2025 11:19:13'!
updateVelocity: molecule
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

!Wall methodsFor: 'initialization' stamp: 'hlsf 11/22/2025 09:48:12'!
initialize
	heating := 0 ! !

!Wall class methodsFor: 'as yet unclassified' stamp: 'hlsf 11/22/2025 09:56:27'!
thickness
	^ 10! !

!MoleculeMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 11/17/2025 22:10:35'!
model: aMolecule
	model := aMolecule ! !

!MoleculeMorph methodsFor: 'drawing' stamp: 'hlsf 11/19/2025 20:49:50'!
drawOn: canvas
	canvas ellipseCenter: model position radius: Molecule radius borderWidth: 0 borderColor: nil fillColor: Color green.
"	canvas line: model position to: model position + (model speed * 0.05) width: 1.5 color: Color red."! !

!WallMorph methodsFor: 'drawing' stamp: 'hlsf 11/22/2025 09:55:21'!
drawOn: canvas
	canvas line: model extremity1 to: model extremity2 width: Wall thickness color: (self colors at: model heating + 3)! !

!WallMorph methodsFor: 'accessing' stamp: 'hlsf 11/22/2025 09:53:30'!
colors
	^ `Array 
		with: Color blue 
		with: Color blue muchLighter 
		with: Color white
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

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/19/2025 16:06:03'!
defaultBorderWidth
	^ 10 ! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:25:50'!
model
	^ presenter model! !

!IdealGasSimulationView methodsFor: 'accessing' stamp: 'hlsf 11/16/2025 11:21:12'!
presenter: aPresenter
	presenter := aPresenter ! !

!IdealGasSimulationView methodsFor: 'initialization' stamp: 'hlsf 11/22/2025 10:55:30'!
initialize
	super initialize.
	self beColumn.
	self padding: 5@5.
"	Simulation step (δt)  at each view update (view' step and stepTime related):
	For a speed of 300 m.s ⁻¹, a molecule moves of 3m per view update (stepTime=0.1s) is visually appealing
	This makes a δt of 0.01 per stepTime (0.1), those δt=stepTime*0.1
	For a smoother animation, edit IdealGasSimulationView>>stepTime, ie 50, δt is set accordingly
"	
	self model simulationStep: (self stepTime /1000) / 10. 
	self morphExtent: self model bounds corner + (borderWidth + padding * 2) asPoint + (10@50).
	canvas := ColoredBoxMorph new morphExtent: self model bounds corner.
	canvas color: Color black.
	self addMorphUseAll: canvas.		
	self addMorph: (PluggableButtonMorph model: presenter stateGetter: #isPlaying action: #playStopSimulation label: 'Play').
	self installSimulationViews.! !

!IdealGasSimulationView methodsFor: 'initialization' stamp: 'hlsf 11/17/2025 22:15:11'!
installSimulationViews
	self model walls do: [:aWall | canvas addMorph: (WallMorph new model: aWall)].
	self model molecules do: [:aMolecule | canvas addMorph: (MoleculeMorph new model: aMolecule) ]! !

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
