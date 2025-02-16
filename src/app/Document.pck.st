'From Cuis7.3 [latest update: #7044] on 16 February 2025 at 11:44:33 pm'!
'Description '!
!provides: 'Document' 1 129!
SystemOrganization addCategory: #'Document-Model'!
SystemOrganization addCategory: #'Document-View'!
SystemOrganization addCategory: #'Document-Presenter'!
SystemOrganization addCategory: #'Document-Presenter-Tool'!
SystemOrganization addCategory: #'Document-Presenter-Command'!
SystemOrganization addCategory: #'Document-Script'!


!classDefinition: #CommandStack category: #'Document-Presenter-Command'!
ReadWriteStream subclass: #CommandStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'CommandStack class' category: #'Document-Presenter-Command'!
CommandStack class
	instanceVariableNames: ''!

!classDefinition: #Pen category: #'Document-Model'!
Object subclass: #Pen
	instanceVariableNames: 'color width adjustWidth threshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'Pen class' category: #'Document-Model'!
Pen class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2 category: #'Document-Model'!
Object subclass: #StrokerBezier2
	instanceVariableNames: 'paper strokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier2 class' category: #'Document-Model'!
StrokerBezier2 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2XP category: #'Document-Model'!
StrokerBezier2 subclass: #StrokerBezier2XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier2XP class' category: #'Document-Model'!
StrokerBezier2XP class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3 category: #'Document-Model'!
StrokerBezier2 subclass: #StrokerBezier3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier3 class' category: #'Document-Model'!
StrokerBezier3 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3XP category: #'Document-Model'!
StrokerBezier3 subclass: #StrokerBezier3XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier3XP class' category: #'Document-Model'!
StrokerBezier3XP class
	instanceVariableNames: ''!

!classDefinition: #Document category: #'Document-Presenter'!
Object subclass: #Document
	instanceVariableNames: 'tool pen highlighter eraser commandsManager model view savesReal isSaved controlsManager'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'Document class' category: #'Document-Presenter'!
Document class
	instanceVariableNames: ''!

!classDefinition: #Command category: #'Document-Presenter-Command'!
Object subclass: #Command
	instanceVariableNames: 'domain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'Command class' category: #'Document-Presenter-Command'!
Command class
	instanceVariableNames: ''!

!classDefinition: #ErasingCommand category: #'Document-Presenter-Command'!
Command subclass: #ErasingCommand
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'ErasingCommand class' category: #'Document-Presenter-Command'!
ErasingCommand class
	instanceVariableNames: ''!

!classDefinition: #ErasingAnnotatorCommand category: #'Document-Presenter-Command'!
ErasingCommand subclass: #ErasingAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'ErasingAnnotatorCommand class' category: #'Document-Presenter-Command'!
ErasingAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveAnnotatorCommand category: #'Document-Presenter-Command'!
Command subclass: #MoveAnnotatorCommand
	instanceVariableNames: 'annotator delta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'MoveAnnotatorCommand class' category: #'Document-Presenter-Command'!
MoveAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveGroupCommand category: #'Document-Presenter-Command'!
Command subclass: #MoveGroupCommand
	instanceVariableNames: 'selection delta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'MoveGroupCommand class' category: #'Document-Presenter-Command'!
MoveGroupCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveGroupInAnnotatorCommand category: #'Document-Presenter-Command'!
MoveGroupCommand subclass: #MoveGroupInAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'MoveGroupInAnnotatorCommand class' category: #'Document-Presenter-Command'!
MoveGroupInAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #WritingCommand category: #'Document-Presenter-Command'!
Command subclass: #WritingCommand
	instanceVariableNames: 'strokeGroup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'WritingCommand class' category: #'Document-Presenter-Command'!
WritingCommand class
	instanceVariableNames: ''!

!classDefinition: #WritingAnnotatorCommand category: #'Document-Presenter-Command'!
WritingCommand subclass: #WritingAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'WritingAnnotatorCommand class' category: #'Document-Presenter-Command'!
WritingAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #CommandManager category: #'Document-Presenter-Command'!
Object subclass: #CommandManager
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'CommandManager class' category: #'Document-Presenter-Command'!
CommandManager class
	instanceVariableNames: ''!

!classDefinition: #PageTool category: #'Document-Presenter-Tool'!
Object subclass: #PageTool
	instanceVariableNames: 'state presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PageTool class' category: #'Document-Presenter-Tool'!
PageTool class
	instanceVariableNames: ''!

!classDefinition: #EraserTool category: #'Document-Presenter-Tool'!
PageTool subclass: #EraserTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'EraserTool class' category: #'Document-Presenter-Tool'!
EraserTool class
	instanceVariableNames: ''!

!classDefinition: #GroupTool category: #'Document-Presenter-Tool'!
PageTool subclass: #GroupTool
	instanceVariableNames: 'corner selection paper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'GroupTool class' category: #'Document-Presenter-Tool'!
GroupTool class
	instanceVariableNames: ''!

!classDefinition: #HighlighterTool category: #'Document-Presenter-Tool'!
PageTool subclass: #HighlighterTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'HighlighterTool class' category: #'Document-Presenter-Tool'!
HighlighterTool class
	instanceVariableNames: ''!

!classDefinition: #PenTool category: #'Document-Presenter-Tool'!
PageTool subclass: #PenTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PenTool class' category: #'Document-Presenter-Tool'!
PenTool class
	instanceVariableNames: ''!

!classDefinition: #PointerTool category: #'Document-Presenter-Tool'!
PageTool subclass: #PointerTool
	instanceVariableNames: 'grabbed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PointerTool class' category: #'Document-Presenter-Tool'!
PointerTool class
	instanceVariableNames: ''!

!classDefinition: #PageToolState category: #'Document-Presenter-Tool'!
Object subclass: #PageToolState
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PageToolState class' category: #'Document-Presenter-Tool'!
PageToolState class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateErasing category: #'Document-Presenter-Tool'!
PageToolState subclass: #EraserToolStateErasing
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'EraserToolStateErasing class' category: #'Document-Presenter-Tool'!
EraserToolStateErasing class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateNeutral category: #'Document-Presenter-Tool'!
PageToolState subclass: #EraserToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'EraserToolStateNeutral class' category: #'Document-Presenter-Tool'!
EraserToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateDragging category: #'Document-Presenter-Tool'!
PageToolState subclass: #GroupToolStateDragging
	instanceVariableNames: 'prevPosition initialPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'GroupToolStateDragging class' category: #'Document-Presenter-Tool'!
GroupToolStateDragging class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateGrabbing category: #'Document-Presenter-Tool'!
PageToolState subclass: #GroupToolStateGrabbing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'GroupToolStateGrabbing class' category: #'Document-Presenter-Tool'!
GroupToolStateGrabbing class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateNeutral category: #'Document-Presenter-Tool'!
PageToolState subclass: #GroupToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'GroupToolStateNeutral class' category: #'Document-Presenter-Tool'!
GroupToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateNeutral category: #'Document-Presenter-Tool'!
PageToolState subclass: #HighligtherToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'HighligtherToolStateNeutral class' category: #'Document-Presenter-Tool'!
HighligtherToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateNeutral category: #'Document-Presenter-Tool'!
PageToolState subclass: #PenToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PenToolStateNeutral class' category: #'Document-Presenter-Tool'!
PenToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateWriting category: #'Document-Presenter-Tool'!
PageToolState subclass: #PenToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PenToolStateWriting class' category: #'Document-Presenter-Tool'!
PenToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateWriting category: #'Document-Presenter-Tool'!
PenToolStateWriting subclass: #HighligtherToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'HighligtherToolStateWriting class' category: #'Document-Presenter-Tool'!
HighligtherToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #PointerToolStateDragging category: #'Document-Presenter-Tool'!
PageToolState subclass: #PointerToolStateDragging
	instanceVariableNames: 'initialPosition prevPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PointerToolStateDragging class' category: #'Document-Presenter-Tool'!
PointerToolStateDragging class
	instanceVariableNames: ''!

!classDefinition: #PointerToolStateNeutral category: #'Document-Presenter-Tool'!
PageToolState subclass: #PointerToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Tool'!
!classDefinition: 'PointerToolStateNeutral class' category: #'Document-Presenter-Tool'!
PointerToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #DyboScript category: #'Document-Script'!
Object subclass: #DyboScript
	instanceVariableNames: 'code title description icon'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Script'!
!classDefinition: 'DyboScript class' category: #'Document-Script'!
DyboScript class
	instanceVariableNames: ''!

!classDefinition: #DocumentModel category: #'Document-Model'!
ActiveModel subclass: #DocumentModel
	instanceVariableNames: 'timeStamp pageModel ownerPath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'DocumentModel class' category: #'Document-Model'!
DocumentModel class
	instanceVariableNames: ''!

!classDefinition: #Bezier2Morph category: #'Document-View'!
Morph subclass: #Bezier2Morph
	instanceVariableNames: 'color width p1 p2 c1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'Bezier2Morph class' category: #'Document-View'!
Bezier2Morph class
	instanceVariableNames: ''!

!classDefinition: #Bezier3Morph category: #'Document-View'!
Bezier2Morph subclass: #Bezier3Morph
	instanceVariableNames: 'c2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'Bezier3Morph class' category: #'Document-View'!
Bezier3Morph class
	instanceVariableNames: ''!

!classDefinition: #LineStrokeMorph category: #'Document-View'!
Morph subclass: #LineStrokeMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'LineStrokeMorph class' category: #'Document-View'!
LineStrokeMorph class
	instanceVariableNames: ''!

!classDefinition: #StrokeGroupMorph category: #'Document-View'!
PlacedMorph subclass: #StrokeGroupMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'StrokeGroupMorph class' category: #'Document-View'!
StrokeGroupMorph class
	instanceVariableNames: ''!

!classDefinition: #PageMorph category: #'Document-View'!
BoxMorph subclass: #PageMorph
	instanceVariableNames: 'pageModel paper presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PageMorph class' category: #'Document-View'!
PageMorph class
	instanceVariableNames: ''!

!classDefinition: #PaperMorph category: #'Document-View'!
BoxMorph subclass: #PaperMorph
	instanceVariableNames: 'stroker samples sampleIndex lineMorphs lastMousePosition presenter selectionMorph currentStrokeGroup distanceThreshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PaperMorph class' category: #'Document-View'!
PaperMorph class
	instanceVariableNames: ''!

!classDefinition: #AnnotatorMorph category: #'Document-View'!
PaperMorph subclass: #AnnotatorMorph
	instanceVariableNames: 'annotedMorph script'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'AnnotatorMorph class' category: #'Document-View'!
AnnotatorMorph class
	instanceVariableNames: ''!

!classDefinition: #PageModel category: #'Document-Model'!
ColoredBoxMorph subclass: #PageModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'PageModel class' category: #'Document-Model'!
PageModel class
	instanceVariableNames: ''!

!classDefinition: #PageModelHL category: #'Document-Model'!
PageModel subclass: #PageModelHL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'PageModelHL class' category: #'Document-Model'!
PageModelHL class
	instanceVariableNames: ''!

!classDefinition: #PageModelGrid category: #'Document-Model'!
PageModelHL subclass: #PageModelGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'PageModelGrid class' category: #'Document-Model'!
PageModelGrid class
	instanceVariableNames: ''!

!classDefinition: #PageModelPdf category: #'Document-Model'!
PageModel subclass: #PageModelPdf
	instanceVariableNames: 'form pageNumber dpi'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'PageModelPdf class' category: #'Document-Model'!
PageModelPdf class
	instanceVariableNames: ''!

!classDefinition: #PageContainer category: #'Document-View'!
ColoredBoxMorph subclass: #PageContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PageContainer class' category: #'Document-View'!
PageContainer class
	instanceVariableNames: ''!

!classDefinition: #DocumentView category: #'Document-View'!
LayoutMorph subclass: #DocumentView
	instanceVariableNames: 'presenter pages currentPage container statusBar pageCount preview viewType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'DocumentView class' category: #'Document-View'!
DocumentView class
	instanceVariableNames: ''!


!CommandStack commentStamp: '<historical>' prior: 0!
I am stack of command to execute or to unexecute user action in a Document!

!Pen commentStamp: '<historical>' prior: 0!
Depending on the use of the pen, we have different threshold
- color : color of the pen, including transparent color
- width: standard fixed width
- adjustWidth: does the width depends on the speed/pressure of the pen
- threshold : the minimum squared distance between two stroke with paper morph at scale 1!

!StrokerBezier2 commentStamp: '<historical>' prior: 0!
Given samples of mouse positions and previous strokes, I compute a new Bézier quadratic stroke . 
I can be subclassed to adjust my behavior.!

!StrokerBezier2XP commentStamp: 'hlsf 9/15/2024 17:06:16' prior: 0!
Experiment on 2-Bezier. 
We migrate a bit the control point a bit away from its sampled position.!

!StrokerBezier3 commentStamp: '<historical>' prior: 0!
Compute a cubic Bézier curve.!

!Document commentStamp: '<historical>' prior: 0!
The Presenter of the Document to handle the controllers and associated callbacks of the tools.!

!Command commentStamp: '<historical>' prior: 0!
An abstract class to represent commands of user actions in a Document.
domain is specific to the represented action, it can be a paper or a document.!

!ErasingCommand commentStamp: '<historical>' prior: 0!
The command records erasing occuring between eraser down - eraser up event
- domain is a paper morph instance where the erasing occured
- deletedStrokes : a dictionany of deleted strokes (value) per stroke group (key). Those strokes can, and very likely, belong to several different stroke groupe!

!ErasingAnnotatorCommand commentStamp: '<historical>' prior: 0!
A command to record erasing on an AnnotatorMorph
- domain: an annotator morph
- bounds: the bounds of the annotator morph prior to the erasing. 
The bounds once erasing is restored can be computed once the stroke group is added back to the domain (annotator morph)!

!MoveAnnotatorCommand commentStamp: '<historical>' prior: 0!
The command move a Annotator
- domain is a page morph instance where is located the annotator
- annotator : the annotator morph
- delta: point, translation from former position
!

!MoveGroupCommand commentStamp: '<historical>' prior: 0!
The command move a group of Morphs (stroke groups and annotators) 
- domain is a paper morph instance where the writing occured
- selection : the group of translated morphs 
- delta: point, translation from former position
!

!MoveGroupInAnnotatorCommand commentStamp: '<historical>' prior: 0!
The command move a group of Morphs (stroke groups only) occuring within an Annotator object
- domain: an annotator morph
- bounds: the bounds of the annotator morph once move was done and bounds adjusted. 
The bounds prior move can be computed once the stroke group is moved in the domain (annotator morph)!

!WritingCommand commentStamp: '<historical>' prior: 0!
The command records writing between pen down - pen up event
- domain is a paper morph instance where the writing occured
- strokeGroup : the group of strokes that was just writen
!

