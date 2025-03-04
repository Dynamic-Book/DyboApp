'From Cuis7.3 [latest update: #7062] on 4 March 2025 at 8:11:09 pm'!
'Description '!
!provides: 'SimplifiedDebugger' 1 0!
SystemOrganization addCategory: #SimplifiedDebugger!


!classDefinition: #SimpleDebuggerWindow category: #SimplifiedDebugger!
DebuggerWindow subclass: #SimpleDebuggerWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SimplifiedDebugger'!
!classDefinition: 'SimpleDebuggerWindow class' category: #SimplifiedDebugger!
SimpleDebuggerWindow class
	instanceVariableNames: ''!


!SimpleDebuggerWindow commentStamp: '<historical>' prior: 0!
A simplified Debugger window, with translated labels and helps.!

!SimpleDebuggerWindow methodsFor: 'GUI building' stamp: 'hlsf 10/13/2022 15:09:14'!
buildLowerPanes
	^ LayoutMorph newColumn 
		addMorph: self customButtonRow fixedHeight: self defaultButtonPaneHeight;
		addMorph: self buildMorphicCodePane proportionalHeight: 1.0;
		yourself! !

!SimpleDebuggerWindow methodsFor: 'GUI building' stamp: 'hlsf 4/28/2024 15:42:11'!
buildMorphicWindow
	"Open a full morphic debugger with the given label"

	| bottomMorph |

	self receiverInspector doubleClickSelector: #inspectSelection.
	self contextVariableInspector doubleClickSelector: #inspectSelection.
	"Instantiate, but not used on the GUI"
	self receiverInspectorText.
	
	bottomMorph := LayoutMorph newRow.
	bottomMorph
		addAdjusterAndMorph: self contextVariableInspector proportionalWidth: 0.30;
		addAdjusterAndMorph: self contextVariableInspectorText proportionalWidth: 0.70.

	self layoutMorph
		addMorph: self stackList proportionalHeight: 0.1;
		addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.6;
		addAdjusterAndMorph: bottomMorph proportionalHeight: 0.3.! !

!SimpleDebuggerWindow methodsFor: 'GUI building' stamp: 'hlsf 3/4/2025 20:10:39'!
customButtonSpecs
	"Answer an array of elements of the form wording, selector, help-message, that characterize the custom button row of a debugger."

	^{
		{'Restart' translated . #restart . 'Restart the step by step execution from its start.' translated } .
		{'Step'	 translated . 	#doStep . 'Execute the current message and go to the next message.' translated } .
		{'Step into' translated . #stepIntoBlock . 'Step into a block.' translated } .
		{'Run to Cursor' translated . #runToCursor . 'Execute the code up to the cursor position.' translated }
	}! !

!SimpleDebuggerWindow methodsFor: 'GUI building' stamp: 'hlsf 10/13/2022 15:20:08'!
initialExtent
	^ 600 @ 400! !

!SimpleDebuggerWindow methodsFor: 'accessing' stamp: 'hlsf 10/13/2022 15:37:01'!
layerNumber
	^ 50! !

!SimpleDebuggerWindow class methodsFor: 'instance creation' stamp: 'hlsf 4/28/2024 15:41:23'!
open: model
	| debuggerWindow |
	debuggerWindow := self new
		model: model;
		buildMorphicWindow.
	debuggerWindow widgetsColor: debuggerWindow windowColor.
	^ debuggerWindow 	
! !

!Debugger methodsFor: '*SimplifiedDebugger' stamp: 'hlsf 3/4/2025 20:07:56'!
openMinimalMorphic
	"Open a panel debugger"

	| oldContextStackIndex window |
	oldContextStackIndex := contextStackIndex.
	self expandStack. "Sets contextStackIndex to zero."

	window := SimpleDebuggerWindow open: self .
	self toggleContextStackIndex: oldContextStackIndex.
	^ window! !

!Debugger methodsFor: '*SimplifiedDebugger' stamp: 'hlsf 3/4/2025 20:09:11'!
openMinimalMorphicIn: aDialog
	"Open a panel debugger on process"

	| safeBlockAlreadyRan doItIndex |
	Sensor flushKeyboard.
	savedCursor := Cursor currentCursor.
	Cursor defaultCursor activateCursor.
	"In case an error in Morphic code got us here, ensure mouse focus has been released"
	self runningWorld ifNotNil: [ :rWorld |
		rWorld activeHand ifNotNil: [ :aHand |
			aHand releaseMouseFocus ]].

	safeBlockAlreadyRan := false.
	UISupervisor whenUIinSafeState: [
		safeBlockAlreadyRan ifFalse: [
			safeBlockAlreadyRan := true.
			"Suspend it as early as possible"	
			interruptedProcess suspend ].
			self expandStack. "Sets contextStackIndex to zero."
			aDialog plugDebugger: (SimpleDebuggerWindow open: self).
			doItIndex := contextStackList findFirst: [:each | each includesSubString: 'DoIt'].
			doItIndex > 0 ifTrue: [self toggleContextStackIndex: doItIndex] ].
	"Ensure the Debugger is opened in a new UI process.
	This avoid unresponsive UI if the interruptedProcess is the UI current UI process, but also if the UI is busy, blocked or suspended."
	UISupervisor newUIProcess.
	"Suspend it as early as possible"
	safeBlockAlreadyRan ifFalse: [
		safeBlockAlreadyRan := true.
		interruptedProcess suspend ]! !

!Debugger class methodsFor: '*SimplifiedDebugger' stamp: 'hlsf 4/23/2024 22:47:43'!
openMinimalDebugging: aBlock to: aCompiledMethod 
	"Create a new process to debug aBlock, and step into it."

	| debugger window |
	debugger := self newDebugging: aBlock.
	window := debugger openMinimalMorphic.
	[debugger interruptedContext method == aCompiledMethod]
		whileFalse: [debugger send].
	^ window ! !

!Debugger class methodsFor: '*SimplifiedDebugger' stamp: 'hlsf 4/28/2024 15:54:22'!
openMinimalIn: aDialog debuggingProcess: process context: context
"Open a Minimal Debugger on an existing process."
	| debugger |
	<primitive: 19> "Simulation guard"

	debugger := self new.
	debugger process: process context: context.
	^ debugger openMinimalMorphicIn: aDialog.
	! !
