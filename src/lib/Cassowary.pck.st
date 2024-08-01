'From Cuis7.1 [latest update: #6544] on 1 August 2024 at 12:48:21 pm'!
'Description '!
!provides: 'Cassowary' 1 3!
SystemOrganization addCategory: #'Cassowary-Kernel'!
SystemOrganization addCategory: #'Cassowary-Tests'!
SystemOrganization addCategory: #'Cassowary-Demo'!


!classDefinition: #ClAbstractVariable category: #'Cassowary-Kernel'!
Object subclass: #ClAbstractVariable
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClAbstractVariable class' category: #'Cassowary-Kernel'!
ClAbstractVariable class
	instanceVariableNames: ''!

!classDefinition: #ClDummyVariable category: #'Cassowary-Kernel'!
ClAbstractVariable subclass: #ClDummyVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClDummyVariable class' category: #'Cassowary-Kernel'!
ClDummyVariable class
	instanceVariableNames: ''!

!classDefinition: #ClObjectiveVariable category: #'Cassowary-Kernel'!
ClAbstractVariable subclass: #ClObjectiveVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClObjectiveVariable class' category: #'Cassowary-Kernel'!
ClObjectiveVariable class
	instanceVariableNames: ''!

!classDefinition: #ClSlackVariable category: #'Cassowary-Kernel'!
ClAbstractVariable subclass: #ClSlackVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClSlackVariable class' category: #'Cassowary-Kernel'!
ClSlackVariable class
	instanceVariableNames: ''!

!classDefinition: #ClVariable category: #'Cassowary-Kernel'!
ClAbstractVariable subclass: #ClVariable
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClVariable class' category: #'Cassowary-Kernel'!
ClVariable class
	instanceVariableNames: ''!

!classDefinition: #ClConstraint category: #'Cassowary-Kernel'!
Object subclass: #ClConstraint
	instanceVariableNames: 'strength weight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClConstraint class' category: #'Cassowary-Kernel'!
ClConstraint class
	instanceVariableNames: ''!

!classDefinition: #ClEditOrStayConstraint category: #'Cassowary-Kernel'!
ClConstraint subclass: #ClEditOrStayConstraint
	instanceVariableNames: 'variable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClEditOrStayConstraint class' category: #'Cassowary-Kernel'!
ClEditOrStayConstraint class
	instanceVariableNames: ''!

!classDefinition: #ClEditConstraint category: #'Cassowary-Kernel'!
ClEditOrStayConstraint subclass: #ClEditConstraint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClEditConstraint class' category: #'Cassowary-Kernel'!
ClEditConstraint class
	instanceVariableNames: ''!

!classDefinition: #ClStayConstraint category: #'Cassowary-Kernel'!
ClEditOrStayConstraint subclass: #ClStayConstraint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClStayConstraint class' category: #'Cassowary-Kernel'!
ClStayConstraint class
	instanceVariableNames: ''!

!classDefinition: #ClLinearConstraint category: #'Cassowary-Kernel'!
ClConstraint subclass: #ClLinearConstraint
	instanceVariableNames: 'expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClLinearConstraint class' category: #'Cassowary-Kernel'!
ClLinearConstraint class
	instanceVariableNames: ''!

!classDefinition: #ClLinearEquation category: #'Cassowary-Kernel'!
ClLinearConstraint subclass: #ClLinearEquation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClLinearEquation class' category: #'Cassowary-Kernel'!
ClLinearEquation class
	instanceVariableNames: ''!

!classDefinition: #ClLinearInequality category: #'Cassowary-Kernel'!
ClLinearConstraint subclass: #ClLinearInequality
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClLinearInequality class' category: #'Cassowary-Kernel'!
ClLinearInequality class
	instanceVariableNames: ''!

!classDefinition: #ClLinearExpression category: #'Cassowary-Kernel'!
Object subclass: #ClLinearExpression
	instanceVariableNames: 'constant terms'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClLinearExpression class' category: #'Cassowary-Kernel'!
ClLinearExpression class
	instanceVariableNames: ''!

!classDefinition: #ClSimplexSolver category: #'Cassowary-Kernel'!
Object subclass: #ClSimplexSolver
	instanceVariableNames: 'rows columns objective infeasibleRows stayPlusErrorVars stayMinusErrorVars editVars editConstraints editPlusErrorVars editMinusErrorVars prevEditConstants newEditConstants markerVars errorVars autoSolve'
	classVariableNames: 'Epsilon'
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClSimplexSolver class' category: #'Cassowary-Kernel'!
ClSimplexSolver class
	instanceVariableNames: ''!

!classDefinition: #ClStrength category: #'Cassowary-Kernel'!
Object subclass: #ClStrength
	instanceVariableNames: 'name symbolicWeight'
	classVariableNames: 'MediumStrength RequiredStrength StrongStrength WeakStrength'
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClStrength class' category: #'Cassowary-Kernel'!
ClStrength class
	instanceVariableNames: ''!

!classDefinition: #ClSymbolicWeight category: #'Cassowary-Kernel'!
Object variableSubclass: #ClSymbolicWeight
	instanceVariableNames: ''
	classVariableNames: 'Zero'
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClSymbolicWeight class' category: #'Cassowary-Kernel'!
ClSymbolicWeight class
	instanceVariableNames: ''!

!classDefinition: #ClCassowaryTester category: #'Cassowary-Tests'!
Object subclass: #ClCassowaryTester
	instanceVariableNames: 'haltFirst'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Tests'!
!classDefinition: 'ClCassowaryTester class' category: #'Cassowary-Tests'!
ClCassowaryTester class
	instanceVariableNames: ''!

!classDefinition: #ClError category: #'Cassowary-Kernel'!
Error subclass: #ClError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Kernel'!
!classDefinition: 'ClError class' category: #'Cassowary-Kernel'!
ClError class
	instanceVariableNames: ''!

!classDefinition: #ClDemoWindow category: #'Cassowary-Demo'!
BoxedMorph subclass: #ClDemoWindow
	instanceVariableNames: 'shell main form da gc gcw buffer grabPoint dragPoint cs errorPixel editX editY'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClDemoWindow class' category: #'Cassowary-Demo'!
ClDemoWindow class
	instanceVariableNames: ''!

!classDefinition: #ClBinaryTreeDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClBinaryTreeDemo
	instanceVariableNames: 'nodes lines height'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClBinaryTreeDemo class' category: #'Cassowary-Demo'!
ClBinaryTreeDemo class
	instanceVariableNames: ''!

!classDefinition: #ClBoundedLineDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClBoundedLineDemo
	instanceVariableNames: 'p1 p2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClBoundedLineDemo class' category: #'Cassowary-Demo'!
ClBoundedLineDemo class
	instanceVariableNames: ''!

!classDefinition: #ClElasticBoundedLineDemo category: #'Cassowary-Demo'!
ClBoundedLineDemo subclass: #ClElasticBoundedLineDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClElasticBoundedLineDemo class' category: #'Cassowary-Demo'!
ClElasticBoundedLineDemo class
	instanceVariableNames: ''!

!classDefinition: #ClBoxesDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClBoxesDemo
	instanceVariableNames: 'p1 p2 p3 p4 p5'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClBoxesDemo class' category: #'Cassowary-Demo'!
ClBoxesDemo class
	instanceVariableNames: ''!

!classDefinition: #ClCrossedQuadDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClCrossedQuadDemo
	instanceVariableNames: 'p1 p2 p3 p4 m1 m2 m3 m4 center'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClCrossedQuadDemo class' category: #'Cassowary-Demo'!
ClCrossedQuadDemo class
	instanceVariableNames: ''!

!classDefinition: #ClLineDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClLineDemo
	instanceVariableNames: 'p1 p2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClLineDemo class' category: #'Cassowary-Demo'!
ClLineDemo class
	instanceVariableNames: ''!

!classDefinition: #ClMidpointDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClMidpointDemo
	instanceVariableNames: 'p1 p2 m1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClMidpointDemo class' category: #'Cassowary-Demo'!
ClMidpointDemo class
	instanceVariableNames: ''!

!classDefinition: #ClQuadDemo category: #'Cassowary-Demo'!
ClDemoWindow subclass: #ClQuadDemo
	instanceVariableNames: 'p1 p2 p3 p4 m1 m2 m3 m4'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClQuadDemo class' category: #'Cassowary-Demo'!
ClQuadDemo class
	instanceVariableNames: ''!

!classDefinition: #ClBoundedQuadDemo category: #'Cassowary-Demo'!
ClQuadDemo subclass: #ClBoundedQuadDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClBoundedQuadDemo class' category: #'Cassowary-Demo'!
ClBoundedQuadDemo class
	instanceVariableNames: ''!

!classDefinition: #ClElasticQuadDemo category: #'Cassowary-Demo'!
ClBoundedQuadDemo subclass: #ClElasticQuadDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Demo'!
!classDefinition: 'ClElasticQuadDemo class' category: #'Cassowary-Demo'!
ClElasticQuadDemo class
	instanceVariableNames: ''!

!classDefinition: #ClCassowaryTests category: #'Cassowary-Tests'!
TestCase subclass: #ClCassowaryTests
	instanceVariableNames: 'haltFirst'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cassowary-Tests'!
!classDefinition: 'ClCassowaryTests class' category: #'Cassowary-Tests'!
ClCassowaryTests class
	instanceVariableNames: ''!


!ClCassowaryTester commentStamp: 'eem 4/2/2012 17:32' prior: 0!
ClCassowaryTester is an ad-hoc collection of tests.  Better to use its rewrite, ClCassowaryTests, which is an SUnit tester.!

!ClDemoWindow commentStamp: '<historical>' prior: 0!
button1Motion: aWidget clientData: clientData callData: callData
buttonPress: aWidget clientData: clientData callData: callData
	what are the argument's types?!

!ClBinaryTreeDemo commentStamp: '<historical>' prior: 0!
(self height: 3) openInWorld!

!ClBoundedLineDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClElasticBoundedLineDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClBoxesDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClCrossedQuadDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClLineDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClMidpointDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClQuadDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClBoundedQuadDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClElasticQuadDemo commentStamp: '<historical>' prior: 0!
self new openInWorld!

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:12'!
isDummy
	"Answer true if this is a dummy variable (used as a marker variable for required equality constraints).  Such variables aren't allowed to enter the basis when pivoting."

	^ false! !

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:12'!
isExternal
	"Answer true if this is a variable known outside the solver. (We need to give such variables a value after solving is complete.)"

	self subclassResponsibility! !

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:12'!
isPivotable
	"Answer true if we can pivot on this variable"

	self subclassResponsibility ! !

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:12'!
isRestricted
	"Answer true if this is a restricted (or slack) variable.  Such variables are constrained to be non-negative, and occur only internally to the simplex solver."

	self subclassResponsibility ! !

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:13'!
name
	"Answers <String> | nil"

	^ name! !

!ClAbstractVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:13'!
name: aString

	name := aString! !

!ClAbstractVariable methodsFor: 'printing' stamp: 'jcg 5/4/2001 13:19'!
printOn: aStream
	"Prints a semi-descriptive representation to the stream, using the name if there is one, and otherwise the hash number of this object.

	Examples:
		x[10.0]			- with name
		x[0.0, 100]		- with name/bounds, but no value yet
		CV#345(10.0)	- without name"

	self name 
		ifNil: [aStream nextPutAll: 'CV#', self hash printString]
		ifNotNil: [aStream nextPutAll: self name].! !

!ClAbstractVariable methodsFor: 'testing' stamp: 'hlsf 7/30/2024 10:00:06'!
negative
	^ false! !

!ClAbstractVariable methodsFor: 'testing' stamp: 'hlsf 7/30/2024 10:00:17'!
postive
	^ true! !

!ClAbstractVariable class methodsFor: 'instance creation' stamp: 'jcg 5/4/2001 13:08'!
newNamed: aString

	^ self new
			name: aString;
			yourself! !

!ClDummyVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:26'!
isDummy

	^ true! !

!ClDummyVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:26'!
isExternal

	^ false! !

!ClDummyVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:27'!
isPivotable

	^ false! !

!ClDummyVariable methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:27'!
isRestricted

	^ true! !

!ClObjectiveVariable methodsFor: 'accessing' stamp: 'jcg 5/6/2001 15:11'!
isExternal
	"Return true if this is a variable known outside the solver. (We need to give such variables a value after solving is complete.)"

	^ false! !

!ClObjectiveVariable methodsFor: 'accessing' stamp: 'jcg 5/6/2001 15:11'!
isPivotable
	"Answer true if we can pivot on this variable"

	^ false! !

!ClObjectiveVariable methodsFor: 'accessing' stamp: 'jcg 5/6/2001 15:12'!
isRestricted
	"Answer true if this is a restricted (or slack) variable.  Such variables are constrained to be non-negative and occur only internally to the simplex solver."

	^ false! !

!ClSlackVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 16:53'!
isExternal
	"Answer true if this a variable known outside the solver.  (We need to give such variables a value after solving is complete.)"

	^ false! !

!ClSlackVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 16:54'!
isPivotable
	"Answer true if we can pivot on this variable."

	^ true! !

!ClSlackVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 16:54'!
isRestricted
	"Answer true if this is a restricted (or slack) variable.  Such variables are constrained to be non-negative and occur only internally to the simplex solver."

	^ true! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:54'!
* expr

	^ self asLinearExpression * expr! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:54'!
+ expr

	^ self asLinearExpression + expr! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:55'!
- expr

	^ self asLinearExpression - expr! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:55'!
/ expr

	^ self asLinearExpression / expr! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:57'!
@ anObject
	"A convenience method for creating point pairs of constrainable variables.  Mostly used in graphic constraints where the x and y dimensions are constrained separately."

	^ Point x: self y: anObject! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:58'!
asLinearExpression
	"Coerce this variable to be a linear expression.

	<answer> 	<ClLinearExpression>"
	| expr |

	expr := ClLinearExpression new.
	expr terms at: self put: 1.0.
	^ expr! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:59'!
cnEqual: expr
	"Answer a linear constraint self=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearEquation>"

	^ self cnEqual: expr strength: ClStrength required weight: 1.0
! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:00'!
cnEqual: expr strength: s
	"Answer a linear constraint self=expr of strength s and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearEquation>"

	^ self cnEqual: expr strength: s weight: 1.0! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:01'!
cnEqual: expr strength: s weight: w
	"Answer a linear constraint self=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |

	cn := ClLinearEquation new.
	cn 
		expression: self-expr; 
		strength: s; 
		weight: w.
	^ cn! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:02'!
cnGEQ: expr
	"Answer a linear constraint self>=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearInequality>"

	^ self cnGEQ: expr strength: ClStrength required weight: 1.0! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:03'!
cnGEQ: expr strength: s
	"Answer a linear constraint self>=expr of strength s and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearInequality>"

	^ self cnGEQ: expr strength: s weight: 1.0! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:05'!
cnGEQ: expr strength: s weight: w
	"Answer a linear constraint self>=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |

	cn := ClLinearInequality new.
	cn 
		expression: self-expr; 
		strength: s; 
		weight: w.
	^ cn! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:05'!
cnLEQ: expr
	"Answer a linear constraint self<=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearInequality>"

	^ self cnLEQ: expr strength: ClStrength required weight: 1.0! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:06'!
cnLEQ: expr strength: s
	"Answer a linear constraint self<=expr of strength s and weight 1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearInequality>"

	^ self cnLEQ: expr strength: s weight: 1.0! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 20:20'!
cnLEQ: expr strength: s weight: w
	"Answer a linear constraint self<=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |
	
	cn := ClLinearInequality new.
	cn 
		expression: expr asLinearExpression - self asLinearExpression; 
		strength: s; 
		weight: w.
	^ cn! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:10'!
divFrom: aNumber
	"We should return a new linear expression (aNumber/self) -- but since the result must be linear, this is always an error."

	ClError nonlinear signal! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:13'!
negated

	^ -1.0 * self! !

!ClVariable methodsFor: 'operations' stamp: 'jcg 5/7/2001 18:12'!
subtractFrom: aNumber
	"Answer a new linear expression (aNumber-self).

	<answer> <ClLinearExpression>"

	^ self negated + aNumber! !

!ClVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 18:09'!
isExternal
	"Answer true if this a variable known outside the solver.  (We need to give such variables a value after solving is complete.)"

	^ true! !

!ClVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 18:09'!
isPivotable
	"Answer true if we can pivot on this variable."

	^ false! !

!ClVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 18:09'!
isRestricted
	"Answer true if this is a restricted (or slack) variable.  Such variables are constrained to be non-negative and occur only internally to the simplex solver."

	^ false! !

!ClVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 18:13'!
value
	"Answer the current value I hold."

	^ value "a Number"! !

!ClVariable methodsFor: 'accessing' stamp: 'jcg 5/7/2001 18:14'!
value: aNumber
	"Set my value."

	value := aNumber! !

!ClVariable methodsFor: 'printing' stamp: 'jcg 5/7/2001 18:11'!
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '['.  self value printOn: aStream.  aStream nextPutAll: ']'! !

!ClVariable methodsFor: 'testing' stamp: 'hlsf 7/30/2024 10:00:35'!
negative
	^ value < 0! !

!ClVariable methodsFor: 'testing' stamp: 'hlsf 7/30/2024 10:00:44'!
positive
	^ value >= 0! !

!ClVariable class methodsFor: 'instance creation' stamp: 'jcg 5/7/2001 17:53'!
newWith: anObject
	"Create a new variable with anObject as its initial value."

	^ self new
		value: anObject;
		yourself! !

!ClVariable class methodsFor: 'instance creation' stamp: 'jcg 5/7/2001 17:54'!
newWith: anObject name: nameString
	"Create a new variable with anObject as its initial value and name nameString."

	^ self new
		value: anObject;
		name: nameString;
		yourself! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:21'!
expression
	"Answer my linear expression.  (For linear equations, this constraint represents expression=0; for linear inequalities it represents expression>=0.)"

	self subclassResponsibility! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:21'!
isEditConstraint

	^ false! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:22'!
isInequality
	"Answer true if this is an inequality constraint and false if it is an equality constraint.  Default is equality."

	^ false! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:22'!
isRequired
	"Answer true if my strength is 'required'."

	^ self strength isRequired! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:23'!
isStayConstraint

	^ false! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:23'!
strength
	"Answers <ClStrength>"

	^ strength! !

!ClConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:24'!
weight
	"Answers <Float>"

	^ weight! !

!ClConstraint methodsFor: 'private' stamp: 'jcg 5/4/2001 13:25'!
strength: aClStrength
	
	strength := aClStrength! !

!ClConstraint methodsFor: 'private' stamp: 'jcg 5/4/2001 13:25'!
weight: aFloat
	
	weight := aFloat! !

!ClEditOrStayConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:35'!
expression
	| e |

	e := ClLinearExpression new.
	e constant: self variable value.
	e terms at: self variable put: -1.0.
	^ e! !

!ClEditOrStayConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:35'!
variable

	^ variable! !

!ClEditOrStayConstraint methodsFor: 'private' stamp: 'jcg 5/4/2001 13:36'!
variable: aVariable

	variable := aVariable! !

!ClEditOrStayConstraint class methodsFor: 'instance creation' stamp: 'jcg 5/4/2001 13:32'!
variable: aVariable strength: aStrength

	^ self variable: aVariable strength: aStrength weight: 1.0! !

!ClEditOrStayConstraint class methodsFor: 'instance creation' stamp: 'jcg 5/4/2001 13:33'!
variable: aVariable strength: aStrength weight: aFloat

	^ self new
		variable: aVariable;
		strength: aStrength;
		weight: aFloat;
		yourself! !

!ClEditConstraint methodsFor: 'accessing' stamp: 'jcg 5/4/2001 13:30'!
isEditConstraint

	^ true! !

!ClEditConstraint class methodsFor: 'instance creation' stamp: 'jcg 5/4/2001 13:29'!
variable: aVariable value: aValue strength: aStrength

	^ (self variable: aVariable strength: aStrength)
		value: aValue;
		yourself! !

!ClStayConstraint methodsFor: 'accessing' stamp: 'jcg 5/7/2001 16:55'!
isStayConstraint

	^ true! !

!ClLinearConstraint methodsFor: 'accessing' stamp: 'jcg 5/6/2001 12:20'!
expression
	"Answer my linear expression. (For linear equations, this constraint represents expression=0; for linear inequalities it represents expression>=0."

	^ expression  "a CLLinearExpression"! !

!ClLinearConstraint methodsFor: 'private' stamp: 'jcg 5/6/2001 12:20'!
expression: aCLLinearExpression

	expression := aCLLinearExpression! !