!WritingAnnotatorCommand commentStamp: 'hlsf 9/29/2024 18:16:46' prior: 0!
A command to record writings on an AnnotatorMorph
- domain: an annotator morph
- bounds: the bounds of the annotator morph once writting was done and bounds adjusted. 
The bounds prior writing can be computed once the stroke group is removed from the domain (annotator morph)!

!CommandManager commentStamp: '<historical>' prior: 0!
A manager for user commands. At user actions, I create specific instances of command recorded in a stack.!

!PageTool commentStamp: '<historical>' prior: 0!
An abstraction of a tool to operate on a Page. Subclasses implement Pen, Eraser, etc. tools.!

!EraserTool commentStamp: '<historical>' prior: 0!
With the EraserTool the users deletes handwriten notes, highlit zones.
- bounds: when erasing on a AnnotatorMoprh, we need to know about its former bounds prior to erasing!

!GroupTool commentStamp: '<historical>' prior: 0!
With the GroupTool the user defined a rectangle area to grab objects and to move them around
- origin : the origin of the selection rectangle
- selection: a collection of moved morph
- paper: in which paper did the action occured. We need to remember about it because the user can decide without prior notice to select and drag morphs from different papers (paper to annotator, annotator to another annotater, annotator to paper), in that case we need to reset the selection process!

!HighlighterTool commentStamp: '<historical>' prior: 0!
With the HighlghterTool the user empahsis handwriten notes or any other misc areas.!

!PenTool commentStamp: '<historical>' prior: 0!
With the PenTool the user writes handwriten notes.!

!PointerTool commentStamp: '<historical>' prior: 0!
With the PointerTool, the user can 
- grab Annotator to move them around with the annotated object
- interact with the annotated object with its affordances 
!

!PageToolState commentStamp: '<historical>' prior: 0!
I a represent an abstracte state of a tool selected by the user.
The context is the tool (penTool, eraserTool, ...) under which the state operate.!

!EraserToolStateErasing commentStamp: 'hlsf 9/11/2024 21:16:43' prior: 0!
We record the deleted strokes in a dictionary. 
Its keys are the StrokeGroupMorphs and its values are collections of deleted strokes of the group.
When all the strokes of a group are deleted, we just need to remember of the whole stroke group.!

!GroupToolStateDragging commentStamp: '<historical>' prior: 0!
The moprh under the Rectangular area can be dragged, or attributes changed!

!GroupToolStateGrabbing commentStamp: '<historical>' prior: 0!
A corner of the rectangular selection was set, the user moves the pointer to define the rectangular area
to grab the morphs to select.!

!PointerToolStateDragging commentStamp: '<historical>' prior: 0!
We arrive at this state once the user press the pointer.
We are either dragging the whole page or a grabbed annotator!

!DyboScript commentStamp: '<historical>' prior: 0!
My subclasses are interfaces to specific Dynamic Knowledge Models (DKM).
My class side expose the dependency and the description to a specific DKM.
My instances are particular use cases of the described DKM, it is done through a script (code variable).
Therefore each instance of the same DyboScript subclass uses the same DKM but with a different 
code to produce a different view. The code us a DSL specific to the DKM.
Each script returns a View inserted in an Annotator itself added to a Document.!

!DocumentModel commentStamp: '<historical>' prior: 0!
- timeStamp : creation time of a Document. An unique identifier. It is used to create a dedicated directory on disk in the tasks or topic directory
- relPath, the path my folder is saved in with my associate data, relatively to userDataPath. Those my fullPath is userDataPath / relPath / dirName
- pageModel can be either 
 1. a path to a pdf document used as a model for PageModelPdf. Each page of the Document use a PDF page as its model
 2. a class in the  PageModel hierachy, the default model for each page of the Document
!

!Bezier2Morph commentStamp: '<historical>' prior: 0!
A quadratic Bézier stroke!

!Bezier3Morph commentStamp: '<historical>' prior: 0!
A cubic Bézier stroke!

!LineStrokeMorph commentStamp: 'hlsf 9/1/2024 09:40:28' prior: 0!
I draw the intermediate mouse strokes, right before the Bézier curve is computed. I avoid the visual discomfort between user stroked and computed Bézier curve.

In a PaperMorph I draw the mouse strokes as connected straight lines. I request to the Paper morph, my owner, the existing samples of recorded mouse positions. I can only be owned by a Paper Morph.

This is out sourced of the PaperMorph for speed rendering -> Need to check out if it is really the case!

!StrokeGroupMorph commentStamp: '<historical>' prior: 0!
I group the strokes (kind of BezierMorph) of a hand written stroke. A hand stroke happens between the pen down and pen up events.
To avoid graphics artifacts at the junctions of the strokes, I draw directly the submorphs.
In some circumstance, I reveal my submorphs and then I do not draw them directly.!

!PageMorph commentStamp: '<historical>' prior: 0!
The view of a Page. A page is a unit of a Document.
I always contain these two morphs of the same extent as me:
 - a page model providing the extent and the background
 - a paper morph covering all its extent
 - a collection of annotator morph!

!PaperMorph commentStamp: '<historical>' prior: 0!
- stroker:  an object to compute a stroke
- samples: an array of fixed size, collected mouse positions
- samplesQty: quantity of required samples to compute a stroke
- sampleIndex: the index of the next sample to collect

(PaperMorph new stroker: StrokerBezier2 ) openInWorld. "Quadratic Bézier"
(PaperMorph new stroker: StrokerBezier2XP ) openInWorld. "Quadratic Bézier, expend out the control point"
(PaperMorph new stroker: StrokerBezier3 ) openInWorld. "Cubic Bézier"
(PaperMorph new stroker: StrokerBezier3XP ) openInWorld. "Cubic Bézier, expend out the control point"
!

!AnnotatorMorph commentStamp: '<historical>' prior: 0!
My goal is to annotate with handwriting a placed morph (annotatedMorph). 
My extent is adjusted to cover my annotated object and also the user handwriting. 
My extent expands to enclosed new handwritings. It shrinks when handwritings are deleted.
- script: instance of a DyboScript. An executed script return a view referenced by the annotedMorph
- annotedMorph:  the view returned by the script when executed, it is then inserted in me!

!PageModel commentStamp: '<historical>' prior: 0!
An abstract model for a page.
In essence a Page model provides the extent and the background of a PageMorph.
It is a Morph too so it draws the background and it is own by a PageMorph
IT IS NOT a model as understood in MVC!

!PageModelHL commentStamp: '<historical>' prior: 0!
A white background with blue horizontal lines!

!PageModelGrid commentStamp: '<historical>' prior: 0!
A white background with blue grids!

!PageModelPdf commentStamp: '<historical>' prior: 0!
- pageNumber : integer, the page number of the PDF page I represent!

!PageContainer commentStamp: '<historical>' prior: 0!
I am a container for a Page, I expand on the DocumentView, then let the Page be moved and scaled in me.
I also clip the page!

!DocumentView commentStamp: '<historical>' prior: 0!
A document view comes with:
- at the top, a toolbar to access a few set of tools (see #documentTools)
- at the right/left (should depends on user preference)  and at the bottom, wheels to move the page and zoom in/out
- at the bottom, a status bar
- at the center, the page cover all the remaining area!

!CommandStack methodsFor: 'private' stamp: 'hlsf 9/10/2024 21:00:31'!
truncate
	|oldReadLimit|
	oldReadLimit := readLimit.
	readLimit := position.
	oldReadLimit > readLimit ifTrue:
			[readLimit to: oldReadLimit do:
				[:index| collection at: index + 1 put: nil]]! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:00:20'!
nextPut: aCommand
	super nextPut: aCommand.
	self truncate.
	^ aCommand ! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:00:26'!
previous
	self position = 0 ifTrue: [^nil].
	self position: self position - 1.
	^self peek.! !

!CommandStack methodsFor: 'as yet unclassified' stamp: 'hlsf 10/26/2024 14:58:31'!
reset
	super reset.
	self truncate! !

!CommandStack class methodsFor: 'instance creation' stamp: 'hlsf 9/10/2024 21:01:01'!
new
	^self on: Array new! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:47'!
adjustWidth
	^ adjustWidth ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:56'!
adjustWidth: boolean
	adjustWidth := boolean ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:09:31'!
adjustWidthOnOff
	adjustWidth := adjustWidth not! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:10'!
color
	^ color! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:01'!
color: aColor
	color := 	aColor ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:06'!
threshold
	^ threshold ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:16'!
threshold: anInteger
	threshold := anInteger ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:17'!
width
	^ width ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:29'!
width: aNumber
	width := aNumber ! !

!Pen methodsFor: 'user interface' stamp: 'hlsf 4/11/2023 09:15:50'!
adjustWidthString
	^ adjustWidth asMenuItemTextPrefix , 		'adjust width'! !

!Pen methodsFor: 'as yet unclassified' stamp: 'hlsf 9/7/2024 11:48:27'!
initialize
	color := Color black.
	threshold := 4 squared.
	width := 2. 
	adjustWidth := false! !

!StrokerBezier2 methodsFor: 'instance' stamp: 'hlsf 8/18/2024 09:58:49'!
newStroke
	| newStroke lastStroke junctionPoint samples  |
	samples := self samples.
	lastStroke := paper lastStroke.
	newStroke := Bezier2Morph new
		start: samples first
		end: samples last
		control1: samples second;
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself.

	(lastStroke notNil 	and: [lastStroke end == newStroke start 		] ) 
		ifTrue: [				
			junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
			lastStroke end: junctionPoint.
			newStroke start: junctionPoint].
	^ newStroke
	
	! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:54'!
adjustWidth
	^ paper writingTool adjustWidth ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:32:38'!
paper: aPaperMorph
	paper := aPaperMorph ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:40'!
penColor
	^ paper writingTool color! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 13:12:07'!
penThreshold
	^ paper writingTool threshold ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:47'!
penWidth
	^ paper writingTool width! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:53:07'!
samples
"samples used to compute a new stroke"
	^ paper samples! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:44:49'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 3! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/9/2023 10:25:47'!
averageDistance: samples
	| dist |
	dist := 0.
	1 to: samples size -1 do: [:i |
		dist := dist + ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist / (samples size - 1)! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/1/2023 12:56:11'!
intersectionOrigin1: p1 vector1: v1 origin2: p2 vector2: v2
| det c1 c2 |
	det := v1 crossProduct: v2.
	det squared < 1e-8 ifTrue: [^ nil].
	c1 := p1 crossProduct: v1.
	c2 := p2 crossProduct: v2.
	^ ((c2 * v1 x - (c1 * v2 x) ) / det) @ ((v1 y * c2 - (v2 y * c1)) / det)! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/12/2023 17:28:57'!
maxDistance: samples
	| dist |
	dist := Array new: samples size - 1.
	1 to: samples size -1 do: [:i |
		dist at: i put: ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist max! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 1/4/2025 15:31:52'!
widthFor: samples prev: lastStroke
	| penWidth prevWidth strokeDist min max f a b  | 
	penWidth := self penWidth.
	self adjustWidth ifFalse: [^penWidth ].
	prevWidth := lastStroke ifNotNil: [lastStroke width] ifNil: [penWidth].
	"min/max pixel distance between two samples"
	min := self penThreshold / 2.
	max := self penThreshold * 2. 
	"+/- f % of amplitude width"
	f := 0.50.
	" affine parameters "
	a := (2 * penWidth * f) / ( min - max).
	b :=  penWidth * (1 + f) - (min * a).
	strokeDist := (self maxDistance: samples) min: max max: min.
	^ (a * strokeDist + b) * 0.6 + (prevWidth * 0.4)! !

!StrokerBezier2 methodsFor: 'testing' stamp: 'hlsf 8/18/2024 10:07:39'!
isLocalC1at: m between: c1 and: c2
"
	We check if local C1 continuity is desirable ? 
"
	^ true! !

!StrokerBezier2 methodsFor: 'testing' stamp: 'hlsf 9/26/2024 09:47:26'!
isSamplesValid
" 
Do we consider valid the current samples, Subclasses may implement differently to discard
"
	^ (self samples first squaredDistanceTo: self samples second) > paper writingTool threshold! !

!StrokerBezier2 class methodsFor: 'instance creation' stamp: 'hlsf 4/1/2023 14:29:08'!
on: aPaperMorph
	^ self new ::
		paper: aPaperMorph ;
		yourself! !

!StrokerBezier2XP methodsFor: 'instance' stamp: 'hlsf 10/20/2024 16:07:41'!
newStroke
	| newStroke lastStroke junctionPoint samples migratedControl middle c1 |
	samples := self samples.
	lastStroke := paper lastStroke.
	middle := (samples first + samples last) / 2.0.
	migratedControl := middle + (1.2 * (samples second - middle)). "1.2 seems to be a good scaling"
	newStroke := Bezier2Morph new
		start: samples first
		end: samples last
		control1: migratedControl " samples second";
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself.
		
	(lastStroke notNil 
	and: [lastStroke end == newStroke start
"
	Not all the situations are catched!! Indeed when the stroke abrubtly changes of direction intra a bezier curve, 
	(at the control point) we are not paying attention. This below only checks between two bezier curves.
	We need a different traitment for that kind of situation
"
	and: [c1 := self isLocalC1at: newStroke start between: lastStroke control1 and: newStroke control1]	 		] ) 
		ifTrue: [				
			junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
			lastStroke end: junctionPoint.
			newStroke start: junctionPoint].
	"(c1 notNil and: [c1 == false])  ifTrue: [newStroke color: Color cyan]."
	^ newStroke
	
	! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 9/26/2024 09:55:53'!
isLocalC1at: m between: c1 and: c2
"
	We check if local C1 continuity is desirable ? 
	When the stroke is abruptly changing of direction, C1 is not wished, 
	otherwise the user stroke will be truncated (i.e. n, m letter strokes for example)	
"
	| u v cos |
	u := c1 - m.
	v := c2 - m.
	cos := (u dotProduct: v) / (u r * v r) .
	"cos arcCos radiansToDegrees print."
	^ (cos
		between: `90 degreesToRadians cos` 
		and: `0 cos`) not! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 10/20/2024 16:05:21'!
isSamplesValid
" 
Do we consider valid the current samples, reason to discard :
	- the samples are not on an approximative line (i.e. above a given angle thresold)
	- are above a threshold distance
	- ...
"
	^ super isSamplesValid 
"	| a b ans |	
	a := self samples second - self samples first.
	b := self samples third - self samples first.
	"" Angle between M1C, M1M2 - C: control point ""
	ans := (a crossProduct: b) abs / (a r * b r)  > `2 degreesToRadians sin` .
	^ ans
		and:  [	(self samples first squaredDistanceTo: self samples second) > paper writingTool threshold]
"
	! !

!StrokerBezier3 methodsFor: 'instance' stamp: 'hlsf 4/9/2023 12:17:41'!
newStroke
	| newStroke lastStroke junctionPoint samples |
	samples := self samples.
	lastStroke := paper lastStroke.
	newStroke := Bezier3Morph new
		start: samples first
		end: samples last
		control1: samples second
		control2: samples third;
		color: self penColor; 
		width:  (self widthFor: samples prev: lastStroke);
		yourself.
	(lastStroke notNil and: [lastStroke end == newStroke start]) ifTrue: [	
		junctionPoint := (lastStroke control2 + newStroke control1) / 2.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded].
	^ newStroke
	
	! !

!StrokerBezier3 methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:44:41'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 4! !

!StrokerBezier3 methodsFor: 'testing' stamp: 'hlsf 8/17/2024 11:20:02'!
isSamplesValid
	^ true! !

!StrokerBezier3XP methodsFor: 'as yet unclassified' stamp: 'hlsf 5/29/2024 21:27:24'!
newStroke
	| newStroke lastStroke junctionPoint samples migratedControl1 migratedControl2 factor |
	samples := self samples.
	lastStroke := paper lastStroke.
	factor := 1.2.
	migratedControl1 := factor * (samples second - samples first) + samples first.
	migratedControl2 := factor * (samples third - samples fourth) + samples fourth.
	newStroke := Bezier3Morph new
		start: samples first
		end: samples last
		control1: migratedControl1 
		control2: migratedControl2 ;
		color: self penColor; 
		width:  (self widthFor: samples prev: lastStroke);
		yourself.
	(lastStroke notNil and: [lastStroke end == newStroke start]) ifTrue: [	
		junctionPoint := (lastStroke control2 + newStroke control1) / 2.0.
		junctionPoint := (junctionPoint + (lastStroke end) ) / 2.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded].
	^ newStroke
	
	! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 16:04:43'!
deletePage
	self view deletePage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 15:45:38'!
firstPage
	self view firstPage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/12/2024 11:18:01'!
fitWidthPage
	" Take PageContainer width for our current page "
	| page |
	page := self currentPage.
	page 
		morphPosition: 0@ (page morphPosition y);
		scale: (page pageContainer morphWidth / page morphWidth ) asFloat
	! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 15:38:17'!
insertPage
	self view insertPage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 15:45:29'!
lastPage
	self view lastPage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 12/24/2024 14:39:54'!
moveOXAction: increment
	| page |
	page := self currentPage.
	page morphPosition: (page morphPosition + (increment @ 0) 
		min: view container morphExtent 
		max: page morphExtent negated * page scale)! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 12/24/2024 14:39:48'!
moveOYAction: increment
	| page |
	page := self currentPage.
	page morphPosition: (page morphPosition - (0@increment) 
		min: view container morphExtent 
		max: page morphExtent negated * page scale)! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 15:46:24'!
nextPage
	self view nextPage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 14:28:44'!
pageFitScreen
	" Make the page entirely visible in the PageContainer "
	| page scaleX scaleY |
	page := self currentPage.
	
	scaleX := (page pageContainer morphWidth / page morphWidth) asFloat.
	scaleY := (page pageContainer morphHeight / page morphHeight) asFloat.
	page
		morphPosition: 0@0;
		scale: (scaleX min: scaleY)
	! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 10/26/2024 15:46:33'!
previousPage
	self view previousPage! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 2/13/2025 10:30:00'!
zoomAction: increment	
	self zoomAction: increment at: view container morphCenter! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 1/3/2025 14:57:51'!
zoomAction: increment	 at: referencePoint
" zoom centered at the referencePoint position in the container "
	|  center page |
	page := self currentPage.
	center := page internalize: referencePoint .
	page scale: (page scale - increment min: 2 max: 0.1).
	center := page externalize: center.
	page morphPosition: page morphPosition - center + referencePoint ! !

!Document methodsFor: 'callback pages' stamp: 'hlsf 1/4/2025 18:12:35'!
zoomPageTo100
	self currentPage 
		morphPosition: 0@0;
		scale: 1.001! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/16/2024 19:28:13'!
eraserSize: aNumber
	self eraserTool.
	eraser width: aNumber ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/16/2024 19:29:02'!
eraserSize16
	self eraserSize: 16.! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/19/2024 23:06:48'!
eraserSize4
	self eraserSize: 4! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/16/2024 19:28:45'!
eraserSize8
	self eraserSize: 8.! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:39:35'!
highlighterBlue
	self highlighterColor: Color blue! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:39:25'!
highlighterColor: aColor
	self highlighterTool.
	highlighter color: (aColor alpha: 0.3)! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:39:46'!
highlighterGreen
	self highlighterColor: Color green! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/19/2024 23:09:21'!
highlighterRed
	self highlighterColor: Color red! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/15/2024 18:46:25'!
highlighterSize: aNumber
	self highlighterTool.
	highlighter width: aNumber ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/15/2024 18:46:35'!
highlighterSize10
	self highlighterSize: 10! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/15/2024 18:47:01'!
highlighterSize20
	self highlighterSize: 20! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/15/2024 18:47:29'!
highlighterSize40
	self highlighterSize: 40! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/19/2024 23:49:17'!
highlighterYellow
	self highlighterColor: Color yellow! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 12/31/2024 19:15:56'!
importPDF: aFileEntry
	| process |
	process := DySystem 
		import: aFileEntry
		to: model path
		pages: nil.
	[process isComplete] whileFalse: [(Delay forMilliseconds: 300) wait].
	1 to: model pdfNumberOfPage do: [:index | | newPage |
		newPage := PageMorph newOn: self model: (self model newPdfPageModel: index).
		self view insertPage: newPage 	]
	! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:37:58'!
nibSize: aNumber
	self penTool.
	pen width: aNumber ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:40:53'!
nibSize05
	self nibSize: 0.5! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:11'!
nibSize08
	self nibSize: 0.8! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:16'!
nibSize1
	self nibSize: 1! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:21'!
nibSize2
	self nibSize: 2! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:25'!
nibSize4
	self nibSize: 4! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:29'!
nibSize6
	self nibSize: 6! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:43:32'!
nibSize8
	self nibSize: 8! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:38:24'!
penBlack
	self penColor: Color black! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/19/2024 23:22:18'!
penBlue
	self penColor: Color blue! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:38:13'!
penColor: aColor
	self penTool.
	pen color: aColor! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:38:44'!
penGreen
	self penColor: Color green! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:38:53'!
penRed
	self penColor: Color red! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 10/14/2024 21:39:01'!
penWhite
	self penColor: Color white! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 12/24/2024 17:12:39'!
redoAction
	self commandsManager redo ifTrue: [self modified]! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 12/28/2024 20:37:26'!
saveDocument
	self isSaved ifTrue: [^ false].
	savesReal := true.
	self saveToDisk.
	savesReal := false.
	isSaved := true.
	self currentPage redrawNeeded.
	^ true! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 12/24/2024 17:12:27'!
undoAction
	self commandsManager undo ifTrue: [self modified].
	self resetTool! !

!Document methodsFor: 'accessing' stamp: 'hlsf 12/18/2024 21:45:16'!
commandsManager
	^ commandsManager ifNil: [commandsManager := CommandManager new]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 12/18/2024 22:16:59'!
controlsManager
	^ controlsManager! !

!Document methodsFor: 'accessing' stamp: 'hlsf 12/18/2024 22:16:59'!
controlsManager: aControlManager
	controlsManager := aControlManager ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 10/26/2024 14:40:39'!
currentPage
	^ self view currentPage! !

!Document methodsFor: 'accessing' stamp: 'hlsf 11/12/2024 21:51:00'!
model
	^ model! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:42:08'!
selectedTool
	^ tool ifNotNil: [tool toolName] ifNil: [#none]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 11/24/2024 19:36:54'!
view
	^ view! !

!Document methodsFor: 'accessing' stamp: 'hlsf 11/24/2024 19:36:47'!
view: aMorph
	view := aMorph ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 11:52:43'!
writingTool
	" Depends on the selected tool "
	^  self selectedTool 
		caseOf:  {
			[PenTool toolName] -> [pen] .
			[HighlighterTool toolName] -> [highlighter ] .
			[EraserTool toolName] -> [eraser ]
		}
		otherwise: [nil]! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 14:34:33'!
eraserTool
	self tool: EraserTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 10/23/2024 10:29:11'!
groupTool
	self tool: GroupTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 14:34:47'!
highlighterTool
	self tool:HighlighterTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 1/4/2025 18:47:34'!
isTool: aToolName
	^ self selectedTool == aToolName ! !

!Document methodsFor: 'tool' stamp: 'hlsf 10/13/2024 17:22:30'!
isToolColor: toolName
" Check if pen or hightlighter and which color - for the circular toolbar 
toolName takes value penRed,  hightlighterYellow, etc.  "
	^ (toolName includesSubString: self selectedTool) 
	and: [toolName includesSubString: (self writingTool color alpha: 1) colorName capitalized ]! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 10:38:17'!
penTool
	self tool: PenTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 10/23/2024 10:52:29'!
pointerTool
	self tool: PointerTool .! !

!Document methodsFor: 'tool' stamp: 'hlsf 10/26/2024 15:56:47'!
resetTool
" reselect to tool remove intermediate state in the tool "
	self tool: tool class ! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 15:09:27'!
tool
	^ tool! !

!Document methodsFor: 'tool' stamp: 'hlsf 1/4/2025 19:09:41'!
tool: aToolClass
	tool ifNotNil: [tool release].
	tool := aToolClass presenter: self.
	view statusBarMessage: aToolClass description.
	self changed: #isTool:! !

!Document methodsFor: 'initialization' stamp: 'hlsf 1/4/2025 19:38:01'!
initialize
	super initialize.
	self initializeWritingTools .
	model := DocumentModel new.
	savesReal := false. "Read comment in objectForDataStream:"
	isSaved := true! !

!Document methodsFor: 'initialization' stamp: 'hlsf 10/20/2024 16:03:09'!
initializeWritingTools
	pen := Pen new threshold: 4.
	highlighter := Pen new ::
		color: (Color yellow alpha: 0.3);
		width: 40;
		threshold: 6 squared.
	eraser := Pen new 	width: 2
! !

!Document methodsFor: 'persistence' stamp: 'hlsf 1/4/2025 19:39:22'!
comeFullyUpOnReload: smartRefStream
	self initializeWritingTools.
	savesReal := false.
	isSaved := true.
	'presenter came to life' print! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/8/2024 13:00:55'!
isSaved
	^ isSaved ifNil: [true]! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/22/2024 11:31:59'!
loadFromDisk
	^ ReferenceStream restoreFromFile: model path // 'doc.obj'! !

!Document methodsFor: 'persistence' stamp: 'hlsf 1/4/2025 18:24:38'!
modified
	" get notified the page was modified recently, ie changes not saved to disk "
	isSaved ifFalse: [^ self].
	isSaved := false.
	view resetPreview.
	view currentPage paper redrawNeeded 
	! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/24/2024 17:03:08'!
objectForDataStream: str
" We have two states when saving a document.
1. When serialized from the data tree model -> respond a diskproxy, it is the default state saveReal == false
2. When serialized and saved in its own tree at its own file location -> respond self, it is explicitly required, see #saveDocument
"
	^ savesReal 
		ifFalse: [Transcript show: '   proxy saved: '; show: self; cr.
			DiskProxy 				
				global: #Document 				
				selector: #loadDocument:  				
				args: (Array with: model relPath)		 ]
		ifTrue: [	Transcript show: '   full object on disk: '; show: self; cr.
			self]! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/22/2024 13:06:49'!
saveToDisk
" NEVER SEND MESSAGE DIRECTLY, use saveDocument if necessary 
Save me in my model disk location "
	'Saving to disk' print.
	ReferenceStream 
		dumpOnFile:  model path // 'doc.obj'
		object: self
! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/18/2024 21:44:09'!
storeDataOn: aDataStream
	| backup |
	backup := self backupThenNilAttributes.
	super storeDataOn: aDataStream.
	self restoreAttributes: backup! !

!Document methodsFor: 'persistence' stamp: 'hlsf 12/24/2024 16:17:11'!
unsavedAttributes
	^ #(commandsManager controlsManager isSaved pen highlighter eraser tool)! !

!Document methodsFor: 'printing' stamp: 'hlsf 12/22/2024 13:18:26'!
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' (';
		nextPutAll: model dirName;
		nextPut: $)! !

!Document class methodsFor: 'object serialization' stamp: 'hlsf 12/22/2024 11:42:32'!
loadDocument: relativePath
"
	Once restored, the controlManager needs to be associated back and 
	the view plug in the dynamic book main view
"
	^ ReferenceStream restoreFromFile: DySystem userDataPath / relativePath // 'doc.obj'! !

!Command methodsFor: 'command' stamp: 'hlsf 9/10/2024 21:05:57'!
execute
	self subclassResponsibility ! !

!Command methodsFor: 'command' stamp: 'hlsf 9/10/2024 21:06:19'!
unexecute
	self subclassResponsibility ! !

!Command methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:05:50'!
domain: aDomain
	domain := aDomain! !

!Command methodsFor: 'initialize-release' stamp: 'hlsf 9/10/2024 21:06:12'!
release
"Let my child do some clean up"! !

!ErasingCommand methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 21:02:30'!
deletedStrokes: aDictionnary
" Read EraserToolStateErasing>>handleMouseAt:in: "
	deletedStrokes := aDictionnary ! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 17:23:49'!
execute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain removeMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup removeAllMorphsIn: aCollection ] 		]! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 17:23:35'!
unexecute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain addMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup addAllMorphs: aCollection ] 		]! !

!ErasingCommand class methodsFor: 'instance creation' stamp: 'hlsf 9/11/2024 20:57:11'!
deletedStrokes: aDictionayOfStroke in: aPage
	^ self basicNew
		domain: aPage;
		deletedStrokes: aDictionayOfStroke ;
		initialize
		! !

!ErasingAnnotatorCommand methodsFor: 'initialization' stamp: 'hlsf 11/16/2024 17:14:02'!
initialize
	super initialize.
	bounds := domain fullBoundsInOwner.
	domain adjustBounds! !

!ErasingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 18:13:53'!
execute
	super execute.
	domain adjustBounds ! !

!ErasingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 22:33:02'!
unexecute
	domain adjustBoundsTo: bounds.
	super unexecute! !

!MoveAnnotatorCommand methodsFor: 'accessing' stamp: 'hlsf 10/24/2024 12:34:12'!
annotator: aMorph
	annotator := aMorph ! !

!MoveAnnotatorCommand methodsFor: 'accessing' stamp: 'hlsf 10/24/2024 12:34:24'!
delta: aPoint
	delta := aPoint ! !

!MoveAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 10/24/2024 14:00:49'!
execute
	annotator morphPosition: annotator morphPosition + delta! !

!MoveAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 10/24/2024 14:00:54'!
unexecute
	annotator morphPosition: annotator morphPosition - delta! !

!MoveAnnotatorCommand class methodsFor: 'instance creation' stamp: 'hlsf 10/24/2024 12:32:11'!
move: anAnnotator to: aPoint in: aPage
	^ self basicNew
		domain: aPage ;
		annotator: anAnnotator ;
		delta: aPoint;
		initialize;
		yourself! !