!ClLinearEquation methodsFor: 'printing' stamp: 'jcg 5/6/2001 12:25'!
printOn: aStream.

	self strength printOn: aStream.
	aStream nextPut: $(.
	expression printOn: aStream.
	aStream nextPutAll: '=0)'! !

!ClLinearInequality methodsFor: 'accessing' stamp: 'jcg 5/6/2001 15:08'!
isInequality
	"Answer true if this is an inequality constraint and false otherwise."
	
	^ true! !

!ClLinearInequality methodsFor: 'printing' stamp: 'jcg 5/6/2001 15:10'!
printOn: aStream

	self strength printOn: aStream.
	aStream nextPutAll: '('.
	expression printOn: aStream.
	aStream nextPutAll: '>=0)'! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/8/2001 08:09'!
* x
	"Answer a new CLLinearExpression formed by multiplying self by x.  (Note that this result must be linear.)"
	| expr n result |

	"If this expression is just a constant then we can just multiply by it..."
	self isConstant ifTrue: [^ x * self constant].

	"otherwise multipy by x"
	x isNumber 
		ifTrue: [n := x asFloat]
		ifFalse: [
			expr := x asLinearExpression.
			expr isConstant ifFalse: [ClError nonlinear signal "result would be non-linear"].
			n := expr constant].
	result := ClLinearExpression new.
	result constant: n * self constant.
	self terms keysAndValuesDo: [:v :c | result terms at: v put: n*c].
	^ result! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 12:39'!
+ x
	"Answer a new CLLinearExpression formed by adding x to self."
	| expr result |

	expr := x asLinearExpression.
	result := ClLinearExpression new.
	result constant: self constant + expr constant.
	self terms keysAndValuesDo: [:v :c | result terms at: v put: c].
	expr variablesAndCoefficientsDo: [:v :c | result addVariable: v coefficient: c].
	^ result! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 12:41'!
- x
	"Answer a new CLLinearExpression formed by subtracting x from self."
	| expr result |

	expr := x asLinearExpression.
	result := ClLinearExpression new.
	result constant: self constant - expr constant.
	self terms keysAndValuesDo: [:v :c | result terms at: v put: c].
	expr variablesAndCoefficientsDo: [:v :c | result addVariable: v coefficient: c negated].
	^ result! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/8/2001 08:10'!
/ x
	"Answer a new linear expression formed by dividing self by x. (Note that this result must be linear.)"

	| expr |
	expr := x asLinearExpression.
	expr isConstant ifFalse: [ClError nonlinear signal "result would be non-linear"].
	^ self * expr constant reciprocal! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/7/2001 20:26'!
addExpression: expr times: n
	"Add n * expr to this expression.

	expr	<ClLinearExpression>
	n		<Number>"

	self incrementConstant: n * expr constant.
	expr terms keysAndValuesDo: [:v :c |
		self addVariable: v coefficient: n*c]! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/9/2001 07:55'!
addExpression: expr times: n subject: subject solver: solver
	"Add n * expr to this expression.  Notify the solver if a variable is added or deleted from this expression.

	expr	<ClLinearExpression>
	n		<Number>
	subject	<ClAbstractVariable>
	solver	<ClSimplexSolver>"

	self incrementConstant: n * expr constant.
	expr terms keysAndValuesDo: [:v :c |
		self addVariable: v coefficient: n*c subject: subject solver: solver]! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 12:55'!
addVariable: v coefficient: c
	"Add a term c*v to this expression.  If the expression already contains a term involving v, add c to the existing coefficient.  If the new coefficient is approximately 0, delete v.

	v		<ClVariable>
	c		<Number>"
	| newCoeff |

	(self terms includesKey: v)
		ifTrue: [
			newCoeff := c + (self terms at: v).
			(newCoeff clApproxZero)
				ifTrue: [
					self terms removeKey: v.
					^ self]
				ifFalse: [ self terms at: v put: newCoeff]]
		ifFalse: [self terms at: v put: c]! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 12:59'!
addVariable: v coefficient: c subject: subject solver: solver
	"Add a term c*v to this expression.  If the expression already contains a term involving v, add c to the existing coefficient.  If the new coefficient is approximately 0, delete v.  Notify the solver if v appears or disappears from this expression.

	v		<ClVariable>
	c		<Number>
	subject	<ClAbstractVariable>
	solver	<ClSimplexSolver>"
	| newCoeff |

	(self terms includesKey: v)
		ifTrue: [
			newCoeff := c + (self terms at: v).
			(newCoeff clApproxZero)
				ifTrue: [
					self terms removeKey: v.
					solver noteRemovedVariable: v subject: subject.
					^ self]
				ifFalse: [ self terms at: v put: newCoeff]]
		ifFalse: [
			self terms at: v put: c.
			solver noteAddedVariable: v subject: subject]! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 13:08'!
changeSubject: oldSubject newSubject: newSubject
	"This linear expression currently represents the equation oldSubject=self.  Destructively modify it so that it represents the equation newSubject=self.

	Precondition: newSubject currently has a nonzero coefficient in this expression.

	oldSubject	<ClAbstractVariable>
	newSubject	<ClAbstractVariable>

	Suppose this expression is c + a*newSubject + a1*v1 + ... + an*vn.
	Then the current equation is oldSubject = c + a*newSubject + a1*v1 + ... + an*vn.
	The new equation will be newSubject = -c/a + oldSubject/a - (a1/1)*v1 - ... - (an/a)*vn.
	Note that the term involving newSubject has been dropped."
	| reciprocal nreciprocal |

	"remove newSubject from my dictionary of terms, saving the reciprocal of its coefficient"
	reciprocal := (self terms removeKey: newSubject) reciprocal.
	nreciprocal := reciprocal negated.
	self constant: nreciprocal * self constant.
	self terms keysAndValuesDo: [:v :c | self terms at: v put: c * nreciprocal].
	self terms at: oldSubject put: reciprocal! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 14:35'!
constant: aNumber
	"see ClLinearExpression constant"

	constant := aNumber! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 14:38'!
incrementConstant: aNumber
	"Increment the constant part of this expression by aNumber."

	self constant: self constant + aNumber! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'jcg 5/6/2001 14:43'!
newSubject: subject
	"This linear expression currently represents the equation self=0.  Destructively modify it so that subject=self represents an equivalent equation.  Precondition: subject must be one of the variables in this expression.

	subject	<ClAbstractVariable>

	Suppose this expression is c + a*subject + a1*v1 + ... + an*vn, representing
	c + a*subject + a1*v1 + ... + an*vn = 0.
	The modified expression will be -c/a - (a1/a)*v1 - ... - (an/a)*vn, representing
	subject = -c/a - (a1/a)*v1 - ... - (an/a)*vn
	Note that the term involving subject has been dropped."
	| nreciprocal |

	nreciprocal := (self terms removeKey: subject) reciprocal negated.
	self constant: nreciprocal * self constant.
	self terms keysAndValuesDo: [:v :c | self terms at: v put: c*nreciprocal]	! !

!ClLinearExpression methodsFor: 'manipulation' stamp: 'eem 4/3/2012 09:17'!
substituteOut: var expr: expr subject: subject solver: solver
	"Replace var with a symbolic expression expr that is equal to it.  If a variable has been added to this expression that wasn't therer before, or if a variable has been dropped from this expression because it now has a coefficient of 0, inform the solver.

	Precondition: var occurs with a nonzero coefficient in this expression

	var		<ClAbstractVariable>
	expr	<ClLinearExpression>
	subject	<ClAbstractVariable>
	solver	<ClSimplexSolver>"
	| multiplier |
	
	multiplier := self terms removeKey: var.
	self incrementConstant: multiplier * expr constant.
	expr terms keysAndValuesDo: [:v :c | | newCoeff oldCoeff |
		oldCoeff := self terms at: v ifAbsent: [nil].
		oldCoeff 
			ifNil: [
				self terms at: v put: multiplier * c.
				solver noteAddedVariable: v subject: subject]
			ifNotNil: [
				newCoeff := oldCoeff + (multiplier * c).
				(newCoeff clApproxZero)
					ifTrue: [
						self terms removeKey: v.
						solver noteRemovedVariable: v subject: subject]
					ifFalse: [self terms at: v put: newCoeff]]]! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/8/2001 08:00'!
anyVariable
	"Answer any ClAbstractVariable from this expression. (It is an error if this expression is constant)"

	self terms keysDo: [:v | ^ v].
	ClError internalError signal  "expression is constant"! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 13:01'!
asLinearExpression

	^ self! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:18'!
cnEqual: expr
	"Answer a ClLinearEquation self=expr with strength=required and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>"

	^ self cnEqual: expr strength: ClStrength required weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:19'!
cnEqual: expr strength: s
	"Answer a ClLinearEquation self=expr with strength s and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>"

	^ self cnEqual: expr strength: s weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:21'!
cnEqual: expr strength: s weight: w
	"Answer a ClLinearEquation self=expr with strength s and weight w.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>
	w		<Float>"
	| cn |

	cn := ClLinearEquation new.
	cn expression: self-expr; strength: s; weight: w.
	^ cn
! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:22'!
cnGEQ: expr
	"Answer a ClLinearInequality self>=expr with strength=required and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>"

	^ self cnGEQ: expr strength: ClStrength required weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:23'!
cnGEQ: expr strength: s
	"Answer a ClLinearInequality self>=expr with strength s and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>"

	^ self cnGEQ: expr strength: s weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:26'!
cnGEQ: expr strength: s weight: w
	"Answer a ClLinearInequality self>=expr with strength s and weight w.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>
	w		<Float>"
	| cn |

	cn := ClLinearInequality new.
	cn expression: self-expr; strength: s; weight: w.
	^ cn
! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:27'!
cnLEQ: expr
	"Answer a ClLinearInequality self<=expr with strength=required and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>"

	^ self cnLEQ: expr strength: ClStrength required weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:27'!
cnLEQ: expr strength: s
	"Answer a ClLinearInequality self<=expr with strength s and weight=1.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>"

	^ self cnLEQ: expr strength: s weight: 1.0! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 7/5/2001 16:41'!
cnLEQ: expr strength: s weight: w
	"Answer a ClLinearInequality self<=expr with strength s and weight w.

	expr	<ClLinearExpression | ClVariable | Number>
	s		<ClStrength>
	w		<Float>"
	| cn |

	cn := ClLinearInequality new.
	cn expression: expr-self; strength: s; weight: w.
	^ cn
! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:31'!
coefficientFor: aClVariable
	"Answer the coefficient corresponding to aClVariable (i.e. the 'ci' corresponding to the 'vi' that aClVariable is:
		v1@c1 + v2*c2 + ... + vn*cn + c"

	^ self terms at: aClVariable ifAbsent: [0.0]! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:32'!
constant
	"Answer the constant part of this expression (i.e. the 'c' in: c + a1*v1 + a2*v2 + ... + an*vn)"

	^ constant! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/8/2001 08:10'!
divFrom: aNumber
	"Answer a new ClLinearExpression (aNumber/self).  Since the result must be linear, this is permissible only if self is a constant."

	self isConstant ifTrue: [^ aNumber / self constant].
	ClError nonlinear signal "result would be non-linear"! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:38'!
isConstant
	"Answer true if this expression is a constant (i.e. it contains no varables)."

	^ self terms isEmpty! !

!ClLinearExpression methodsFor: 'accessing' stamp: 'jcg 5/6/2001 14:57'!
subtractFrom: aNumber
	"Answer a new ClLinearExpression (aNumber/self)."

	^ self negated + aNumber
! !

!ClLinearExpression methodsFor: 'private' stamp: 'jcg 5/6/2001 15:03'!
initialize
	"Initialize this linear expression to 0"

	self flag: #schwa.  "original code uses LookupTable instead of Dictionary"
	self 
		constant: 0.0;
		terms: Dictionary new.
	^ self
! !

!ClLinearExpression methodsFor: 'private' stamp: 'jcg 5/6/2001 15:05'!
terms
	"Answer the terms dictionary.  The keys in the dictionary will be variables and the values will be numbers ( the corresponding coefficients).. If 'terms' contains variables v1, ..., vn and coefficients a1, ..., an, then this object represents the linear expression:
	constant + a1*v1 + ... + an*vn
Note that the coefficients should all be nonzero -- if there were going to be a zero coefficient, that term should be dropped from the linear expression."

	^ terms! !

!ClLinearExpression methodsFor: 'private' stamp: 'jcg 5/6/2001 15:07'!
terms: aDictionary
	"See ClLinearExpression terms.  

	aDictionary		<Dictionary of <ClVariable>-><Number>>"

	terms := aDictionary! !

!ClLinearExpression methodsFor: 'printing' stamp: 'jcg 5/6/2001 14:48'!
printOn: aStream	
	| sortedKeys |

	self constant printOn: aStream.
	sortedKeys := self terms keys asSortedCollection: [:v1 :v2 |
		v1 name isNil or: [v2 name isNil or: [v1 name <= v2 name]]].
	sortedKeys do: [:v |
		aStream nextPut: $+.
		(self terms at: v) printOn: aStream.
		aStream nextPut: $*.
		v printOn: aStream].! !

!ClLinearExpression methodsFor: 'enumerating' stamp: 'jcg 5/6/2001 14:59'!
variablesAndCoefficientsDo: aBlock
	"Evaluate aBlock with each variable-coefficient pair asArguments.

	aBlock <Block [ClConstrainableVariable,Number]>"

	self terms keysAndValuesDo: [:v :c | aBlock value: v value: c]! !

!ClLinearExpression class methodsFor: 'instance creation' stamp: 'jcg 5/6/2001 12:26'!
new

	^ super new initialize; yourself! !

!ClLinearExpression class methodsFor: 'instance creation' stamp: 'jcg 5/6/2001 12:27'!
newWithSymbolicWeight
	| newGuy |

	newGuy := self new.
	newGuy constant: ClSymbolicWeight zero.
	^ newGuy! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:15'!
addBounds: var lowerBound: lower upperBound: upper
	"Add constraints so that lower<=var<=upper (nil means no bound)

	var		<ClVariable>
	lower	<Number | nil>
	upper	<Number | nil>"

	lower ifNotNil: [self addConstraint: (lower cnLEQ: var)].
	upper ifNotNil: [self addConstraint: (var cnLEQ: upper)]! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'AHB 5/23/2001 14:26'!
addConstraint: aClLinearConstraint
	"Add aClLinearConstraint to the tableau"
	| expr |

	"Make a new linear expression representing the constraint, replacing any basic variables with their defining expressions, and adding slack and error variables as needed.  Also add error variables to the objective function, and index the constraint with its marker variable."
	expr := self makeExpression: aClLinearConstraint.

	"If possible, add expr directly to the appropriate tableau by choosing a subject for expr (a variable to become basic) from amongst the current variables in expr.  If this doesn't work, use an artificial variable.  After adding expr, re-optimize"
	(self tryAddingDirectly: expr) ifFalse: [self addWithArtificialVariable: expr].
	self autoSolve ifTrue: [
		self optimize: self objective.
		self setExternalVariables]
! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:22'!
addEditVar: aClVariable strength: aClStrength
	"Add aClVariable to the collection of variables being edited."

	self addConstraint: (ClEditConstraint variable: aClVariable strength: aClStrength)! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:27'!
addPointStays: points
	"Add weak stays to the x and y parts of each point.  These have declining weights so that the solver will try to satisfy the x and y stays on the same point, rather than the x stay on one and the y stay on another."
	| wght mult |

	mult := 2.0.		"amount to multiply by the weight each time"
	wght := 1.0.
	points do: [:p |
		self addConstraint: (ClStayConstraint variable: p x strength: ClStrength weak weight: wght).
		self addConstraint: (ClStayConstraint variable: p y strength: ClStrength weak weight: wght).
		wght := wght * mult]! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:27'!
addStay: aClVariable
	"Add a weak stay to aClVariable"

	self addStay: aClVariable strength: ClStrength weak! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:29'!
addStay: aClVariable strength: aClStrength
	"Add a weak stay to aClVariable at the given strength."

	self addConstraint: (ClStayConstraint variable: aClVariable strength: aClStrength)! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'AHB 5/23/2001 14:52'!
autoSolve
	"the 'autoSolve' instance variable determines whether the solver should 
		automatically optimize and set external variable values after each 
		call to 'addConstraint' and 'removeConstraint'.  By default, auto-solving is on.  However,
		when auto-solving is off,  'resolve' must be invoked to see changes to the
		constrained variables"
	^autoSolve! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'AHB 5/23/2001 14:53'!
autoSolve: s
	autoSolve := s! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:32'!
beginEdit
	"Do any needed setup to begin editing.  The sequence of calls should be:
		solver addEditVar: v1; addEditVar: v2; ... etc.
		solver beginEdit.
	Then repeat each time new values are provided for the editted variables:
		solver suggestValue: v1 newValue: nv1.
		solver suggestValue: v2 newValue: nv2.
		solver resolve.
	Then to terminate editing:
		solver endEdit."

	self newEditConstants: (Array new: self editVars size)! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 15:34'!
endEdit
	"Do any needed cleanup after editing.  (See ClSimplexSolver beginEdit for sequence of calls)."

	self editConstraints do: [:cn | self removeConstraint: cn].
	self editVars: #().
	self editConstraints: #()! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'AHB 5/23/2001 14:27'!
removeConstraint: cn
	"Remove the constraint cn to the tableau.  Also remove any error variables associated with cn.

	cn <ClLinearConstraint>"
	| eVars zRow obj marker col minRatio expr coeff r exitVar oldEditMinusErrorVars oldEditPlusErrorVars oldPrevEditConstants oldSize index |

	"We are about to remove a constraint.  There may be some stay constraints that were unsatisfied previously -- if we just removed the constraint these could come into play.  Instead, reset all of the stays so that things should stay where they are at the moment."
	self resetStayConstants.

	"remove any error variables from the objective function"
	eVars := self errorVars removeKey: cn ifAbsent: [#( )].
	zRow := self objective.
	obj := self rows at: zRow.
	eVars do: [:v | 
		expr := self rows at: v ifAbsent: [nil].
		expr isNil
			ifTrue: [obj 
						addVariable: v 
						coefficient: cn strength symbolicWeight * cn weight negated 
						subject: zRow 
						solver: self]
			ifFalse: [obj 
						addExpression: expr 
						times: cn strength symbolicWeight * cn weight negated 
						subject: zRow 
						solver: self]].

	"try to make the marker variable basic if it isn't already"
	marker := self markerVars removeKey: cn.
	(self rows includesKey: marker) ifFalse: [
		"Choose which variable to move out of the basis.  Only consider restricted basic variables."
		col := self columns at: marker.
		col do: [:v | v isRestricted ifTrue: [
			expr := self rows at: v.
			coeff := expr coefficientFor: marker.
			"only consider negative coefficients"
			coeff < 0.0 ifTrue: [
				r := 0.0 - (expr constant / coeff).
				(exitVar isNil or: [r<minRatio]) ifTrue: [minRatio := r.  exitVar := v]]]].
		"If exitVar is still nil at this point, then either the marker variable has a positive coefficient in all equations, or it only occurs in equations for unrestricted variables.  If it does occur in an equation for a restricted variable, pick the equation that gives the smallest ratio.  (The row with the marker variable will become infeasible, but all the other rows will still be feasible; and we will be dropping the row with the marker variable.  In effect we are removing the non-negativity restriction on the marker variable.)"
		exitVar ifNil: [
			col do: [:v | v isRestricted ifTrue: [
				expr := self rows at: v.
				coeff := expr coefficientFor: marker.
				r := expr constant / coeff.
				(exitVar isNil or: [r<minRatio]) ifTrue: [minRatio := r.  exitVar := v]]]].
		exitVar ifNil: [
			"exitVar is still nil.  If col is empty, then exitVar doesn't occur in any equations, so just remove it.  Otherwise pick an exit var from among the unrestricted variables whose equation involves the marker var."
			col isEmpty
				ifTrue: [self removeParametricVar: marker]
				ifFalse: [exitVar := col asOrderedCollection first]].
		exitVar ifNotNil: [self pivot: marker exitVar: exitVar]].

	"Delete any error variables.  If cn is an inequality, it also contains a slack variable; but we use that as the marker variable and so it has been deleted when we removed its row."
	(self rows includesKey: marker) ifTrue: [self removeRow: marker].
	eVars do: [:v | v=marker ifFalse: [self removeParametricVar: v]].
	cn isStayConstraint ifTrue: [
		self stayPlusErrorVars: (self stayPlusErrorVars reject: [:v | eVars includes: v]).
		self stayMinusErrorVars: (self stayMinusErrorVars reject: [:v | eVars includes: v])].
	cn isEditConstraint ifTrue: [
		"find the index in editPlusErrorVars of the error variable for this constraint"
		index := self findEditErrorIndex: eVars.
		oldSize := self editPlusErrorVars size.

		"remove the error variables from editPlusErrorVars and editMinusErrorVars"
		oldEditPlusErrorVars := self editPlusErrorVars.
		self editPlusErrorVars: (Array new: oldSize-1).
		1 to: index-1 do: [:i | 
			self editPlusErrorVars at: i put: (oldEditPlusErrorVars at: i)].
		index+1 to: oldSize do: [:i | 
			self editPlusErrorVars at: i-1 put: (oldEditPlusErrorVars at: i)].
		oldEditMinusErrorVars := self editMinusErrorVars.
		self editMinusErrorVars: (Array new: oldSize-1).
		1 to: index-1 do: [:i | 
			self editMinusErrorVars at: i put: (oldEditMinusErrorVars at: i)].
		index+1 to: oldSize do: [:i | 
			self editMinusErrorVars at: i-1 put: (oldEditMinusErrorVars at: i)].

		"remove the constants from prevEditConstants"
		oldPrevEditConstants := self prevEditConstants.
		self prevEditConstants: (Array new: oldSize-1).
		1 to: index-1 do: [:i | 
			self prevEditConstants at: i put: (oldPrevEditConstants at: i)].
		index+1 to: oldSize do: [:i | 
			self prevEditConstants at: i-1 put: (oldPrevEditConstants at: i)]].

	self autoSolve ifTrue: [
		self optimize: zRow.
		self setExternalVariables]! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'eem 4/3/2012 09:17'!
reset
	"Re-initialize this solver from the original constraints, thus getting rid of any accumulated numerical problems.  (Actually, I haven't observed any such problems yet, but here's the method anyway)"
	| edits stays others |

	edits := Array new: self editPlusErrorVars size.
	stays := OrderedCollection new.
	others := OrderedCollection new.
	self markerVars keysAndValuesDo: [:cn :v | | i | 
		cn isEditConstraint
			ifTrue: [
				"put the edit constraint in the same place in 'edits' as it is in the current
				  array of edit error vars"
				i := self editPlusErrorVars 
									indexOf: v ifAbsent: [self editMinusErrorVars indexOf: v ].
				edits at: i put: cn]
			ifFalse: [
				cn isStayConstraint ifTrue: [stays add: cn] ifFalse: [others add: cn]]].
	self initialize.
	"add the stays first so that variables keep their old values"
	stays do: [:cn | self addConstraint: cn].

	"add the edits in the same order they were in originally"
	edits do: [:cn | self addConstraint: cn].
	others do: [:cn | self addConstraint: cn]! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'jcg 5/6/2001 23:03'!
resolve
	"Re-solve the current collection of constraints for the new values in newEditConstants."

	self infeasibleRows: OrderedCollection new.
	self resetStayConstants.
	self resetEditConstants.
	self dualOptimize.
	self setExternalVariables.! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'AHB 5/23/2001 14:29'!
solve
	"optimize and set external variables (useful if autoSolve has been set to false)"
	self optimize: self objective.
	self setExternalVariables
! !

!ClSimplexSolver methodsFor: 'manipulating' stamp: 'hlsf 7/31/2024 19:08:52'!
suggestValue: var newValue: val
	"We should be editting var.  Suggest a new value for it.

	var <ClVariable>
	val <Float>"

	1 to: self editVars size do: [:i | 
		(editVars at: i) == var ifTrue: [
			self newEditConstants at: i put: val.  
			^self]].
	ClError internal signal: 'variable not currently being edited'! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:05'!
addRow: var expr: expr
	"Add the constraint var=expr to the tableau.  var is now a basic variable.  Update the column cross-indices.

	var <ClAbstractVariable>
	expr <ClLinearExpresson>"

	self rows at: var put: expr.
	expr variablesAndCoefficientsDo: [:v :c | 
		(self columns at: v ifAbsentPut: [Set new]) add: var]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'eem 4/3/2012 09:17'!
addWithArtificialVariable: expr
	"Add the constraint expr=0 to the inequality tableau using an artificial variable.  To do this, create an artificial variable av and add av=expr to the inequality tableau, then make av be 0. (Raise an exception if we can't attain av=0.)

	expr <ClLinearExpresson>"
	| av az azRow |

 	av := ClSlackVariable new.
	az := ClObjectiveVariable new.
	azRow := ClLinearExpression new.

	"the artificial objective is av, which we know is equal to expr (which contains only parametric variables)"
	azRow constant: expr constant.
	expr terms keysAndValuesDo: [:v :c | azRow terms at: v put: c].
	self addRow: az expr: azRow.
	self addRow: av expr: expr.

	"try to optimize av to 0"
	self optimize: az.

	"Check that we were able to make the objective value 0.  If not, the original constraint was unsatisfiable."
	(azRow constant clApproxZero) ifFalse: [ClError requiredFailure signal].

	"see if av is a basic variable"
	self rows at: av ifPresent: [:e | | entryVar |
		"Find another variable in this row and pivot, so that av becomes parametric.  If there isn't another variable in the row then the tableau contains the equation av=0 -- just delete av's row."
		e isConstant ifTrue: [self removeRow: av.  ^nil].
		entryVar := e anyVariable.
		self pivot: entryVar exitVar: av].

	"av should be parametric at this point"
	self removeParametricVar: av.

	"remove the temporary objective function"
	self removeRow: az.
! !

!ClSimplexSolver methodsFor: 'private' stamp: 'eem 4/3/2012 09:17'!
chooseSubject: expr
	"We are trying to add the constraint expr=0 to the tableaux.  Try to choose a subject (a variable to become basic) from among the current variables in expr.  If expr contains any unrestricted variables, then we must choose an unrestricted variable as the subject.  Also, if the subject is new to the solver we won't have to do any substitutions, so we prefer new variables to ones that are currently noted as parametric.  If expr contains only restricted variables, if there is a restricted variable with a negative coefficient that is new to the solver we can make that the subject.  Otherwise we can't find a subject, so return nil.  (In this last case we have to add an artificial variable and use that variable as the subject -- this is done outside this method though.)

	Note:  in checking for variables that are new to the solver, we ignore whether a variable occurs in the objective function, since new slack variables are added to the objective function by 'makeExpression:', which is called before this method.

	expr <ClLinearExpression>
	<answers> <ClAbstractVariable | nil>"
	| subject foundUnrestricted foundNewRestricted coeff |

	"The temporaries are as follows:
		subject <ClAbstractVariable | nil> -- nil or the current best subject
		foundUnrestricted <Boolean> -- true if we have found a subject that is an unrestricted variable
		foundNewRestricted <Boolean> -- true if we have found a restricted variable that is new to the solver (except for being in the objective function) and that has a negative coefficient."

	foundUnrestricted := false.  
	foundNewRestricted := false.
	expr variablesAndCoefficientsDo: [:v :c | | col | 
		foundUnrestricted 
			ifTrue: [
				"We have already found an unrestricted variable.  The only time we will want to use v instead of the current choice 'subject' is if v is unrestricted and new to the solver and 'subject' isn't new.  If this is the case just pick v immediately and return."
				v isRestricted ifFalse: [(self columns includesKey: v) ifFalse: [^v]]]
			ifFalse: [
				"we haven't found an unrestricted variable yet"
				v isRestricted 
					ifTrue: [
						"v is restricted.  If we have already found a suitable restricted variable just stick with that.  Otherwise, if v is new to the solver and has a negative coefficient pick it.  Regarding being new to the solver -- if the variable occurs only in the objective function we regard it as being new to the solver, since error variables are added to the objective function when we make the expression.  We also never pick a dummy variable here."
						(foundNewRestricted not and: [v isDummy not and: [c<0.0]]) ifTrue: [
							col := self columns at: v ifAbsent: [nil].
							(col isNil or: [col size=1 and: [col includes: self objective]]) ifTrue: [
								subject := v.
								foundNewRestricted := true]]]
					ifFalse: [
						"v is unrestricted.  If v is also new to the solver just pick it now"
						(self columns includesKey: v) ifFalse: [^v].
						subject := v.
						foundUnrestricted := true]]].

	"subject is nil.  Make one last check -- if all of the variables in expr are dummy variables, then we can pick a dummy variable as the subject."
	subject isNil ifFalse: [^subject].
	expr variablesAndCoefficientsDo: [:v :c | 
		v isDummy ifFalse: [^nil   "nope - no luck"].
		"if v is new to the solver tentatively make it the subject"
		(self columns includesKey: v) ifFalse: [subject := v.  coeff := c]].

	"If we get this far, all of the variables in the expression should be dummy variables.  If the constant is nonzero we are trying to add an unsatisfiable required constraint.  (Remember that dummy variables must take on a value of 0.)  Otherwise, if the constant is zero, multiply by -1 if necessary to make the coefficient for the subject negative."
	(expr constant clApproxZero) ifFalse: [ClError requiredFailure signal].
	coeff > 0 ifTrue: [
		expr terms keysAndValuesDo: [:v :c | expr terms at: v put: 0.0-c]].
	^subject! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:18'!
columns
	"Answer the dictionary of column cross-indices.  The keys are parametric variables and the values are sets of basic variables.  For each parametric variable p, the set should include all the basic variables whose expression includes p.  The columns may be either restricted or unrestricted variables (they are intermixed in the one tableau).
	
	<answer> <LookupTable <ClAbstractVariable> -> <Set <ClAbstractVariable>>>"

	^columns! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:21'!
columns: cols
	"See ClSimplexSolver columns

	cols		<LookupTable <ClAbstractVariable> -> <Set <ClAbstractVariable>>>"
	
	columns := cols! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:22'!
deltaEditConstant: delta plusErrorVar: plusErrorVar minusErrorVar: minusErrorVar

	"first check if the plusErrorVar is basic"
	self rows at: plusErrorVar ifPresent: [:expr | 
		expr incrementConstant: delta.
		"error variables are always restricted -- so the row is infeasible if the constant is negative"
		expr constant < 0.0 ifTrue: [self infeasibleRows add: plusErrorVar].
		^nil].

	"check if minusErrorVar is basic"
	self rows at: minusErrorVar ifPresent: [:expr | 
		expr incrementConstant: delta negated.
		expr constant < 0.0 ifTrue: [self infeasibleRows add: minusErrorVar].
		^nil].

	"Neither is basic.  So they must both be nonbasic, and will both occur in exactly the same expressions.  Find all the expressions in which they occur by finding the column for the minusErrorVar (it doesn't matter whether we look for that one or for plusErrorVar).  Fix the constants in these expressions."
	(self columns at: minusErrorVar) do: [:basicVar || expr c |
		expr := self rows at: basicVar.
		c := expr coefficientFor: minusErrorVar.
		expr incrementConstant: c*delta.
		(basicVar isRestricted and: [expr constant < 0.0]) ifTrue: [self infeasibleRows add: basicVar]].! !

!ClSimplexSolver methodsFor: 'private' stamp: 'AHB 5/23/2001 14:58'!
dualOptimize
	"We have set new values for the constants in the edit constraints.  Re-optimize using the dual simplex algorithm."
	| zRow exitVar entryVar ratio r zc |

	zRow := self rows at: objective.
	[self infeasibleRows isEmpty] whileFalse: [
		exitVar := self infeasibleRows removeFirst.

		"exitVar might have become basic after some other pivoting, so allow for the case of its not being there any longer"
		self rows at: exitVar ifPresent: [:expr |
			"make sure the row is still not feasible"
			expr constant < 0.0 ifTrue: [
				ratio := nil.
				expr variablesAndCoefficientsDo: [:v :c |
					(c>0.0 and: [v isPivotable]) ifTrue: [
						zc := zRow terms at: v ifAbsent: [nil].
						r := zc isNil ifTrue: [ClSymbolicWeight zero] ifFalse: [zc/c].
						(ratio isNil or: [r < ratio or: [r=ratio and: [v hash < entryVar hash]]])  ifTrue: [entryVar := v.  ratio := r]]].
				ratio isNil ifTrue: [ClError internalError signal].
				self pivot: entryVar exitVar: exitVar]]]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:25'!
editConstraints
	"An array of ClEditConstraints for the variables being edited.  These must be in the same order as editVars, editPlusErrorVars, and editMinusErrorVars."

	^ editConstraints! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:26'!
editConstraints: cns

	editConstraints := cns! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:26'!
editMinusErrorVars
	"The array of negative error vars for the edit constraints.  These must be in the same order as editPlusErrorVars, editVars, and editConstraints."

	^ editMinusErrorVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:27'!
editMinusErrorVars: s

	editMinusErrorVars := s! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:27'!
editPlusErrorVars
	"The array of positive error vars for the edit constraints.  These must be in the same order as editMinusErrorVars, editVars, and editConstraints."

	^ editPlusErrorVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:28'!
editPlusErrorVars: s

	editPlusErrorVars := s! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:29'!
editVars
	"The array of variables being edited.  These must be in the same order as editConstraints, editPlusErrorVars, and editMinusErrorVars."

	^ editVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:29'!
editVars: evars

	editVars := evars
! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:31'!
errorVars
	"Answer a dictionary giving the error variables for a non-required constraint.

	<answer> <LookupTable <ClConstraint> -> <Array <ClSlackVariable>>>"

	^ errorVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:31'!
errorVars: evars

	errorVars := evars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'eem 4/3/2012 09:21'!
findEditErrorIndex: eVars
	"find the index in editPlusErrorVars of one of the variables in eVars"

	eVars do: [:v | | index |
		index := self editPlusErrorVars indexOf: v.
		index > 0 ifTrue: [^ index]].
	ClError internalError signal  "didn't find a variable"! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:33'!
infeasibleRows
	"Answer the collection of basic variables that have infeasible rows (used when re-optimizing).

	<answer> <OrderedCollection of ClSlackVariable>"	

	^ infeasibleRows! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:34'!
infeasibleRows: r
	"r 	<OrderedCollection <ClSlackVariable>>"

	infeasibleRows := r! !

!ClSimplexSolver methodsFor: 'private' stamp: 'AHB 5/23/2001 15:00'!
initialize
	| zRow |

	zRow := ClLinearExpression newWithSymbolicWeight.
	self 
		rows: Dictionary new;
		columns: Dictionary new;
		objective: ClObjectiveVariable new;
		infeasibleRows: OrderedCollection new;
		prevEditConstants: Array new;
		stayPlusErrorVars: Array new;
		stayMinusErrorVars: Array new;
		editVars: Array new;
		editConstraints: Array new;
		editPlusErrorVars: Array new;
		editMinusErrorVars: Array new;
		markerVars: Dictionary new;
		errorVars: Dictionary new;
		autoSolve: true.
	self rows at: self objective put: zRow.
! !

!ClSimplexSolver methodsFor: 'private' stamp: 'eem 4/3/2012 09:17'!
makeExpression: cn
	"Make a new linear expression representing the constraint cn, replacing any basic variables with their defining expressions.  Normalize if necessary so that the constant is non-negative.  If the constraint is non-required give its error variables an appropriate weight in the objective function.

	cn <ClLinearConstraint>"
	| expr cnExpr slackVar dummyVar eplus eminus zRow |

	expr := ClLinearExpression new.
	cnExpr := cn expression.
	expr constant: cnExpr constant.
	cnExpr variablesAndCoefficientsDo: [:v :c | | e |
		e := self rows at: v ifAbsent: [nil].
		e isNil ifTrue: [expr addVariable: v coefficient: c] ifFalse: [expr addExpression: e times: c]].

	"add slack and error variables as needed"
	cn isInequality 
		ifTrue: [
			"cn is an inequality, so add a slack variable.  The original constraint is expr>=0, so that the resulting equality is expr-slackVar=0.  If cn is also non-required add a negative error variable, giving expr-slackVar = -errorVar, in other words expr-slackVar+errorVar=0.  Since both of these variables are newly created we can just add them to the expression (they can't be basic)."
			slackVar := ClSlackVariable new.
			expr terms at: slackVar put: -1.0.

			"index the constraint under its slack variable"
			self markerVars at: cn put: slackVar.
			cn isRequired ifFalse: 
				[eminus := ClSlackVariable new.
				expr terms at: eminus put: 1.0.

				"add eminus to the objective function with the appropriate weight"
				zRow := self rows at: self objective.
				zRow terms at: eminus put: cn strength symbolicWeight * cn weight.
				self errorVars at: cn put: (Array with: eminus).
				self noteAddedVariable: eminus subject: self objective]]
		ifFalse: ["cn is an equality"
			cn isRequired 
				ifTrue: [
					"Add a dummy variable to the expression to serve as a marker for this constraint.  The dummy variable is never allowed to enter the basis when pivoting."
					dummyVar := ClDummyVariable new.
					expr terms at: dummyVar put: 1.0.
					self markerVars at: cn put: dummyVar]
				ifFalse: [
					"cn is a non-required equality.  Add a positive and a negative error variable, making the resulting constraint expr = eplus - eminus, in other words expr-eplus+eminus=0"
					eplus := ClSlackVariable new.
					eminus := ClSlackVariable new.
					expr terms at: eplus put: -1.0.
					expr terms at: eminus put: 1.0.

					"index the constraint under one of the error variables"
					self markerVars at: cn put: eplus.
					zRow := self rows at: self objective.
					zRow terms at: eplus put: cn strength symbolicWeight * cn weight.
					self noteAddedVariable: eplus subject: self objective.
					zRow terms at: eminus put: cn strength symbolicWeight * cn weight.
					self errorVars at: cn put: (Array with: eplus with: eminus).
					self noteAddedVariable: eminus subject: self objective.
					cn isStayConstraint ifTrue: [
						self stayPlusErrorVars: (self stayPlusErrorVars copyWith: eplus).
						self stayMinusErrorVars: (self stayMinusErrorVars copyWith: eminus)].
					cn isEditConstraint ifTrue: [
						self editVars: (self editVars copyWith: cn variable).
						self editConstraints: (self editConstraints copyWith: cn).
						self editPlusErrorVars: (self editPlusErrorVars copyWith: eplus).
						self editMinusErrorVars: (self editMinusErrorVars copyWith: eminus).
						self prevEditConstants: (self prevEditConstants copyWith: cnExpr constant)]]].
	"The constant in the expression should be non-negative.  If necessary normalize the expression by multiplying by -1."
	expr constant < 0 ifTrue: [
		expr constant: 0.0-expr constant.
		expr terms keysAndValuesDo: [:v :c | expr terms at: v put: 0.0-c]].
	^expr! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:41'!
markerVars
	"Answer a lookup table giving the marker variable for each constraint (used when deleting a constraint).
	
	<answer> <Dictionary <ClConstraint> -> <ClAbstractVariable>"

	^ markerVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:42'!
markerVars: dict
	"dict	<Dictionary <ClConstraint> -> <ClAbstractVariable>"

	markerVars := dict! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:43'!
newEditConstants
	"The array of constants for the edit constraints for the next iteration.  These must be in the same order as editPlusErrorVars and editMinusErrorVars"

	^ newEditConstants! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:43'!
newEditConstants: n

	newEditConstants := n
! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:44'!
noteAddedVariable: var subject: subject
	"Variable var has been added to an expression.  If the expression is in a tableau the corresponding basic variable is subject (or if subject is nil then it's in the objective function).  Update the column cross-indices.

	var <ClAbstractVariable>
	subject <ClAbstractVariable | nil>"

	subject notNil ifTrue: [(self columns at: var ifAbsentPut: [Set new]) add: subject]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:45'!
noteRemovedVariable: var subject: subject
	"Variable var has been removed from an expression.  If the expression is in a tableau the corresponding basic variable is subject (or if subject is nil then it's in the objective function).  Update the column cross-indices.

	var <ClAbstractVariable>
	subject <ClAbstractVariable | nil>"

	subject notNil ifTrue: [(self columns at: var) remove: subject]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:46'!
objective
	"Answer the objective function (a ClLinearExpression)"

	^ objective! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:46'!
objective: aClLinearExpression

	objective := aClLinearExpression! !

!ClSimplexSolver methodsFor: 'private' stamp: 'AHB 5/23/2001 15:27'!
optimize: zVar
	"Minimize the value of the objective.  (The tableau should already be feasible.)
	
	zVar <ClObjectiveVariable>"
	| zRow minRatio exitVar entryVar r expr coeff |

	zRow := self rows at: zVar.
	[true] whileTrue: [
		"Find a variable in the objective function with a negative coefficient (ignoring dummy variables).
		  If all coefficients are positive we're done.  To implement Bland's anticycling rule, if there is 
		  more than one variable with a negative coefficient, pick the one with the smaller id (implemented as hash)."
		entryVar := nil.
		zRow variablesAndCoefficientsDo: [:v :c | 
			(v isPivotable and: [c definitelyNegative and: [entryVar isNil or: [v hash < entryVar hash]]]) ifTrue: [entryVar := v]].
		"if all coefficients were positive (or if the objective function has no pivotable variables) we are at optimum"
		entryVar isNil ifTrue: [^nil].
		"Choose which variable to move out of the basis.  Only consider pivotable basic variables (that is, restricted, non-dummy variables)."
		minRatio := nil.
		(self columns at: entryVar) do: [:v | v isPivotable ifTrue: [
			expr := self rows at: v.
			coeff := expr coefficientFor: entryVar.

			"only consider negative coefficients"
			coeff < 0.0 ifTrue: [
				r := (expr constant / coeff) negated.
				"Decide whether to make v be the best choice for exit variable so far by comparing the ratios.
				  In case of a tie, choose the variable with the smaller id (to implement Bland's anticycling rule)."
				(minRatio isNil or: [r<minRatio or: [r=minRatio and: [v hash < exitVar hash]]]) ifTrue: [
					minRatio := r.  exitVar := v]]]].
		"If minRatio is still nil at this point, it means that the objective function is unbounded, i.e. it can become arbitrarily negative.  This should never happen in this application."
		minRatio isNil ifTrue: [ClError internalError signal].
		self pivot: entryVar exitVar: exitVar]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/6/2001 23:50'!
pivot: entryVar exitVar: exitVar
	"Do a pivot.  Move entryVar into the basis (i.e. make it a basic variable), and move exitVar out of the basis (i.e. make it a parametric variable)."
	| expr |

	"expr is the expression for the exit variable (about to leave the basis) -- so that the old tableau includes the equation exitVar = expr"
	expr := self removeRow: exitVar.

	"Compute an expression for the entry variable.  Since expr has been deleted from the tableau we can destructively modify it to build this expression."
	expr changeSubject: exitVar newSubject: entryVar.
	self substituteOut: entryVar expr: expr.
	self addRow: entryVar expr: expr.! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:35'!
prevEditConstants
	"The array of constants for the edit constraints on the previous iteration.  These must be in the same order as editPlusErrorVars and editMinusErrorVars"
	
	^ prevEditConstants! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:35'!
prevEditConstants: constants

	prevEditConstants := constants! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:36'!
removeParametricVar: var
	"Remove the parametric variable var, updating the appropriate column and row entries.
	
	var <ClAbstractVariable>"
	| set |
	
	set := self columns removeKey: var.
	set do: [:v | (self rows at: v) terms removeKey: var]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:38'!
removeRow: var 
	"var should be a basic variable, so that the tableau contains the constraint var=expr.  Remove this row, and update the column cross-indices.  Also remove it from infeasibleRows if present.  Answer expr.
	
	var 		<ClAbstractVariable>
	<answer>	<ClLinearExpression>"
	| expr |

	expr := self rows removeKey: var.
	expr terms keysDo: [:v | (self columns at: v) remove: var].
	self infeasibleRows remove: var ifAbsent: [ ].
	^ expr! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/8/2001 08:02'!
resetEditConstants
	"Each of the non-required edits will be represented by an equation of the form
		v = c + eplus - eminus
where v is the variable with the edit, c is the previous edit value, and eplus and eminus are slack variables that hold the error in satisfying the edit constraint.  We are about to change something, and we want to fix the constants in the equations representing the edit constraints.  If one of eplus and eminus is basic, the other must occur only in the expression for that basic error variable.  (They can't both be basic.)  Fix the constant in this expression.  Otherwise they are both nonbasic.  Find all of the expressions in which they occur, and fix the constants in those.  See the UIST paper for details."
	| delta nn pp |

	self newEditConstants size = self editPlusErrorVars size ifFalse: [
		"number of edit constants doesn't match the number of edit error variables"
		ClError internalError signal].
	1 to: self newEditConstants size do: [:i |
		nn := self newEditConstants.
		pp := self prevEditConstants.
		nn isNil ifTrue: [self halt].
		self prevEditConstants isNil ifTrue: [self halt].
		(self newEditConstants at: i) ifNil: [
			Transcript cr; show: self newEditConstants printString.
			self halt].
		(self prevEditConstants at: i) ifNil: [self halt].
		delta := (self newEditConstants at: i) - (self prevEditConstants at: i).
		self prevEditConstants at: i put: (self newEditConstants at: i).
		self 
			deltaEditConstant: delta
			plusErrorVar: (self editPlusErrorVars at: i)
			minusErrorVar: (self editMinusErrorVars at: i)].! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:43'!
resetStayConstants
	"Each of the non-required stays will be represented by an equation of the form
			v = c + eplus - eminus
where v is the variable with the stay, c is the previous value of v, and eplus and eminus are slack variables that hold the error in satisfying the stay constraint.  We are about to change something, and we want to fix the constants in the equations representing the stays.  If both eplus and eminus are nonbasic they have value 0 in the current solution, meaning the previous stay was exactly satisfied.  In this case nothing needs to be changed.  Otherwise one of them is basic, and the other must occur only in the expression for that basic error variable.  Reset the constant in this expression to 0."
	| expr |

	1 to: self stayPlusErrorVars size do: [:i | 
		expr := self rows at: (self stayPlusErrorVars at: i) ifAbsent: [
				self rows at: (self stayMinusErrorVars at: i) ifAbsent: [nil]].
		expr ifNotNil: [expr constant: 0.0]]! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:44'!
resolve: cs
	"Re-solve the current collection of constraints for new values for the constants of the edit variables.

	cs <Array of Float>"

	self newEditConstants: cs.
	self resolve! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:45'!
rows
	"Answer the dictionary of rows in the tableau.  The keys are basic variables and the values are the corresponding expressions.  Both unrestricted and restricted variables are included in the one tableau (i.e. the keys may be either restricted or unrestricted variables).
	
	<answer> <Dictionary <ClAbstractVariable> -> <ClLinearExpression>>"
	
	^ rows! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:46'!
rows: r
	"See ClSimplexSolver rows.
	
	r <Dictionary <ClAbstractVariable> -> <ClLinearExpression>>"
	
	rows := r! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:48'!
setExternalVariables
	"Set each external basic variable to its value, and set each external parametric variable to 0.  (It isn't clear that we will ever have external parametric variables -- every external variable should either have a stay on it, or have an equation that defines it in terms of other external variables that do have stays.  For the moment I'll put this in though.)  Variables that are internal to the solver don't actually store values -- their values are just implicit in the tableu -- so we don't need to set them."

	self rows keysAndValuesDo: [:var :expr | var isExternal ifTrue: [var value: expr constant]].
	self columns keysDo: [:var | var isExternal ifTrue: [var value: 0.0]].! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:49'!
stayMinusErrorVars
	"Answer an array of negative error variables for the stay constraints.  The corresponding positive error is in the same place in stayPlusErrorVars"
	
	^ stayMinusErrorVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:49'!
stayMinusErrorVars: vs

	stayMinusErrorVars := vs
! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:49'!
stayPlusErrorVars
	"Answer an array of plus error variables for the stay constraints.  The corresponding negative error is in the same place in stayMinusErrorVars"
	
	^ stayPlusErrorVars! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:50'!
stayPlusErrorVars: vs

	stayPlusErrorVars := vs! !

!ClSimplexSolver methodsFor: 'private' stamp: 'eem 4/3/2012 09:17'!
substituteOut: oldVar expr: expr
	"Replace all occurrences of oldVar with expr (including in the objective function), and update the column cross-references.  oldVar should now be a basic variable."
	| col |

	col := self columns removeKey: oldVar.
	col do: [:v | | row | 
		row := self rows at: v.
		row substituteOut: oldVar expr: expr subject: v solver: self.
		(v isRestricted and: [row constant<0.0]) ifTrue: [self infeasibleRows add: v]].! !

!ClSimplexSolver methodsFor: 'private' stamp: 'jcg 5/7/2001 16:52'!
tryAddingDirectly: expr
	"We are trying to add the constraint expr=0 to the appropriate tableau.  Try to add expr directly to the tableax without creating an artificial variable.  Return true if successful and false if not.

	expr <ClLinearExpresson>"
	| subject |		

	"If possible choose a subject for expr (a variable to become basic) from among the current variables in expr.  If this isn't possible, add an artificial variable and use that variable as the subject."
	subject := self chooseSubject: expr.
	subject isNil ifTrue: [^false].
	expr newSubject: subject.
	(self columns includesKey: subject) ifTrue: [self substituteOut: subject expr: expr].
	self addRow: subject expr: expr.
	^ true! !

!ClSimplexSolver class methodsFor: 'constants' stamp: 'AHB 5/23/2001 15:32'!
epsilon

	^ Epsilon! !

!ClSimplexSolver class methodsFor: 'class initialization' stamp: 'AHB 5/23/2001 15:31'!
initialize

	Epsilon := 1.0e-8! !

!ClSimplexSolver class methodsFor: 'instance creation' stamp: 'jcg 5/6/2001 15:13'!
new

	^ super new initialize! !

!ClStrength methodsFor: 'accessing' stamp: 'jcg 5/7/2001 17:00'!
isRequired

	^ self == RequiredStrength! !

!ClStrength methodsFor: 'accessing' stamp: 'jcg 5/7/2001 17:02'!
symbolicWeight

	^ symbolicWeight! !

!ClStrength methodsFor: 'private' stamp: 'jcg 5/7/2001 17:02'!
name

	^ name! !

!ClStrength methodsFor: 'private' stamp: 'jcg 5/7/2001 17:02'!
name: aString

	name := aString! !

!ClStrength methodsFor: 'private' stamp: 'jcg 5/7/2001 17:03'!
symbolicWeight: weight

	symbolicWeight := weight! !

!ClStrength methodsFor: 'printing' stamp: 'jcg 5/7/2001 17:00'!
printOn: aStream

	aStream nextPutAll: self name! !

!ClStrength class methodsFor: 'class initialization' stamp: 'jcg 5/7/2001 18:29'!
initialize
	"Initialize the class variables to the pre-defined strengths."

	| s m w |

	RequiredStrength := self new.  
	RequiredStrength name: 'required'.

	s := ClSymbolicWeight new.  s at: 1 put: 1.0.  s at: 2 put: 0.0.  s at: 3 put: 0.0.
	StrongStrength := self new.
	StrongStrength name: 'strong'; symbolicWeight: s.

	m := ClSymbolicWeight new.  m at: 1 put: 0.0.  m at: 2 put: 1.0.  m at: 3 put: 0.0.
	MediumStrength := self new.
	MediumStrength name: 'medium'; symbolicWeight: m.

	w := ClSymbolicWeight new.  w at: 1 put: 0.0.  w at: 2 put: 0.0.  w at: 3 put: 1.0.
	WeakStrength := self new.
	WeakStrength name: 'weak'; symbolicWeight: w.! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:56'!
medium

	^ MediumStrength ! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:56'!
nLevels
	"Answer the number of non-required strengths."

	^ 3! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:56'!
required

	^ RequiredStrength ! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:57'!
strengthsDo: block
	"Evaluate the block for each defined strength, strongest to weakest.

	block	<Block value: ClStrength>"

	block
		value: RequiredStrength;
		value: StrongStrength;
		value: MediumStrength;
		value: WeakStrength! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:57'!
strong

	^ StrongStrength ! !

!ClStrength class methodsFor: 'strengths' stamp: 'jcg 5/7/2001 16:58'!
weak

	^ WeakStrength ! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:03'!
* n
	"Multiply this symbolic weight by n (n should be a number)"
	| result |

	n isNumber ifFalse: [ClError internalError signal].
	result := self class new.
	1 to: self size do: [:i | result at: i put: n*(self at: i)].
	^ result! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:03'!
+ n
	"Add this symbolic weight to n (which must also be a symbolic weight)"
	| result |

	n isSymbolicWeight ifFalse: [ClError internalError signal].
	result := self class new.
	1 to: self size do: [:i | result at: i put: (self at: i) + (n at: i)].
	^ result! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:04'!
- n
	"Subtract n from this symbolic weight (n must also be a symbolic weight)"
	| result |

	n isSymbolicWeight  ifFalse: [ClError internalError signal].
	result := self class new.
	1 to: self size do: [:i | result at: i put: (self at: i) - (n at: i)].
	^ result! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:04'!
/ n
	"Divide this symbolic weight by n (n should be a number)"
	| result |

	n isNumber ifFalse: [ClError internalError signal].
	result := self class new.
	1 to: self size do: [:i | result at: i put: (self at: i)/n].
	^ result! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/8/2001 08:04'!
clApprox: s
	"Answer true if this symbolic weight is approximately equal to s.  The argument s must be another symbolic weight -- we can't compare symbolic weights with ordinary numbers."

	s isSymbolicWeight ifFalse: [ClError internalError signal].
	1 to: self size do: [:i | 
		((self at: i) clApprox: (s at: i)) ifFalse: [^ false]].
	^ true! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'jcg 5/7/2001 17:12'!
clApproxZero
	"Answer true if this symbolic weight is approximately zero"

	^ self clApprox: Zero! !

!ClSymbolicWeight methodsFor: 'operations' stamp: 'AHB 5/23/2001 15:32'!
definitelyNegative
	"return true if this symbolic weight is negative.  Allow coefficients that are within epsilon of
		0 to count as 0"
		| a epsilon nepsilon |
	epsilon := ClSimplexSolver epsilon.
	nepsilon := 0.0 - epsilon.
	1 to: self size do: [:i | 
		a := self at: i.  
		a<nepsilon ifTrue: [^true].
		a>epsilon ifTrue: [^false]].
	^false
! !

!ClSymbolicWeight methodsFor: 'comparing' stamp: 'jcg 5/8/2001 08:05'!
< n
	| a b |
	n isSymbolicWeight ifFalse: [ClError internalError signal].
	1 to: self size do: [:i | 
		a := self at: i.  
		b := n at: i.
		a<b ifTrue: [^true].
		a>b ifTrue: [^false]
		"they're equal ... keep going"].
	"all elements were equal"
	^ false! !

!ClSymbolicWeight methodsFor: 'comparing' stamp: 'jcg 5/8/2001 08:05'!
<= n
	| a b |
	n isSymbolicWeight ifFalse: [ClError internalError signal].
	1 to: self size do: [:i | 
		a := self at: i.  
		b := n at: i.
		a<b ifTrue: [^true].
		a>b ifTrue: [^false]
		"they're equal ... keep going"].
	"all elements were equal"
	^ true! !

!ClSymbolicWeight methodsFor: 'comparing' stamp: 'jcg 5/7/2001 17:09'!
= n

	n isSymbolicWeight ifFalse: [^false].
	1 to: self size do: [:i | 
		(self at: i) = (n at: i) ifFalse: [^false]].
	"all elements were equal"
	^ true! !

!ClSymbolicWeight methodsFor: 'comparing' stamp: 'jcg 5/7/2001 17:10'!
> n

	^ (self <= n) not
! !

!ClSymbolicWeight methodsFor: 'comparing' stamp: 'jcg 5/7/2001 17:10'!
>= n

	^ (self < n) not
! !

!ClSymbolicWeight methodsFor: 'accessing' stamp: 'jcg 5/7/2001 17:13'!
isSymbolicWeight

	^ true! !

!ClSymbolicWeight methodsFor: 'printing' stamp: 'jcg 5/7/2001 17:13'!
printOn: aStream

	aStream nextPutAll: '['.
	(self at: 1) printOn: aStream.
	2 to: self size do: [:i | aStream nextPutAll: ','.  (self at: i) printOn: aStream].
	aStream nextPutAll: ']'! !

!ClSymbolicWeight class methodsFor: 'class initialization' stamp: 'jcg 5/7/2001 18:29'!
initialize
	"Initialize the class variables to the pre-defined strengths."

	Zero := self new.
	1 to: Zero size do: [:i | Zero at: i put: 0.0]! !

!ClSymbolicWeight class methodsFor: 'instance creation' stamp: 'jcg 5/7/2001 17:04'!
new

	^ self basicNew: ClStrength nLevels! !

!ClSymbolicWeight class methodsFor: 'accessing' stamp: 'jcg 5/7/2001 17:04'!
zero

	^ Zero! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 19:55'!
addDelete1

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c addDelete1.
"

	| x solver result c10 c10again c20 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 100.0 strength: ClStrength weak).
	c10 := x cnLEQ: 10.0.
	c20 := x cnLEQ: 20.0.
	solver addConstraint: c10; addConstraint: c20.
	result := (x value clApprox: 10.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 20.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 100.0).
	c10again := x cnLEQ: 10.0.
	solver addConstraint: c10; addConstraint: c10again.
	result := result & (x value clApprox: 10.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 10.0).
	solver removeConstraint: c10again.
	result := result & (x value clApprox: 100.0).

	Transcript cr; 
		show: 'ClCassowaryTester addDelete1 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 21:20'!
addDelete2

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c addDelete2.
"

	| x y solver result c10 c10again c20 cxy |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.
	y := ClVariable new name: 'y'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 100.0 strength: ClStrength weak).
	solver addConstraint: (y cnEqual: 120.0 strength: ClStrength strong).
	c10 := x cnLEQ: 10.0.
	c20 := x cnLEQ: 20.0.
	solver addConstraint: c10; addConstraint: c20.
	result := (x value clApprox: 10.0) & (y value clApprox: 120.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 120.0).
	cxy := x*2 cnEqual: y.
	solver addConstraint: cxy.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 40.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 60.0) & (y value clApprox: 120.0).
	solver removeConstraint: cxy.
	result := result & (x value clApprox: 100.0) & (y value clApprox: 120.0).

	Transcript cr; 
		show: 'ClCassowaryTester addDelete2 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 21:23'!
addDelete3

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c addDelete3.
"

	| x solver result c1 c2 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	c1 := (x cnEqual: 100.0 strength: ClStrength weak weight: 5).  "notice weight=5 for this one"
	c2 := (x cnEqual: 200.0 strength: ClStrength weak).
	solver addConstraint: c1; addConstraint: c2.
	result := (x value clApprox: 100.0).
	solver removeConstraint: c1.
	result := result & (x value clApprox: 200.0).

	Transcript cr; 
		show: 'ClCassowaryTester addDelete3 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 21:23'!
edit1

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c edit1.
"

	| x y solver result  |

	haltFirst ifTrue: [self halt].

	x := ClVariable newWith: 20.0 name: 'x'.
	y := ClVariable newWith: 30.0 name: 'y'.

	"set up solver with a weak stay on x, required 10<=x<=100, and required x=2*y"
	solver := ClSimplexSolver new.
	solver addConstraint: (ClStayConstraint variable:  x strength: ClStrength weak).
	solver addConstraint: (x cnGEQ: 10); addConstraint: (x cnLEQ: 100).
	solver addConstraint: (x cnEqual: y*2).
	result := (x value clApprox: 20.0) & (y value clApprox: 10.0).

	"now edit y"
	solver addEditVar: y strength: ClStrength strong.
	solver beginEdit.
	solver suggestValue: y newValue: 35.0.
	solver resolve.
	result := result & (x value clApprox: 70.0) & (y value clApprox: 35.0).
	solver suggestValue: y newValue: 80.0.   "this is bigger than y can be"
	solver resolve.
	result := result & (x value clApprox: 100.0) & (y value clApprox: 50.0).
	solver suggestValue: y newValue: 25.0.
	solver resolve.
	result := result & (x value clApprox: 50.0) & (y value clApprox: 25.0).

	solver endEdit.
	"x and y shouldn't change"
	result := result & (x value clApprox: 50.0) & (y value clApprox: 25.0).

	"edit x"
	solver addEditVar:x strength: ClStrength strong.
	solver beginEdit.
	solver suggestValue: x newValue: 44.0.
	solver resolve.
	result := result & (x value clApprox: 44.0) & (y value clApprox: 22.0).
	solver endEdit.

	Transcript cr; 
		show: 'ClCassowaryTester edit1 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 19:57'!
haltFirst: h
	"haltFirst is a boolean flag ... if it is true, halt before running each test, so that the user can step through the test if desired"
	
	haltFirst := h.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/8/2001 07:52'!
inconsistent1

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c inconsistent1.
"

	"inconsistent constraints:
		req'd	x=10
		req'd	x=5
	"

	| x solver signalled |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 10.0).
	signalled := false.
	[solver addConstraint: (x cnEqual: 5.0)] 
		on: ClError 
		do: [:signal | signalled := true. signal return].

	Transcript cr; 
		show: 'ClCassowaryTester inconsistent1 result='; 
		show: (signalled ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/8/2001 07:52'!
inconsistent2

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c inconsistent2.
"

	"inconsistent constraints:
		req'd	x>=10
		req'd	x<=5
	"

	| x solver signalled |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnGEQ: 10.0).
	signalled := false.
	[solver addConstraint: (x cnLEQ: 5.0)] 
		on: ClError 
		do: [:signal | signalled := true. signal return].

	Transcript cr; 
		show: 'ClCassowaryTester inconsistent2 result='; 
		show: (signalled ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 20:07'!
stay1

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c stay1.
"

	| x solver result stay |

	haltFirst ifTrue: [self halt].

	x := ClVariable newWith: 20.0 name: 'x'.

	"set up solver with a weak stay on x, required 10<=x<=100, and required x=2*y"
	solver := ClSimplexSolver new.
	stay := ClStayConstraint variable:  x strength: ClStrength weak.
	solver addConstraint: stay.
	result := (x value clApprox: 20.0).
	solver removeConstraint: stay.

	Transcript cr; 
		show: 'ClCassowaryTester stay1 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 20:07'!
twoSolutions

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c twoSolutions.
"

	"
		req'd   x<=y
		req'd   y=x+3
 		weak   x=10
		weak   y=10

		The solution is x=7, y=10  or x=10, y=13 "

	| x y solver result |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.
	y := ClVariable new name: 'y'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnLEQ: y).
	solver addConstraint: (y cnEqual: x+3.0).
	solver addConstraint: (x cnEqual: 10.0 strength: ClStrength weak).
	solver addConstraint: (y cnEqual: 10.0 strength: ClStrength weak).

	result :=
		(x value clApprox: 10.0) & (y value clApprox: 13.0)
			or: [	(x value clApprox: 7.0) & (y value clApprox: 10.0) ].

	Transcript cr; 
		show: 'ClCassowaryTester twoSolutions result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'testing' stamp: 'jcg 5/7/2001 20:08'!
weighted1

"
	| c |
	c := ClCassowaryTester new.
	c haltFirst: false.
	c weighted1.
"

	| x solver result c15 c20 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	c15 := x cnEqual: 15.0 strength: ClStrength weak.
	c20 := x cnEqual: 20.0 strength: ClStrength weak weight: 2.
	solver addConstraint: c15.
	result := x value clApprox: 15.0.
	solver addConstraint: c20.
	result := result & (x value clApprox: 20.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 15.0).

	Transcript cr; 
		show: 'ClCassowaryTester weighted1 result='; 
		show: (result ifTrue: ['passed'] ifFalse: ['failed']); 
		cr.! !

!ClCassowaryTester methodsFor: 'initialization' stamp: 'jcg 7/4/2008 10:22'!
initialize
	super initialize.
	haltFirst := false.! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:30'!
error

	^ self new messageText: '(ExCLError) An error has occured in CL'

! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:30'!
internal

	^ self new messageText: '(ExCLInternalError) An internal error has occured'

! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:30'!
nonlinear

	^ self new messageText: '(ExCLNonlinearExpression) The resulting expression would be nonlinear' 

! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:31'!
notEnoughStays

	^ self new messageText: '(ExCLNotEnoughStays) There are not enough stays to give specific values to every variable'  

! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:31'!
requiredFailure

	^ self new messageText: '(ExCLRequiredFailure) A required constraint cannot be satisfied' ! !

!ClError class methodsFor: 'instance creation' stamp: 'jcg 5/16/2001 09:31'!
tooDifficult

	^ self new messageText: '(ExCLError) An error has occured in CL' ! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/31/2024 19:10:02'!
beginManipulation
	"This method is called when a constrainable point is starting to be manipulated, i.e., upon mouse down.  The constrainable point is stored in the 'dragPoint' instance variable, and the corresponding plan for moving that point is stored in the 'plan' instance variable.

The order of messages is:
	1. #beginManipulation
	2-N. #manipulationMoveTo:
	N+1. #endManipulation"

	self constraintPointsDo: [:p |
		dragPoint == p ifTrue: [
			cs addEditVar: p x strength: ClStrength strong.
			cs addEditVar: p y strength: ClStrength strong.
			cs beginEdit.
			^nil]].

	 "drag point not found"
	self error: 'Drag point not found' ! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'jcg 5/8/2001 11:56'!
endManipulation
	"This method is called when a constrainable point is ending being manipulated, i.e., upon mouse up.  The constrainable point is stored in the 'dragPoint' instance variable, and the corresponding plan for moving that point is stored in the 'plan' instance variable.

	The order of messages is:
		1. #beginManipulation
		2-N. #manipulationMoveTo:
		N+1. #endManipulation"

	cs endEdit.
	self changed.! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/29/2024 22:22:41'!