!MoveGroupCommand methodsFor: 'accessing' stamp: 'hlsf 10/19/2024 11:35:35'!
delta: aPoint
	delta := aPoint! !

!MoveGroupCommand methodsFor: 'accessing' stamp: 'hlsf 10/19/2024 11:35:45'!
selection: aCollection
	selection := aCollection ! !

!MoveGroupCommand methodsFor: 'command' stamp: 'hlsf 10/19/2024 11:42:09'!
execute
	selection do: [:aMorph | 			aMorph morphPosition: aMorph morphPosition + delta		 ]! !

!MoveGroupCommand methodsFor: 'command' stamp: 'hlsf 10/19/2024 12:17:55'!
unexecute
	selection do: [:aMorph | 			aMorph morphPosition: aMorph morphPosition - delta		 ].! !

!MoveGroupCommand class methodsFor: 'instance creation' stamp: 'hlsf 10/24/2024 12:26:59'!
moveGroup: aCollection to: aPoint in: aPaper
	^ self basicNew
		domain: aPaper;
		selection: aCollection ;
		delta: aPoint;
		initialize;
		yourself! !

!MoveGroupInAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 10/19/2024 11:45:40'!
execute
	domain adjustBoundsTo: bounds.
	super execute! !

!MoveGroupInAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 10/19/2024 11:45:49'!
unexecute
	bounds := domain fullBoundsInOwner.
	super unexecute.
	domain adjustBounds! !

!MoveGroupInAnnotatorCommand methodsFor: 'initialization' stamp: 'hlsf 10/19/2024 11:45:27'!
initialize
	super initialize.
	domain adjustBounds.
	bounds := domain fullBoundsInOwner.
! !

!WritingCommand methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:43:08'!
strokeGroup: aStrokeGroup
	strokeGroup := 	aStrokeGroup ! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 15:45:10'!
execute
	domain addMorph: strokeGroup! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 15:45:21'!
unexecute
	domain removeMorph: strokeGroup! !

!WritingCommand class methodsFor: 'instance creation' stamp: 'hlsf 9/11/2024 17:43:50'!
strokeGroup: aStrokeGroup in: aPaper
	^ self basicNew
		domain: aPaper;
		strokeGroup: aStrokeGroup;
		initialize! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 16:55:26'!
execute
	domain adjustBoundsTo: bounds.
	super execute! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 22:32:48'!
initialize
	super initialize.
	domain adjustBounds.
	bounds := domain fullBoundsInOwner.
! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 9/29/2024 22:32:40'!
unexecute
	bounds := domain fullBoundsInOwner.
	super unexecute.
	domain adjustBounds! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 9/10/2024 21:03:49'!
initialize
	stack := CommandStack new! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 10/26/2024 14:57:40'!
release
	stack contents do: [:c | c release].
	stack reset! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 10/19/2024 11:24:14'!