handlesMouseDown: evt
	^ true! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/30/2024 19:07:46'!
handlesMouseHover

	^ true! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'jcg 5/8/2001 16:21'!
handlesMouseOver: evt

	^ true! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/29/2024 22:41:08'!
handlesMouseStillDown: evt
	^ true! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/30/2024 19:24:24'!
manipulationMoveTo: aPoint
	"This method is called when a constrainable point is manipulated using the mouse, i.e., during mouse motion.  aPoint is the location of the mouse and thus the new requested location of the constrainable point.  The constrainable point is stored in the 'dragPoint' instance variable, and the corresponding plan for moving that point is stored in the 'plan' instance variable.

	The order of messages is:
		1. #beginManipulation
		2-N. #manipulationMoveTo:
		N+1. #endManipulation"

	cs suggestValue: dragPoint x newValue: aPoint x asFloat.
	cs suggestValue: dragPoint y newValue: aPoint y asFloat.
	cs resolve.! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/30/2024 19:11:27'!
mouseButton1Down: evt localPosition: position
	grabPoint ifNil: [^ self].
	dragPoint := grabPoint.
	grabPoint := nil.
	
	self beginManipulation
! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/30/2024 19:11:21'!
mouseButton1Up: evt localPosition: position
	dragPoint ifNil: [^ self].
	dragPoint := nil.
	
	self endManipulation
! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/31/2024 18:40:55'!
mouseHover: evt localPosition: position
	| threshold |
	dragPoint ifNil: [
		threshold := self grabThreshold * 2.
		self constraintPointsDo: [:pt | | pv |
			pv := pt valuePoint rounded.
			(((pv - threshold) corner: (pv + threshold)) containsPoint: position) ifTrue: [
				grabPoint == pv ifFalse: [
					grabPoint := pt.
					self redrawNeeded ].
				^ self]].
		grabPoint ifNotNil: [
			grabPoint := nil.
			self redrawNeeded ]]! !

!ClDemoWindow methodsFor: 'event handling' stamp: 'hlsf 7/30/2024 19:22:33'!
mouseMove: evt localPosition: position
	dragPoint ifNil: [^ self].
	self manipulationMoveTo: (evt  eventPosition - self morphPosition ).
	self redrawNeeded ! !

!ClDemoWindow methodsFor: 'enumerating' stamp: 'jcg 5/8/2001 09:23'!
constraintPointsDo: aBlock
	"Evaluate this block for each of the constrainable points in this demo.  Constrainable points are those that can be manipulated by the mouse.  A constraint point is a Point object whose x and y instance variables hold instances of ClVariable.

	aBlock 	<Block<Point<ClVariable>>>"

	self subclassResponsibility! !

!ClDemoWindow methodsFor: 'initialization' stamp: 'jcg 5/8/2001 09:27'!
createForm

	self error: 'this needs to be redone for morphic.'.

	"da := form createDrawingArea: 'da' argBlock: nil.
	da manageChild.
	da setValuesBlock: [:w |
		w
			bottomAttachment: XmATTACHFORM;
			topAttachment: XmATTACHFORM;
			rightAttachment: XmATTACHFORM;
			leftAttachment: XmATTACHFORM].
	da
		addCallback: XmNexposeCallback
			receiver: self
			selector: #exposeArea:clientData:callData:
			clientData: nil;
		addCallback: XmNresizeCallback
			receiver: self
			selector: #resizeArea:clientData:callData:
			clientData: nil;
		addEventHandler: Button1MotionMask
			receiver: self
			selector: #button1Motion:clientData:callData:
			clientData: nil;
		addEventHandler: ButtonPressMask
			receiver: self
			selector: #buttonPress:clientData:callData:
			clientData: nil;
		addEventHandler: ButtonReleaseMask
			receiver: self
			selector: #buttonRelease:clientData:callData:
			clientData: nil;
		addEventHandler: PointerMotionMask
			receiver: self
			selector: #pointerMotion:clientData:callData:
			clientData: nil"
! !

!ClDemoWindow methodsFor: 'initialization' stamp: 'jcg 5/8/2001 09:27'!
createWindow

	self error: 'this needs to be redone for morphic.'.

	"shell :=
		CwTopLevelShell
			createApplicationShell: 'shell'
			argBlock: [:w |
				w
					title: self title;
					width: self initialExtent x;
					height: self initialExtent y].
	main := shell createMainWindow: 'main' argBlock: nil.
	main manageChild.
	form := main createForm: 'form' argBlock: nil.
	form manageChild.
	shell
		addCallback: XmNdestroyCallback
		receiver: self
		selector: #destroyWindow:clientData:callData:
		clientData: nil.
	self createForm"
! !

!ClDemoWindow methodsFor: 'initialization' stamp: 'hlsf 7/29/2024 22:36:03'!
initialize
	"Initialize the demo structures before the widgets are created."

	super initialize.
	self morphExtent: self initialExtent.
	cs := ClSimplexSolver new.
	errorPixel := nil! !

!ClDemoWindow methodsFor: 'drawing' stamp: 'hlsf 7/29/2024 22:32:06'!
drawBackgroundOn: aCanvas
	aCanvas
		fillRectangle: self morphLocalBounds
		color: color
		borderWidth: borderWidth
		borderStyleSymbol: #simple
		baseColorForBorder: borderColor.! !

!ClDemoWindow methodsFor: 'drawing' stamp: 'jcg 5/8/2001 12:08'!
drawForegroundOn: aCanvas

! !

!ClDemoWindow methodsFor: 'drawing' stamp: 'jcg 5/8/2001 11:54'!
drawGrabBox

	self flag: #schwa.
	Transcript show: 'grab box'; cr! !

!ClDemoWindow methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 19:24:43'!
drawGrabBoxOn: aCanvas

	grabPoint ifNotNil: [
		aCanvas 
			frameRectangle: ((grabPoint valuePoint - self grabThreshold) 
				corner: 	(grabPoint valuePoint + self grabThreshold))
			borderWidth: 1
			color: Color yellow]! !

!ClDemoWindow methodsFor: 'drawing' stamp: 'jcg 5/8/2001 17:11'!
drawOn: aCanvas

	self 
		drawBackgroundOn: aCanvas;
		drawForegroundOn: aCanvas;
		drawGrabBoxOn: aCanvas.
! !

!ClDemoWindow methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:19'!
fixupPoint: aPoint with: deepCopier
	"Answer a Point that contains the deeply copied counterparts of its x and y values"

	^ (deepCopier references at: aPoint x) @ (deepCopier references at: aPoint y)
	! !

!ClDemoWindow methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:21'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	grabPoint ifNotNil: [grabPoint := self fixupPoint: grabPoint with: deepCopier].
	dragPoint ifNotNil: [dragPoint := self fixupPoint: dragPoint with: deepCopier].! !

!ClDemoWindow methodsFor: 'defaults' stamp: 'jcg 5/8/2001 11:59'!
grabThreshold

	^ 7@7! !

!ClDemoWindow methodsFor: 'defaults' stamp: 'jcg 5/8/2001 12:00'!
initialExtent

	^ 300@300! !

!ClDemoWindow methodsFor: 'geometry testing' stamp: 'hlsf 7/30/2024 19:36:30'!
requiresVectorCanvas
	^ true! !

!ClDemoWindow class methodsFor: 'instance creation' stamp: 'jcg 5/8/2001 08:41'!
makeDemos
	"statements to build various demos"

	ClBoundedLineDemo new openInWorld.
	ClElasticBoundedLineDemo new openInWorld.
	ClQuadDemo new openInWorld.
	ClMidpointDemo new openInWorld.
	ClBoundedQuadDemo new openInWorld.
	ClCrossedQuadDemo new openInWorld.
	ClElasticQuadDemo new openInWorld.
"	ClTreeDemo1 new openInWorld.
	ClTreeDemo2 new openInWorld."
	ClBoxesDemo new openInWorld.
"	ClSequenceDiagramDemo1 new openInWorld."
	(ClBinaryTreeDemo height: 4) openInWorld.! !

!ClBinaryTreeDemo methodsFor: 'enumerating' stamp: 'jcg 5/8/2001 08:32'!
childrenAndParentsDo: aBlock
	"Evaluate aBlock for all children and parents, starting with leaves and going up the tree."
	| parentcount left right parent |

	height to: 2 by: -1 do: [:h |
		parentcount := 2 raisedTo: h-2.
		1 to: parentcount do: [:i | 
			left := nodes at: (100*h)+(2*i)-1.
			right := nodes at: (100*h)+(2*i).
			parent := nodes at: (100*(h-1))+i.
			aBlock 
				value: left 
				value: right 
				value: parent]]! !

!ClBinaryTreeDemo methodsFor: 'enumerating' stamp: 'jcg 5/8/2001 08:33'!
constraintPointsDo: aBlock

	nodes do: [:each | aBlock value: each]! !