deletedStrokes: aDictionayOfStroke in: aPaper
" Read EraserToolStateErasing>>handleMouseAt:in: "
	| command |
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [ErasingAnnotatorCommand] 
		ifFalse: [ErasingCommand].
	stack nextPut: (command deletedStrokes: aDictionayOfStroke in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 10/24/2024 14:02:16'!
move: aAnnotator to: delta in: aPage
	aAnnotator ifNil: [^self]. " The whole page was moved, not undo there "
	stack nextPut: (MoveAnnotatorCommand move: aAnnotator to: delta in: aPage )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 10/24/2024 12:27:51'!
moveGroup: aCollection to: delta in: aPaper
	| command |
	aCollection ifEmpty: [^self]. " Nothing to undo "
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [MoveGroupInAnnotatorCommand ] 
		ifFalse: [MoveGroupCommand ].
	stack nextPut: (command moveGroup: aCollection to: delta in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 12/24/2024 17:11:37'!
redo
	| command |
	command := stack next.
	^ command 
		ifNotNil:	 [
			command execute.
			true]
		ifNil: [false]! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 10/19/2024 11:23:59'!
strokeGroup: aStrokeGroup in: aPaper
	| command |
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [WritingAnnotatorCommand] 
		ifFalse: [WritingCommand].
	stack nextPut: (command strokeGroup: aStrokeGroup in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 12/24/2024 17:11:42'!
undo
	| command |
	command := stack previous.
	^ command 
		ifNotNil: [
			command unexecute.
			true]
		ifNil: [false]! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 10/19/2024 16:15:48'!
currentPage
	^ presenter currentPage! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:36:26'!
presenter
	^ presenter! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 11:04:16'!
presenter: aPresenter
	presenter := aPresenter ! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:37:34'!
toolName
	^ self class iconName! !

!PageTool methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 16:39:56'!
release
	self releaseActionMap ! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:10'!
handleMouseAt: localPosition in: page
	state handleMouseAt: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:15'!
handlePress: localPosition in: page
	state handlePress: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:27'!
handleRelease: localPosition in:page
	state handleRelease: localPosition in: page! !

!PageTool methodsFor: 'state' stamp: 'hlsf 10/19/2024 16:21:20'!
switchState: aStateClass
	state := aStateClass basicNew 
		context: self;
		initialize;
		yourself! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:47:02'!
action
" A symbol to identify me, also the message name sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:43:40'!
description
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:36:37'!
iconName
" also the name to identify the tool sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:43:36'!
title
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 11:40:29'!
toolName
	^ self iconName! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 9/1/2024 11:03:33'!
new
	self error: 'Use #presenter:'! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 9/1/2024 11:03:52'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 10/26/2024 14:42:42'!
deleteBitsMasks
	presenter view deleteBitMasks ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 1/24/2025 19:46:50'!
initialize
	super initialize.
	self deleteBitsMasks. "Need by annotated morph"
	self currentPage lockAnnoted.
	self switchState: EraserToolStateNeutral ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 19:04:26'!
release
	super release.
	" We need to remove the Morph bitMask used to detect the individual strokes "
	self deleteBitsMasks ! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:47:25'!
action
	^ #eraserTool! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 10/10/2024 10:42:14'!
description
	^ 'An eraser to delete some of your handwriting.' translated! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:36:52'!
iconName
	^ #eraser! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:02:21'!
title
	^ 'Eraser' translated! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/18/2024 21:18:31'!
corner
	^ corner! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/18/2024 21:18:31'!
corner: aPoint
	corner := aPoint ! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:45:46'!
grabMorphsIn: kindOfPaper inside: rect
" kind of paper can be a Paper or an Annotator "
	| rectFitToSelection |
	selection := ( (kindOfPaper is: #AnnotatorMorph)
		ifTrue: [kindOfPaper grabMorphsIn: rect]
		ifFalse: [kindOfPaper owner grabMorphsIn: rect " Ask to the page of the paper to also grab annotator "] ).
	selection do: [:aMorph | rectFitToSelection := aMorph fullBoundsInOwner quickMerge: rectFitToSelection].
	kindOfPaper selectionArea: rectFitToSelection.
	rectFitToSelection ifNotNil: [kindOfPaper selectionMorph borderWidth: 0.5]! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/19/2024 12:10:20'!
paper
	^ paper! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/19/2024 12:10:16'!
paper: aKindOfPaper
	paper := aKindOfPaper ! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 10/17/2024 22:13:26'!
selection
	^ selection! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 10/19/2024 12:08:58'!
clearSelection
	presenter currentPage clearSelection.
	paper := nil.
	selection := #()! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 1/24/2025 19:47:04'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: GroupToolStateNeutral.
	self clearSelection ! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 10/19/2024 10:08:15'!
release
	super release.
	presenter currentPage clearSelection! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:29:11'!
action
	^ #groupTool! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:27:46'!
description
	^ 'Select a group of objects and drag them around.' translated ! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:27:21'!
iconName
	^ #group! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:27:55'!
title
	^ 'Group' translated! !

!HighlighterTool methodsFor: 'initialization' stamp: 'hlsf 1/24/2025 19:47:18'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: HighligtherToolStateNeutral ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:48:04'!
action
	^ #highlighterTool! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 10/10/2024 10:42:19'!
description
	^ 'A highlighter to emphasis some of your handwritings.' translated ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:37:56'!
iconName
	^ #highlighter! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:03:16'!
title
	^ 'Highlighter' translated! !

!PenTool methodsFor: 'initialization' stamp: 'hlsf 1/24/2025 19:47:24'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: PenToolStateNeutral ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:48:37'!
action
	^ #penTool! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 10/10/2024 10:42:25'!
description
	^ 'A pen for your handwriting.' translated ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:38:17'!
iconName
	^ #pen! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:03:57'!
title
	^ 'Pencil' translated! !

!PointerTool methodsFor: 'initialization' stamp: 'hlsf 1/24/2025 19:47:32'!
initialize
	super initialize.
	self currentPage unlockAnnoted.	
	self switchState: PointerToolStateNeutral ! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 19:04:56'!
grabAnnotatorsIn: page at: localPosition
	| selection |
	selection := page grabAnnotatorsAt: localPosition.
	" pick up the one with the smallest area "
	selection := selection sort: [:ann1 :ann2 |
		(ann1 morphExtent dotProduct: ann1 morphExtent) < (ann2 morphExtent dotProduct: ann2 morphExtent)].
	^ grabbed := selection at: 1 ifAbsent: nil
		
		! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 16:42:06'!
grabbed
	^ grabbed ! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 16:42:37'!
grabbed: aMorph
	grabbed := 	aMorph ! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:50:18'!
action
	^ #pointerTool! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:49:50'!
description
	^ 'Drag and interact with objects.' translated! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:50:06'!
iconName
	^ #pointer! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 10:47:40'!
title
	^ 'Interact' translated! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:25:29'!
commandsManager
	^ context presenter commandsManager! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 15:04:07'!
context: aTool
	context := aTool! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:35'!
handleMouseAt: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:43'!
handlePress: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:52'!
handleRelease: localPosition in: page
! !

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 10/17/2024 11:34:05'!
handleMouseAt: localPosition in: paper
	| worldCoordinate |
	worldCoordinate := paper externalizeToWorld: localPosition.
	(paper strokeGroupsAt: worldCoordinate) do: [:aGroup | 
		(deletedStrokes at: aGroup ifAbsentPut: [OrderedCollection new])
			addAll: (aGroup removeStrokesAt: worldCoordinate ).
		aGroup lastStroke ifNil: [" the stroke group was entirely deleted "
			paper removeMorph: aGroup.
			"Reconstitute the strokeGroup... "
			aGroup addAllMorphs: (deletedStrokes at: aGroup).
			"... then we don't need the individual strokes, we remember of the whole group "
			deletedStrokes at: aGroup put: aGroup] 	]! !

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 12/8/2024 19:58:51'!
handleRelease: localPosition in: paper
	paper redrawNeeded.
	context deleteBitsMasks.
	deletedStrokes ifNotEmpty: [	
		 (deletedStrokes values first isCollection 
			and: [deletedStrokes values first isEmpty]) ifTrue: [self halt: 'Should have strokes but is empty'].
		self commandsManager deletedStrokes: deletedStrokes in: paper ].
	context presenter modified.
	context switchState: EraserToolStateNeutral ! !

!EraserToolStateErasing methodsFor: 'initialization' stamp: 'hlsf 9/11/2024 20:48:01'!
initialize
	super initialize.
	deletedStrokes := Dictionary new.! !

!EraserToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/29/2024 18:17:43'!
handlePress: localPosition in: paper
	context 
		switchState: EraserToolStateErasing; 	" Prepare to erase... "
		handleMouseAt: localPosition in: paper "...then start erasing "! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 10/19/2024 16:16:05'!
handleMouseAt: localPosition in: paper
	| delta pickupSelectionMorph worldPosition |
	worldPosition := paper externalizeToWorld: localPosition.
	prevPosition ~= worldPosition ifTrue: [
		delta := (worldPosition - prevPosition) / context currentPage scale.
		pickupSelectionMorph := paper selectionMorph ifNil: [context paper selectionMorph]. 
		context selection do: [:aMorph | 			aMorph morphPosition: aMorph morphPosition + delta		 ].
		pickupSelectionMorph morphPosition: pickupSelectionMorph morphPosition + delta.
		prevPosition := worldPosition ]! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 10/23/2024 10:30:27'!
handlePress: localPosition in: paper
	| pickUpSelectionMorph |
	" problem when selecting an annotator: selectionMorph is in Paper, 
	but call here in Annotator, so localPosition in Annotator coordinates "
	initialPosition := prevPosition := paper externalizeToWorld: localPosition .
	pickUpSelectionMorph := paper selectionMorph ifNil: [context paper selectionMorph]. 
	(pickUpSelectionMorph displayFullBounds containsPoint: initialPosition ) ifFalse: [
			context switchState: GroupToolStateNeutral.
			^ context handlePress: localPosition in: paper			]! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 12/8/2024 19:58:51'!
handleRelease: locaPosition in: paper
	self commandsManager 
		moveGroup: context 		selection 
		to: ((paper externalizeToWorld: locaPosition) - initialPosition) / context currentPage scale
		in: context paper.
	context presenter modified.! !

!GroupToolStateGrabbing methodsFor: 'handling' stamp: 'hlsf 10/18/2024 21:18:50'!
handleMouseAt: localPosition in: paper
	paper selectionArea: (
		Rectangle encompassingInteger: (Array
			with: context corner
			with: localPosition) )! !

!GroupToolStateGrabbing methodsFor: 'handling' stamp: 'hlsf 10/23/2024 10:30:27'!
handleRelease: localPosition in: paper
	| selectionRect |
	selectionRect := Rectangle encompassingInteger: {
		paper externalizeToWorld: context corner.
		paper externalizeToWorld: localPosition }.
	selectionRect origin = selectionRect corner
		ifTrue: [context switchState: GroupToolStateNeutral ]
		ifFalse: [
			context 	grabMorphsIn: paper inside: selectionRect.
			context selection 
				ifEmpty: [		context switchState: GroupToolStateNeutral ] " empty selectio go back to neutral"
				ifNotEmpty: [			context switchState: GroupToolStateDragging] "We catched some morph, go..."
		]! !

!GroupToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 10/23/2024 10:30:15'!
handlePress: localPosition in: aPaper
	context corner: localPosition;
		paper: aPaper;
		switchState: GroupToolStateGrabbing! !

!GroupToolStateNeutral methodsFor: 'initialization' stamp: 'hlsf 10/19/2024 10:13:08'!
initialize
	super initialize.
	context clearSelection ! !

!HighligtherToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/7/2024 12:13:40'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: HighligtherToolStateWriting ! !

!PenToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/5/2024 15:40:31'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: PenToolStateWriting ! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 10/19/2024 16:29:58'!
handleMouseAt: localPosition in: paper
	paper writingAt: localPosition
	! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 12/8/2024 19:58:51'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context presenter modified.
	context switchState: PenToolStateNeutral 
	! !

!HighligtherToolStateWriting methodsFor: 'handling' stamp: 'hlsf 12/8/2024 19:58:51'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context presenter modified.
	context switchState: HighligtherToolStateNeutral 
	! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 10/23/2024 19:53:07'!
handleMouseAt: localPosition in: paper
	| delta page worldPosition |
	worldPosition := paper externalizeToWorld: localPosition.
	prevPosition ~= worldPosition ifTrue: [
		page := paper owner.
		delta := worldPosition - prevPosition.
		context grabbed 
			ifNotNil: [ :annotator |
				annotator morphPosition: annotator morphPosition + (delta / page scale) 				] 
			ifNil: [	page morphPosition: page morphPosition + delta ]		.
		prevPosition := worldPosition 		]! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 10/23/2024 19:50:59'!
handlePress: localPosition in: paper
	initialPosition := prevPosition := paper externalizeToWorld: localPosition ! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 12/8/2024 19:58:51'!
handleRelease: localPosition in: paper
	self commandsManager 
		move: context grabbed 
		to:  (paper externalizeToWorld: 	localPosition) - initialPosition / paper owner scale
		in: paper owner.
	context grabbed ifNotNil: [context presenter modified].
	context switchState: PointerToolStateNeutral ! !

!PointerToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 10/23/2024 19:04:20'!
handlePress: localPosition in: paper
	context 
		grabAnnotatorsIn: paper owner at: localPosition;
		switchState: PointerToolStateDragging;
		handlePress: localPosition in: paper
	! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 17:04:47'!
code: aString
	code := aString ! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 17:04:02'!
description
	^ description ifNil: [self class description]! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 17:04:19'!
description: aString
	description := aString ! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 21:55:42'!
icon
	^ icon ifNil: [self class icon]! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 17:03:30'!
title
	^ title ifNil: [self class title]! !

!DyboScript methodsFor: 'accessing' stamp: 'hlsf 2/16/2025 17:04:26'!
title: aString
	title := aString ! !

!DyboScript methodsFor: 'updating' stamp: 'hlsf 2/16/2025 23:30:16'!
execute
	^ Compiler evaluate: code! !

!DyboScript class methodsFor: 'DKM' stamp: 'hlsf 2/16/2025 16:30:08'!
dependency
	^ nil! !

!DyboScript class methodsFor: 'DKM' stamp: 'hlsf 2/16/2025 17:02:56'!
description
	^ 'I''am a generic script with no specific dependency.' translated! !

!DyboScript class methodsFor: 'DKM' stamp: 'hlsf 2/16/2025 21:54:57'!
icon
	^ Theme current fetch: #('16x16' 'places' 'start-here')  ! !

!DyboScript class methodsFor: 'DKM' stamp: 'hlsf 2/16/2025 17:03:01'!
title
	^ 'A generic script' translated! !

!DocumentModel methodsFor: 'initialization' stamp: 'hlsf 11/16/2024 11:05:18'!
initialize
	super initialize.
	timeStamp := DateAndTime now.
	pageModel := PageModelHL ! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 11/16/2024 11:27:20'!
newPdfPageModel: aPageNumber
	| pdfPageModel |
	pdfPageModel := PageModelPdf newOn: (self pdfFormPage: aPageNumber).
	pdfPageModel pageNumber: aPageNumber.
	^ pdfPageModel ! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 11/16/2024 10:28:22'!
pdfFormPage: integer
	^ ImageReadWriter formFromFileEntry: (self pdfPages at: integer)! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 11/16/2024 10:56:10'!
pdfNumberOfPage
	^ self pdfPages size! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 12/31/2024 19:18:28'!
pdfPages
	^ (self path children select: [:each | each extension = 'jpg'])
		sort: [:f1 :f2 | f1 name < f2 name]! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 11/27/2024 21:59:06'!
dirName
	^ String streamContents: [:s | timeStamp filenamePrintOn: s] ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 11/16/2024 11:17:03'!
newPageModel
	^ pageModel new! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 12/22/2024 11:40:27'!
ownerPath: aString
" The relative path of my owner, a topic or a task. 
a topic path looks like School/Class/Course/topic/,  a task path is just topics/ "
	ownerPath := aString! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 12/22/2024 11:41:20'!
path
	^ DySystem userDataPath / self relPath ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 12/22/2024 11:41:08'!
relPath
	^ ownerPath, '/', self dirName! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:46'!
color
	^ color! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:39'!
color: aColor
	color := aColor ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 10:38:09'!
control1
	^ c1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 21:21:04'!
end
	^ p2! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 22:44:40'!
end: aPoint
	 p2 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 21:20:59'!
start
	^ p1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 22:44:51'!
start: aPoint
	p1 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 10:39:07'!
start: startPoint end: endPoint control1: controlPoint
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:54'!
width
	^ width ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:52:12'!
width: aNumber
	width := aNumber ! !

!Bezier2Morph methodsFor: 'printing' stamp: 'hlsf 5/12/2024 18:21:56'!
printOn: str
	super printOn: str.
	str nextPutAll: ' p1: ';
		nextPutAll: (p1 printStringFractionDigits: 1);
		nextPutAll: ' p2: ';
		nextPutAll: (p2 printStringFractionDigits: 1);		
		nextPutAll: ' c: ';
		nextPutAll: (c1 ifNotNil: [c1 printStringFractionDigits: 1] ifNil: ['nil'])
	
! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:58:59'!
drawControlsOn: canvas
	canvas fillColor: `Color red` do: [
		canvas circleCenter: c1 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:56:19'!
drawCurveOn: canvas
	canvas 
		moveTo: p1;
		quadraticBezierTo: p2 control: c1! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 13:11:24'!
drawOn: canvas
	canvas strokeWidth: width color: color do: [self drawCurveOn: canvas ].
	self showTangents ifTrue: [self drawTangentsOn: canvas].
	self showControls ifTrue: [self drawControlsOn: canvas].
	self showPoints ifTrue: [self drawPointsOn: canvas]
	! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/1/2023 15:57:18'!
drawPointsOn: canvas
	canvas fillColor: Color blue do: [canvas circleCenter: p1 radius: 1.5].
	canvas fillColor: Color blue do: [canvas circleCenter: p2 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:58:04'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: `Color green` do: [		
			canvas 
				moveTo: p1;
				lineTo: c1;
				lineTo: p2]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/3/2023 19:33:00'!
is: aSymbol
	^ aSymbol == #BezierMorph or: [ super is: aSymbol ]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:10'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:15'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:20'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:33:33'!
includeInNewMorphMenu
	^ false! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:35:57'!
control2
	^ c2! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:37:13'!
start: startPoint end: endPoint control1: controlPoint1 
	self shouldNotImplement ! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:29:51'!
start: startPoint end: endPoint control1: controlPoint1 control2: controlPoint2
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint1.
	c2 := controlPoint2 ! !

!Bezier3Morph methodsFor: 'printing' stamp: 'hlsf 5/12/2024 18:21:42'!
printOn: str
	super printOn: str.
	str
		nextPutAll: ' c2: ';
		nextPutAll: (c2 ifNotNil: [c2 printStringFractionDigits: 1] ifNil: ['nil'])
	
! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:59:33'!
drawControlsOn: canvas
	canvas fillColor: `Color red` do: [
		canvas 
			circleCenter: c1 radius: 1.5;
			circleCenter: c2 radius: 1.5]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:56:04'!
drawCurveOn: canvas
	canvas moveTo: p1.
	c1 
		ifNil: [canvas lineTo: p2]
		ifNotNil: [canvas cubicBezierTo: p2 control1: c1 control2: c2]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:58:32'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: `Color green` do: [		
				canvas moveTo: p1;
					lineTo: c1;
					moveTo: p2;
					lineTo: c2] ! !

!LineStrokeMorph methodsFor: 'drawing' stamp: 'hlsf 1/4/2025 10:42:50'!
drawOn: canvas
	| samples lastIndex |
	owner class ~= PaperMorph ifTrue: [^ self].
	samples := owner samples.
	lastIndex := owner sampleIndex - 1.
	lastIndex ifNotZero: [
		canvas strokeWidth: owner writingTool width color: owner writingTool color do: [
			canvas moveTo: samples first.
			2 to: lastIndex do: [:i | canvas lineTo: ( samples at: i )].
			owner lastMousePosition ifNotNil: [:postiion | canvas lineTo: postiion ]
		]
	]! !

!LineStrokeMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:33:58'!
includeInNewMorphMenu
	^ false! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 12/29/2024 10:36:25'!
drawOn: canvas
" I draw manually my submorphs "
	| nextIndex endIndex strokesQty stroke color width |
	strokesQty := self submorphCount.
	strokesQty isZero ifTrue: [ ^ self ].
	nextIndex := 1.
	[nextIndex <= strokesQty] whileTrue: [
		stroke := submorphs at: nextIndex.
		color := stroke color.
		width := stroke width.
		endIndex :=  nextIndex + 1.
		[endIndex <= strokesQty 
			and: [(stroke := submorphs at: endIndex) color = color 
			and: [stroke width = width]]] whileTrue: [endIndex := endIndex + 1].
		canvas strokeWidth: width color: color do: [
			nextIndex to: (endIndex - 1) do: [ :i |
				stroke := submorphs at: i.
				 stroke drawCurveOn: canvas ] ].
		nextIndex := endIndex ].	
	self showTangents ifTrue: [submorphs do: [:each | each drawTangentsOn: canvas] ].
	self showControls ifTrue: [submorphs do: [:each | each drawControlsOn: canvas] ].
	self showPoints ifTrue: [submorphs do: [:each | each drawPointsOn: canvas] ]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 5/12/2024 18:11:04'!
is: aSymbol
	^ aSymbol == #StrokeGroupMorph or: [ super is: aSymbol ]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:06'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:22'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:38'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 15:55:34'!
color: aColor
	submorphs do: [:each | each color: aColor].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 18:22:24'!
lastStroke
	^ submorphs ifEmpty: [nil] ifNotEmpty: [self firstSubmorph]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 15:56:04'!
width: aNumber
	submorphs do: [:each | each width: aNumber ].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:01:58'!
writingTool
	^ owner writingTool ! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 9/8/2024 16:14:23'!
addStroke: aStroke
	self addMorph: aStroke.
	aStroke visible: false! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 9/30/2024 18:50:45'!
removeStrokesAt: positionInWorld
" Remove the strokes under this positionInWorld "
	| toDelete |
"	self halt."
	toDelete := submorphs select: [:aBezier | aBezier isCloserThan: self writingTool width toPixel: positionInWorld].
	self removeAllMorphsIn: toDelete.
	^ toDelete! !

!StrokeGroupMorph methodsFor: 'geometry services' stamp: 'hlsf 9/29/2024 22:22:48'!
isCloserThan: distance toPixel: positionInWorld
	^ submorphs anySatisfy: [:each | 
		each bitMask.
		each isCloserThan: distance toPixel: positionInWorld]! !

!StrokeGroupMorph methodsFor: 'clean up' stamp: 'hlsf 9/8/2024 19:03:55'!
deleteBitMasks
	submorphs do: [:each| each removeProperty: #bitMask]! !

!StrokeGroupMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/21/2025 22:17:21'!
haloShowsCoordinateSystem
	^ false! !

!StrokeGroupMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:34:47'!
includeInNewMorphMenu
	^ false! !

!PageMorph methodsFor: 'geometry' stamp: 'hlsf 12/18/2024 15:33:55'!
scale: newScale
	(pageModel is: #PageModelPdf) ifTrue: [
		pageModel resampleFrom: self scale to: newScale in: self documentModel path].
	super scale: newScale! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 9/26/2024 11:35:01'!
annotators
	^submorphs select: [:morph | morph is: #AnnotatorMorph]! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 11/15/2024 22:27:26'!
documentModel
	^ presenter model! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 10/23/2024 16:32:26'!
grabAnnotatorsAt: localPosition
" Select the annotators under the local position  "
	^ self annotators select: [:aMorph | aMorph fullBoundsInOwner containsPoint: localPosition]
	
	! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 1/24/2025 19:49:55'!
lockAnnoted
	self annotators do: #lockAnnoted ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 11/16/2024 11:03:58'!
model: aPageModel
	pageModel := aPageModel ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 10/12/2024 11:17:04'!
pageContainer
	^ owner! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 16:13:35'!
paper
	^ paper ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:00:16'!
presenter: documentPresenter
	presenter := documentPresenter ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 1/24/2025 19:49:49'!
unlockAnnoted
	self annotators do: #unlockAnnoted ! !

!PageMorph methodsFor: 'initialization' stamp: 'hlsf 1/23/2025 19:42:43'!
initialize
	super initialize.
	paper := PaperMorph newOn: presenter.
	paper stroker: StrokerBezier2XP.
	self addMorphBack: pageModel position: 0@0;
		addMorphFront: paper position: 0@0.
	self morphExtent: pageModel morphExtent.
	paper morphExtent: pageModel morphExtent.
	self 
		addMorphFront: (AnnotatorMorph newOn: presenter annotate: (TextModelMorph withText: 'Edit me')) 
		position: self morphExtent // 2.! !

!PageMorph methodsFor: 'geometry testing' stamp: 'hlsf 2/9/2025 17:14:50'!
clipsSubmorphs
	^ false! !

!PageMorph methodsFor: 'drawing' stamp: 'hlsf 12/8/2024 18:57:15'!
drawOn: canvas! !

!PageMorph methodsFor: 'testing' stamp: 'hlsf 9/26/2024 10:25:19'!
is: aSymbol
	^ aSymbol == #PageMorph or: [super is: aSymbol ]! !

!PageMorph methodsFor: 'selection' stamp: 'hlsf 10/19/2024 10:08:01'!
clearSelection
	" Annotators are kind of Paper "
	self annotators do: [:each | each clearSelection].
	paper clearSelection.! !

!PageMorph methodsFor: 'selection' stamp: 'hlsf 10/18/2024 23:32:03'!
grabMorphsIn: rect
" Select the morph in the rect and which are grabbable: StrokeGroup in the paper and Annotator in self "
	| grabbed |
	grabbed := OrderedCollection new.
	grabbed addAll: (paper grabMorphsIn: rect);
		addAll: (self annotators select: [:aMorph | rect containsRect: aMorph displayFullBounds]).
	^ grabbed
	! !

!PageMorph methodsFor: 'event handling testing' stamp: 'hlsf 10/24/2024 15:05:09'!
handlesMouseScroll: scrollEvent
	^ true! !

!PageMorph methodsFor: 'events' stamp: 'hlsf 10/24/2024 15:21:03'!
mouseScroll: evt localPosition: localEventPosition
	evt direction == #down
		ifTrue: [ presenter zoomAction: -0.02 at: (self externalize:  localEventPosition) ].
	evt direction == #up
		ifTrue: [ presenter zoomAction: 0.02 at: (self externalize: localEventPosition) ].
! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 2/16/2025 23:24:21'!
acceptDroppingMorph: flapItem event: dropEvent
	| annotator |
	annotator := AnnotatorMorph newOn: presenter annotate: flapItem object execute.
	self 
		addMorphFront: annotator 
		position: (self internalizeFromWorld: dropEvent eventPosition).
	annotator adjustBounds.
	flapItem flap fold! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 2/9/2025 18:15:45'!
allowsMorphDrop
	^ true! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 2/9/2025 18:16:25'!
wantsDroppedMorph: aMorph event: evt
	^ aMorph is: #FlapItem! !

!PageMorph class methodsFor: 'instance creation' stamp: 'hlsf 11/16/2024 11:00:10'!
newOn: documentPresenter model: aPageModel
	^ self basicNew
		model: aPageModel;
		presenter: documentPresenter ;
		initialize;
		yourself! !

!PageMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:34:29'!
includeInNewMorphMenu
	^ false! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 8/18/2024 16:43:08'!
lastMousePosition
"In local coordinate "
	^ lastMousePosition ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 1/4/2025 10:48:55'!
lastStroke
" Return the last strokes, if any, added to the last stroke group "
	^ currentStrokeGroup lastStroke 

! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:01:24'!
presenter: documentPresenter
	presenter := documentPresenter ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/3/2023 19:19:43'!
sampleIndex
	^ sampleIndex ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:54:30'!
samples
	^ samples! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 12:39:15'!
samplesQty
"Number of samples before instantiating a new hand stroke"
	^ samples size! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:28:07'!
stroker: aStrokerClass
	stroker := aStrokerClass on: self.
	samples := Array new: stroker samplesQty.
	sampleIndex := 1.! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:01:33'!
tool
	^ presenter tool! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:00:44'!
writingTool
	^ presenter writingTool ! !

!PaperMorph methodsFor: 'event handling testing' stamp: 'hlsf 10/23/2024 19:02:49'!
handlesMouseDown: event
	^ true
! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:36:49'!
mouseButton1Down: event localPosition: localPosition
	self tool handlePress: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:38:15'!
mouseButton1Up: event localPosition: localPosition
	self tool handleRelease: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 12/14/2024 09:28:42'!
mouseButton2Up: evt localPosition: localPosition
	presenter view  openCircularToolbar! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 2/7/2025 17:08:55'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [^ self ].
	self tool handleMouseAt: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 1/4/2025 10:48:42'!
mouseMove2: event localPosition: endPosition
" With mouse trail  enabled "
	| needUpdate |
	event mouseButton1Pressed not ifTrue: [^ self ].
	needUpdate := false.
	event trail do: [:aPosition | | localPosition |
		localPosition := self internalize: aPosition.
		((samples at: sampleIndex -1) squaredDistanceTo: localPosition) >= self writingTool threshold 		ifTrue: [	
			samples at: sampleIndex put: localPosition.
			sampleIndex := sampleIndex + 1.
			sampleIndex > self samplesQty			ifTrue: [
				needUpdate := true.
				currentStrokeGroup 
					addMorph: stroker newStroke.
				self resetSamplingTo: localPosition] 		] ].
	needUpdate ifTrue: [self redrawNeeded]! !

!PaperMorph methodsFor: 'geometry testing' stamp: 'hlsf 3/23/2023 21:23:17'!
requiresVectorCanvas
	^ true! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 10/20/2024 16:02:48'!
initialize
	super initialize.
	self stroker: StrokerBezier2XP.
	self 
		addMorph: (lineMorphs := LineStrokeMorph new)! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 9/26/2024 10:42:28'!
is: aSymbol
	^ aSymbol == #PaperMorph or: [super is: aSymbol ]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:57'!
showControls
	^ self valueOfProperty: #showControls ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:31'!
showPoints
	^ self valueOfProperty: #showPoints ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:47:26'!
showTangents
	^ self valueOfProperty: #showTangents ifAbsent: [false]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
addStandardHaloMenuItemsTo: aCustomMenu hand: aHandMorph
	aCustomMenu 
		add: 'sampling threshold' action: #setThreshold;
		add: 'width' action: #setWidth;
		addUpdating: #adjustWidthString target: self writingTool action: #adjustWidthOnOff;
		add: 'color' action: #setColor;		
		addUpdating: #pointsString action: #pointsOnOff;
		addUpdating: #controlsString action: #controlsOnOff;
		addUpdating: #tangentsString action: #tangentsOnOff;
		add: 'clear' action: #removeStrokes! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:11'!
controlsOnOff
	self 
		setProperty: #showControls
		toValue: self showControls not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:12:39'!
controlsString
	^ self showControls asMenuItemTextPrefix , 
		'show controls'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:05'!
pointsOnOff
	self 
		setProperty: #showPoints
		toValue: self showPoints not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:12:54'!
pointsString
	^ self showPoints asMenuItemTextPrefix , 
		'show points'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 5/12/2024 18:11:09'!
removeStrokes
	self removeAllMorphsIn: (submorphs select: [:aMorph | aMorph is: #StrokeGroupMorph])! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setColor
	self 
		request: 'Color (i.e. ''Color red'')'
		initialAnswer: self writingTool color asString
		verifying: [:aString | 		[Compiler evaluate: aString. true] on: Error do: [false] ]
		do: [:aString | | aColor |
			aColor := Compiler evaluate: aString.
			(aColor isKindOf: Color) ifTrue: [self writingTool color: aColor ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setThreshold
	self 
		request: 'Minimum screen distance between two consecutive samples'
		initialAnswer: self writingTool threshold sqrt asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | integer |
			integer := aString asNumber.
			(integer notNil and: [integer >=0]) ifTrue: [
				self writingTool threshold: integer squared] 
			]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setWidth
	self 
		request: 'Pen width in pixel, float in ]0 ; 20]'
		initialAnswer: self writingTool width asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | theWidth |
			theWidth := aString asNumber.
			(theWidth notNil and: [theWidth >0 and: [theWidth <= 20] ]) 	ifTrue: [
				self writingTool width: theWidth ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:18'!
tangentsOnOff
	self 
		setProperty: #showTangents
		toValue: self showTangents not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:13:03'!
tangentsString
	^ self showTangents asMenuItemTextPrefix , 
		'show tangents'! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 4/8/2023 11:45:22'!
resetSamplingTo: aPoint
" We start sampling mouse position, an initial mouse position may be given "
	sampleIndex := 1.
	aPoint ifNotNil: [
		samples at: 1 put: aPoint.
		sampleIndex := sampleIndex + 1]
! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 9/8/2024 16:47:08'!
strokeGroups
	^ submorphs select: [:each | each is: #StrokeGroupMorph ]! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 9/30/2024 19:30:14'!
strokeGroupsAt: worldPosition
	^ submorphs select: [:each |
		(each is: #StrokeGroupMorph) 
		and: [	each isCloserThan: self writingTool width toPixel: worldPosition ] 	]! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 1/4/2025 10:51:12'!
endWritingAt: localPosition
	samples at: sampleIndex put: localPosition.
	sampleIndex := sampleIndex + 1.
	"In case there is not enought sample, clone the last one"
	sampleIndex to: self samplesQty do: [	:i | samples at: i put: localPosition].
	currentStrokeGroup 
		addStroke: stroker newStroke;
		redrawNeeded.
	self resetSamplingTo: nil.
	lastMousePosition := nil.
	lineMorphs redrawNeeded;
		comeToFront.
	^ currentStrokeGroup 
! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 1/4/2025 15:44:43'!
startWritingAt: localPosition
" Initilize the user writing "
	self resetSamplingTo: localPosition.
	self addMorph: (currentStrokeGroup := StrokeGroupMorph new).
	"Minium squared distance to accept a new sample "
	distanceThreshold := 16.0 / owner scale! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 1/4/2025 14:55:34'!
writingAt: localPosition
" the user is still writing "
	((samples at: sampleIndex -1) squaredDistanceTo: localPosition) > distanceThreshold ifTrue: [	
		lastMousePosition := localPosition.
		samples at: sampleIndex put: localPosition.
		sampleIndex := sampleIndex + 1.
		sampleIndex > self samplesQty ifTrue: [
			(self lastStroke isNil or: [stroker isSamplesValid])
				ifTrue: [" First stroke of the group or valid samples "
					currentStrokeGroup 
						addStroke: stroker newStroke.
					self	resetSamplingTo: localPosition.
					currentStrokeGroup redrawNeeded.
					lineMorphs redrawNeeded ]
				ifFalse: ["Reconnect to previous stroke as our first sample..."
					sampleIndex := 2. "first samples is already connected, just move the index "
					"... and skip the second sample and keep the following ones"
					self samplesQty - 2 timesRepeat: [
						samples at: sampleIndex put: (samples at: sampleIndex + 1).
						sampleIndex := sampleIndex +1 ] ] ] ].
		lineMorphs redrawNeeded! !

!PaperMorph methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 10:00:17'!
drawOn: canvas
	presenter isSaved ifFalse: [
		canvas frameRectangle: self localBounds borderWidth: 2 color: `Color red`]! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 10/19/2024 10:07:27'!
clearSelection
	self selectionArea: nil! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 10/19/2024 15:16:38'!
grabMorphsIn: rect
" Select stroke group inside a Rectangle "
	^ submorphs select: [:aMorph |
		(aMorph is: #StrokeGroupMorph) and: [rect containsRect: aMorph displayFullBounds] ]! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 10/19/2024 15:25:54'!
selectionArea: rect
"set, update or discard the selection area"
	(rect isNil and: [selectionMorph notNil]) ifTrue: [
		self removeMorph: selectionMorph.
		selectionMorph := nil.		
		^ self].
	rect ifNotNil: [
		selectionMorph 
			ifNil:  [	selectionMorph := BorderedBoxMorph new
					color: (Color brown alpha: 0.2);
					borderWidth: 2;
					borderColor: Color brown;
					morphExtent: rect extent.
				self addMorph: selectionMorph position: rect corner ]
			ifNotNil: [selectionMorph morphPosition: rect origin;
				morphExtent: rect extent ]
	]
		
			
			! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 10/18/2024 21:24:00'!
selectionMorph
	^ selectionMorph ! !

!PaperMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 1/21/2025 22:17:02'!
haloShowsCoordinateSystem
	^ false! !

!PaperMorph class methodsFor: 'instance creation' stamp: 'hlsf 9/5/2024 15:58:40'!
newOn: documentPresenter
	^ self new
		presenter: documentPresenter;
		yourself! !

!PaperMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:34:39'!
includeInNewMorphMenu
	^ false! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 1/24/2025 19:23:03'!
annotate: aPlacedMorph
| annotedExtent |
	annotedMorph ifNotNil: [self removeMorph: annotedMorph].
	annotedMorph := aPlacedMorph.
	annotedExtent := annotedMorph displayBounds 
		ifNil:[annotedMorph bitMask extent]
		ifNotNil: [annotedMorph displayBounds extent].		
	annotedMorph removeProperty: #bitMask.
	self morphExtent: annotedExtent + (self frameWidth * 2) asPoint .
	self addMorph: annotedMorph position: self frameWidth asPoint
	! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 1/22/2025 22:59:41'!
annoted
	^ annotedMorph ! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 2/13/2025 11:28:36'!
frameWidth
	^ 8  / ((self scale max: 0.8) * (owner ifNotNil: [ owner scale max: 0.8] ifNil: [1]))! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 1/24/2025 20:00:46'!
lockAnnoted
	annotedMorph 
		lock;
		keyboardFocusChange: false.
	" Ensure the keyboard focus is really lost "
	annotedMorph submorphsDo: [:each | each keyboardFocusChange: false]! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 1/24/2025 19:58:10'!
unlockAnnoted
	annotedMorph 
		unlock! !

!AnnotatorMorph methodsFor: 'drawing' stamp: 'hlsf 2/9/2025 19:46:35'!
drawOn: aCanvas 
	self halo ifNotNil: [
		aCanvas 
			frameRectangle: self localBounds 
			borderWidth: self frameWidth 
			color: `Color gray alpha: 0.2`]! !

!AnnotatorMorph methodsFor: 'event handling testing' stamp: 'hlsf 10/23/2024 19:03:41'!
handlesMouseDown: event
" We do not interact directly with annotator when pointer tool. 
  We interect through the tool "
	^ (presenter isTool: #pointer) not
	! !

!AnnotatorMorph methodsFor: 'event handling testing' stamp: 'hlsf 1/25/2025 19:12:57'!
handlesMouseOver: event
	^ presenter isTool: #pointer! !

!AnnotatorMorph methodsFor: 'events' stamp: 'hlsf 1/25/2025 19:50:16'!
mouseEnter: evt
	self removeAlarm: #removeHalo.
	self comeToFrontAndAddHalo ! !

!AnnotatorMorph methodsFor: 'events' stamp: 'hlsf 2/9/2025 19:48:26'!
mouseLeave: evt
	self addAlarm: #removeHalo after: 1000! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 11/16/2024 17:19:51'!
adjustBounds
" Adjust my extent and position so that all my submoprhs are whithin my bounds.
  There should be no visual differences
 " 
	self adjustBoundsTo: (self externalizeBoundingRectOf: (self topLeftCorner corner: self bottomRightCorner))
	! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 1/24/2025 19:37:14'!
adjustBoundsTo: newBoundsInOwner
" adjust my bounds and translate my submoprhs accordingly
 " 
	| translate |
	translate := (newBoundsInOwner origin - self fullBoundsInOwner origin) asIntegerPoint.
	self fitInto: (newBoundsInOwner origin asIntegerPoint corner: newBoundsInOwner corner asIntegerPoint). 
	self submorphsDo: [:each | each morphPosition: each morphPosition - translate ]! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 1/24/2025 19:39:03'!
bottomRightCorner
" 
	the bottom right corner of the rectangle surrounding all my submorphs
"
	| corner |
	corner := 0@0.
	self submorphsDo: [:each | corner := corner max: each fullBoundsInOwner corner].
	^ corner + self frameWidth
	! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 1/23/2025 19:17:47'!
morphCenter
	^ self fullBoundsInOwner center! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 1/23/2025 19:19:43'!
morphCenter: newCenter
	^ self morphPosition: self  morphPosition + (newCenter - self morphCenter)! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 1/24/2025 19:38:30'!
topLeftCorner
" 
	the top left corner of the rectangle surrounding all my submorphs
"
	| corner |
	corner := extent.
	self submorphsDo: [:each | corner := corner min: each  fullBoundsInOwner origin].
	^ corner - 1 - self frameWidth asPoint
	! !

!AnnotatorMorph methodsFor: 'halo' stamp: 'hlsf 2/2/2025 18:02:59'!
haloSpecifications
	^ {	"selector 						horiz 			vert 			color info 			icon key	"
		{#addDismissHandle:.			#left.			#top.			#(red).				#haloAnnDismissIcon. 		'Remove' translated}.
		{#addMenuHandle:. 			#leftCenter.	#top.			#(blue darker).		#haloMenuIcon.		'Menu' translated}.
		{#addEditAnnotedHandle:.		#right.		 	#topCenter.	#(orange darker).	#haloAnnEditIcon.		'Edit' translated}.
		{#addDragHandle:.			#center.		#top.			#(brown).			#haloAnnDragIcon. 	'Move' translated}.
		{#addInspectHandle:.			#right.			#center.		#(orange lighter).			#haloAnnInspectIcon. 	'Inspect' translated}.
		{#addRotateHandle:.			#left.			#bottom.		#(blue).			#haloAnnRotateIcon.	'Rotate' translated}.		
		{#addResizeAnnotedHandle:.	#right.			#bottom.		#(yellow).			#haloAnnResizeIcon. 	'Change size' translated}.
		{#addHelpHandle:.				#center.		#bottom.		#(lightBlue).		#haloAnnHelpIcon. 	'Help' translated}
	} collect: [:anArray | HaloSpec from: anArray]! !

!AnnotatorMorph methodsFor: 'halo' stamp: 'hlsf 1/22/2025 22:47:46'!
inspectAnnoted
	^ annotedMorph inspect! !

!AnnotatorMorph methodsFor: 'testing' stamp: 'hlsf 9/26/2024 23:58:22'!
canResizeAnnoted
" can the the annotated morph be resized ? only kind of BoxMorph can"
	^ annotedMorph is: #BoxMorph! !

!AnnotatorMorph methodsFor: 'testing' stamp: 'hlsf 9/26/2024 11:15:37'!
is: aSymbol
	^ aSymbol == #AnnotatorMorph or: [ super is: aSymbol ]! !

!AnnotatorMorph methodsFor: 'writing' stamp: 'hlsf 9/28/2024 16:10:48'!
endWritingAt: localPosition
	| strokeGroup |
	strokeGroup := super endWritingAt: localPosition.
	
	^ strokeGroup ! !

!AnnotatorMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 2/9/2025 20:22:20'!
shortPrintString
	^ annotedMorph shortPrintString ! !

!AnnotatorMorph class methodsFor: 'instance creation' stamp: 'hlsf 9/26/2024 11:33:10'!
newOn: aPresenter
	self error: 'Use #newOn:annotate:'! !

!AnnotatorMorph class methodsFor: 'instance creation' stamp: 'hlsf 9/28/2024 14:24:16'!
newOn: documentPresenter annotate: aPlacedMorph
	aPlacedMorph isPlacedMorph ifFalse: [self error: 'Only kind of PlacedMoprh can be annotated'].
	^ self new
		presenter: documentPresenter;
		annotate: aPlacedMorph;
		yourself! !

!PageModel methodsFor: 'initialization' stamp: 'hlsf 11/15/2024 22:10:49'!
defaultExtent
	^ DySystem defaultPaperSize ! !

!PageModel methodsFor: 'as yet unclassified' stamp: 'hlsf 11/15/2024 22:33:03'!
documentModel
	^ owner documentModel ! !

!PageModel class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:34:58'!
includeInNewMorphMenu
	^ false! !

!PageModelHL methodsFor: 'initialization' stamp: 'hlsf 9/12/2024 12:04:49'!
defaultColor
	^ Color white! !

!PageModelHL methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:46:53'!
drawOn: canvas 
	| y  step width |
	super drawOn: canvas.
	step := 50.
	width := self lineWidth.
	y := step.
 	[ y < extent y ] whileTrue: [
		canvas strokeWidth: width color: `Color blue` do: [
			canvas moveTo: 0 @ y;
				lineTo: extent x @ y ].
            y := y + step ]   ! !

!PageModelHL methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:46:42'!
lineWidth
	^  0.8 / owner scale min: 0.8! !

!PageModelHL methodsFor: 'geometry testing' stamp: 'hlsf 9/12/2024 12:10:57'!
requiresVectorCanvas
	^ true! !

!PageModelGrid methodsFor: 'drawing' stamp: 'hlsf 1/3/2025 09:48:40'!
drawOn: canvas 
	| x  step width |
	super drawOn: canvas.
	step := 50.
	x := step.
	width := self lineWidth.
	[ x < extent x ] whileTrue: [
		canvas strokeWidth: width color: `Color blue` do: [
			canvas moveTo: x @ 0;
				lineTo: x @ extent y.
			x := x + step ]
		]! !

!PageModelPdf methodsFor: 'accessing' stamp: 'hlsf 11/16/2024 13:31:16'!
dpi
	^ dpi ifNil: [dpi := 150]! !

!PageModelPdf methodsFor: 'accessing' stamp: 'hlsf 11/24/2024 13:02:00'!
form
	^ form ifNil: [form := self documentModel pdfFormPage: pageNumber ]! !

!PageModelPdf methodsFor: 'accessing' stamp: 'hlsf 11/15/2024 22:50:23'!
form: aForm
	form := aForm ! !

!PageModelPdf methodsFor: 'accessing' stamp: 'hlsf 11/15/2024 22:50:11'!
pageNumber: integer
	pageNumber := integer! !

!PageModelPdf methodsFor: 'initialization' stamp: 'hlsf 11/24/2024 17:36:44'!
defaultExtent
	^ self form extent! !

!PageModelPdf methodsFor: 'drawing' stamp: 'hlsf 1/4/2025 11:02:33'!
drawOn: canvas
  "   Display reverse: canvas clipRect."
	canvas image: self form at: 0@0! !

!PageModelPdf methodsFor: 'testing' stamp: 'hlsf 11/16/2024 12:37:49'!
is: aSymbol
	^ aSymbol == #PageModelPdf or: [super is: aSymbol ]! !

!PageModelPdf methodsFor: 'updating' stamp: 'hlsf 1/4/2025 18:16:57'!
resampleFrom: oldScale to: newScale in: documentPath
	" Do I need to be resampled "
	| newDpi |
	newDpi := dpi.
	(newScale > 1.5 and: [oldScale < 1.5]) 
		ifTrue: [newDpi := 300].
	((newScale between: 1 and: 1.5) and: [(oldScale between: 1 and: 1.5) not])
		ifTrue: [newDpi := 200].
	((newScale between: 0.6 and: 0.99) and: [(oldScale between: 0.6 and: 0.99) not])
		ifTrue: [newDpi := 150].			
	((newScale between: 0.5 and: 0.59) and: [(oldScale between: 0.5 and: 0.59) not])
		ifTrue: [newDpi := 100].			
	(newScale < 0.49 and: [oldScale > 0.49])
		ifTrue: [newDpi := 75].
	newDpi ~= dpi ifTrue: [
		self sampleAt: newDpi in: documentPath .
		self scaleBy: (self dpi / newDpi) asFloat.
		extent := form extent.
		dpi := newDpi ]! !

!PageModelPdf methodsFor: 'updating' stamp: 'hlsf 11/30/2024 13:07:48'!
sampleAt: newDpi in: documentPath
	| process |
	process := DySystem 
		convert:  documentPath 
		pages:  (pageNumber to: pageNumber)
		dpi: newDpi .
	[process isComplete] whileFalse: [(Delay forMilliseconds: 100) wait].
	form := self documentModel pdfFormPage: pageNumber! !

!PageModelPdf methodsFor: 'object serialization' stamp: 'hlsf 11/24/2024 19:09:38'!
prepareToBeSaved
	form := nil! !

!PageModelPdf methodsFor: 'as yet unclassified' stamp: 'hlsf 1/3/2025 14:46:25'!
knowsOwnLocalBounds
	^ true! !

!PageModelPdf methodsFor: 'as yet unclassified' stamp: 'hlsf 1/3/2025 14:47:10'!
requiresVectorCanvas
	^ false! !

!PageModelPdf methodsFor: 'as yet unclassified' stamp: 'hlsf 1/3/2025 14:47:55'!
wantsContour
	^ false! !

!PageModelPdf class methodsFor: 'instance creation' stamp: 'hlsf 11/16/2024 11:15:42'!
new
	self error: 'Use #newOn: to create new instance'! !

!PageModelPdf class methodsFor: 'instance creation' stamp: 'hlsf 11/16/2024 11:16:04'!
newOn: aForm
	^ self basicNew
		form: aForm;
		initialize! !

!PageContainer methodsFor: 'geometry testing' stamp: 'hlsf 2/9/2025 17:27:48'!
clipsSubmorphs
	^ true! !

!PageContainer methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 18:25:58'!
defaultColor
	^ Color lightGray muchLighter! !

!PageContainer methodsFor: 'accessing' stamp: 'hlsf 2/9/2025 17:41:40'!
flaps
	^ submorphs select: [:aMorph | aMorph is: #Flap]! !

!PageContainer methodsFor: 'as yet unclassified' stamp: 'hlsf 2/9/2025 17:43:06'!
extentChanged: oldExtent
	super extentChanged: oldExtent.
	self flaps do: #fold! !

!PageContainer methodsFor: 'geometry' stamp: 'hlsf 2/13/2025 10:29:51'!
morphCenter
	^ self fullBoundsInOwner center! !

!PageContainer class methodsFor: 'instance creation' stamp: 'hlsf 9/8/2024 18:24:18'!
for: aPage
	^ self new
		addMorphFront: aPage position: 0@0! !

!PageContainer class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:34:09'!
includeInNewMorphMenu
	^ false! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 09:52:14'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 10/26/2024 15:10:11'!
container
	^ container ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 12/18/2024 22:16:33'!
controlsManager
	^ presenter controlsManager! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 11/16/2024 11:01:30'!
model
" The DocumentModel "
	^ presenter model! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 8/31/2024 10:34:28'!
presenter
	^ presenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/2/2024 21:23:41'!
presenter: aPresenter
	presenter := aPresenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 12/25/2024 20:07:58'!
preview
" Shrinkg a bit then cut a piece from the origin with a given extent "
	| shrinkFactor origin |
	origin := 20 @10.
	^ preview ifNil: [
		('compute preview: ', self printString) print.
		shrinkFactor := (self class previewExtent x / currentPage morphWidth ) * 2.
		preview := ((currentPage imageForm: 32) magnifyBy: shrinkFactor) 
			copy: (origin corner: self class previewExtent + origin)]! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 11/24/2024 19:51:30'!
statusBarMessage: aString
	statusBar ifNotNil: [
		statusBar contents: aString;
			adjustExtent ;
			redrawNeeded]
		! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 15:09:59'!
tool
	^ presenter tool! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 12/24/2024 14:16:13'!
buttonColor
	^ Theme current buttonColorFrom: Theme current workspace ! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 09:52:25'!
defaultBorderColor
	^ Theme current transcript! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 09:52:31'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 1/4/2025 18:47:19'!
deleteBitMasks
" Remove all the bitmask of the Stroke Morph "
	pages do: [:aPage |
		aPage paper strokeGroups do: [:aStrokeGroup | aStrokeGroup deleteBitMasks 	] ]! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 2/16/2025 23:23:03'!
initialize
	super initialize.
	self beColumn.
	pages := OrderedCollection new.
	currentPage := PageMorph newOn: presenter model: self model newPageModel .
	container := PageContainer for: currentPage.
	self installFlap.
	pages add: currentPage! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 2/16/2025 23:41:58'!
installFlap
	| flap items |
	items := Array 
		with: (DyboScript new :: title: 'Text' ; code: 'TextModelMorph withText: ''A script test''')
		with: (DyboScript new :: title: 'Workspace' ;code: '| ws | 
ws := Workspace open.
ws delete.
ws layoutMorph').
	flap := Flap label: ' Test scripts ' scripts: items.
	container addMorph: flap.
	flap fold;
		target: PageMorph.
	^ flap! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 12/24/2024 16:30:29'!
installMiniView
	viewType := #mini.
	presenter view: self.
	self 
		addMorph: (self toolbarWith: self miniToolbarSpec)
		layoutSpec: (LayoutSpec fixedHeight: DySystem miniToolbarSize + 4).
	self	addMorphUseAll: container.
	self adoptWidgetsColor: self defaultBorderColor.
	presenter penTool! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 12/24/2024 16:30:46'!
installView
	| row col |
	viewType := #full.
	presenter view: self.
	self 	addMorph: (self toolbarWith: self toolbarSpec)
		layoutSpec: (LayoutSpec fixedHeight: DySystem miniToolbarSize + 4).
	row := LayoutMorph newRow 					addMorphUseAll: container.
	" vertical and zoom wheels at the right "
	col := LayoutMorph newColumn name: #wheelsYZ.
	col addMorph: self zoomWheel layoutSpec: (LayoutSpec fixedExtent: 24@	120).
	#(zoom100 fitWidth fitScreen) do: [:aZoomTool | 		col addMorph: 
		(self button: aZoomTool state: #isTool: size: DySystem miniToolbarSize)].	
	col	addMorphUseAll: DyControlsManager spacer;
		addMorph: self verticalWheel layoutSpec: (LayoutSpec fixedExtent: 24@	120).
	row addMorph: col  layoutSpec: (LayoutSpec fixedWidth: 24 + 1 proportionalHeight: 1).
	self addMorph: row.
	
	" status bar and horizontal wheel at the bottom "
	row := LayoutMorph newRow name: #wheelX.
	row addMorph: self pageCounter layoutSpec: 	(LayoutSpec fixedWidth: 12) ;
		addMorphUseAll: self statusBarInScroller;
		addMorph:self horizontalWheel 		layoutSpec: 		(LayoutSpec 	fixedExtent: 120 @ 24);
		addMorph: DyControlsManager spacer layoutSpec: 			(LayoutSpec 		fixedExtent: 24 asPoint).
	self addMorph: row layoutSpec: (LayoutSpec fixedHeight: 24).
	self adoptWidgetsColor: self defaultBorderColor.
	presenter penTool.
	self adjustPageCounter! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 12/24/2024 15:06:52'!
miniToolbarSpec
" Toolbar for a one page document "
	^ #(pen eraser highlighter undo redo 
	blank
	pointer group)! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 1/4/2025 18:46:51'!
toolbarSpec
	^ #(saveDoc
	blank
	pen eraser highlighter undo redo 
	blank
	pointer group 
	blank
	firstPage previousPage insertPage deletePage nextPage lastPage)! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 14:34:50'!
currentPage
	^ currentPage ! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 14:37:15'!
currentPageIndex
	^ pages indexOf: currentPage ! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 16:10:16'!
deletePage
" delete the current page "
	| newIndex |
	self numberOfPages > 1 ifTrue: [
		newIndex := self currentPageIndex min: self numberOfPages - 1.
		pages remove: currentPage.
		self goPage: (self pageAt: newIndex)		 		]! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 15:45:59'!
firstPage
	^ self goPage: pages first! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 12/18/2024 19:11:49'!
goPage: aPage
" I alway return the current page, whether the document jump to a new page or not "
	(aPage notNil and: [aPage ~= currentPage]) ifTrue: [
		container replaceSubmorph: currentPage by: aPage.
		currentPage := aPage.
		self adjustPageCounter.
		presenter commandsManager release.
		presenter resetTool].
	^ currentPage! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 11/16/2024 11:22:32'!
insertPage
	self insertPage: (PageMorph newOn: presenter model: self model newPageModel)! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 11/16/2024 11:22:11'!
insertPage: aPage
" insert a page after the current page "
	^ self goPage: (
		pages 
			add: aPage 
			after: currentPage)! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 15:39:43'!
lastPage
	^ self goPage: pages last! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 15:40:09'!
nextPage
	^ self goPage: (self pageAt: self currentPageIndex + 1)
! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 14:39:00'!
numberOfPages
	^ pages size! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 15:14:37'!
pageAt: anIndex
	^ pages at: anIndex ifAbsent: nil! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 10/26/2024 15:39:57'!
previousPage
	^ self goPage: (self pageAt: self currentPageIndex - 1)
! !

!DocumentView methodsFor: 'update' stamp: 'hlsf 12/18/2024 19:11:49'!
adjustPageCounter
	self pageCounter 
		contents: (String streamContents: [:str | 
			str nextPutAll: self currentPageIndex printString;
				nextPutAll: '/';
				nextPutAll: self numberOfPages printString 		])! !

!DocumentView methodsFor: 'update' stamp: 'hlsf 12/22/2024 11:53:16'!
resetPreview
	preview := nil
	! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 12/24/2024 16:31:45'!
comeFullyUpOnReload: smartRefStream
	submorphs := #().
	viewType == #mini
		ifTrue: [self installMiniView]
		ifFalse: [	self installView].
	'view came to life' print! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 12/28/2024 20:34:59'!
prepareToBeSaved
	preview := nil! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 12/23/2024 13:52:58'!
storeDataOn: aDataStream
	| backup |
	backup := self backupThenNilAttributes.
	super storeDataOn: aDataStream.
	self restoreAttributes: backup! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 12/24/2024 15:50:03'!
unsavedAttributes
	^# (submorphs statusBar pageCount)! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 12/24/2024 15:40:39'!
button: symbol state: stateGetter size: size
	"array first = menu label or button label
	array second = button form = section mode
	array third = symbol callback
	array fourth = help string	 "	
	| array |
	array := self perform: (symbol, #ButtonData) asSymbol.
	^ ButtonMorph 
		model: presenter
		stateGetter: stateGetter
		action: array third ::
		stateArgument: (stateGetter isUnary ifTrue: [nil] ifFalse: [array second]);
		icon: (DySystem icons getForm: array second ofSize: size);
		setBalloonText: array fourth;
		color: self defaultColor ;
		selectedColor: self buttonColor ;
		borderColor: self defaultColor darker;
		borderWidth: 2;
		morphExtent: (size  * 1.3) rounded asPoint;
		yourself	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 12/24/2024 14:09:58'!
horizontalWheel 
	^ (WheelMorph target: presenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 1; 
		setBalloonText: 'Scroll the document to the left or right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 12/18/2024 22:16:33'!
openCircularToolbar
	self controlsManager documentCircularToolbar 
		morphPosition: self activeHand morphPosition ;
		openInWorld ! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 11/24/2024 19:52:15'!
pageCounter
"a view of the opage count"
	^ pageCount ifNil: [
		pageCount := TextParagraphMorph new
			color: Color transparent;
			padding: 4@4;
			borderWidth: 0;
			yourself	]
	
	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 11/24/2024 19:53:57'!
statusBar
"A bar to print contextual information"
	^ statusBar ifNil: [
		statusBar := TextParagraphMorph new
			color: Color transparent;
			borderWidth: 0;
			setHeightOnContent ;
			yourself	]
	
	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 11/24/2024 19:54:03'!
statusBarInScroller
	^ PluggableScrollPane new scroller: self statusBar; 
		borderWidth: 2;
		borderColor: Color transparent ;
		color: Color transparent;
		yourself! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 1/4/2025 18:43:18'!
toolbarWith: aSpec
	| toolbar buttonWidth |
	toolbar := LayoutMorph newRow separation: 2.
	buttonWidth := DySystem miniToolbarSize.
	aSpec do: [:aTool | 
		aTool 
			caseOf: {
				[ #spacer ] -> [ toolbar addMorphUseAll: DyControlsManager spacer ] .
				[ #blank ] -> [ toolbar addMorph: (DyControlsManager spacer: buttonWidth) ] }
			otherwise: [		
				toolbar addMorph: (				
					self 	button: aTool  state: #isTool: size: buttonWidth )] ].
	^ toolbar! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 12/24/2024 14:10:09'!
verticalWheel 
	^  (WheelMorph target: self presenter actionSelector: #moveOYAction:)
		beVertical; 
		factor: 1; 
		setBalloonText: 'Scroll the document up or down.' translated; 
		borderWidth: 3;
		color: Color orange;
		borderColor: Color  black ;
		yourself		
		! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 12/24/2024 14:10:18'!
zoomWheel 
	^  (WheelMorph target: self presenter actionSelector: #zoomAction:)
		beVertical; 
		factor: 0.005; 
		setBalloonText: 'Zoom in or out the document.' translated; 
		borderWidth: 3;
		color: Color gray;
		borderColor: Color black;
		yourself! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:03'!
deletePageButtonData
	^ {'Delete page' translated . 
	#deletePage . 
	#deletePage . 
	'Delete the current page.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:12'!
eraserButtonData
	^ {EraserTool title. 
	EraserTool iconName . 
	EraserTool action . 
	EraserTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:20'!
firstPageButtonData
	^ {'First page' translated . 
	#firstPage . 
	#firstPage . 
	'Go to the FIRST page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:32'!
fitScreenButtonData
	^ {'Fit screen' translated . 
	#fitScreen . 
	#pageFitScreen . 
	'Scale the page to make it entirely visible.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:41'!
fitWidthButtonData
	^ {'Fit width' translated . 
	#fitWidth . 
	#fitWidthPage . 
	'Scale the page to fit the window width.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:49'!
groupButtonData
	^ {GroupTool title. 
	GroupTool iconName . 
	GroupTool action . 
	GroupTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:20:55'!
highlighterButtonData
	^ {HighlighterTool title. 
	HighlighterTool iconName . 
	HighlighterTool action. 
	HighlighterTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:21:11'!
insertPageButtonData
	^ {'New page' translated . 
	#insertPage . 
	#insertPage . 
	'Insert a new page after the current one.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:22:31'!
lastPageButtonData
	^ {'Last page' translated . 
	#lastPage . 
	#lastPage . 
	'Go to the LAST page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:22:38'!
loadDocButtonData
	^ {'Save document' translated . 
	#load . 
	#loadDocument . 
	'Load a document from my data.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:22:44'!
nextPageButtonData
	^ {'Next page' translated . 
	#nextObject . 
	#nextPage . 
	'Go to the next page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:22:58'!
penButtonData
	^ {PenTool title. 
	PenTool iconName . 
	PenTool action . 
	PenTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:05'!
pointerButtonData
	^ {PointerTool title. 
	PointerTool iconName . 
	PointerTool action . 
	PointerTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:12'!
previousPageButtonData
	^ {'Previous page' translated . 
	#previousObject . 
	#previousPage . 
	'Go to the previous page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:19'!
redoButtonData
	^ {'Redo' translated . 
	#redo . 
	#redoAction . 
	'Redo your last undone action.' translated }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:25'!
saveDocButtonData
	^ {'Save document' translated . 
	#save . 
	#saveDocument . 
	'Save the current document in my data.' translated } ! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:31'!
undoButtonData
	^ {'Undo' translated . 
	#undo . 
	#undoAction . 
	'Undo your last action.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/24/2024 14:23:38'!
zoom100ButtonData
	^ {'Zoom 100%' translated . 
	#zoom100 . 
	#zoomPageTo100 . 
	'Zoom the page to its natural scale of 1:1 or 100%.' translated  }! !

!DocumentView class methodsFor: 'ui' stamp: 'hlsf 12/23/2024 10:24:19'!
previewExtent
	^ `1920@1080 // 10`! !

!DocumentView class methodsFor: 'ui' stamp: 'hlsf 12/12/2024 19:00:25'!
previewGap
" Gap between two previews in a row "
	^ 12! !

!DocumentView class methodsFor: 'instance creation' stamp: 'hlsf 12/24/2024 15:16:19'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter;
		initialize;
		yourself! !

!DocumentView class methodsFor: 'new-morph participation' stamp: 'hlsf 1/9/2025 20:32:52'!
includeInNewMorphMenu
	^ false! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 3/31/2023 22:22:27'!
covariance: y
	^ (self * y) sum / self size - (self mean * y mean)! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 4/1/2023 15:28:39'!
regression: y
"Linear regression (least-squares), return a, b of y=ax+b"
	| a b v |
	v := self variance.
	v isZero ifTrue: [^nil]. "points are vertically aligned"
	a := (self covariance: y) / v.
	b := y mean - (a * self mean).
	^ Array with: a with: b! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 3/31/2023 22:01:21'!
variance
	^ self squared sum / self size - self mean squared! !

!DateAndTime methodsFor: '*Document' stamp: 'hlsf 11/14/2024 23:24:31'!
filenamePrintOn: aStream
	"
	As filename that can be sorted, with an accuraccy  of 1 second
	String streamContents: [ :strm | DateAndTime now sortFilenamePrintOn: strm ] .
	"
	
	| year month day |
	self dayMonthYearDo: [ :d :m :y | year := y. month := m. day := d ].
	year negative
		ifTrue: [ aStream nextPut: $- ].
	
	aStream
		nextPutAll: (year abs printString padded: #left to: 4 with: $0);
		nextPut: $-;
		nextPutAll: (month printString padded: #left to: 2 with: $0);
		nextPut: $-;
		nextPutAll: (day printString padded: #left to: 2 with: $0);
		nextPut: $-;
		nextPutAll: (self hour printString padded: #left to: 2 with: $0);
		nextPut: $h;
		nextPutAll: (self minute printString padded: #left to: 2 with: $0);
		nextPut: $m;
		nextPutAll: (self second printString padded: #left to: 2 with: $0);
		nextPut: $s! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 1/30/2025 12:30:29'!
addEditAnnotedHandle: aHaloSpec 
		(self addHandle: aHaloSpec )
		mouseDownSelector: #doInspect
! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 1/22/2025 22:42:00'!
addInspectHandle: handleSpec
	(self addHandle: handleSpec)
		mouseDownSelector: #doInspect
! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 2/13/2025 11:36:41'!
addResizeAnnotedHandle: haloSpec

	target annoted okayToResizeEasily ifTrue: [
		^(self addHandle: haloSpec)
			mouseDownSelector: #startResize:with:;
			mouseMoveSelector: #doResizeAnnoted:with: ].

	target annoted okayToScaleEasily ifTrue: [
		^(self addHandle: haloSpec)
			mouseDownSelector: #startScaleAnnoted:with:;
			mouseMoveSelector: #doScaleAnnoted:with: ].! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 1/22/2025 22:48:01'!
doInspect
	^ target inspectAnnoted ! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 1/23/2025 19:34:51'!
doResizeAnnoted: evt with: resizeHandle
	"Called while the mouse is down in the grow handle"

	| newExtent center |
	evt hand obtainHalo: self.
	center := target morphCenter.
	newExtent := (evt eventPosition - target annoted positionInWorld) - positionOffset.
	(newExtent x = 0 or: [newExtent y = 0]) ifTrue: [^ self].
	target annoted extentInWorld: newExtent.
	target adjustBounds; 
		morphCenter: center.
	resizeHandle positionInWorld: evt eventPosition - (resizeHandle morphExtent // 2).
	self redrawNeeded.! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 2/13/2025 11:43:41'!
doScaleAnnoted: evt with: scaleHandle
	"Update the scale of my target if it is scalable."
	| scale center |
	evt hand obtainHalo: self.
	scale := (evt eventPosition - target annoted positionInWorld) rho * scaleOffset.
	scale = 1.0
		ifTrue: [scaleHandle color: `Color lightBlue`]
		ifFalse: [scaleHandle color: `Color blue`].
	scaleHandle submorphsDo: [:m | m color: scaleHandle color makeForegroundColor].
	
	" We want repositionning at this center before scaling "
	center := target morphCenter. 
	target scale: scale;
		morphCenter: center.
	scaleHandle positionInWorld: evt eventPosition - (scaleHandle morphExtent // 2).
	self redrawNeeded.! !

!HaloMorph methodsFor: '*Document' stamp: 'hlsf 1/23/2025 19:25:08'!
startScaleAnnoted: evt with: scaleHandle
	"Initialize scale of my target if it is scalable."

	evt hand obtainHalo: self.						"Make sure the event's hand correlates with the receiver"

	self removeAllHandlesBut: scaleHandle.  "remove all other handles"
	scaleOffset := target scale / (evt eventPosition - target annoted positionInWorld) rho.! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:57:36'!
haloAnnDismissIcon
	^ self icons
		at: #haloDismissAnnIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #discard
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 16:47:50'!
haloAnnDragIcon
	^ self icons
		at: #haloAnnDragIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #drag
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:52:21'!
haloAnnEditIcon
"Edit annoted document "
	^ self icons
		at: #haloEditAnnIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #edit
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:42:16'!
haloAnnHelpIcon
	^ self icons
		at: #haloAnnHelpIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #help
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:32:32'!
haloAnnInspectIcon
	^ self icons
		at: #haloAnnInspectIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #inspect
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:17:32'!
haloAnnResizeIcon
	^ self icons
		at: #haloAnnResizeIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #resize
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*Document' stamp: 'hlsf 2/2/2025 17:36:42'!
haloAnnRotateIcon
	^ self icons
		at: #haloAnnRotateIcon
		ifAbsentPut: [ (
			DySystem icons 
				getForm: #rotate
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloHandleMorph methodsFor: '*Document' stamp: 'hlsf 1/25/2025 19:07:05'!
handlesMouseOver: evt
	^ true! !

!HaloHandleMorph methodsFor: '*Document' stamp: 'hlsf 1/25/2025 19:14:00'!
mouseEnter: evt
	owner target removeAlarm: #removeHalo! !

!Flap methodsFor: '*Document' stamp: 'hlsf 2/16/2025 23:10:10'!
scripts: dyboScripts
	objects := dyboScripts collect: [:each |
		FlapItem 
			object: each 
			image: each icon
			buttons: nil 
			label: each title ::
			flap: self;
			setProperty: #allowsItemDrag toValue: true;
			adoptWidgetsColor: borderColor;
			borderWidth: 1]! !

!Flap class methodsFor: '*Document' stamp: 'hlsf 2/16/2025 23:02:55'!
label: aString emphasis: emphasis scripts: dyboScripts
	| flap |
	flap := self contents: aString font: nil emphasis: emphasis.
	flap scripts: dyboScripts.
	^ flap
	
! !

!Flap class methodsFor: '*Document' stamp: 'hlsf 2/16/2025 23:06:03'!
label: aString scripts: dyboScripts
	^ self label: aString emphasis: 0 scripts: dyboScripts 
! !