!ClBinaryTreeDemo methodsFor: 'initialization' stamp: 'jcg 5/8/2001 23:33'!
createConstraints
	| sorted inset spacing winWidth winHeight root |

	"Add stays on each node.  Accumulate the nodes children first, so that the weights on the parents are stronger than those on the children."
	sorted := OrderedCollection new.
	self childrenAndParentsDo: [:lc :rc :p |
		(sorted includes: lc) ifFalse: [sorted add: lc].
		(sorted includes: rc) ifFalse: [sorted add: lc].
		root := p  "we need this at the end"].
	sorted add: root.
	cs addPointStays: sorted.

	inset := self inset.
	spacing := self spacing.
	winWidth := self initialExtent x.
	winHeight := self initialExtent y.
	self childrenAndParentsDo: [:lc :rc :p |
		root := p   "we need the root at the end".

		"children are at equal height"
		cs addConstraint: (lc y cnEqual: rc y).

		"children are below parents"
		cs addConstraint: (p y + spacing cnLEQ: lc y).
		cs addConstraint: (p y + spacing cnLEQ: rc y).

		"parent is centered in the x coordinate between children"
		cs addConstraint: ( (lc x*0.5) + (rc x*0.5) cnEqual: p x).

		"each node lies within the window"
		cs addBounds: lc x lowerBound: inset upperBound: winWidth-inset.
		cs addBounds: rc x lowerBound: inset upperBound: winWidth-inset.
		cs addBounds: lc y lowerBound: inset upperBound: winHeight-inset.
		cs addBounds: rc y lowerBound: inset upperBound: winHeight-inset].
	cs addBounds: root x lowerBound: inset upperBound: winWidth-inset.
	cs addBounds: root y lowerBound: inset upperBound: winHeight-inset.! !

!ClBinaryTreeDemo methodsFor: 'initialization' stamp: 'jcg 5/8/2001 23:28'!
height: aNumber

	height := aNumber! !

!ClBinaryTreeDemo methodsFor: 'initialization' stamp: 'jcg 5/8/2001 23:28'!
initialize
	| xspace yspace index nleaves nodecount left right px |

	xspace := 20.  
	yspace := 20.

	super initialize.
	nodes := Dictionary new.
	
	"create the leaves"
	nleaves := 2 raisedTo: height-1.
	1 to: nleaves do: [:i | index := 100*height + i.  nodes at: index put: 
			((ClVariable newWith: (xspace*i) asFloat name: 'n' , index printString , 'x') @ 
			  (ClVariable newWith: (yspace*height) asFloat name: 'n' , index printString , 'y'))].

	"create the other nodes"
	height-1 to: 1 by: -1 do: [:h |
		nodecount := 2 raisedTo: h-1.
		1 to: nodecount do: [:i | 
			left := nodes at: (100*(h+1))+(2*i)-1.  
			right := nodes at: (100*(h+1))+(2*i).
			px := (left x value + right x value) * 0.5.
			index := 100*h+ i.  nodes at: index put: 
			((ClVariable newWith: px name: 'n' , index printString , 'x') @ 
			  (ClVariable newWith: yspace*h name: 'n' , index printString , 'y'))]].

	lines := OrderedCollection new.
	self childrenAndParentsDo: [:lc :rc :p | 
		lines add: (Array with: p with: lc).
		lines add: (Array with: p with: rc)].

	self createConstraints.! !

!ClBinaryTreeDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 21:19:20'!
drawForegroundOn: aCanvas

	lines do: [:each |
		aCanvas 
			line: each first valuePoint 
			to: each second valuePoint 
			width: 1
			color: Color white].
	nodes do: [:each |
		aCanvas
			fillRectangle: ((-5@-5 corner: 5@5) translatedBy: each valuePoint)
			color: Color yellow].! !

!ClBinaryTreeDemo methodsFor: 'defaults' stamp: 'jcg 5/8/2001 23:30'!
initialExtent

	^ 500@300! !

!ClBinaryTreeDemo methodsFor: 'defaults' stamp: 'jcg 5/8/2001 23:30'!
inset
	
	^ 10.0! !

!ClBinaryTreeDemo methodsFor: 'defaults' stamp: 'jcg 5/8/2001 23:31'!
spacing
	
	^ 10.0! !

!ClBinaryTreeDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:36'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.

	"nodes is a Dictionary of Points; fix the points"
	nodes keysAndValuesDo: [:key :point |
		nodes at: key put: (self fixupPoint: point with: deepCopier)].
	
	"lines is a Dictionary of Arrays of Points; fix the points"
	lines keysAndValuesDo: [:key :pointArray |
		lines
			at: key
			put: (pointArray collect: [:pt | self fixupPoint: pt with: deepCopier])].! !

!ClBinaryTreeDemo class methodsFor: 'instance creation' stamp: 'jcg 5/8/2001 08:30'!
height: h
	| demo |

	demo := self basicNew.
	demo height: h.
	demo initialize.
	^ demo! !

!ClBoundedLineDemo methodsFor: 'enumerating' stamp: 'jcg 5/9/2001 07:39'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2! !

!ClBoundedLineDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 21:17:29'!
drawForegroundOn: aCanvas

	aCanvas 
		line: p1 valuePoint 
		to: p2 valuePoint 
		width: 2
		color: Color white
! !

!ClBoundedLineDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 07:37'!
initialize

	| offset box left right top bottom |

	super initialize.
	p1 := (ClVariable newWith: 10.0 name: 'p1x') @ (ClVariable newWith: 20.0 name: 'p1y').
	p2 := (ClVariable newWith: 110.0 name: 'p2x') @ (ClVariable newWith: 220.0 name: 'p2y').

	offset := 10.0.
	box := 0 @ 0 corner: 300 @ 300.
	left := box origin x asFloat + offset.
	right := box corner x asFloat - offset.
	top := box origin y asFloat + offset.
	bottom := box corner y asFloat - offset.

	cs addStay: p1 x.
	cs addStay: p1 y.
	cs addStay: p2 x.
	cs addStay: p2 y.

	cs addConstraint: (p1 x cnGEQ: left).  cs addConstraint: (p1 x cnLEQ: right).
	cs addConstraint: (p1 y cnGEQ: top).  cs addConstraint: (p1 y cnLEQ: bottom).
	cs addConstraint: (p2 x cnGEQ: left).  cs addConstraint: (p2 x cnLEQ: right).
	cs addConstraint: (p2 y cnGEQ: top).  cs addConstraint: (p2 y cnLEQ: bottom).! !

!ClBoundedLineDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:37'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
	! !

!ClElasticBoundedLineDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 08:16'!
initialize

	super initialize.
	cs addConstraint: (p2 y - p1 y cnEqual: 200.0 strength: ClStrength medium).! !

!ClBoxesDemo methodsFor: 'enumerating' stamp: 'jcg 5/9/2001 07:48'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2.
	aBlock value: p3.
	aBlock value: p4.
	aBlock value: p5! !

!ClBoxesDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 21:16:29'!
drawForegroundOn: aCanvas
	| colors index |

	colors := Color wheel: 5.
	index := 1.

	self constraintPointsDo: [:each | | col |
		col := (colors at: index) lighter lighter.
		index := index + 1.
		aCanvas 
			fillRectangle: ((-20@-20 corner: 20@20) translatedBy: each valuePoint)
			color: col]
! !

!ClBoxesDemo methodsFor: 'defaults' stamp: 'jcg 5/9/2001 07:47'!
initialExtent

	^ 600@300! !

!ClBoxesDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 07:42'!
initialize

	super initialize.
	p1 := (ClVariable newWith: 50.0) @ (ClVariable newWith: 200.0).
	p2 := (ClVariable newWith: 100.0) @ (ClVariable newWith: 200.0).
	p3 := (ClVariable newWith: 150.0) @ (ClVariable newWith: 200.0).
	p4 := (ClVariable newWith: 200.0) @ (ClVariable newWith: 200.0).
	p5 := (ClVariable newWith: 250.0) @ (ClVariable newWith: 200.0).

	p1 x name: 'p1x'.
	p1 y name: 'p1y'.
	p2 x name: 'p2x'.
	p2 y name: 'p2y'.
	p3 x name: 'p3x'.
	p3 y name: 'p3y'.
	p4 x name: 'p4x'.
	p4 y name: 'p4y'.
	p5 x name: 'p5x'.
	p5 y name: 'p5y'.

	cs addStay: p1 x.
	cs addStay: p2 x.
	cs addStay: p3 x.
	cs addStay: p4 x.
	cs addStay: p5 x.

	cs addStay: p1 y strength: ClStrength required.
	cs addStay: p2 y strength: ClStrength required.
	cs addStay: p3 y strength: ClStrength required.
	cs addStay: p4 y strength: ClStrength required.
	cs addStay: p5 y strength: ClStrength required.

	cs addConstraint: (p1 x cnGEQ: 24.0).
	cs addConstraint: (p5 x cnLEQ: 576.0).

	cs addConstraint: (p1 x + 44.0 cnLEQ: p2 x).
	cs addConstraint: (p2 x + 44.0 cnLEQ: p3 x).
	cs addConstraint: (p3 x + 44.0 cnLEQ: p4 x).
	cs addConstraint: (p4 x + 44.0 cnLEQ: p5 x).! !

!ClBoxesDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:38'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
	p3 := self fixupPoint: p3 with: deepCopier.
	p4 := self fixupPoint: p4 with: deepCopier.
	p5 := self fixupPoint: p5 with: deepCopier.
! !

!ClCrossedQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 07:59'!
addAdditionalConstraints
	"no additional constraints for this version"! !

!ClCrossedQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 08:10'!
initialize

	super initialize.
	p1 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 10.0).
	p2 := (ClVariable newWith: 210.0) @ (ClVariable newWith: 110.0).
	p3 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 210.0).
	p4 := (ClVariable newWith: 10.0) @ (ClVariable newWith: 110.0).

	m1 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 60.0).
	m2 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 160.0).
	m3 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 160.0).
	m4 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 60.0).

	center := (ClVariable newWith: 110.0) @ (ClVariable newWith: 110.0).

	p1 x name: 'p1x'.
	p1 y name: 'p1y'.
	p2 x name: 'p2x'.
	p2 y name: 'p2y'.
	p3 x name: 'p3x'.
	p3 y name: 'p3y'.
	p4 x name: 'p4x'.
	p4 y name: 'p4y'.

	m1 x name: 'm1x'.
	m1 y name: 'm1y'.
	m2 x name: 'm2x'.
	m2 y name: 'm2y'.
	m3 x name: 'm3x'.
	m3 y name: 'm3y'.
	m4 x name: 'm4x'.
	m4 y name: 'm4y'.

	center x name: 'cx'.
	center y name: 'cy'.

	"add stays on the corner points"
	cs addPointStays: (Array with: p1 with: p2 with: p3 with: p4).

	"set up the midpoint constraints"
	cs addConstraint: (p1 x + p2 x cnEqual: m1 x * 2.0).
	cs addConstraint: (p2 x + p3 x cnEqual: m2 x * 2.0).
	cs addConstraint: (p3 x + p4 x cnEqual: m3 x * 2.0).
	cs addConstraint: (p4 x + p1 x cnEqual: m4 x * 2.0).
	cs addConstraint: (p1 y + p2 y cnEqual: m1 y * 2.0).
	cs addConstraint: (p2 y + p3 y cnEqual: m2 y * 2.0).
	cs addConstraint: (p3 y + p4 y cnEqual: m3 y * 2.0).
	cs addConstraint: (p4 y + p1 y cnEqual: m4 y * 2.0).

	"set up the centerpoint constraints"
	cs addConstraint: (m1 x + m3 x cnEqual: center x * 2.0).
	cs addConstraint: (m1 y + m3 y cnEqual: center y * 2.0).
	cs addConstraint: (m2 x + m4 x cnEqual: center x * 2.0).
	cs addConstraint: (m2 y + m4 y cnEqual: center y * 2.0).

	self addAdditionalConstraints.! !

!ClCrossedQuadDemo methodsFor: 'enumerating' stamp: 'jcg 5/9/2001 08:08'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2.
	aBlock value: p3.
	aBlock value: p4.

	aBlock value: m1.
	aBlock value: m2.
	aBlock value: m3.
	aBlock value: m4.

	aBlock value: center! !

!ClCrossedQuadDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 21:14:51'!
drawForegroundOn: aCanvas
	| begin end |

	"Draw the four sides of the quadrilateral."
"	begin := {p1. p2. p3. p4} collect: [:p | p valuePoint + self position].
	end := {p2. p3. p4. p1} collect: [:p | p valuePoint + self position].
	begin with: end do: [:b :e |
		aCanvas line: b to: e width: 3 color: Color white]."
	
	aCanvas strokeWidth: 3 color: Color white do: [
		aCanvas 		multiMoveTo: false points: ({p1. p2. p3. p4} collect: [:p | p valuePoint]);
			closePath 		].
		
	"Draw the lines between the midpoints."
	begin := {m1. m2. m3. m4} collect: [:m | m valuePoint].
	end := {m2. m3. m4. m1} collect: [:m | m valuePoint].
	begin with: end do: [:b :e |
		aCanvas line: b to: e width: 2 color: Color yellow].

	"Draw the cross lines"
	aCanvas line: begin first to: begin third width: 2 color: Color red.
	aCanvas line: begin second to: begin fourth width: 2 color: Color red.! !

!ClCrossedQuadDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:15'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
	p3 := self fixupPoint: p3 with: deepCopier.
	p4 := self fixupPoint: p4 with: deepCopier.
	m1 := self fixupPoint: m1 with: deepCopier.
	m2 := self fixupPoint: m2 with: deepCopier.
	m3 := self fixupPoint: m3 with: deepCopier.
	m4 := self fixupPoint: m4 with: deepCopier.
	center := self fixupPoint: center with: deepCopier.! !

!ClLineDemo methodsFor: 'as yet unclassified' stamp: 'jcg 5/8/2001 16:41'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2! !

!ClLineDemo methodsFor: 'as yet unclassified' stamp: 'hlsf 7/29/2024 22:35:18'!
drawForegroundOn: aCanvas

	aCanvas 
		line: p1 valuePoint 
		to: p2 valuePoint
		width: 2
		color: Color white
! !

!ClLineDemo methodsFor: 'as yet unclassified' stamp: 'jcg 5/8/2001 16:41'!
initialize

	super initialize.
	p1 := (ClVariable newWith: 10.0 name: 'p1x') @ (ClVariable newWith: 20.0 name: 'p1y').
	p2 := (ClVariable newWith: 110.0 name: 'p2x') @ (ClVariable newWith: 220.0 name: 'p2y').
	cs addStay: p1 x.
	cs addStay: p1 y.
	cs addStay: p2 x.
	cs addStay: p2 y.! !

!ClLineDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:38'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
! !

!ClMidpointDemo methodsFor: 'enumerating' stamp: 'jcg 5/9/2001 08:24'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2.
	aBlock value: m1.! !

!ClMidpointDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 19:21:41'!
drawForegroundOn: aCanvas

	aCanvas 
		line: p1 valuePoint 
		to: p2 valuePoint 
		width: 2
		color: Color white.

	aCanvas 
		line: m1 valuePoint  - (0@1)
		to: m1 valuePoint + (0@1)
		width: 2
		color: Color red.! !

!ClMidpointDemo methodsFor: 'initialization' stamp: 'hlsf 7/31/2024 18:47:15'!
initialize

	super initialize.
	p1 := (ClVariable newWith: 100.0) @ (ClVariable newWith: 100.0).
	p2 := (ClVariable newWith: 200.0) @ (ClVariable newWith: 100.0).
	m1 := (ClVariable newWith: 150.0) @ (ClVariable newWith: 100.0).

	p1 x name: 'p1x'.
	p1 y name: 'p1y'.
	p2 x name: 'p2x'.
	p2 y name: 'p2y'.
	m1 x name: 'm1x'.
	m1 y name: 'm1y'.

	"add stays on the corner points"
	cs addPointStays: (Array with: p1 with: p2).

	"set up the midpoint constraints"
	cs addConstraint: (p1 x + p2 x cnEqual: m1 x * 2.0).
	cs addConstraint: (p1 y + p2 y cnEqual: m1 y * 2.0).! !

!ClMidpointDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:39'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
	m1 := self fixupPoint: m1 with: deepCopier.! !

!ClQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 08:26'!
addAdditionalConstraints
	"no additional constraints for this version"! !

!ClQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 08:27'!
initialize

	super initialize.
	p1 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 10.0).
	p2 := (ClVariable newWith: 210.0) @ (ClVariable newWith: 110.0).
	p3 := (ClVariable newWith: 110.0) @ (ClVariable newWith: 210.0).
	p4 := (ClVariable newWith: 10.0) @ (ClVariable newWith: 110.0).

	m1 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 60.0).
	m2 := (ClVariable newWith: 160.0) @ (ClVariable newWith: 160.0).
	m3 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 160.0).
	m4 := (ClVariable newWith: 60.0) @ (ClVariable newWith: 60.0).

	p1 x name: 'p1x'.
	p1 y name: 'p1y'.
	p2 x name: 'p2x'.
	p2 y name: 'p2y'.
	p3 x name: 'p3x'.
	p3 y name: 'p3y'.
	p4 x name: 'p4x'.
	p4 y name: 'p4y'.

	m1 x name: 'm1x'.
	m1 y name: 'm1y'.
	m2 x name: 'm2x'.
	m2 y name: 'm2y'.
	m3 x name: 'm3x'.
	m3 y name: 'm3y'.
	m4 x name: 'm4x'.
	m4 y name: 'm4y'.

	"add stays on the corner points"
	cs addPointStays: (Array with: p1 with: p2 with: p3 with: p4).

	"set up the midpoint constraints"
	cs addConstraint: (p1 x + p2 x cnEqual: m1 x * 2.0).
	cs addConstraint: (p2 x + p3 x cnEqual: m2 x * 2.0).
	cs addConstraint: (p3 x + p4 x cnEqual: m3 x * 2.0).
	cs addConstraint: (p4 x + p1 x cnEqual: m4 x * 2.0).
	cs addConstraint: (p1 y + p2 y cnEqual: m1 y * 2.0).
	cs addConstraint: (p2 y + p3 y cnEqual: m2 y * 2.0).
	cs addConstraint: (p3 y + p4 y cnEqual: m3 y * 2.0).
	cs addConstraint: (p4 y + p1 y cnEqual: m4 y * 2.0).

	self addAdditionalConstraints.! !

!ClQuadDemo methodsFor: 'enumerating' stamp: 'jcg 5/9/2001 08:29'!
constraintPointsDo: aBlock

	aBlock value: p1.
	aBlock value: p2.
	aBlock value: p3.
	aBlock value: p4.

	aBlock value: m1.
	aBlock value: m2.
	aBlock value: m3.
	aBlock value: m4! !

!ClQuadDemo methodsFor: 'drawing' stamp: 'hlsf 7/30/2024 19:26:14'!
drawForegroundOn: aCanvas
	| begin end |

	"Draw the four sides of the quadrilateral."
	begin := {p1. p2. p3. p4} collect: [:p | p valuePoint].
	end := {p2. p3. p4. p1} collect: [:p | p valuePoint].
	begin with: end do: [:b :e |
		aCanvas line: b to: e width: 3 color: Color white].

	"Draw the lines between the midpoints."
	begin := {m1. m2. m3. m4} collect: [:m | m valuePoint].
	end := {m2. m3. m4. m1} collect: [:m | m valuePoint].
	begin with: end do: [:b :e |
		aCanvas line: b to: e width: 2 color: Color yellow].
! !

!ClQuadDemo methodsFor: 'copying' stamp: 'jcg 6/29/2001 13:37'!
veryDeepFixupWith: deepCopier
	"If some fields were weakly copied, fix new copy here."

	super veryDeepFixupWith: deepCopier.
	p1 := self fixupPoint: p1 with: deepCopier.
	p2 := self fixupPoint: p2 with: deepCopier.
	p3 := self fixupPoint: p3 with: deepCopier.
	p4 := self fixupPoint: p4 with: deepCopier.
	m1 := self fixupPoint: m1 with: deepCopier.
	m2 := self fixupPoint: m2 with: deepCopier.
	m3 := self fixupPoint: m3 with: deepCopier.
	m4 := self fixupPoint: m4 with: deepCopier.
! !

!ClBoundedQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 07:41'!
addAdditionalConstraints

	| offset box left right top bottom |

	offset := 2.0.
	box := 0 @ 0 corner: 300 @ 300.
	left := box origin x asFloat + offset.
	right := box corner x asFloat - offset.
	top := box origin y asFloat + offset.
	bottom := box corner y asFloat - offset.

	cs addConstraint: (p1 x cnGEQ: left).  cs addConstraint: (p1 x cnLEQ: right).
	cs addConstraint: (p1 y cnGEQ: top).  cs addConstraint: (p1 y cnLEQ: bottom).
	cs addConstraint: (p2 x cnGEQ: left).  cs addConstraint: (p2 x cnLEQ: right).
	cs addConstraint: (p2 y cnGEQ: top).  cs addConstraint: (p2 y cnLEQ: bottom).
	cs addConstraint: (p3 x cnGEQ: left).  cs addConstraint: (p3 x cnLEQ: right).
	cs addConstraint: (p3 y cnGEQ: top).  cs addConstraint: (p3 y cnLEQ: bottom).
	cs addConstraint: (p4 x cnGEQ: left).  cs addConstraint: (p4 x cnLEQ: right).
	cs addConstraint: (p4 y cnGEQ: top).  cs addConstraint: (p4 y cnLEQ: bottom).! !

!ClElasticQuadDemo methodsFor: 'initialization' stamp: 'jcg 5/9/2001 08:31'!
addAdditionalConstraints

	super addAdditionalConstraints.
	"add constraints to keep it from turning inside out"
	cs addConstraint: (p4 x+40 cnLEQ: p3 x).
	cs addConstraint: (p4 x+40 cnLEQ: p1 x).
	cs addConstraint: (p3 x+40 cnLEQ: p2 x).
	cs addConstraint: (p1 x+40 cnLEQ: p2 x).

	cs addConstraint: (p1 y+40 cnLEQ: p2 y).
	cs addConstraint: (p1 y+40 cnLEQ: p4 y).
	cs addConstraint: (p4 y+40 cnLEQ: p3 y).
	cs addConstraint: (p2 y+40 cnLEQ: p3 y).

	"add medium constraints to keep the quadrilateral's original shape"
	cs addConstraint: (p2 y cnEqual: p4 y strength: ClStrength medium).
	cs addConstraint: (p2 x - p4 x cnEqual: 200.0 strength: ClStrength medium).
	cs addConstraint: (p1 x cnEqual: p3 x strength: ClStrength medium).
	cs addConstraint: (p3 y - p1 y cnEqual: 200.0 strength: ClStrength medium).! !

!ClCassowaryTests methodsFor: 'initialization' stamp: 'eem 4/2/2012 17:20'!
haltFirst: h
	"haltFirst is a boolean flag ... if it is true, halt before running each test, so that the user can step through the test if desired"
	
	haltFirst := h.! !

!ClCassowaryTests methodsFor: 'initialization' stamp: 'eem 4/2/2012 17:20'!
initialize
	super initialize.
	haltFirst := false.! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:22'!
testAddDelete1

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testAddDelete1.
"

	| x solver result c10 c10again c20 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 100.0 strength: ClStrength weak).
	c10 := x cnLEQ: 10.0.
	c20 := x cnLEQ: 20.0.
	solver addConstraint: c10; addConstraint: c20.
	result := (x value clApprox: 10.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 20.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 100.0).
	c10again := x cnLEQ: 10.0.
	solver addConstraint: c10; addConstraint: c10again.
	result := result & (x value clApprox: 10.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 10.0).
	solver removeConstraint: c10again.
	self assert: result & (x value clApprox: 100.0)! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:22'!
testAddDelete2

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testAddDelete2.
"

	| x y solver result c10 c20 cxy |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.
	y := ClVariable new name: 'y'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 100.0 strength: ClStrength weak).
	solver addConstraint: (y cnEqual: 120.0 strength: ClStrength strong).
	c10 := x cnLEQ: 10.0.
	c20 := x cnLEQ: 20.0.
	solver addConstraint: c10; addConstraint: c20.
	result := (x value clApprox: 10.0) & (y value clApprox: 120.0).
	solver removeConstraint: c10.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 120.0).
	cxy := x*2 cnEqual: y.
	solver addConstraint: cxy.
	result := result & (x value clApprox: 20.0) & (y value clApprox: 40.0).
	solver removeConstraint: c20.
	result := result & (x value clApprox: 60.0) & (y value clApprox: 120.0).
	solver removeConstraint: cxy.
	self assert: result & (x value clApprox: 100.0) & (y value clApprox: 120.0)! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:23'!
testAddDelete3

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testAddDelete3.
"

	| x solver result c1 c2 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	c1 := (x cnEqual: 100.0 strength: ClStrength weak weight: 5).  "notice weight=5 for this one"
	c2 := (x cnEqual: 200.0 strength: ClStrength weak).
	solver addConstraint: c1; addConstraint: c2.
	result := (x value clApprox: 100.0).
	solver removeConstraint: c1.
	self assert: result & (x value clApprox: 200.0)! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:24'!
testEdit1

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testEdit1.
"

	| x y solver result  |

	haltFirst ifTrue: [self halt].

	x := ClVariable newWith: 20.0 name: 'x'.
	y := ClVariable newWith: 30.0 name: 'y'.

	"set up solver with a weak stay on x, required 10<=x<=100, and required x=2*y"
	solver := ClSimplexSolver new.
	solver addConstraint: (ClStayConstraint variable:  x strength: ClStrength weak).
	solver addConstraint: (x cnGEQ: 10); addConstraint: (x cnLEQ: 100).
	solver addConstraint: (x cnEqual: y*2).
	result := (x value clApprox: 20.0) & (y value clApprox: 10.0).

	"now edit y"
	solver addEditVar: y strength: ClStrength strong.
	solver beginEdit.
	solver suggestValue: y newValue: 35.0.
	solver resolve.
	self assert: result & (x value clApprox: 70.0) & (y value clApprox: 35.0).
	solver suggestValue: y newValue: 80.0.   "this is bigger than y can be"
	solver resolve.
	self assert: result & (x value clApprox: 100.0) & (y value clApprox: 50.0).
	solver suggestValue: y newValue: 25.0.
	solver resolve.
	self assert: result & (x value clApprox: 50.0) & (y value clApprox: 25.0).

	solver endEdit.
	"x and y shouldn't change"
	self assert: result & (x value clApprox: 50.0) & (y value clApprox: 25.0).

	"edit x"
	solver addEditVar:x strength: ClStrength strong.
	solver beginEdit.
	solver suggestValue: x newValue: 44.0.
	solver resolve.
	self assert: result & (x value clApprox: 44.0) & (y value clApprox: 22.0).
	solver endEdit! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:24'!
testInconsistent1

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testInconsistent1.
"

	"inconsistent constraints:
		req'd	x=10
		req'd	x=5
	"

	| x solver |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnEqual: 10.0).
	self should: [solver addConstraint: (x cnEqual: 5.0)] raise: ClError! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:25'!
testInconsistent2

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testInconsistent2.
"

	"inconsistent constraints:
		req'd	x>=10
		req'd	x<=5
	"

	| x solver |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnGEQ: 10.0).
	self should: [solver addConstraint: (x cnLEQ: 5.0)] raise: ClError! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:25'!
testStay1

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testStay1.
"

	| x solver stay |

	haltFirst ifTrue: [self halt].

	x := ClVariable newWith: 20.0 name: 'x'.

	"set up solver with a weak stay on x, required 10<=x<=100, and required x=2*y"
	solver := ClSimplexSolver new.
	stay := ClStayConstraint variable:  x strength: ClStrength weak.
	solver addConstraint: stay.
	self assert: (x value clApprox: 20.0).
	solver removeConstraint: stay! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:26'!
testTwoSolutions

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testTwoSolutions.
"

	"
		req'd   x<=y
		req'd   y=x+3
 		weak   x=10
		weak   y=10

		The solution is x=7, y=10  or x=10, y=13 "

	| x y solver |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.
	y := ClVariable new name: 'y'.

	solver := ClSimplexSolver new.
	solver addConstraint: (x cnLEQ: y).
	solver addConstraint: (y cnEqual: x+3.0).
	solver addConstraint: (x cnEqual: 10.0 strength: ClStrength weak).
	solver addConstraint: (y cnEqual: 10.0 strength: ClStrength weak).

	self assert: ((x value clApprox: 10.0) & (y value clApprox: 13.0)
				or: [	(x value clApprox: 7.0) & (y value clApprox: 10.0) ])! !

!ClCassowaryTests methodsFor: 'tests' stamp: 'eem 4/2/2012 17:26'!
testWeighted1

"
	| c |
	c := ClCassowaryTests new.
	c haltFirst: false.
	c testWeighted1.
"

	| x solver result c15 c20 |

	haltFirst ifTrue: [self halt].

	x := ClVariable new name: 'x'.

	solver := ClSimplexSolver new.
	c15 := x cnEqual: 15.0 strength: ClStrength weak.
	c20 := x cnEqual: 20.0 strength: ClStrength weak weight: 2.
	solver addConstraint: c15.
	result := x value clApprox: 15.0.
	solver addConstraint: c20.
	self assert: result & (x value clApprox: 20.0).
	solver removeConstraint: c20.
	self assert: result & (x value clApprox: 15.0)! !

!Object methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:27'!
clApprox: x
	"Answer true if I am approximately equal to the argument.  The default is just an equality test."

	^ self = x! !

!Object methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:27'!
isSymbolicWeight

	^ false! !

!Point methodsFor: '*Cassowary' stamp: 'jcg 5/8/2001 16:54'!
valuePoint
	"Answer a Point with the values of my x and y coordinates"

	^ x value @ y value! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:19'!
asLinearExpression
	"Coerce this number to be a ClLinearExpression."
	| expr |

	expr := ClLinearExpression new.
	expr constant: self asFloat.
	^ expr! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:19'!
cnEqual: expr
	"Answer a linear constraint self=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearEquation>"

	^ self cnEqual: expr strength: ClStrength required weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:20'!
cnEqual: expr strength: s
	"Answer a linear constraint self=expr of strength s and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearEquation>"

	^ self cnEqual: expr strength: s weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:21'!
cnEqual: expr strength: s weight: w
	"Answer a linear constraint self=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |

	cn := ClLinearEquation new.
	cn 
		expression: self-expr; 
		strength: s; 
		weight: w.
	^ cn! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:22'!
cnGEQ: expr
	"Answer a linear constraint self>=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearInequality>"

	^ self cnGEQ: expr strength: ClStrength required weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:23'!
cnGEQ: expr strength: s
	"Answer a linear constraint self>=expr of strength s and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearInequality>"

	^ self cnGEQ: expr strength: s weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:24'!
cnGEQ: expr strength: s weight: w
	"Answer a linear constraint self>=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |

	cn := ClLinearInequality new.
	cn 
		expression: self-expr; 
		strength: s; 
		weight: w.
	^ cn! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:24'!
cnLEQ: expr
	"Answer a linear constraint self<=expr with strength=required and weight=1.

	expr 		<ClLinearExpression | ClVariable | Number>
	<answer>	<ClLinearInequality>"

	^ self cnLEQ: expr strength: ClStrength required weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:25'!
cnLEQ: expr strength: s
	"Answer a linear constraint self<=expr of strength s and weight 1.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	<answer>	<ClLinearInequality>"

	^ self cnLEQ: expr strength: s weight: 1.0! !

!Number methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:26'!
cnLEQ: expr strength: s weight: w
	"Answer a linear constraint self<=expr of strength s and weight w.

	expr 		<ClLinearExpression | ClVariable | Number>
	s 			<ClStrength>
	w 			<Float>
	<answer>	<ClLinearEquation>"
	| cn |

	cn := ClLinearInequality new.
	cn 
		expression: expr-self; 
		strength: s; 
		weight: w.
	^ cn! !

!Float methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:16'!
clApprox: aFloat
	"Answer true if I am approximately equal to the argument."
	| epsilon |

	epsilon := ClSimplexSolver epsilon.
	self = 0.0 ifTrue: [^ aFloat abs < epsilon].
	aFloat = 0.0 ifTrue: [^ self abs < epsilon].
	^ (self - aFloat) abs < (self abs * epsilon)! !

!Float methodsFor: '*Cassowary' stamp: 'jcg 5/7/2001 18:17'!
clApproxZero
	"Answer true if I am approximately zero."

	^ self clApprox: 0.0! !

!Float methodsFor: '*Cassowary' stamp: 'AHB 5/23/2001 15:32'!
definitelyNegative
	"return true if I am definitely negative (i.e. smaller than negative epsilon)"
	^ self < (0.0 - ClSimplexSolver epsilon)! !
ClSimplexSolver initialize!
ClStrength initialize!
ClSymbolicWeight initialize!
