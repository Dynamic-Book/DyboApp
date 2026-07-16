'From Cuis7.9 [latest update: #8056] on 16 July 2026 at 1:13:31 pm'!
'Description '!
!provides: 'DyboDoc' 1 254!
!requires: 'Commander' 1 7 nil!
!requires: 'DKM-Physics-GasSimulation' 1 11 nil!
!requires: 'DKM-Extention' 1 1 nil!
!requires: 'UI-Click-Select' 1 78 nil!
!requires: 'SimplifiedDebugger' 1 0 nil!
!requires: 'DKM-Math-Geometry' 1 10 nil!
!requires: 'UI-Panel' 1 122 nil!
!requires: 'DyboTools-Geometry' 1 26 nil!
!requires: 'DKM-History-Timeline' 1 2 nil!
SystemOrganization addCategory: #'DyboDoc-Model'!
SystemOrganization addCategory: #'DyboDoc-Presenter'!
SystemOrganization addCategory: #'DyboDoc-Presenter-Command'!
SystemOrganization addCategory: #'DyboDoc-Presenter-Tool'!
SystemOrganization addCategory: #'DyboDoc-Script'!
SystemOrganization addCategory: #'DyboDoc-View'!


!classDefinition: #Pen category: #'DyboDoc-Model'!
Object subclass: #Pen
	instanceVariableNames: 'color width adjustWidth threshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'Pen class' category: #'DyboDoc-Model'!
Pen class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier category: #'DyboDoc-Model'!
Object subclass: #StrokerBezier
	instanceVariableNames: 'paper strokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'StrokerBezier class' category: #'DyboDoc-Model'!
StrokerBezier class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2 category: #'DyboDoc-Model'!
StrokerBezier subclass: #StrokerBezier2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'StrokerBezier2 class' category: #'DyboDoc-Model'!
StrokerBezier2 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2XP category: #'DyboDoc-Model'!
StrokerBezier2 subclass: #StrokerBezier2XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'StrokerBezier2XP class' category: #'DyboDoc-Model'!
StrokerBezier2XP class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3 category: #'DyboDoc-Model'!
StrokerBezier subclass: #StrokerBezier3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'StrokerBezier3 class' category: #'DyboDoc-Model'!
StrokerBezier3 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3XP category: #'DyboDoc-Model'!
StrokerBezier3 subclass: #StrokerBezier3XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'StrokerBezier3XP class' category: #'DyboDoc-Model'!
StrokerBezier3XP class
	instanceVariableNames: ''!

!classDefinition: #Document category: #'DyboDoc-Presenter'!
Object subclass: #Document
	instanceVariableNames: 'tool pen highlighter eraser commandsManager model view savesReal isSaved controlsManager'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter'!
!classDefinition: 'Document class' category: #'DyboDoc-Presenter'!
Document class
	instanceVariableNames: ''!

!classDefinition: #Command category: #'DyboDoc-Presenter-Command'!
Object subclass: #Command
	instanceVariableNames: 'domain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'Command class' category: #'DyboDoc-Presenter-Command'!
Command class
	instanceVariableNames: ''!

!classDefinition: #ErasingCommand category: #'DyboDoc-Presenter-Command'!
Command subclass: #ErasingCommand
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'ErasingCommand class' category: #'DyboDoc-Presenter-Command'!
ErasingCommand class
	instanceVariableNames: ''!

!classDefinition: #ErasingAnnotatorCommand category: #'DyboDoc-Presenter-Command'!
ErasingCommand subclass: #ErasingAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'ErasingAnnotatorCommand class' category: #'DyboDoc-Presenter-Command'!
ErasingAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveAnnotatorCommand category: #'DyboDoc-Presenter-Command'!
Command subclass: #MoveAnnotatorCommand
	instanceVariableNames: 'annotator delta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'MoveAnnotatorCommand class' category: #'DyboDoc-Presenter-Command'!
MoveAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveGroupCommand category: #'DyboDoc-Presenter-Command'!
Command subclass: #MoveGroupCommand
	instanceVariableNames: 'selection delta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'MoveGroupCommand class' category: #'DyboDoc-Presenter-Command'!
MoveGroupCommand class
	instanceVariableNames: ''!

!classDefinition: #MoveGroupInAnnotatorCommand category: #'DyboDoc-Presenter-Command'!
MoveGroupCommand subclass: #MoveGroupInAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'MoveGroupInAnnotatorCommand class' category: #'DyboDoc-Presenter-Command'!
MoveGroupInAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #WritingCommand category: #'DyboDoc-Presenter-Command'!
Command subclass: #WritingCommand
	instanceVariableNames: 'strokeGroup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'WritingCommand class' category: #'DyboDoc-Presenter-Command'!
WritingCommand class
	instanceVariableNames: ''!

!classDefinition: #WritingAnnotatorCommand category: #'DyboDoc-Presenter-Command'!
WritingCommand subclass: #WritingAnnotatorCommand
	instanceVariableNames: 'bounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'WritingAnnotatorCommand class' category: #'DyboDoc-Presenter-Command'!
WritingAnnotatorCommand class
	instanceVariableNames: ''!

!classDefinition: #CommandManager category: #'DyboDoc-Presenter-Command'!
Object subclass: #CommandManager
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'CommandManager class' category: #'DyboDoc-Presenter-Command'!
CommandManager class
	instanceVariableNames: ''!

!classDefinition: #PageTool category: #'DyboDoc-Presenter-Tool'!
Object subclass: #PageTool
	instanceVariableNames: 'state presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PageTool class' category: #'DyboDoc-Presenter-Tool'!
PageTool class
	instanceVariableNames: ''!

!classDefinition: #EraserTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #EraserTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'EraserTool class' category: #'DyboDoc-Presenter-Tool'!
EraserTool class
	instanceVariableNames: ''!

!classDefinition: #GroupTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #GroupTool
	instanceVariableNames: 'corner selection paper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'GroupTool class' category: #'DyboDoc-Presenter-Tool'!
GroupTool class
	instanceVariableNames: ''!

!classDefinition: #HighlighterTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #HighlighterTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'HighlighterTool class' category: #'DyboDoc-Presenter-Tool'!
HighlighterTool class
	instanceVariableNames: ''!

!classDefinition: #PenTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #PenTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PenTool class' category: #'DyboDoc-Presenter-Tool'!
PenTool class
	instanceVariableNames: ''!

!classDefinition: #PointerTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #PointerTool
	instanceVariableNames: 'grabbed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PointerTool class' category: #'DyboDoc-Presenter-Tool'!
PointerTool class
	instanceVariableNames: ''!

!classDefinition: #ShapeTool category: #'DyboDoc-Presenter-Tool'!
PageTool subclass: #ShapeTool
	instanceVariableNames: 'shape shapeClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'ShapeTool class' category: #'DyboDoc-Presenter-Tool'!
ShapeTool class
	instanceVariableNames: ''!

!classDefinition: #PageToolState category: #'DyboDoc-Presenter-Tool'!
Object subclass: #PageToolState
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PageToolState class' category: #'DyboDoc-Presenter-Tool'!
PageToolState class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateErasing category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #EraserToolStateErasing
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'EraserToolStateErasing class' category: #'DyboDoc-Presenter-Tool'!
EraserToolStateErasing class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #EraserToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'EraserToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
EraserToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateDragging category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #GroupToolStateDragging
	instanceVariableNames: 'prevPosition initialPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'GroupToolStateDragging class' category: #'DyboDoc-Presenter-Tool'!
GroupToolStateDragging class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateGrabbing category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #GroupToolStateGrabbing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'GroupToolStateGrabbing class' category: #'DyboDoc-Presenter-Tool'!
GroupToolStateGrabbing class
	instanceVariableNames: ''!

!classDefinition: #GroupToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #GroupToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'GroupToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
GroupToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #HighligtherToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'HighligtherToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
HighligtherToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #PenToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PenToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
PenToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateWriting category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #PenToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PenToolStateWriting class' category: #'DyboDoc-Presenter-Tool'!
PenToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateWriting category: #'DyboDoc-Presenter-Tool'!
PenToolStateWriting subclass: #HighligtherToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'HighligtherToolStateWriting class' category: #'DyboDoc-Presenter-Tool'!
HighligtherToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #PointerToolStateDragging category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #PointerToolStateDragging
	instanceVariableNames: 'initialPosition prevPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PointerToolStateDragging class' category: #'DyboDoc-Presenter-Tool'!
PointerToolStateDragging class
	instanceVariableNames: ''!

!classDefinition: #PointerToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #PointerToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'PointerToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
PointerToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #ShapeToolStateDrawing category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #ShapeToolStateDrawing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'ShapeToolStateDrawing class' category: #'DyboDoc-Presenter-Tool'!
ShapeToolStateDrawing class
	instanceVariableNames: ''!

!classDefinition: #ShapeToolStateNeutral category: #'DyboDoc-Presenter-Tool'!
PageToolState subclass: #ShapeToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Tool'!
!classDefinition: 'ShapeToolStateNeutral class' category: #'DyboDoc-Presenter-Tool'!
ShapeToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #DKMScript category: #'DyboDoc-Script'!
Object subclass: #DKMScript
	instanceVariableNames: 'presenter icon code description title file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Script'!
!classDefinition: 'DKMScript class' category: #'DyboDoc-Script'!
DKMScript class
	instanceVariableNames: ''!

!classDefinition: #DKMScriptLibrary category: #'DyboDoc-Script'!
Object subclass: #DKMScriptLibrary
	instanceVariableNames: 'scripts targetPage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Script'!
!classDefinition: 'DKMScriptLibrary class' category: #'DyboDoc-Script'!
DKMScriptLibrary class
	instanceVariableNames: ''!

!classDefinition: #CommandStack category: #'DyboDoc-Presenter-Command'!
ReadWriteStream subclass: #CommandStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Presenter-Command'!
!classDefinition: 'CommandStack class' category: #'DyboDoc-Presenter-Command'!
CommandStack class
	instanceVariableNames: ''!

!classDefinition: #DocumentModel category: #'DyboDoc-Model'!
ActiveModel subclass: #DocumentModel
	instanceVariableNames: 'pageBackground owner dirName title'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'DocumentModel class' category: #'DyboDoc-Model'!
DocumentModel class
	instanceVariableNames: ''!

!classDefinition: #Bezier2Morph category: #'DyboDoc-View'!
Morph subclass: #Bezier2Morph
	instanceVariableNames: 'color width p1 p2 c1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'Bezier2Morph class' category: #'DyboDoc-View'!
Bezier2Morph class
	instanceVariableNames: ''!

!classDefinition: #Bezier3Morph category: #'DyboDoc-View'!
Bezier2Morph subclass: #Bezier3Morph
	instanceVariableNames: 'c2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'Bezier3Morph class' category: #'DyboDoc-View'!
Bezier3Morph class
	instanceVariableNames: ''!

!classDefinition: #LineStrokeMorph category: #'DyboDoc-View'!
Morph subclass: #LineStrokeMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'LineStrokeMorph class' category: #'DyboDoc-View'!
LineStrokeMorph class
	instanceVariableNames: ''!

!classDefinition: #ShapeMorph category: #'DyboDoc-View'!
Morph subclass: #ShapeMorph
	instanceVariableNames: 'color width startPoint endPoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'ShapeMorph class' category: #'DyboDoc-View'!
ShapeMorph class
	instanceVariableNames: ''!

!classDefinition: #LineShape category: #'DyboDoc-View'!
ShapeMorph subclass: #LineShape
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'LineShape class' category: #'DyboDoc-View'!
LineShape class
	instanceVariableNames: ''!

!classDefinition: #RectangularShape category: #'DyboDoc-View'!
ShapeMorph subclass: #RectangularShape
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'RectangularShape class' category: #'DyboDoc-View'!
RectangularShape class
	instanceVariableNames: ''!

!classDefinition: #StrokeGroupMorph category: #'DyboDoc-View'!
PlacedMorph subclass: #StrokeGroupMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'StrokeGroupMorph class' category: #'DyboDoc-View'!
StrokeGroupMorph class
	instanceVariableNames: ''!

!classDefinition: #PageMorph category: #'DyboDoc-View'!
BoxMorph subclass: #PageMorph
	instanceVariableNames: 'pageBackground paper presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'PageMorph class' category: #'DyboDoc-View'!
PageMorph class
	instanceVariableNames: ''!

!classDefinition: #PaperMorph category: #'DyboDoc-View'!
BoxMorph subclass: #PaperMorph
	instanceVariableNames: 'stroker samples sampleIndex lineMorphs lastMousePosition presenter selectionMorph currentStrokeGroup distanceThreshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'PaperMorph class' category: #'DyboDoc-View'!
PaperMorph class
	instanceVariableNames: ''!

!classDefinition: #AnnotatorMorph category: #'DyboDoc-View'!
PaperMorph subclass: #AnnotatorMorph
	instanceVariableNames: 'annotatedMorph script frozen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'AnnotatorMorph class' category: #'DyboDoc-View'!
AnnotatorMorph class
	instanceVariableNames: ''!

!classDefinition: #PageBackground category: #'DyboDoc-Model'!
ColoredBoxMorph subclass: #PageBackground
	instanceVariableNames: 'step viewport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackground class' category: #'DyboDoc-Model'!
PageBackground class
	instanceVariableNames: ''!

!classDefinition: #PageBackgroundBlank category: #'DyboDoc-Model'!
PageBackground subclass: #PageBackgroundBlank
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackgroundBlank class' category: #'DyboDoc-Model'!
PageBackgroundBlank class
	instanceVariableNames: ''!

!classDefinition: #PageBackgroundGrid category: #'DyboDoc-Model'!
PageBackground subclass: #PageBackgroundGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackgroundGrid class' category: #'DyboDoc-Model'!
PageBackgroundGrid class
	instanceVariableNames: ''!

!classDefinition: #PageBackgroundHL category: #'DyboDoc-Model'!
PageBackground subclass: #PageBackgroundHL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackgroundHL class' category: #'DyboDoc-Model'!
PageBackgroundHL class
	instanceVariableNames: ''!

!classDefinition: #PageBackgroundMillimeter category: #'DyboDoc-Model'!
PageBackground subclass: #PageBackgroundMillimeter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackgroundMillimeter class' category: #'DyboDoc-Model'!
PageBackgroundMillimeter class
	instanceVariableNames: ''!

!classDefinition: #PageBackgroundPdf category: #'DyboDoc-Model'!
PageBackground subclass: #PageBackgroundPdf
	instanceVariableNames: 'form dpi'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Model'!
!classDefinition: 'PageBackgroundPdf class' category: #'DyboDoc-Model'!
PageBackgroundPdf class
	instanceVariableNames: ''!

!classDefinition: #PageContainer category: #'DyboDoc-View'!
ColoredBoxMorph subclass: #PageContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'PageContainer class' category: #'DyboDoc-View'!
PageContainer class
	instanceVariableNames: ''!

!classDefinition: #DocumentView category: #'DyboDoc-View'!
LinearLayoutMorph subclass: #DocumentView
	instanceVariableNames: 'presenter pages currentPage container statusBar pageCount preview viewType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-View'!
!classDefinition: 'DocumentView class' category: #'DyboDoc-View'!
DocumentView class
	instanceVariableNames: ''!

!classDefinition: #DKMScriptEditor category: #'DyboDoc-Script'!
DialogPanel subclass: #DKMScriptEditor
	instanceVariableNames: 'annotator plugView codeView pane scriptProcess playButton codeAndViewPanel debugger docView'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDoc-Script'!
!classDefinition: 'DKMScriptEditor class' category: #'DyboDoc-Script'!
DKMScriptEditor class
	instanceVariableNames: ''!


!Pen commentStamp: '<historical>' prior: 0!
Depending on the use of the pen, we have different threshold
- color : color of the pen, including transparent color
- width: standard fixed width
- adjustWidth: does the width depends on the speed/pressure of the pen
- threshold : the minimum squared distance between two stroke with paper morph at scale 1!

!StrokerBezier2 commentStamp: 'hlsf 26/Mar/2026 10:46:11' prior: 0!
Given samples of mouse positions, I compute a new Bézier quadratic stroke . 
My curve is only C0, not C1, so it has rough edge.
I can be subclassed to adjust my behavior.!

!StrokerBezier2XP commentStamp: 'hlsf 26/Mar/2026 10:46:24' prior: 0!
Experiment on 2-Bezier. 
Given samples of mouse positions and previous stroke, I compute a new Bézier quadratic stroke . 
The Curve is C1, the common point of two bezier curves is recompute to ensure C1 : it is recomputed as 
the middle of the controls point of the two curve. This smooth the curve but it makes  it unaccurate to the user hand stroke.
So we migrate the control point a bit away from its sampled position.!

!StrokerBezier3 commentStamp: 'hlsf 26/Mar/2026 10:46:29' prior: 0!
Compute a cubic Bézier curve.
Given samples of mouse positions and previous stroke, I compute a new Bézier cubic stroke . 
My curve is only C0, not C1, so it has rough edge.
I can be subclassed to adjust my behavior.!

!StrokerBezier3XP commentStamp: 'hlsf 26/Mar/2026 10:47:41' prior: 0!
Given samples of mouse positions and previous stroke, I compute a new Bézier cubic stroke . 
The common point of the consecutive curve is repositionned, to smooth a bit the curve, it is not exactly C1 though!

!Document commentStamp: '<historical>' prior: 0!
The Presenter of the Document to handle the controllers and associated callbacks of the tools.
- saveReals: indicate to save me as a Proxy or as serialized data // Or saving as a PDF document (true)!

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
- corner : a corner of the selection rectangle, the first selected one
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

!ShapeTool commentStamp: '<historical>' prior: 0!
Let the user draw quickly basic geometric shape as line, (circle, rectangle to be implemented)
- shape: a Morph class representing the type of shape I will draw. It responds to class side protocol
 #startPoint:endPoint: and the instance side protocol #endPoint:!

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

!DKMScript commentStamp: '<historical>' prior: 0!
My instances represent each particular instance of a DKM, described with a specific code.
Each instance of the same DKM are different by the code. 
My metadata si extracted from my code, see class side.
I am also the model in the DKMScriptEditor.
All my instances are collected in the DKMScriptLibrary, for reuse by the user.
Each script returns a View inserted in an Annotator itself added to a Document.

- presenter : the presenter class of a specific DKM
- code: the script expressing a specific instance of the DKM

!

!DKMScriptLibrary commentStamp: 'hlsf 9/Mar/2026 21:07:00' prior: 0!
I am a light libray of existing DKMScript instances on disk. These instances on disk are Smalltalk scripts coming with a header (in comment) with title, description, tags, author and its presenter class (a DKMPresenter subclass)

I am light because I don't create instance of DKMScript for each representative in disk. Instead, I group the information about the scripts in a dictionary. Therefore, I scan for the existing files (DKM scripts) on the host by reading their file header, then I present them to the user in a hierarchy of menus

 - I scan in Dybo system place and user place
 - I categorize the scripts by parsing its file headers (in comment)!

!CommandStack commentStamp: '<historical>' prior: 0!
I am stack of command to execute or to unexecute user action in a Document!

!DocumentModel commentStamp: '<historical>' prior: 0!
- owner: my onwer, a Topic or a Task
- dirName : based on the creation time of a Document. It is used to create a dedicated directory on disk in the tasks or topic directory
- title : the user can adjust it if needed. It falls back to dirName when nil
- relPath, the path my folder is saved in with my associate data, relatively to userDataPath. Those my fullPath is userDataPath / relPath / dirName
- pageBackground can be either 
 1. a path to a pdf document used as a model for PageModelPdf. Each page of the Document use a PDF page as its model
 2. a class in the  PageBackground hierachy, the default background for each page of the Document
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
 - a page background providing the page extent and the background
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

!AnnotatorMorph commentStamp: 'hlsf 15/Jul/2026, 10:21:15 am (UTC)' prior: 0!
My goal is to annotate with handwriting a placed morph (annotatedMorph). 
My extent is adjusted to cover my annotated object and also the user handwriting. 
My extent expands to enclosed new handwritings. It shrinks when handwritings are deleted.
- script: instance of a DyboScript. An executed script return a view referenced by the annotedMorph
- annotatedMorph:  the view returned by the script when executed, it is then inserted in me!!
- frozen: is my annotatedMorph in a frozen state, i.e. the user can interact with it, only it can 
be annoted!

!PageBackground commentStamp: '<historical>' prior: 0!
An abstract model for page background
In essence it provides the extent and the background of a PageMorph.
It is a Morph too so it draws the background and it is owned by a PageMorph!

!PageBackgroundGrid commentStamp: '<historical>' prior: 0!
A white background with blue grids!

!PageBackgroundHL commentStamp: '<historical>' prior: 0!
A white background with blue horizontal lines!

!PageBackgroundPdf commentStamp: '<historical>' prior: 0!
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

!DKMScriptEditor commentStamp: '<historical>' prior: 0!
An editor to edit DKM script. 
- At the left, the view to edit the Smalltalk script and at the right a receptacle to plug the view resulting of the compilation and execution of the script.
- There is a toolbar to keep and execute the code.
- model : a DKMScript instance 
- annotator : the AnnotatorMorph instance the script is attached to
- plugView : a morph where to plug the view of the compiled model
- codeView : editor of the model
- docView : view of the Erudite DrGeo tutorial
- scriptProcess: the Smalltalk script is executed in its own thread
- playButton: the button to play and pause the Smalltalk sketch execution
- debugger: a debugger window whose content is plug in the editor when appropriate
!

!Pen methodsFor: 'accessing' stamp: 'hlsf 11/Apr/2023, 7:04:47 am (UTC)'!
adjustWidth
	^ adjustWidth ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 11/Apr/2023, 7:04:56 am (UTC)'!
adjustWidth: boolean
	adjustWidth := boolean ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 11/Apr/2023, 7:09:31 am (UTC)'!
adjustWidthOnOff
	adjustWidth := adjustWidth not! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:50:10 pm (UTC)'!
color
	^ color! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:50:01 pm (UTC)'!
color: aColor
	color := 	aColor ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 7/Apr/2023, 12:16:06 pm (UTC)'!
threshold
	^ threshold ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 7/Apr/2023, 12:16:16 pm (UTC)'!
threshold: anInteger
	threshold := anInteger ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:50:17 pm (UTC)'!
width
	^ width ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:50:29 pm (UTC)'!
width: aNumber
	width := aNumber ! !

!Pen methodsFor: 'user interface' stamp: 'hlsf 11/Apr/2023, 7:15:50 am (UTC)'!
adjustWidthString
	^ adjustWidth asMenuItemTextPrefix , 		'adjust width'! !

!Pen methodsFor: 'initialization' stamp: 'hlsf 7/Sep/2024, 9:48:27 am (UTC)'!
initialize
	color := Color black.
	threshold := 4 squared.
	width := 2. 
	adjustWidth := false! !

!StrokerBezier methodsFor: 'compute' stamp: 'hlsf 26/Mar/2026, 8:09:40 am (UTC)'!
averageDistance: samples
	| dist |
	dist := 0.
	1 to: samples size -1 do: [:i |
		dist := dist + ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist / (samples size - 1)! !

!StrokerBezier methodsFor: 'compute' stamp: 'hlsf 26/Mar/2026, 8:09:28 am (UTC)'!
intersectionOrigin1: p1 vector1: v1 origin2: p2 vector2: v2
| det c1 c2 |
	det := v1 crossProduct: v2.
	det squared < 1e-8 ifTrue: [^ nil].
	c1 := p1 crossProduct: v1.
	c2 := p2 crossProduct: v2.
	^ ((c2 * v1 x - (c1 * v2 x) ) / det) @ ((v1 y * c2 - (v2 y * c1)) / det)! !

!StrokerBezier methodsFor: 'compute' stamp: 'hlsf 26/Mar/2026, 8:25:58 am (UTC)'!
maxDistance: samples
	| dist |
	dist := Array new: samples size - 1.
	1 to: samples size -1 do: [:i |
		dist at: i put: ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist max! !

!StrokerBezier methodsFor: 'compute' stamp: 'hlsf 26/Mar/2026, 8:09:08 am (UTC)'!
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

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:10:01 am (UTC)'!
adjustWidth
	^ paper strokeTool adjustWidth ! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:07 am (UTC)'!
paper: aPaperMorph
	paper := aPaperMorph ! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:14 am (UTC)'!
penColor
	^ paper strokeTool color! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:19 am (UTC)'!
penThreshold
	^ paper strokeTool threshold ! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:23 am (UTC)'!
penWidth
	^ paper strokeTool width! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:29 am (UTC)'!
samples
"samples used to compute a new stroke"
	^ paper samples! !

!StrokerBezier methodsFor: 'accessing' stamp: 'hlsf 26/Mar/2026, 8:26:48 am (UTC)'!
samplesQty
"Quantity of samples used to compute a new stroke"
	self subclassResponsibility ! !

!StrokerBezier methodsFor: 'testing' stamp: 'hlsf 26/Mar/2026, 8:24:24 am (UTC)'!
isSamplesValid
	^ true! !

!StrokerBezier class methodsFor: 'instance creation' stamp: 'hlsf 26/Mar/2026, 8:31:03 am (UTC)'!
on: aPaperMorph
	^ self new ::
		paper: aPaperMorph ;
		yourself! !

!StrokerBezier2 methodsFor: 'instance' stamp: 'hlsf 26/Mar/2026, 8:37:28 am (UTC)'!
newStroke
	| lastStroke samples  |
	samples := self samples.
	lastStroke := paper lastStroke.
	^ Bezier2Morph new
		start: samples first
		end: samples last
		control1: samples second;
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself
	! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:44:49 pm (UTC)'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 3! !

!StrokerBezier2 methodsFor: 'testing' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
isSamplesValid
" 
Do we consider valid the current samples, Subclasses may implement differently to discard
"
	^ (self samples first squaredDistanceTo: self samples second) > paper strokeTool threshold! !

!StrokerBezier2XP methodsFor: 'instance' stamp: 'hlsf 14/Mar/2026, 11:20:58 am (UTC)'!
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
	and: [c1 := self isLocalC1at: newStroke start between: lastStroke control1 and: newStroke control1]	] ) 
		ifTrue: [				
			junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
			lastStroke end: junctionPoint.
			newStroke start: junctionPoint].
	"(c1 notNil and: [c1 == false])  ifTrue: [newStroke color: Color cyan]."
	^ newStroke
	
	! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 26/Mar/2026, 8:27:37 am (UTC)'!
isLocalC1at: m between: c1 and: c2
"
	We check if local C1 continuity is desirable ? 
"
	^ true! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 20/Oct/2024, 2:05:21 pm (UTC)'!
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

!StrokerBezier3 methodsFor: 'instance' stamp: 'hlsf 26/Mar/2026, 8:44:43 am (UTC)'!
newStroke
	| lastStroke samples |
	samples := self samples.
	lastStroke := paper lastStroke.
	^ Bezier3Morph new
		start: samples first
		end: samples last
		control1: samples second
		control2: samples third;
		color: self penColor; 
		width:  (self widthFor: samples prev: lastStroke);
		yourself
	
	! !

!StrokerBezier3 methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:44:41 pm (UTC)'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 4! !

!StrokerBezier3XP methodsFor: 'as yet unclassified' stamp: 'hlsf 3/May/2026, 5:05:16 pm (UTC)'!
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
		"Reduce the sloopy effect"
		junctionPoint := (junctionPoint + (lastStroke end * 3) ) / 4.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded].
	^ newStroke
	
	! !

!Document methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 7:45:16 pm (UTC)'!
commandsManager
	^ commandsManager ifNil: [commandsManager := CommandManager new]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 8:16:59 pm (UTC)'!
controlsManager
	^ controlsManager! !

!Document methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 8:16:59 pm (UTC)'!
controlsManager: aControlManager
	controlsManager := aControlManager ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 26/Oct/2024, 12:40:39 pm (UTC)'!
currentPage
	^ self view currentPage! !

!Document methodsFor: 'accessing' stamp: 'hlsf 12/Nov/2024, 7:51:00 pm (UTC)'!
model
	^ model! !

!Document methodsFor: 'accessing' stamp: 'hlsf 15/Jul/2026, 1:50:22 pm (UTC)'!
preview
" By default read the saved preview "
	^ [PNGReadWriter  formFromFileEntry: model path // 'preview.png'] 
		on: Error 
		do: [view preview]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:42:08 am (UTC)'!
selectedTool
	^ tool ifNotNil: [tool toolName] ifNil: [#none]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 2:52:22 am (UTC)'!
strokeTool
	" Depends on the selected tool "
	^  self selectedTool 
		caseOf:  {
			[PenTool toolName] -> [pen] .
			[HighlighterTool toolName] -> [highlighter ] .
			[EraserTool toolName] -> [eraser ].
			[ShapeTool toolName] -> [pen]
		}
		otherwise: [nil]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 24/Nov/2024, 5:36:54 pm (UTC)'!
view
	^ view! !

!Document methodsFor: 'accessing' stamp: 'hlsf 24/Nov/2024, 5:36:47 pm (UTC)'!
view: aMorph
	view := aMorph ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 11/Oct/2025, 4:46:41 pm (UTC)'!
window
	^ self view owner owner! !

!Document methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 2:50:55 am (UTC)'!
writingTool
	" Depends on the selected tool "
	^  self selectedTool 
		caseOf:  {
			[PenTool toolName] -> [pen] .
			[HighlighterTool toolName] -> [highlighter ].
			[ShapeTool toolName] -> [pen]
		}
		otherwise: [nil]! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 16/Jul/2026, 9:58:15 am (UTC)'!
chooseBackground
	| menu |
	menu := MenuMorph entitled: 'Type of background' translated.
	(Preferences instanceAt: #paperModel) type do: [:aBackground |
		menu 
			addUpdating: #pageBackgroundString: 
			target: self 
			action: #switchToPageBackground: 
			argumentList: {aBackground }].
	menu popUpInWorld ! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 26/Oct/2024, 2:04:43 pm (UTC)'!
deletePage
	self view deletePage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 12/Oct/2024, 9:18:01 am (UTC)'!
fitWidthPage
	" Take PageContainer width for our current page "
	| page |
	page := self currentPage.
	page 
		morphPosition: 0@ (page morphPosition y);
		scale: (page pageContainer morphWidth / page morphWidth ) asFloat
	! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 14/Jul/2026, 11:26:06 am (UTC)'!
goFirstPage
	self view goFirstPage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 14/Jul/2026, 11:27:08 am (UTC)'!
goLastPage
	self view goLastPage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 14/Jul/2026, 11:28:42 am (UTC)'!
goNextPage
	self view goNextPage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 14/Jul/2026, 11:29:42 am (UTC)'!
goPreviousPage
	self view goPreviousPage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 26/Oct/2024, 1:38:17 pm (UTC)'!
insertPage
	self view insertPage! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 24/Dec/2024, 12:39:54 pm (UTC)'!
moveOXAction: increment
	| page |
	page := self currentPage.
	page morphPosition: (page morphPosition + (increment @ 0) 
		min: view container morphExtent 
		max: page morphExtent negated * page scale)! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 24/Dec/2024, 12:39:48 pm (UTC)'!
moveOYAction: increment
	| page |
	page := self currentPage.
	page morphPosition: (page morphPosition - (0@increment) 
		min: view container morphExtent 
		max: page morphExtent negated * page scale)! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 3/Mar/2026, 3:23:28 pm (UTC)'!
pageBackgroundString: pageBackground
	^ (self currentPage isBackground: pageBackground) asMenuItemTextPrefix , pageBackground title! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 26/Oct/2024, 12:28:44 pm (UTC)'!
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

!Document methodsFor: 'actions pages' stamp: 'hlsf 13/Feb/2025, 8:30:00 am (UTC)'!
zoomAction: increment	
	self zoomAction: increment at: view container morphCenter! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 3/Jan/2025, 12:57:51 pm (UTC)'!
zoomAction: increment	 at: referencePoint
" zoom centered at the referencePoint position in the container "
	|  center page |
	page := self currentPage.
	center := page internalize: referencePoint .
	page scale: (page scale - increment min: 2 max: 0.1).
	center := page externalize: center.
	page morphPosition: page morphPosition - center + referencePoint ! !

!Document methodsFor: 'actions pages' stamp: 'hlsf 4/Jan/2025, 4:12:35 pm (UTC)'!
zoomPageTo100
	self currentPage 
		morphPosition: 0@0;
		scale: 1.001! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
browseDKM
	DyboSystem scriptLibrary browseFor: self currentPage! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 16/Oct/2024, 5:28:13 pm (UTC)'!
eraserSize: aNumber
	self eraserTool.
	eraser width: aNumber ! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 16/Oct/2024, 5:29:02 pm (UTC)'!
eraserSize16
	self eraserSize: 16.! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 19/Oct/2024, 9:06:48 pm (UTC)'!
eraserSize4
	self eraserSize: 4! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 16/Oct/2024, 5:28:45 pm (UTC)'!
eraserSize8
	self eraserSize: 8.! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Jul/2026, 3:47:12 pm (UTC)'!
exportPDF
	| exportedFiles pdfCommand process |
	savesReal := true.
	exportedFiles := OrderedCollection new.
	1 to: view numberOfPages do: [:i | 
		| page formerScale |
		exportedFiles add: model title,
			(String streamContents: [:str | i printOn: str base: 10 length: 4 padded: true]),
			'.png'.
		page := view pageAt: i.
		formerScale := page scale.
		page scale: 1.5.
		JPEGReadWriter2 
			putForm: (page imageForm: 32)  
			quality: 90 
			progressiveJPEG: false 
			onFileNamed: DyboSystem myExportPath // exportedFiles last.
		page scale: formerScale].
	savesReal := false.
	pdfCommand := String streamContents: [:s |
		s 	nextPutAll: 'cd {1}'; lf;
			nextPutAll: 'convert '.
		exportedFiles do: [:each | s nextPutAll: each; space].
		s nextPutAll: model title; nextPutAll: '.pdf'].
	pdfCommand := pdfCommand format: {DyboSystem myExportPath}.
	process := OSProcess command: pdfCommand.
	[process isComplete] whileFalse: [(Delay forMilliseconds: 100) wait].
	exportedFiles do: [:each | (DyboSystem myExportPath // each) delete]
		
		! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:39:35 pm (UTC)'!
highlighterBlue
	self highlighterColor: Color blue! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:39:25 pm (UTC)'!
highlighterColor: aColor
	self highlighterTool.
	highlighter color: (aColor alpha: 0.3)! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:39:46 pm (UTC)'!
highlighterGreen
	self highlighterColor: Color green! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 19/Oct/2024, 9:09:21 pm (UTC)'!
highlighterRed
	self highlighterColor: Color red! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Oct/2024, 4:46:25 pm (UTC)'!
highlighterSize: aNumber
	self highlighterTool.
	highlighter width: aNumber ! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Oct/2024, 4:46:35 pm (UTC)'!
highlighterSize10
	self highlighterSize: 10! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Oct/2024, 4:47:01 pm (UTC)'!
highlighterSize20
	self highlighterSize: 20! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Oct/2024, 4:47:29 pm (UTC)'!
highlighterSize40
	self highlighterSize: 40! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 19/Oct/2024, 9:49:17 pm (UTC)'!
highlighterYellow
	self highlighterColor: Color yellow! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Mar/2026, 5:37:37 pm (UTC)'!
importPDF: aFileEntry
	| process |
	process := DyboSystem 
		import: aFileEntry
		to: model path
		pages: nil.
	[process isComplete] whileFalse: [(Delay forMilliseconds: 300) wait].
	1 to: model pdfNumberOfPages do: [:index | | newPage |
		newPage := PageMorph newOn: self background: (self model pdfBackgroundForPage: index).
		self view insertPage: newPage	]
	! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:37:58 pm (UTC)'!
nibSize: aNumber
	self penTool.
	pen width: aNumber ! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:40:53 pm (UTC)'!
nibSize05
	self nibSize: 0.5! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:11 pm (UTC)'!
nibSize08
	self nibSize: 0.8! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:16 pm (UTC)'!
nibSize1
	self nibSize: 1! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:21 pm (UTC)'!
nibSize2
	self nibSize: 2! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:25 pm (UTC)'!
nibSize4
	self nibSize: 4! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:29 pm (UTC)'!
nibSize6
	self nibSize: 6! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:43:32 pm (UTC)'!
nibSize8
	self nibSize: 8! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:38:24 pm (UTC)'!
penBlack
	self penColor: Color black! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 19/Oct/2024, 9:22:18 pm (UTC)'!
penBlue
	self penColor: Color blue! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:38:13 pm (UTC)'!
penColor: aColor
	self penTool.
	pen color: aColor! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:38:44 pm (UTC)'!
penGreen
	self penColor: Color green! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:38:53 pm (UTC)'!
penRed
	self penColor: Color red! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 14/Oct/2024, 7:39:01 pm (UTC)'!
penWhite
	self penColor: Color white! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 24/Dec/2024, 3:12:39 pm (UTC)'!
redoAction
	self commandsManager redo ifTrue: [self modified]! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 15/Jul/2026, 1:29:08 pm (UTC)'!
saveDocument
	savesReal := true.
	self saveToDisk.
	savesReal := false.
	isSaved := true.
	self currentPage redrawNeeded.
	PNGReadWriter putForm: view preview onFile: model path // 'preview.png'.
	^ true! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 3/Mar/2026, 3:27:42 pm (UTC)'!
switchToPageBackground: aClass
	self currentPage replaceBackgroundBy: aClass new! !

!Document methodsFor: 'actions ui' stamp: 'hlsf 24/Dec/2024, 3:12:27 pm (UTC)'!
undoAction
	self commandsManager undo ifTrue: [self modified].
	self resetTool! !

!Document methodsFor: 'initialization' stamp: 'hlsf 7/Sep/2025, 3:51:46 pm (UTC)'!
initialize
	super initialize.
	self initializeStrokeTools .
	model := DocumentModel new.
	savesReal := false. "Read comment in objectForDataStream:"
	isSaved := true! !

!Document methodsFor: 'initialization' stamp: 'hlsf 7/Sep/2025, 3:51:46 pm (UTC)'!
initializeStrokeTools
	pen := Pen new threshold: 4.
	highlighter := Pen new ::
		color: (Color yellow alpha: 0.3);
		width: 40;
		threshold: 6 squared.
	eraser := Pen new width: 2
! !

!Document methodsFor: 'persistence' stamp: 'hlsf 7/Sep/2025, 3:51:46 pm (UTC)'!
comeFullyUpOnReload: smartRefStream
	self initializeStrokeTools.
	savesReal := false.
	isSaved := true.
	'presenter came to life' print! !

!Document methodsFor: 'persistence' stamp: 'hlsf 8/Dec/2024, 11:00:55 am (UTC)'!
isSaved
	^ isSaved ifNil: [true]! !

!Document methodsFor: 'persistence' stamp: 'hlsf 19/Mar/2026, 7:15:36 pm (UTC)'!
loadFromDisk
	^ ReferenceStream restoreFromCompressedFile: model path // 'doc.obj'! !

!Document methodsFor: 'persistence' stamp: 'hlsf 4/Jan/2025, 4:24:38 pm (UTC)'!
modified
	" get notified the page was modified recently, ie changes not saved to disk "
	isSaved ifFalse: [^ self].
	isSaved := false.
	view resetPreview.
	view currentPage paper redrawNeeded 
	! !

!Document methodsFor: 'persistence' stamp: 'hlsf 14/Jul/2026, 10:35:01 am (UTC)'!
objectForDataStream: str
" 	
A Document is serialized on disk in its own directory. A document may be asked to be serialized under two circumstances, those we have two states when saving a document.
1. 	The default state saveReal == false
	When the whole DyboApp data model is saved (see DyboSystem class>>saveData)-> respond a diskproxy, 
	Indeed, we don't want to save the Document in the data model, just its proxy. 
2. 	When the user saves the document itself (see #saveDocument) 	-> 	respond self, it is explicitly required,
	It is serialized and saved in its own tree at its own directory location, so we respond the instance (self)	
"
	^ savesReal 
		ifFalse: [Transcript show: '   proxy saved: '; show: self; cr.
			DiskProxy 				
				global: #Document 				
				selector: #loadDocument:  				
				args: (Array with: model relPath) ]
		ifTrue: [	Transcript show: '   full object on disk: '; show: self; cr.
			self]! !

!Document methodsFor: 'persistence' stamp: 'hlsf 19/Mar/2026, 7:15:04 pm (UTC)'!
saveToDisk
" NEVER SEND MESSAGE DIRECTLY, use saveDocument if necessary 
Save me in my model disk location "
	'Saving to disk' print.
	ReferenceStream 
		dumpOnCompressedFile:  model path // 'doc.obj'
		object: self
! !

!Document methodsFor: 'persistence' stamp: 'hlsf 18/Dec/2024, 7:44:09 pm (UTC)'!
storeDataOn: aDataStream
	| backup |
	backup := self backupThenNilAttributes.
	super storeDataOn: aDataStream.
	self restoreAttributes: backup! !

!Document methodsFor: 'persistence' stamp: 'hlsf 24/Dec/2024, 2:17:11 pm (UTC)'!
unsavedAttributes
	^ #(commandsManager controlsManager isSaved pen highlighter eraser tool)! !

!Document methodsFor: 'printing' stamp: 'hlsf 16/Apr/2026, 8:45:30 am (UTC)'!
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' P. (';
		nextPutAll: model dirName;
		nextPut: $)! !

!Document methodsFor: 'tool' stamp: 'hlsf 5/Sep/2024, 12:34:33 pm (UTC)'!
eraserTool
	self tool: EraserTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 23/Oct/2024, 8:29:11 am (UTC)'!
groupTool
	self tool: GroupTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 5/Sep/2024, 12:34:47 pm (UTC)'!
highlighterTool
	self tool:HighlighterTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 4/Jan/2025, 4:47:34 pm (UTC)'!
isTool: aToolName
	^ self selectedTool == aToolName ! !

!Document methodsFor: 'tool' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
isToolColor: toolName
" Check if pen or hightlighter and which color - for the circular toolbar 
toolName takes value penRed,  hightlighterYellow, etc.  "
	^ (toolName includesSubString: self selectedTool) 
	and: [toolName includesSubString: (self strokeTool color alpha: 1) colorName capitalized ]! !

!Document methodsFor: 'tool' stamp: 'hlsf 5/Sep/2024, 8:38:17 am (UTC)'!
penTool
	self tool: PenTool ! !

!Document methodsFor: 'tool' stamp: 'hlsf 23/Oct/2024, 8:52:29 am (UTC)'!
pointerTool
	self tool: PointerTool .! !

!Document methodsFor: 'tool' stamp: 'hlsf 26/Oct/2024, 1:56:47 pm (UTC)'!
resetTool
" reselect to tool remove intermediate state in the tool "
	self tool: tool class ! !

!Document methodsFor: 'tool' stamp: 'hlsf 14/Mar/2026, 12:04:18 pm (UTC)'!
shapeTool
	| menu |
	menu := MenuMorph new.
	menu 
		add: 'Line' translated target: self action: #shapeTool: argument: LineShape;
		add: 'Rectangle' translated target: self action: #shapeTool: argument: RectangularShape;
		popUpInWorld! !

!Document methodsFor: 'tool' stamp: 'hlsf 14/Mar/2026, 12:04:46 pm (UTC)'!
shapeTool: shapeClass
	self tool: ShapeTool.
	tool shapeClass: shapeClass 
! !

!Document methodsFor: 'tool' stamp: 'hlsf 5/Sep/2024, 1:09:27 pm (UTC)'!
tool
	^ tool! !

!Document methodsFor: 'tool' stamp: 'hlsf 4/Jan/2025, 5:09:41 pm (UTC)'!
tool: aToolClass
	tool ifNotNil: [tool release].
	tool := aToolClass presenter: self.
	view statusBarMessage: aToolClass description.
	self changed: #isTool:! !

!Document methodsFor: 'testing' stamp: 'hlsf 14/Jul/2026, 10:39:26 am (UTC)'!
isExporingPDF
	^ savesReal ! !

!Document class methodsFor: 'object serialization' stamp: 'hlsf 16/Apr/2026, 8:19:52 pm (UTC)'!
loadDocument: relativePath
"
	Once restored, the controlManager needs to be associated back and 
	the view plug in the dynamic book main view
"
	| file |
	file :=  DyboSystem userDataPath / relativePath // 'doc.obj'.
	^ file exists 
		ifTrue:  [ReferenceStream restoreFromCompressedFile:  file]
		ifFalse: [self error: 'Document not on disk: ', relativePath	] 
	! !

!Command methodsFor: 'command' stamp: 'hlsf 10/Sep/2024, 7:05:57 pm (UTC)'!
execute
	self subclassResponsibility ! !

!Command methodsFor: 'command' stamp: 'hlsf 10/Sep/2024, 7:06:19 pm (UTC)'!
unexecute
	self subclassResponsibility ! !

!Command methodsFor: 'accessing' stamp: 'hlsf 10/Sep/2024, 7:05:50 pm (UTC)'!
domain: aDomain
	domain := aDomain! !

!Command methodsFor: 'initialize-release' stamp: 'hlsf 10/Sep/2024, 7:06:12 pm (UTC)'!
release
"Let my child do some clean up"! !

!ErasingCommand methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2024, 7:02:30 pm (UTC)'!
deletedStrokes: aDictionnary
" Read EraserToolStateErasing>>handleMouseAt:in: "
	deletedStrokes := aDictionnary ! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 3:23:49 pm (UTC)'!
execute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain removeMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup removeAllMorphsIn: aCollection ] 		]! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 3:23:35 pm (UTC)'!
unexecute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain addMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup addAllMorphs: aCollection ] 		]! !

!ErasingCommand class methodsFor: 'instance creation' stamp: 'hlsf 11/Sep/2024, 6:57:11 pm (UTC)'!
deletedStrokes: aDictionayOfStroke in: aPage
	^ self basicNew
		domain: aPage;
		deletedStrokes: aDictionayOfStroke ;
		initialize
		! !

!ErasingAnnotatorCommand methodsFor: 'initialization' stamp: 'hlsf 16/Nov/2024, 3:14:02 pm (UTC)'!
initialize
	super initialize.
	bounds := domain fullBoundsInOwner.
	domain adjustBounds! !

!ErasingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 4:13:53 pm (UTC)'!
execute
	super execute.
	domain adjustBounds ! !

!ErasingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 8:33:02 pm (UTC)'!
unexecute
	domain adjustBoundsTo: bounds.
	super unexecute! !

!MoveAnnotatorCommand methodsFor: 'accessing' stamp: 'hlsf 24/Oct/2024, 10:34:12 am (UTC)'!
annotator: aMorph
	annotator := aMorph ! !

!MoveAnnotatorCommand methodsFor: 'accessing' stamp: 'hlsf 24/Oct/2024, 10:34:24 am (UTC)'!
delta: aPoint
	delta := aPoint ! !

!MoveAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 24/Oct/2024, 12:00:49 pm (UTC)'!
execute
	annotator morphPosition: annotator morphPosition + delta! !

!MoveAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 24/Oct/2024, 12:00:54 pm (UTC)'!
unexecute
	annotator morphPosition: annotator morphPosition - delta! !

!MoveAnnotatorCommand class methodsFor: 'instance creation' stamp: 'hlsf 24/Oct/2024, 10:32:11 am (UTC)'!
move: anAnnotator to: aPoint in: aPage
	^ self basicNew
		domain: aPage ;
		annotator: anAnnotator ;
		delta: aPoint;
		initialize;
		yourself! !

!MoveGroupCommand methodsFor: 'accessing' stamp: 'hlsf 19/Oct/2024, 9:35:35 am (UTC)'!
delta: aPoint
	delta := aPoint! !

!MoveGroupCommand methodsFor: 'accessing' stamp: 'hlsf 19/Oct/2024, 9:35:45 am (UTC)'!
selection: aCollection
	selection := aCollection ! !

!MoveGroupCommand methodsFor: 'command' stamp: 'hlsf 19/Oct/2024, 9:42:09 am (UTC)'!
execute
	selection do: [:aMorph | 			aMorph morphPosition: aMorph morphPosition + delta		 ]! !

!MoveGroupCommand methodsFor: 'command' stamp: 'hlsf 19/Oct/2024, 10:17:55 am (UTC)'!
unexecute
	selection do: [:aMorph | 			aMorph morphPosition: aMorph morphPosition - delta		 ].! !

!MoveGroupCommand class methodsFor: 'instance creation' stamp: 'hlsf 24/Oct/2024, 10:26:59 am (UTC)'!
moveGroup: aCollection to: aPoint in: aPaper
	^ self basicNew
		domain: aPaper;
		selection: aCollection ;
		delta: aPoint;
		initialize;
		yourself! !

!MoveGroupInAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 19/Oct/2024, 9:45:40 am (UTC)'!
execute
	domain adjustBoundsTo: bounds.
	super execute! !

!MoveGroupInAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 19/Oct/2024, 9:45:49 am (UTC)'!
unexecute
	bounds := domain fullBoundsInOwner.
	super unexecute.
	domain adjustBounds! !

!MoveGroupInAnnotatorCommand methodsFor: 'initialization' stamp: 'hlsf 19/Oct/2024, 9:45:27 am (UTC)'!
initialize
	super initialize.
	domain adjustBounds.
	bounds := domain fullBoundsInOwner.
! !

!WritingCommand methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2024, 3:43:08 pm (UTC)'!
strokeGroup: aStrokeGroup
	strokeGroup := 	aStrokeGroup ! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 1:45:10 pm (UTC)'!
execute
	domain addMorph: strokeGroup! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 1:45:21 pm (UTC)'!
unexecute
	domain removeMorph: strokeGroup! !

!WritingCommand class methodsFor: 'instance creation' stamp: 'hlsf 11/Sep/2024, 3:43:50 pm (UTC)'!
strokeGroup: aStrokeGroup in: aPaper
	^ self basicNew
		domain: aPaper;
		strokeGroup: aStrokeGroup;
		initialize! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 2:55:26 pm (UTC)'!
execute
	domain adjustBoundsTo: bounds.
	super execute! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 8:32:48 pm (UTC)'!
initialize
	super initialize.
	domain adjustBounds.
	bounds := domain fullBoundsInOwner.
! !

!WritingAnnotatorCommand methodsFor: 'command' stamp: 'hlsf 29/Sep/2024, 8:32:40 pm (UTC)'!
unexecute
	bounds := domain fullBoundsInOwner.
	super unexecute.
	domain adjustBounds! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 10/Sep/2024, 7:03:49 pm (UTC)'!
initialize
	stack := CommandStack new! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 26/Oct/2024, 12:57:40 pm (UTC)'!
release
	stack contents do: [:c | c release].
	stack reset! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 19/Oct/2024, 9:24:14 am (UTC)'!
deletedStrokes: aDictionayOfStroke in: aPaper
" Read EraserToolStateErasing>>handleMouseAt:in: "
	| command |
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [ErasingAnnotatorCommand] 
		ifFalse: [ErasingCommand].
	stack nextPut: (command deletedStrokes: aDictionayOfStroke in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 24/Oct/2024, 12:02:16 pm (UTC)'!
move: aAnnotator to: delta in: aPage
	aAnnotator ifNil: [^self]. " The whole page was moved, not undo there "
	stack nextPut: (MoveAnnotatorCommand move: aAnnotator to: delta in: aPage )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 24/Oct/2024, 10:27:51 am (UTC)'!
moveGroup: aCollection to: delta in: aPaper
	| command |
	aCollection ifEmpty: [^self]. " Nothing to undo "
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [MoveGroupInAnnotatorCommand ] 
		ifFalse: [MoveGroupCommand ].
	stack nextPut: (command moveGroup: aCollection to: delta in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 24/Dec/2024, 3:11:37 pm (UTC)'!
redo
	| command |
	command := stack next.
	^ command 
		ifNotNil:	 [
			command execute.
			true]
		ifNil: [false]! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 19/Oct/2024, 9:23:59 am (UTC)'!
strokeGroup: aStrokeGroup in: aPaper
	| command |
	command := (aPaper is: #AnnotatorMorph) 
		ifTrue: [WritingAnnotatorCommand] 
		ifFalse: [WritingCommand].
	stack nextPut: (command strokeGroup: aStrokeGroup in: aPaper )! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 24/Dec/2024, 3:11:42 pm (UTC)'!
undo
	| command |
	command := stack previous.
	^ command 
		ifNotNil: [
			command unexecute.
			true]
		ifNil: [false]! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 19/Oct/2024, 2:15:48 pm (UTC)'!
currentPage
	^ presenter currentPage! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2024, 3:36:26 pm (UTC)'!
presenter
	^ presenter! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 9:04:16 am (UTC)'!
presenter: aPresenter
	presenter := aPresenter ! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:37:34 am (UTC)'!
toolName
	^ self class iconName! !

!PageTool methodsFor: 'initialization' stamp: 'hlsf 27/May/2026, 7:28:53 pm (UTC)'!
release
	self removeAllActions ! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:10 pm (UTC)'!
handleMouseAt: localPosition in: page
	state handleMouseAt: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:15 pm (UTC)'!
handlePress: localPosition in: page
	state handlePress: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:27 pm (UTC)'!
handleRelease: localPosition in:page
	state handleRelease: localPosition in: page! !

!PageTool methodsFor: 'state' stamp: 'hlsf 19/Oct/2024, 2:21:20 pm (UTC)'!
switchState: aStateClass
	state := aStateClass basicNew 
		context: self;
		initialize;
		yourself! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:47:02 am (UTC)'!
action
" A symbol to identify me, also the message name sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:43:40 am (UTC)'!
description
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:36:37 am (UTC)'!
iconName
" also the name to identify the tool sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:43:36 am (UTC)'!
title
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2024, 9:40:29 am (UTC)'!
toolName
	^ self iconName! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 1/Sep/2024, 9:03:33 am (UTC)'!
new
	self error: 'Use #presenter:'! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 1/Sep/2024, 9:03:52 am (UTC)'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 17/Feb/2025, 8:40:57 pm (UTC)'!
deleteBitMasks
	presenter view deleteBitMasks ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 17/Feb/2025, 8:41:08 pm (UTC)'!
initialize
	super initialize.
	self deleteBitMasks. "Need by annotated morph"
	self currentPage lockAnnoted.
	self switchState: EraserToolStateNeutral ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 17/Feb/2025, 8:41:12 pm (UTC)'!
release
	super release.
	" We need to remove the Morph bitMask used to detect the individual strokes "
	self deleteBitMasks ! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:47:25 am (UTC)'!
action
	^ #eraserTool! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 10/Oct/2024, 8:42:14 am (UTC)'!
description
	^ 'An eraser to delete some of your handwriting.' translated! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:36:52 am (UTC)'!
iconName
	^ #eraser! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 8:02:21 am (UTC)'!
title
	^ 'Eraser' translated! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 18/Oct/2024, 7:18:31 pm (UTC)'!
corner
	^ corner! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 18/Oct/2024, 7:18:31 pm (UTC)'!
corner: aPoint
	corner := aPoint ! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:45:46 am (UTC)'!
grabMorphsIn: kindOfPaper inside: rect
" kind of paper can be a Paper or an Annotator "
	| rectFitToSelection |
	selection := ( (kindOfPaper is: #AnnotatorMorph)
		ifTrue: [kindOfPaper grabMorphsIn: rect]
		ifFalse: [kindOfPaper owner grabMorphsIn: rect " Ask to the page of the paper to also grab annotator "] ).
	selection do: [:aMorph | rectFitToSelection := aMorph fullBoundsInOwner quickMerge: rectFitToSelection].
	kindOfPaper selectionArea: rectFitToSelection.
	rectFitToSelection ifNotNil: [kindOfPaper selectionMorph borderWidth: 0.5]! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 19/Oct/2024, 10:10:20 am (UTC)'!
paper
	^ paper! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 19/Oct/2024, 10:10:16 am (UTC)'!
paper: aKindOfPaper
	paper := aKindOfPaper ! !

!GroupTool methodsFor: 'accessing' stamp: 'hlsf 17/Oct/2024, 8:13:26 pm (UTC)'!
selection
	^ selection! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 19/Oct/2024, 10:08:58 am (UTC)'!
clearSelection
	presenter currentPage clearSelection.
	paper := nil.
	selection := #()! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 24/Jan/2025, 5:47:04 pm (UTC)'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: GroupToolStateNeutral.
	self clearSelection ! !

!GroupTool methodsFor: 'initialization' stamp: 'hlsf 19/Oct/2024, 8:08:15 am (UTC)'!
release
	super release.
	presenter currentPage clearSelection! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:29:11 am (UTC)'!
action
	^ #groupTool! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:27:46 am (UTC)'!
description
	^ 'Select a group of objects and drag them around.' translated ! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:27:21 am (UTC)'!
iconName
	^ #group! !

!GroupTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:27:55 am (UTC)'!
title
	^ 'Group' translated! !

!HighlighterTool methodsFor: 'initialization' stamp: 'hlsf 24/Jan/2025, 5:47:18 pm (UTC)'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: HighligtherToolStateNeutral ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:48:04 am (UTC)'!
action
	^ #highlighterTool! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 10/Oct/2024, 8:42:19 am (UTC)'!
description
	^ 'A highlighter to emphasis some of your handwritings.' translated ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:37:56 am (UTC)'!
iconName
	^ #highlighter! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 8:03:16 am (UTC)'!
title
	^ 'Highlighter' translated! !

!PenTool methodsFor: 'initialization' stamp: 'hlsf 24/Jan/2025, 5:47:24 pm (UTC)'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: PenToolStateNeutral ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 10:48:37 am (UTC)'!
action
	^ #penTool! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 10/Oct/2024, 8:42:25 am (UTC)'!
description
	^ 'A pen for your handwriting.' translated ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:38:17 am (UTC)'!
iconName
	^ #pen! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 8:03:57 am (UTC)'!
title
	^ 'Pencil' translated! !

!PointerTool methodsFor: 'initialization' stamp: 'hlsf 24/Jan/2025, 5:47:32 pm (UTC)'!
initialize
	super initialize.
	self currentPage unlockAnnoted.	
	self switchState: PointerToolStateNeutral ! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 5:04:56 pm (UTC)'!
grabAnnotatorsIn: page at: localPosition
	| selection |
	selection := page grabAnnotatorsAt: localPosition.
	" pick up the one with the smallest area "
	selection := selection sort: [:ann1 :ann2 |
		(ann1 morphExtent dotProduct: ann1 morphExtent) < (ann2 morphExtent dotProduct: ann2 morphExtent)].
	^ grabbed := selection at: 1 ifAbsent: nil
		
		! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 2:42:06 pm (UTC)'!
grabbed
	^ grabbed ! !

!PointerTool methodsFor: 'accessing' stamp: 'hlsf 11/Oct/2025, 3:37:37 pm (UTC)'!
grabbed: aMorph
	grabbed := aMorph ! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:50:18 am (UTC)'!
action
	^ #pointerTool! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:49:50 am (UTC)'!
description
	^ 'Drag and interact with objects.' translated! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:50:06 am (UTC)'!
iconName
	^ #pointer! !

!PointerTool class methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 8:47:40 am (UTC)'!
title
	^ 'Interact' translated! !

!ShapeTool methodsFor: 'initialization' stamp: 'hlsf 14/Mar/2026, 3:01:22 am (UTC)'!
initialize
	super initialize.
	self currentPage lockAnnoted.
	self switchState: ShapeToolStateNeutral! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 11:40:05 am (UTC)'!
asStrokeGroupsIn: aPaper
	^ shape asStrokeGroupsIn: aPaper! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 2:58:19 am (UTC)'!
endPoint: point
	shape endPoint: point.
	self currentPage redrawNeeded ! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 22/Mar/2026, 1:55:27 pm (UTC)'!
removeShape
	shape owner removeMorph: shape! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 17/Mar/2026, 7:50:17 pm (UTC)'!
shapeClass
	^ shapeClass ifNil: [LineShape]! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 10/Mar/2026, 7:51:21 pm (UTC)'!
shapeClass: aClass
	shapeClass := aClass 
	! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:10:00 pm (UTC)'!
startPoint
	^ shape startPoint! !

!ShapeTool methodsFor: 'accessing' stamp: 'hlsf 22/Mar/2026, 1:53:38 pm (UTC)'!
startPoint: point in: aPaper
	shape := self shapeClass startPoint: point endPoint: point.
	shape width: presenter writingTool width;
		color: presenter writingTool color.
	aPaper addMorph: shape.! !

!ShapeTool class methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 2:46:53 am (UTC)'!
action
	^ #shapeTool! !

!ShapeTool class methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 12:09:26 pm (UTC)'!
description
	^ 'Draw a shape defined by two positions, I use the Pen color and width.' translated! !

!ShapeTool class methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:54:36 pm (UTC)'!
iconName
	^ #lineShape! !

!ShapeTool class methodsFor: 'accessing' stamp: 'hlsf 14/Mar/2026, 12:05:10 pm (UTC)'!
title
	^ 'Shape' translated! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 11/Sep/2024, 3:25:29 pm (UTC)'!
commandsManager
	^ context presenter commandsManager! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 1:04:07 pm (UTC)'!
context: aTool
	context := aTool! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:35 pm (UTC)'!
handleMouseAt: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:43 pm (UTC)'!
handlePress: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 1/Sep/2024, 1:35:52 pm (UTC)'!
handleRelease: localPosition in: page
! !

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 9:16:51 pm (UTC)'!
handleMouseAt: localPosition in: paper
" From time to time, strokeGroups are not detected. Activating their halo makes it work again...
"
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

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 8:41:16 pm (UTC)'!
handleRelease: localPosition in: paper
	paper redrawNeeded.
	context deleteBitMasks.
	deletedStrokes ifNotEmpty: [	
		 (deletedStrokes values first isCollection 
			and: [deletedStrokes values first isEmpty]) ifTrue: [self halt: 'Should have strokes but is empty'].
		self commandsManager deletedStrokes: deletedStrokes in: paper ].
	context presenter modified.
	context switchState: EraserToolStateNeutral ! !

!EraserToolStateErasing methodsFor: 'initialization' stamp: 'hlsf 11/Sep/2024, 6:48:01 pm (UTC)'!
initialize
	super initialize.
	deletedStrokes := Dictionary new.! !

!EraserToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 8:42:30 pm (UTC)'!
handlePress: localPosition in: paper
	context 
		switchState: EraserToolStateErasing; 	" Prepare to erase... "
		handleMouseAt: localPosition in: paper "...then start erasing "! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 8:23:23 pm (UTC)'!
handleMouseAt: localPosition in: paper
	| delta pickupSelectionMorph worldPosition |
	worldPosition := paper externalizeToWorld: localPosition.
	prevPosition ~= worldPosition ifTrue: [
		delta := (worldPosition - prevPosition) / context currentPage scale.
		pickupSelectionMorph := paper selectionMorph ifNil: [context paper selectionMorph]. 
		context selection do: [:aMorph | aMorph morphPosition: aMorph morphPosition + delta ].
		pickupSelectionMorph morphPosition: pickupSelectionMorph morphPosition + delta.
		prevPosition := worldPosition ]! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 8:23:45 pm (UTC)'!
handlePress: localPosition in: paper
	| pickUpSelectionMorph |
	" problem when selecting an annotator: selectionMorph is in Paper, 
	but call here in Annotator, so localPosition in Annotator coordinates "
	initialPosition := prevPosition := paper externalizeToWorld: localPosition .
	pickUpSelectionMorph := paper selectionMorph ifNil: [context paper selectionMorph]. 
	(pickUpSelectionMorph displayFullBounds containsPoint: initialPosition ) ifFalse: [
			context switchState: GroupToolStateNeutral.
			^ context handlePress: localPosition in: paper ]! !

!GroupToolStateDragging methodsFor: 'handling' stamp: 'hlsf 17/Feb/2025, 8:24:09 pm (UTC)'!
handleRelease: locaPosition in: paper
	self commandsManager 
		moveGroup: context selection 
		to: ((paper externalizeToWorld: locaPosition) - initialPosition) / context currentPage scale
		in: context paper.
	context presenter modified.! !

!GroupToolStateGrabbing methodsFor: 'handling' stamp: 'hlsf 18/Oct/2024, 7:18:50 pm (UTC)'!
handleMouseAt: localPosition in: paper
	paper selectionArea: (
		Rectangle encompassingInteger: (Array
			with: context corner
			with: localPosition) )! !

!GroupToolStateGrabbing methodsFor: 'handling' stamp: 'hlsf 10/Mar/2026, 5:24:35 pm (UTC)'!
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
				ifEmpty: [context switchState: GroupToolStateNeutral ] " empty selectio go back to neutral"
				ifNotEmpty: [context switchState: GroupToolStateDragging] "We catched some morph, go..."
		]! !

!GroupToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 23/Oct/2024, 8:30:15 am (UTC)'!
handlePress: localPosition in: aPaper
	context corner: localPosition;
		paper: aPaper;
		switchState: GroupToolStateGrabbing! !

!GroupToolStateNeutral methodsFor: 'initialization' stamp: 'hlsf 19/Oct/2024, 8:13:08 am (UTC)'!
initialize
	super initialize.
	context clearSelection ! !

!HighligtherToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 7/Sep/2024, 10:13:40 am (UTC)'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: HighligtherToolStateWriting ! !

!PenToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 5/Sep/2024, 1:40:31 pm (UTC)'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: PenToolStateWriting ! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 19/Oct/2024, 2:29:58 pm (UTC)'!
handleMouseAt: localPosition in: paper
	paper writingAt: localPosition
	! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 8/Dec/2024, 5:58:51 pm (UTC)'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context presenter modified.
	context switchState: PenToolStateNeutral 
	! !

!HighligtherToolStateWriting methodsFor: 'handling' stamp: 'hlsf 8/Dec/2024, 5:58:51 pm (UTC)'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context presenter modified.
	context switchState: HighligtherToolStateNeutral 
	! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 11/Oct/2025, 3:34:55 pm (UTC)'!
handleMouseAt: localPosition in: paper
	| delta page worldPosition |
	worldPosition := paper externalizeToWorld: localPosition.
	prevPosition ~= worldPosition ifTrue: [
		page := paper owner.
		delta := worldPosition - prevPosition.
		context grabbed 
			ifNotNil: [ :annotator |
				annotator morphPosition: annotator morphPosition + (delta / page scale) 	] 
			ifNil: [page morphPosition: page morphPosition + delta ].
		prevPosition := worldPosition ]! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 23/Oct/2024, 5:50:59 pm (UTC)'!
handlePress: localPosition in: paper
	initialPosition := prevPosition := paper externalizeToWorld: localPosition ! !

!PointerToolStateDragging methodsFor: 'handling' stamp: 'hlsf 8/Dec/2024, 5:58:51 pm (UTC)'!
handleRelease: localPosition in: paper
	self commandsManager 
		move: context grabbed 
		to:  (paper externalizeToWorld: 	localPosition) - initialPosition / paper owner scale
		in: paper owner.
	context grabbed ifNotNil: [context presenter modified].
	context switchState: PointerToolStateNeutral ! !

!PointerToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 23/Oct/2024, 5:04:20 pm (UTC)'!
handlePress: localPosition in: paper
	context 
		grabAnnotatorsIn: paper owner at: localPosition;
		switchState: PointerToolStateDragging;
		handlePress: localPosition in: paper
	! !

!ShapeToolStateDrawing methodsFor: 'handling' stamp: 'hlsf 10/Mar/2026, 8:01:38 pm (UTC)'!
handleMouseAt: localPosition in: paper
	context endPoint: localPosition ! !

!ShapeToolStateDrawing methodsFor: 'handling' stamp: 'hlsf 14/Mar/2026, 11:45:58 am (UTC)'!
handleRelease: localPosition in: paper
	context endPoint: localPosition.
	(context asStrokeGroupsIn: paper) do: [:aStrokeGroup |
		self commandsManager strokeGroup: aStrokeGroup in: paper].
	context removeShape.
	context presenter modified.
	context switchState: ShapeToolStateNeutral 
! !

!ShapeToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 22/Mar/2026, 1:54:08 pm (UTC)'!
handlePress: localPosition in: aPaper
	context startPoint: localPosition in: aPaper ;
		switchState: ShapeToolStateDrawing ! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 28/May/2026, 8:35:19 am (UTC)'!
author
	^ DyUserData current user printString
! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 10:04:20 am (UTC)'!
code
	^ code ifNil: [code := presenter codeSampleWithHeader ]! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 12/Oct/2025, 2:00:18 pm (UTC)'!
code: aUnicodeString 
	code := aUnicodeString ! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 8:38:58 am (UTC)'!
description
	^ description ifNil: [presenter description]! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 8:38:46 am (UTC)'!
description: aText
	description := aText! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 1:02:30 pm (UTC)'!
file
	^ file! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 1:03:04 pm (UTC)'!
file: aFileEntry
	file := aFileEntry ! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 12/Oct/2025, 1:52:50 pm (UTC)'!
icon
	^ icon ifNil: [
		self icon: presenter svgIcon.
		icon]! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 4/Feb/2026, 2:12:43 pm (UTC)'!
icon: svgDescription
	| svg iconExtent |
	svg := [SVGMainMorph fromStream: (ReadStream on: svgDescription)] 
			on: SVGWarning 
			do: [:warning | warning resume].
	iconExtent := svg morphExtent ifNil:[ svg fullBoundsInOwner extent].
	icon := svg imageForm: (iconExtent normalized * 64) rounded depth: 32
		! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
myPath
	^ (DyboSystem myScriptsPath / presenter title asFileName) assureExistence ! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 5/Feb/2026, 8:52:41 am (UTC)'!
presenter
	^ presenter! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 12/Oct/2025, 1:51:46 pm (UTC)'!
presenter: aPresenterClass
	presenter := aPresenterClass ! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 8:39:28 am (UTC)'!
title
	^ title ifNil: [presenter title]! !

!DKMScript methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 8:39:10 am (UTC)'!
title: aText
	title := aText ! !

!DKMScript methodsFor: 'updating' stamp: 'hlsf 9/Feb/2026, 10:22:16 am (UTC)'!
execute
	| scriptView |
	scriptView :=  Compiler evaluate: self code.
	DKMScript triggerEvent: #compiledDKMScript with: scriptView.
	^ scriptView! !

!DKMScript methodsFor: 'menu' stamp: 'hlsf 12/Oct/2025, 2:14:15 pm (UTC)'!
addCustomMenuItems: menu annoted: view
	(presenter respondsTo: #pragmaMenu) 
		ifTrue: [(CommandBuilder on: presenter pragmaMenu with: view) addToMenu: menu]! !

!DKMScript methodsFor: 'testing' stamp: 'hlsf 9/Feb/2026, 10:21:19 am (UTC)'!
is: aSymbol
	^ aSymbol == #DKMScript or: [super is: aSymbol ]! !

!DKMScript methodsFor: 'scan' stamp: 'hlsf 15/Feb/2026, 1:09:19 pm (UTC)'!
header
" Read the header from the edited code "
	| data |
	data := Dictionary new.
	DKMScript headerFrom: code readStream into: data.
	^ data! !

!DKMScript class methodsFor: 'scan' stamp: 'hlsf 15/Feb/2026, 11:12:34 am (UTC)'!
headerFrom: stream into: data
"	Read the header of this code stream, and install the metadata into the data dictionary"
	stream next = Character doubleQuote ifTrue: [ | header |
		header := stream upTo: Character doubleQuote.			
		header linesDo: [:headerLine | 
			(self metadataFrom: headerLine) ifNotNil: [:someData | data add: someData] ] ]
! !

!DKMScript class methodsFor: 'scan' stamp: 'hlsf 19/Mar/2026, 8:59:20 pm (UTC)'!
metadataFrom: line
"	Read *one* metadata "
	| str key data |
	str  := ReadStream on: line.
	str next = $@ ifFalse: [^ nil].
	key := (str upTo: $:) asSymbol.
	data := str upToEnd withBlanksTrimmed.
	key = #class ifFalse: [data := data asLowercase] .
	key = #tags ifTrue: [data := (data findTokens: ';') collect: [:each | each withBlanksTrimmed asLowercase ]].
	key = #class ifTrue: [data := Smalltalk at: data asSymbol ifAbsent: [DKMPresenter]].
	^ key -> data! !

!DKMScript class methodsFor: 'instance creation' stamp: 'hlsf 12/Oct/2025, 1:51:16 pm (UTC)'!
for: aPresenterClass
	^ self new ::
		presenter: aPresenterClass ! !

!DKMScriptLibrary methodsFor: 'scan' stamp: 'hlsf 15/Feb/2026, 5:01:51 pm (UTC)'!
headerFrom: fileEntry
"	Read the header of this script, and scan its metadata "
	| data |
	data := Dictionary new.
	data at: #file put: fileEntry pathName.
	fileEntry readStreamDo: [:read | DKMScript headerFrom: read into: data].
"	Ensure minimum metadata, make assumptions if needed "
	data at: #title ifAbsentPut: [fileEntry baseName].
	data at: #category ifAbsentPut: [fileEntry parent baseName].
	^ data! !

!DKMScriptLibrary methodsFor: 'scan' stamp: 'hlsf 14/Feb/2026, 8:35:52 am (UTC)'!
scanDirectory: dirEnrty
	dirEnrty 
		allFilesDo:  [:file | scripts add: (self headerFrom: file)]
		matches: [:file | file extension = #st]! !

!DKMScriptLibrary methodsFor: 'scan' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
scanForScripts
	scripts := OrderedCollection new.
	self scanDirectory: DyboSystem scriptsPath.
	self scanDirectory: DyboSystem myScriptsPath.
	^ scripts ! !

!DKMScriptLibrary methodsFor: 'menus' stamp: 'hlsf 14/Feb/2026, 1:16:02 pm (UTC)'!
browse
	self browseFor: nil! !

!DKMScriptLibrary methodsFor: 'menus' stamp: 'hlsf 21/Feb/2026, 9:14:54 am (UTC)'!
browseFor: currentPage
" Open a menu to browse the scripts and drop any selected on in the currentPage"
	| mainMenu subMenu categories |
	targetPage := currentPage.
	mainMenu := MenuMorph entitled: 'Knowledge Models' translated.
	categories := self categories.
	self categories keys sorted do: [:aCategory |
		subMenu := mainMenu 
			add: aCategory capitalized 
			subMenu: (self tagMenuFor: (categories at: aCategory))].
	mainMenu addLine.
	(mainMenu add: 'Scan again' translated target: self action: #resetScripts icon: Theme current refreshIcon)
		setBalloonText: 'Scan again the existing model on the disks, in your "myDybo/myScripts directory". Necessary when manually adding models from external sources.'. 
	mainMenu popUpInWorld ! !

!DKMScriptLibrary methodsFor: 'menus' stamp: 'hlsf 22/Mar/2026, 1:23:22 pm (UTC)'!
tagMenuFor: scriptsByCategory
	| tags tagMenu |
	tagMenu := MenuMorph new.
	tags := Set new.
	scriptsByCategory do: [:aScript | tags addAll: (self tagsOf: aScript)].
	tags sorted do: [:aTag | | scriptsByTag scriptsMenu|
		scriptsMenu := MenuMorph new defaultTarget: self.
		tagMenu add: aTag capitalized subMenu: scriptsMenu.
		scriptsByTag := scriptsByCategory select: [:aScript | (self tagsOf: aScript) includes: aTag].
		scriptsByTag := scriptsByTag sorted: [:scriptA :scriptB | (scriptA at: #title) < (scriptA at: #title)].
		scriptsByTag do: [:metadataScript |
			(scriptsMenu 
				add: (metadataScript at: #title) capitalized 
				action: #openScript: 
				argument: metadataScript) 
					setBalloonText: (self descriptionOf: metadataScript)] ].
	^ tagMenu

	! !

!DKMScriptLibrary methodsFor: 'accessing' stamp: 'hlsf 12/Feb/2026, 6:54:42 pm (UTC)'!
categories
	^ self scripts groupBy: [:aScript | aScript at: #category]
	! !

!DKMScriptLibrary methodsFor: 'accessing' stamp: 'hlsf 6/Mar/2026, 6:09:46 pm (UTC)'!
descriptionOf: metadata
	^ Text streamContents: [:str |
		str nextPutAll: (metadata at: #title ifAbsent: ['no description' translated]) capitalized bold; lf.
		metadata at: #description ifPresent: [:description | str nextPutAll: description capitalized; lf].
		metadata at: #tags ifPresent: [:tags |
			tags do: [:tag | str nextPutAll: ((tag asLowercase pointSize: 9) 
					addAttribute: (TextBackgroundColor color: Color yellow darker))] 
				separatedBy: [str space].
			str lf].
		metadata at: #author ifPresent: [:description | str nextPutAll: description italic] ]
	! !

!DKMScriptLibrary methodsFor: 'accessing' stamp: 'hlsf 21/Feb/2026, 9:03:07 am (UTC)'!
resetScripts
	scripts := nil! !

!DKMScriptLibrary methodsFor: 'accessing' stamp: 'hlsf 12/Feb/2026, 6:41:57 pm (UTC)'!
scripts
	^ scripts ifNil: [self scanForScripts]! !

!DKMScriptLibrary methodsFor: 'accessing' stamp: 'hlsf 22/Mar/2026, 1:22:35 pm (UTC)'!
tagsOf: scriptRecord
	^ scriptRecord at: #tags ifAbsent: [Array with: 'no tag' translated]! !

!DKMScriptLibrary methodsFor: 'updating' stamp: 'hlsf 24/Feb/2026, 7:05:59 pm (UTC)'!
scriptSaved: dkmScript
"	We are informed a script has just been saved on disk.
	Decide what to do with this information"
	| file metadata | 
	file := dkmScript file pathName.
	metadata := dkmScript header.
	scripts 
		detect:  [:aScript | (aScript at: #file) = file]
		ifFound: [:prevMetadata | 
			'Updating existing script in ScriptLibrary.' print.
			metadata associationsDo: [:assoc | prevMetadata at: assoc key put: assoc value]]			
		ifNone: [
			'Adding new script to ScriptLibrary.' print.
			metadata at: #file put: dkmScript file pathName.
			metadata at: #title ifAbsentPut: [dkmScript file baseName].
			metadata at: #category ifAbsentPut: [dkmScript file parent baseName].
			scripts add: metadata]
	! !

!DKMScriptLibrary methodsFor: 'action' stamp: 'hlsf 15/Feb/2026, 5:22:48 pm (UTC)'!
openScript: scriptMetadata
	| dkmScript annotator |
	dkmScript := DKMScript for: (scriptMetadata at: #class).
	dkmScript 
		title: (scriptMetadata at: #title) capitalized ;
		description: (self descriptionOf: scriptMetadata);
		file: (scriptMetadata at: #file) asFileEntry;
		code: dkmScript file textContents.
	annotator := AnnotatorMorph newOn: targetPage presenter for: dkmScript.
	annotator openInHand.! !

!CommandStack methodsFor: 'private' stamp: 'hlsf 10/Sep/2024, 7:00:31 pm (UTC)'!
truncate
	|oldReadLimit|
	oldReadLimit := readLimit.
	readLimit := position.
	oldReadLimit > readLimit ifTrue:
			[readLimit to: oldReadLimit do:
				[:index| collection at: index + 1 put: nil]]! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 10/Sep/2024, 7:00:20 pm (UTC)'!
nextPut: aCommand
	super nextPut: aCommand.
	self truncate.
	^ aCommand ! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 10/Sep/2024, 7:00:26 pm (UTC)'!
previous
	self position = 0 ifTrue: [^nil].
	self position: self position - 1.
	^self peek.! !

!CommandStack methodsFor: 'as yet unclassified' stamp: 'hlsf 26/Oct/2024, 12:58:31 pm (UTC)'!
reset
	super reset.
	self truncate! !

!CommandStack class methodsFor: 'instance creation' stamp: 'hlsf 10/Sep/2024, 7:01:01 pm (UTC)'!
new
	^self on: Array new! !

!DocumentModel methodsFor: 'initialization' stamp: 'hlsf 16/Jul/2026, 9:58:50 am (UTC)'!
initialize
	super initialize.
	dirName := String streamContents: [:s | DateAndTime now filenamePrintOn: s].
	pageBackground := Preferences at: #paperModel! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 17/Mar/2026, 7:08:17 pm (UTC)'!
jpegFilePages
	^ (self path children select: [:each | each extension = 'jpg'])
		sort: [:f1 :f2 | f1 name < f2 name]! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 17/Mar/2026, 7:32:06 pm (UTC)'!
pdfBackgroundForPage: aPageNumber
	| pdfPageBackground |
	pdfPageBackground := PageBackgroundPdf newOn: (self pdfPageAt: aPageNumber).
	^ pdfPageBackground ! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 17/Mar/2026, 7:08:17 pm (UTC)'!
pdfNumberOfPages
	^ self jpegFilePages size! !

!DocumentModel methodsFor: 'accessing pdf' stamp: 'hlsf 17/Mar/2026, 7:10:11 pm (UTC)'!
pdfPageAt: integer
	^ ImageReadWriter formFromFileEntry: (self jpegFilePages at: integer)! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 8:17:17 am (UTC)'!
dirName
	^ dirName ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 1:42:39 pm (UTC)'!
modificationTime
	^ (self path // 'doc.obj') modificationTime ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 3/Mar/2026, 3:06:49 pm (UTC)'!
newPageBackground
	^ pageBackground new! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 8:20:59 pm (UTC)'!
owner
	^ owner ifNil: [
		owner := DyUserData current documentOwner: self.
		owner ifNil: [self error: 'Document model without an owner'].
		owner]! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 2:04:49 pm (UTC)'!
owner: anObject
" a Topic or a Task"
	owner := anObject ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
path
	^ DyboSystem userDataPath / self relPath ! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 6:11:24 pm (UTC)'!
relPath
	^ self owner relPath, '/', self dirName! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 13/Apr/2026, 10:31:01 am (UTC)'!
title
	^ title ifNil: [dirName]! !

!DocumentModel methodsFor: 'accessing' stamp: 'hlsf 13/Apr/2026, 10:31:18 am (UTC)'!
title: aString
	title := aString ! !

!DocumentModel methodsFor: 'testing' stamp: 'hlsf 17/Apr/2026, 6:11:07 pm (UTC)'!
isCourse
" Is the document a teaching document, therefore part of a course/topic "
	^ self owner class = DyTopic! !

!DocumentModel methodsFor: 'testing' stamp: 'hlsf 15/Apr/2026, 5:57:41 pm (UTC)'!
isTask
" Is the document a task document, therefore part of a task in the agenda "
	^ self isCourse not! !

!DocumentModel methodsFor: 'printing' stamp: 'hlsf 16/Apr/2026, 8:55:53 am (UTC)'!
description
	^ self isCourse 
		ifTrue:  [self descriptionCourse ]
		ifFalse: [self descriptionTask ]! !

!DocumentModel methodsFor: 'printing' stamp: 'hlsf 10/May/2026, 9:56:41 am (UTC)'!
descriptionCourse
	^ String streamContents: [:str | str 
		nextPutAll: 'Document in class {1}' translated;	" Class group "
		nextPut: Character lf;
		print: self owner course;											" Course " 
		nextPut: $/; print: self owner]										" Topic "! !

!DocumentModel methodsFor: 'printing' stamp: 'hlsf 10/May/2026, 9:59:25 am (UTC)'!
descriptionTask
	^ String streamContents: [:str | str 
		nextPutAll: 'Homework for class {1}' translated]! !

!DocumentModel methodsFor: 'printing' stamp: 'hlsf 17/Apr/2026, 6:11:19 pm (UTC)'!
printOn: str
	self isCourse 
		ifTrue: [str 
			nextPutAll: 'Document in ';
			print: self owner; nextPut: $/; 
			print: self owner course; nextPut: $/; 
			print: self owner course classGroup]
		ifFalse: [str nextPutAll: 'Document in task '; print: self owner]! !

!DocumentModel methodsFor: 'persistence' stamp: 'hlsf 17/Apr/2026, 6:15:28 pm (UTC)'!
storeDataOn: aDataStream
	| backup |
	backup := self backupThenNilAttributes.
	super storeDataOn: aDataStream.
	self restoreAttributes: backup! !

!DocumentModel methodsFor: 'persistence' stamp: 'hlsf 17/Apr/2026, 6:13:43 pm (UTC)'!
unsavedAttributes
	^ #(owner)! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:51:46 pm (UTC)'!
color
	^ color! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:51:39 pm (UTC)'!
color: aColor
	color := aColor ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 8:38:09 am (UTC)'!
control1
	^ c1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 7:21:04 pm (UTC)'!
end
	^ p2! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 1/Apr/2023, 8:44:40 pm (UTC)'!
end: aPoint
	 p2 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 7:20:59 pm (UTC)'!
start
	^ p1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 1/Apr/2023, 8:44:51 pm (UTC)'!
start: aPoint
	p1 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 8:39:07 am (UTC)'!
start: startPoint end: endPoint control1: controlPoint
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:51:54 pm (UTC)'!
width
	^ width ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 23/Mar/2023, 12:52:12 pm (UTC)'!
width: aNumber
	width := aNumber ! !

!Bezier2Morph methodsFor: 'printing' stamp: 'hlsf 12/May/2024, 4:21:56 pm (UTC)'!
printOn: str
	super printOn: str.
	str nextPutAll: ' p1: ';
		nextPutAll: (p1 printStringFractionDigits: 1);
		nextPutAll: ' p2: ';
		nextPutAll: (p2 printStringFractionDigits: 1);		
		nextPutAll: ' c: ';
		nextPutAll: (c1 ifNotNil: [c1 printStringFractionDigits: 1] ifNil: ['nil'])
	
! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:58:59 am (UTC)'!
drawControlsOn: canvas
	canvas fillColor: `Color red` do: [
		canvas circleCenter: c1 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:56:19 am (UTC)'!
drawCurveOn: canvas
	canvas 
		moveTo: p1;
		quadraticBezierTo: p2 control: c1! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 8/Apr/2023, 11:11:24 am (UTC)'!
drawOn: canvas
	canvas strokeWidth: width color: color do: [self drawCurveOn: canvas ].
	self showTangents ifTrue: [self drawTangentsOn: canvas].
	self showControls ifTrue: [self drawControlsOn: canvas].
	self showPoints ifTrue: [self drawPointsOn: canvas]
	! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 1/Apr/2023, 1:57:18 pm (UTC)'!
drawPointsOn: canvas
	canvas fillColor: Color blue do: [canvas circleCenter: p1 radius: 1.5].
	canvas fillColor: Color blue do: [canvas circleCenter: p2 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:58:04 am (UTC)'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: `Color green` do: [		
			canvas 
				moveTo: p1;
				lineTo: c1;
				lineTo: p2]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 3/Apr/2023, 5:33:00 pm (UTC)'!
is: aSymbol
	^ aSymbol == #BezierMorph or: [ super is: aSymbol ]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:20:10 am (UTC)'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:20:15 am (UTC)'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:20:20 am (UTC)'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:33:33 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:35:57 pm (UTC)'!
control2
	^ c2! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:37:13 pm (UTC)'!
start: startPoint end: endPoint control1: controlPoint1 
	self shouldNotImplement ! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:29:51 pm (UTC)'!
start: startPoint end: endPoint control1: controlPoint1 control2: controlPoint2
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint1.
	c2 := controlPoint2 ! !

!Bezier3Morph methodsFor: 'printing' stamp: 'hlsf 12/May/2024, 4:21:42 pm (UTC)'!
printOn: str
	super printOn: str.
	str
		nextPutAll: ' c2: ';
		nextPutAll: (c2 ifNotNil: [c2 printStringFractionDigits: 1] ifNil: ['nil'])
	
! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:59:33 am (UTC)'!
drawControlsOn: canvas
	canvas fillColor: `Color red` do: [
		canvas 
			circleCenter: c1 radius: 1.5;
			circleCenter: c2 radius: 1.5]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:56:04 am (UTC)'!
drawCurveOn: canvas
	canvas moveTo: p1.
	c1 
		ifNil: [canvas lineTo: p2]
		ifNotNil: [canvas cubicBezierTo: p2 control1: c1 control2: c2]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 7:58:32 am (UTC)'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: `Color green` do: [		
				canvas moveTo: p1;
					lineTo: c1;
					moveTo: p2;
					lineTo: c2] ! !

!LineStrokeMorph methodsFor: 'drawing' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
drawOn: canvas
	| samples lastIndex |
	owner class ~= PaperMorph ifTrue: [^ self].
	samples := owner samples.
	lastIndex := owner sampleIndex - 1.
	lastIndex ifNotZero: [
		canvas strokeWidth: owner strokeTool width color: owner strokeTool color do: [
			canvas moveTo: samples first.
			2 to: lastIndex do: [:i | canvas lineTo: ( samples at: i )].
			owner lastMousePosition ifNotNil: [:postiion | canvas lineTo: postiion ]
		]
	]! !

!LineStrokeMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:33:58 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!ShapeMorph methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:30:23 pm (UTC)'!
color: aColor
	color := aColor! !

!ShapeMorph methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:29:55 pm (UTC)'!
endPoint: aPoint
	endPoint := aPoint! !

!ShapeMorph methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:29:42 pm (UTC)'!
startPoint
	^ startPoint! !

!ShapeMorph methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:29:35 pm (UTC)'!
startPoint: aPoint
	startPoint := aPoint! !

!ShapeMorph methodsFor: 'accessing' stamp: 'hlsf 12/Mar/2026, 7:30:37 pm (UTC)'!
width: number
	width := number! !

!ShapeMorph methodsFor: 'converting' stamp: 'hlsf 14/Mar/2026, 11:40:05 am (UTC)'!
asStrokeGroupsIn: aPaper

	self subclassResponsibility! !

!ShapeMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 12/Mar/2026, 7:29:18 pm (UTC)'!
startPoint: start endPoint: end
	^ self new
		startPoint: start;
		endPoint: end;
		yourself! !

!LineShape methodsFor: 'drawing' stamp: 'hlsf 12/Mar/2026, 7:32:09 pm (UTC)'!
drawOn: canvas
	canvas line: startPoint to:endPoint width: width color: color! !

!LineShape methodsFor: 'converting' stamp: 'hlsf 5/Apr/2026, 2:30:33 pm (UTC)'!
asStrokeGroupsIn: aPaper
	^ Array with: (aPaper lineWritingFrom: startPoint to: endPoint)! !

!RectangularShape methodsFor: 'geometry' stamp: 'hlsf 14/Mar/2026, 11:10:33 am (UTC)'!
encompassingRectangle
	^ Rectangle encompassingInteger: (Array with: startPoint with: endPoint)! !

!RectangularShape methodsFor: 'converting' stamp: 'hlsf 5/Apr/2026, 2:31:25 pm (UTC)'!
asStrokeGroupsIn: aPaper
	| rect strokeGroups corners |
	rect := self encompassingRectangle.
	corners := #(topLeft topRight bottomRight bottomLeft).
	strokeGroups := corners withIndexCollect: [:corner :cornerIndex |
		aPaper 
			lineWritingFrom: (rect perform: corner) 
			to: (rect perform: (corners atWrap: cornerIndex + 1))].
	^ strokeGroups ! !

!RectangularShape methodsFor: 'drawing' stamp: 'hlsf 14/Mar/2026, 11:43:13 am (UTC)'!
drawOn: canvas 
	canvas 
		frameRectangle: (self encompassingRectangle outsetBy: width / 2.0)
		borderWidth: width 
		color: color! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 29/Dec/2024, 8:36:25 am (UTC)'!
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

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 12/May/2024, 4:11:04 pm (UTC)'!
is: aSymbol
	^ aSymbol == #StrokeGroupMorph or: [ super is: aSymbol ]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:18:06 am (UTC)'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:18:22 am (UTC)'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 8/Apr/2023, 10:18:38 am (UTC)'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 8/Apr/2023, 1:55:34 pm (UTC)'!
color: aColor
	submorphs do: [:each | each color: aColor].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 4:22:24 pm (UTC)'!
lastStroke
	^ submorphs ifEmpty: [nil] ifNotEmpty: [self firstSubmorph]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
strokeTool
	^ owner strokeTool ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 8/Apr/2023, 1:56:04 pm (UTC)'!
width: aNumber
	submorphs do: [:each | each width: aNumber ].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 8/Sep/2024, 2:14:23 pm (UTC)'!
addStroke: aStroke
	self addMorph: aStroke.
	aStroke visible: false! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
removeStrokesAt: positionInWorld
" Remove the strokes under this positionInWorld "
	| toDelete |
"	self halt."
	toDelete := submorphs select: [:aBezier | aBezier isCloserThan: self strokeTool width toPixel: positionInWorld].
	self removeAllMorphsIn: toDelete.
	^ toDelete! !

!StrokeGroupMorph methodsFor: 'geometry services' stamp: 'hlsf 29/Sep/2024, 8:22:48 pm (UTC)'!
isCloserThan: distance toPixel: positionInWorld
	^ submorphs anySatisfy: [:each | 
		each bitMask.
		each isCloserThan: distance toPixel: positionInWorld]! !

!StrokeGroupMorph methodsFor: 'clean up' stamp: 'hlsf 8/Sep/2024, 5:03:55 pm (UTC)'!
deleteBitMasks
	submorphs do: [:each| each removeProperty: #bitMask]! !

!StrokeGroupMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 21/Jan/2025, 8:17:21 pm (UTC)'!
haloShowsCoordinateSystem
	^ false! !

!StrokeGroupMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 5/Feb/2026, 5:10:34 pm (UTC)'!
initialize
	super initialize.
	self lock: true! !

!StrokeGroupMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:34:47 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!PageMorph methodsFor: 'geometry' stamp: 'hlsf 27/Feb/2026, 6:48:31 am (UTC)'!
scale: newScale
	(pageBackground is: #PageBackgroundPdf) ifTrue: [
		pageBackground resampleFrom: self scale to: newScale in: self documentModel path].
	super scale: newScale! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 26/Sep/2024, 9:35:01 am (UTC)'!
annotators
	^submorphs select: [:morph | morph is: #AnnotatorMorph]! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 27/Feb/2026, 6:50:11 am (UTC)'!
background: aPageBackground
	pageBackground := aPageBackground ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 15/Nov/2024, 8:27:26 pm (UTC)'!
documentModel
	^ presenter model! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 23/Oct/2024, 2:32:26 pm (UTC)'!
grabAnnotatorsAt: localPosition
" Select the annotators under the local position  "
	^ self annotators select: [:aMorph | aMorph fullBoundsInOwner containsPoint: localPosition]
	
	! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 24/Jan/2025, 5:49:55 pm (UTC)'!
lockAnnoted
	self annotators do: #lockAnnoted ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 17/Mar/2026, 7:30:49 pm (UTC)'!
number
	^ presenter view pageNumber: self! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 12/Oct/2024, 9:17:04 am (UTC)'!
pageContainer
	^ owner! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 2:13:35 pm (UTC)'!
paper
	^ paper ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 23/Sep/2025, 7:26:45 pm (UTC)'!
presenter
	^ presenter! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 2:00:16 pm (UTC)'!
presenter: documentPresenter
	presenter := documentPresenter ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 19/Feb/2025, 5:23:00 pm (UTC)'!
unlockAnnoted
" See if annotator may unlock their annoted object "
	self annotators do: #reconcileToFrozeenState ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 14/Jul/2026, 10:42:33 am (UTC)'!
viewport
" I represent my visible surface to the user, in own coordinates system "
	^ presenter isExporingPDF 
		ifTrue: [self localBounds] 
		ifFalse: [	((self internalize: 0@0) max: 0@0) 
			corner: ((self internalize: owner morphExtent) min: extent)]! !

!PageMorph methodsFor: 'initialization' stamp: 'hlsf 5/Apr/2026, 2:21:28 pm (UTC)'!
initialize
	super initialize.
	paper := PaperMorph newOn: presenter.
	paper stroker: StrokerBezier3XP.
	self addMorphBack: pageBackground position: 0@0;
		addMorphFront: paper position: 0@0.
	self morphExtent: pageBackground morphExtent.
	paper morphExtent: pageBackground morphExtent! !

!PageMorph methodsFor: 'initialization' stamp: 'hlsf 17/Mar/2026, 6:52:12 pm (UTC)'!
release
" Free any ressource I am using when I am deleted"
	pageBackground release! !

!PageMorph methodsFor: 'initialization' stamp: 'hlsf 3/Mar/2026, 3:28:05 pm (UTC)'!
replaceBackgroundBy: newPageBackground
	self replaceSubmorph: pageBackground by: newPageBackground.
	pageBackground := newPageBackground ! !

!PageMorph methodsFor: 'geometry testing' stamp: 'hlsf 9/Feb/2025, 3:14:50 pm (UTC)'!
clipsSubmorphs
	^ false! !

!PageMorph methodsFor: 'drawing' stamp: 'hlsf 8/Dec/2024, 4:57:15 pm (UTC)'!
drawOn: canvas! !

!PageMorph methodsFor: 'testing' stamp: 'hlsf 26/Sep/2024, 8:25:19 am (UTC)'!
is: aSymbol
	^ aSymbol == #PageMorph or: [super is: aSymbol ]! !

!PageMorph methodsFor: 'testing' stamp: 'hlsf 3/Mar/2026, 3:22:24 pm (UTC)'!
isBackground: aClass
	^ pageBackground class = aClass ! !

!PageMorph methodsFor: 'selection' stamp: 'hlsf 19/Oct/2024, 8:08:01 am (UTC)'!
clearSelection
	" Annotators are kind of Paper "
	self annotators do: [:each | each clearSelection].
	paper clearSelection.! !

!PageMorph methodsFor: 'selection' stamp: 'hlsf 18/Oct/2024, 9:32:03 pm (UTC)'!
grabMorphsIn: rect
" Select the morph in the rect and which are grabbable: StrokeGroup in the paper and Annotator in self "
	| grabbed |
	grabbed := OrderedCollection new.
	grabbed addAll: (paper grabMorphsIn: rect);
		addAll: (self annotators select: [:aMorph | rect containsRect: aMorph displayFullBounds]).
	^ grabbed
	! !

!PageMorph methodsFor: 'event handling testing' stamp: 'hlsf 24/Oct/2024, 1:05:09 pm (UTC)'!
handlesMouseScroll: scrollEvent
	^ true! !

!PageMorph methodsFor: 'events' stamp: 'hlsf 24/Oct/2024, 1:21:03 pm (UTC)'!
mouseScroll: evt localPosition: localEventPosition
	evt direction == #down
		ifTrue: [ presenter zoomAction: -0.02 at: (self externalize:  localEventPosition) ].
	evt direction == #up
		ifTrue: [ presenter zoomAction: 0.02 at: (self externalize: localEventPosition) ].
! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 14/Apr/2026, 12:47:06 pm (UTC)'!
acceptDroppingAnnotator: annotator event: dropEvent
	presenter pointerTool.
	self addMorphFront: annotator.
	annotator morphPosition:  (self internalizeFromWorld: dropEvent eventPosition) - annotator annotated fullBoundsInOwner center.
	presenter modified
! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 14/Apr/2026, 12:47:16 pm (UTC)'!
acceptDroppingFromFlap: flapItem event: dropEvent
	| dropMorph |
	dropMorph := (flapItem object is: #DKMScript) 
		ifTrue:  [presenter pointerTool.
			AnnotatorMorph newOn: presenter for: flapItem object copy]
		ifFalse: [flapItem object copy].
	self 	addMorphFront: dropMorph.
	dropMorph morphPosition: (self internalizeFromWorld: dropEvent eventPosition) - dropMorph fullBoundsInOwner center.
	flapItem flap fold.
	presenter modified! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 14/Feb/2026, 3:05:58 pm (UTC)'!
acceptDroppingMorph: aMorph event: dropEvent
	(aMorph is: #FlapItem) ifTrue: [self acceptDroppingFromFlap: aMorph event: dropEvent].
	(aMorph is: #AnnotatorMorph) ifTrue: [self acceptDroppingAnnotator: aMorph event: dropEvent]! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 9/Feb/2025, 4:15:45 pm (UTC)'!
allowsMorphDrop
	^ true! !

!PageMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 14/Feb/2026, 3:37:18 pm (UTC)'!
wantsDroppedMorph: aMorph event: evt
	^ (aMorph is: #FlapItem)
	or: [aMorph is: #AnnotatorMorph]! !

!PageMorph class methodsFor: 'instance creation' stamp: 'hlsf 27/Feb/2026, 7:24:08 am (UTC)'!
newOn: documentPresenter background: aPageBackground
	^ self basicNew
		background: aPageBackground ;
		presenter: documentPresenter ;
		initialize;
		yourself! !

!PageMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:34:29 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 18/Aug/2024, 2:43:08 pm (UTC)'!
lastMousePosition
"In local coordinate "
	^ lastMousePosition ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/Jan/2025, 8:48:55 am (UTC)'!
lastStroke
" Return the last strokes, if any, added to the last stroke group "
	^ currentStrokeGroup lastStroke 

! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 2:01:24 pm (UTC)'!
presenter: documentPresenter
	presenter := documentPresenter ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 3/Apr/2023, 5:19:43 pm (UTC)'!
sampleIndex
	^ sampleIndex ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 1/Apr/2023, 10:54:30 am (UTC)'!
samples
	^ samples! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 10:39:15 am (UTC)'!
samplesQty
"Number of samples before instantiating a new hand stroke"
	^ samples size! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
strokeTool
	^ presenter strokeTool ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 2/Apr/2023, 12:28:07 pm (UTC)'!
stroker: aStrokerClass
	stroker := aStrokerClass on: self.
	samples := Array new: stroker samplesQty.
	sampleIndex := 1.! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 2:01:33 pm (UTC)'!
tool
	^ presenter tool! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 7/Sep/2025, 3:54:29 pm (UTC)'!
writingTool
	^ presenter writingTool ! !

!PaperMorph methodsFor: 'event handling testing' stamp: 'hlsf 23/Oct/2024, 5:02:49 pm (UTC)'!
handlesMouseDown: event
	^ true
! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 11/Oct/2025, 3:49:17 pm (UTC)'!
mouseButton1Down: event localPosition: localPosition
	self tool handlePress: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 5/Sep/2024, 1:38:15 pm (UTC)'!
mouseButton1Up: event localPosition: localPosition
	self tool handleRelease: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 14/Dec/2024, 7:28:42 am (UTC)'!
mouseButton2Up: evt localPosition: localPosition
	presenter view  openCircularToolbar! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 24/Sep/2025, 12:39:24 pm (UTC)'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [^ self ].
	self tool handleMouseAt: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
mouseMove2: event localPosition: endPosition
" With mouse trail  enabled "
	| needUpdate |
	event mouseButton1Pressed not ifTrue: [^ self ].
	needUpdate := false.
	event trail do: [:aPosition | | localPosition |
		localPosition := self internalize: aPosition.
		((samples at: sampleIndex -1) squaredDistanceTo: localPosition) >= self strokeTool threshold 		ifTrue: [	
			samples at: sampleIndex put: localPosition.
			sampleIndex := sampleIndex + 1.
			sampleIndex > self samplesQty			ifTrue: [
				needUpdate := true.
				currentStrokeGroup 
					addMorph: stroker newStroke.
				self resetSamplingTo: localPosition] 		] ].
	needUpdate ifTrue: [self redrawNeeded]! !

!PaperMorph methodsFor: 'geometry testing' stamp: 'hlsf 23/Mar/2023, 7:23:17 pm (UTC)'!
requiresVectorCanvas
	^ true! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 20/Oct/2024, 2:02:48 pm (UTC)'!
initialize
	super initialize.
	self stroker: StrokerBezier2XP.
	self 
		addMorph: (lineMorphs := LineStrokeMorph new)! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 26/Sep/2024, 8:42:28 am (UTC)'!
is: aSymbol
	^ aSymbol == #PaperMorph or: [super is: aSymbol ]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 27/Mar/2023, 7:48:57 pm (UTC)'!
showControls
	^ self valueOfProperty: #showControls ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 27/Mar/2023, 7:48:31 pm (UTC)'!
showPoints
	^ self valueOfProperty: #showPoints ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 27/Mar/2023, 7:47:26 pm (UTC)'!
showTangents
	^ self valueOfProperty: #showTangents ifAbsent: [false]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
addStandardHaloMenuItemsTo: aCustomMenu hand: aHandMorph
	aCustomMenu 
		add: 'sampling threshold' action: #setThreshold;
		add: 'width' action: #setWidth;
		addUpdating: #adjustWidthString target: self strokeTool action: #adjustWidthOnOff;
		add: 'color' action: #setColor;		
		addUpdating: #pointsString action: #pointsOnOff;
		addUpdating: #controlsString action: #controlsOnOff;
		addUpdating: #tangentsString action: #tangentsOnOff;
		add: 'clear' action: #removeStrokes! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 27/Mar/2023, 7:52:11 pm (UTC)'!
controlsOnOff
	self 
		setProperty: #showControls
		toValue: self showControls not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 11/Apr/2023, 7:12:39 am (UTC)'!
controlsString
	^ self showControls asMenuItemTextPrefix , 
		'show controls'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 27/Mar/2023, 7:52:05 pm (UTC)'!
pointsOnOff
	self 
		setProperty: #showPoints
		toValue: self showPoints not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 11/Apr/2023, 7:12:54 am (UTC)'!
pointsString
	^ self showPoints asMenuItemTextPrefix , 
		'show points'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 12/May/2024, 4:11:09 pm (UTC)'!
removeStrokes
	self removeAllMorphsIn: (submorphs select: [:aMorph | aMorph is: #StrokeGroupMorph])! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
setColor
	self 
		request: 'Color (i.e. ''Color red'')'
		initialAnswer: self strokeTool color asString
		verifying: [:aString | 		[Compiler evaluate: aString. true] on: Error do: [false] ]
		do: [:aString | | aColor |
			aColor := Compiler evaluate: aString.
			(aColor isKindOf: Color) ifTrue: [self strokeTool color: aColor ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
setThreshold
	self 
		request: 'Minimum screen distance between two consecutive samples'
		initialAnswer: self strokeTool threshold sqrt asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | integer |
			integer := aString asNumber.
			(integer notNil and: [integer >=0]) ifTrue: [
				self strokeTool threshold: integer squared] 
			]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
setWidth
	self 
		request: 'Pen width in pixel, float in ]0 ; 20]'
		initialAnswer: self strokeTool width asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | theWidth |
			theWidth := aString asNumber.
			(theWidth notNil and: [theWidth >0 and: [theWidth <= 20] ]) 	ifTrue: [
				self strokeTool width: theWidth ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 27/Mar/2023, 7:52:18 pm (UTC)'!
tangentsOnOff
	self 
		setProperty: #showTangents
		toValue: self showTangents not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 11/Apr/2023, 7:13:03 am (UTC)'!
tangentsString
	^ self showTangents asMenuItemTextPrefix , 
		'show tangents'! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 8/Apr/2023, 9:45:22 am (UTC)'!
resetSamplingTo: aPoint
" We start sampling mouse position, an initial mouse position may be given "
	sampleIndex := 1.
	aPoint ifNotNil: [
		samples at: 1 put: aPoint.
		sampleIndex := sampleIndex + 1]
! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 8/Sep/2024, 2:47:08 pm (UTC)'!
strokeGroups
	^ submorphs select: [:each | each is: #StrokeGroupMorph ]! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 7/Sep/2025, 3:52:33 pm (UTC)'!
strokeGroupsAt: worldPosition
	^ submorphs select: [:each |
		(each is: #StrokeGroupMorph) 
		and: [each isCloserThan: self strokeTool width toPixel: worldPosition ] ]! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 14/Mar/2026, 11:26:03 am (UTC)'!
endWritingAt: localPosition
	samples at: sampleIndex put: localPosition.
	sampleIndex := sampleIndex + 1.
	"In case there is not enought sample, clone the last one"
	sampleIndex to: self samplesQty do: [:i | samples at: i put: localPosition].
	currentStrokeGroup 
		addStroke: stroker newStroke;
		redrawNeeded.
	self resetSamplingTo: nil.
	lastMousePosition := nil.
	lineMorphs redrawNeeded;
		comeToFront.
	^ currentStrokeGroup 
! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 5/Apr/2026, 2:28:21 pm (UTC)'!
lineWritingFrom: startPoint to: endPoint
	| legacyStroker result |	
	legacyStroker := stroker class.
	self stroker: StrokerBezier2.
	self startWritingAt: startPoint.
	result := self endWritingAt: endPoint.
	self stroker: legacyStroker.
	^ result! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 4/Jan/2025, 1:44:43 pm (UTC)'!
startWritingAt: localPosition
" Initilize the user writing "
	self resetSamplingTo: localPosition.
	self addMorph: (currentStrokeGroup := StrokeGroupMorph new).
	"Minium squared distance to accept a new sample "
	distanceThreshold := 16.0 / owner scale! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 4/Jan/2025, 12:55:34 pm (UTC)'!
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

!PaperMorph methodsFor: 'drawing' stamp: 'hlsf 3/Jan/2025, 8:00:17 am (UTC)'!
drawOn: canvas
	presenter isSaved ifFalse: [
		canvas frameRectangle: self localBounds borderWidth: 2 color: `Color red`]! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 19/Oct/2024, 8:07:27 am (UTC)'!
clearSelection
	self selectionArea: nil! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 19/Oct/2024, 1:16:38 pm (UTC)'!
grabMorphsIn: rect
" Select stroke group inside a Rectangle "
	^ submorphs select: [:aMorph |
		(aMorph is: #StrokeGroupMorph) and: [rect containsRect: aMorph displayFullBounds] ]! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 10/Mar/2026, 5:27:05 pm (UTC)'!
selectionArea: rect
"set, update or discard the selection area"
	(rect isNil and: [selectionMorph notNil]) ifTrue: [
		self removeMorph: selectionMorph.
		selectionMorph := nil.		
		^ self].
	rect ifNotNil: [
		selectionMorph 
			ifNil:  [selectionMorph := BorderedBoxMorph new
					color: (Color brown alpha: 0.2);
					borderWidth: 2;
					borderColor: Color brown;
					morphExtent: rect extent.
				self addMorph: selectionMorph position: rect corner ]
			ifNotNil: [selectionMorph morphPosition: rect origin;
				morphExtent: rect extent ]
	]
		
			
			! !

!PaperMorph methodsFor: 'selection' stamp: 'hlsf 18/Oct/2024, 7:24:00 pm (UTC)'!
selectionMorph
	^ selectionMorph ! !

!PaperMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 21/Jan/2025, 8:17:02 pm (UTC)'!
haloShowsCoordinateSystem
	^ false! !

!PaperMorph class methodsFor: 'instance creation' stamp: 'hlsf 5/Sep/2024, 1:58:40 pm (UTC)'!
newOn: documentPresenter
	^ self new
		presenter: documentPresenter;
		yourself! !

!PaperMorph class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:34:39 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 15/Jul/2026, 10:25:35 am (UTC)'!
annotate: aPlacedMorph
| annotedExtent formerExtent |
	annotatedMorph ifNotNil: [
		formerExtent := annotatedMorph morphExtent.
		self removeMorph: annotatedMorph].
	annotatedMorph := aPlacedMorph.
	formerExtent ifNotNil: [annotatedMorph morphExtent: formerExtent].
	annotedExtent := annotatedMorph displayBounds 
		ifNil:[annotatedMorph bitMask extent]
		ifNotNil: [annotatedMorph displayBounds extent].		
	annotatedMorph removeProperty: #bitMask.
	self morphExtent: annotedExtent + (self frameWidth * 2) asPoint .
	self addMorphBack: annotatedMorph position: self frameWidth asPoint.
"	Were we in frozen state? if so, freeze this new annotated morph "
	self freeze: self isFrozen! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 31/Aug/2025, 9:26:04 am (UTC)'!
annotated
	^ annotatedMorph ! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 5/Feb/2026, 10:05:59 am (UTC)'!
frameWidth
	^ 12  / ((self scale max: 0.8) * (owner ifNotNil: [ owner scale max: 0.8] ifNil: [1]))! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 11/Jun/2026, 9:44:38 am (UTC)'!
freeze: aBoolean
	aBoolean 
		ifTrue: [annotatedMorph triggerEvent: #leaveAnnotator.
			self lockAnnoted]
		ifFalse: [	annotatedMorph unlock]! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 31/Aug/2025, 9:25:11 am (UTC)'!
lockAnnoted
	annotatedMorph 
		lock;
		keyboardFocusChange: false.
	" Ensure the keyboard focus is really lost "
	annotatedMorph submorphsDo: [:each | each keyboardFocusChange: false]! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 8/Mar/2025, 9:18:23 am (UTC)'!
script
	^ script! !

!AnnotatorMorph methodsFor: 'accessing' stamp: 'hlsf 22/Feb/2025, 9:14:52 pm (UTC)'!
script: aDyboScript
	script := aDyboScript ! !

!AnnotatorMorph methodsFor: 'drawing' stamp: 'hlsf 11/Jun/2026, 9:43:52 am (UTC)'!
drawOn: aCanvas 
	self halo ifNotNil: [
		aCanvas 
			frameRectangle: self localBounds 
			borderWidth: self frameWidth 
			color: `Color gray alpha: 0.2`]! !

!AnnotatorMorph methodsFor: 'dropping/grabbing' stamp: 'hlsf 26/Feb/2026, 8:16:13 am (UTC)'!
wantsToBeDroppedInto: aMorph 
	^ aMorph is: #PageMorph ! !

!AnnotatorMorph methodsFor: 'event handling testing' stamp: 'hlsf 23/Oct/2024, 5:03:41 pm (UTC)'!
handlesMouseDown: event
" We do not interact directly with annotator when pointer tool. 
  We interect through the tool "
	^ (presenter isTool: #pointer) not
	! !

!AnnotatorMorph methodsFor: 'event handling testing' stamp: 'hlsf 25/Jan/2025, 5:12:57 pm (UTC)'!
handlesMouseOver: event
	^ presenter isTool: #pointer! !

!AnnotatorMorph methodsFor: 'events' stamp: 'hlsf 11/Jun/2026, 9:50:42 am (UTC)'!
mouseEnter: evt
	| myInnerFrame |
	self isFrozen ifFalse: [annotatedMorph triggerEvent: #enterAnnotator].
	myInnerFrame := (self externalizeBoundsToWorld: self localBounds) insetBy: 20.
	(myInnerFrame containsPoint: evt eventPosition) ifTrue: [^ self].
	self removeAlarm: #removeHalo.
	self show.
	self addHalo.
! !

!AnnotatorMorph methodsFor: 'events' stamp: 'hlsf 10/Mar/2026, 5:02:52 pm (UTC)'!
mouseLeave: evt
	self addAlarm: #removeHalo after: 2000.
	annotatedMorph triggerEvent: #leaveAnnotator! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 31/Aug/2025, 9:25:31 am (UTC)'!
adjustBounds
" Adjust my extent and position so that all my submoprhs are whithin my bounds.
  We ensure the annotated position is not shifted in the page!!
 " 
	| annotatedPosition deltaPosition |
	annotatedPosition := self externalize: annotatedMorph morphPosition.
	self adjustBoundsTo: (self externalizeBoundingRectOf: (self topLeftCorner corner: self bottomRightCorner)).
	deltaPosition := annotatedPosition - (self externalize: annotatedMorph morphPosition).
	self morphPosition: self morphPosition + deltaPosition
		! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 24/Jan/2025, 5:37:14 pm (UTC)'!
adjustBoundsTo: newBoundsInOwner
" adjust my bounds and translate my submoprhs accordingly
 " 
	| translate |
	translate := (newBoundsInOwner origin - self fullBoundsInOwner origin) asIntegerPoint.
	self fitInto: (newBoundsInOwner origin asIntegerPoint corner: newBoundsInOwner corner asIntegerPoint). 
	self submorphsDo: [:each | each morphPosition: each morphPosition - translate ]! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 24/Jan/2025, 5:39:03 pm (UTC)'!
bottomRightCorner
" 
	the bottom right corner of the rectangle surrounding all my submorphs
"
	| corner |
	corner := 0@0.
	self submorphsDo: [:each | corner := corner max: each fullBoundsInOwner corner].
	^ corner + self frameWidth
	! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 23/Jan/2025, 5:17:47 pm (UTC)'!
morphCenter
	^ self fullBoundsInOwner center! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 23/Jan/2025, 5:19:43 pm (UTC)'!
morphCenter: newCenter
	^ self morphPosition: self  morphPosition + (newCenter - self morphCenter)! !

!AnnotatorMorph methodsFor: 'geometry' stamp: 'hlsf 31/Aug/2025, 9:06:32 am (UTC)'!
topLeftCorner
" 
	the top left corner of the rectangle surrounding all my submorphs
"
	| corner |
	corner := extent.
	self submorphsDo: [:each | corner := corner min: each  fullBoundsInOwner origin].
	^ corner - self frameWidth
	! !

!AnnotatorMorph methodsFor: 'halo' stamp: 'hlsf 9/Feb/2026, 10:22:31 am (UTC)'!
editAnnoted
	| editor | 
	editor := DKMScriptEditor open: script label: script title ::
		annotator: self.
	editor resize: presenter window fullBoundsInOwner.
	self removeHalo.
	^ editor! !

!AnnotatorMorph methodsFor: 'halo' stamp: 'hlsf 7/Feb/2026, 9:11:16 am (UTC)'!
haloSpecifications
	^ {	"selector 						horiz 			vert 			color info 			icon key	"
		{#addDismissHandle:.			#left.			#top.			#(red).				#haloAnnDismissIcon. 	'Remove' translated}.
		{#addMenuHandle:. 			#leftCenter.	#top.			#(blue darker).		#haloMenuIcon.		'Menu' translated}.
		{#addEditAnnotatedHandle:.	#right.		 	#topCenter.	#(orange darker).	#haloAnnEditIcon.		'Edit' translated}.
		{#addDragHandle:.			#center.		#top.			#(brown).			#haloAnnDragIcon. 	'Move' translated}.
		{#addInspectHandle:.			#right.			#center.		#(orange lighter).	#haloAnnInspectIcon. 	'Inspect' translated}.
		{#addRotateHandle:.			#left.			#bottom.		#(blue).			#haloAnnRotateIcon.	'Rotate' translated}.		
		{#addResizeAnnotatedHandle:.#right.			#bottom.		#(yellow).			#haloAnnResizeIcon. 	'Change size' translated}.
		{#addHelpHandle:.				#center.		#bottom.		#(lightBlue).		#haloAnnHelpIcon. 	'Help' translated}
	} collect: [:anArray | HaloSpec from: anArray]! !

!AnnotatorMorph methodsFor: 'halo' stamp: 'hlsf 31/Aug/2025, 9:25:11 am (UTC)'!
inspectAnnoted
	^ annotatedMorph inspect! !

!AnnotatorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 22/Mar/2026, 2:03:32 pm (UTC)'!
balloonText
	^ script description ! !

!AnnotatorMorph methodsFor: 'halos and balloon help' stamp: 'hlsf 22/Mar/2026, 2:08:11 pm (UTC)'!
wantsBalloon
	^ false! !

!AnnotatorMorph methodsFor: 'initialization' stamp: 'hlsf 15/Jul/2026, 10:26:57 am (UTC)'!
initialize
	super initialize.
	frozen := false.
	self annotate: script execute! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 15/Jul/2026, 10:28:58 am (UTC)'!
addStandardHaloMenuItemsTo: aMenu hand: aHandMorph
	"Add standard halo items to the menu"
	self isWorldMorph ifTrue:
		[^ self addWorldHaloMenuItemsTo: aMenu hand: aHandMorph].
	aMenu 
		add: 'Bring to front' translated action: #comeToFront
		icon: (Theme current fetch: #('16x16' 'actions' 'go-top'));
		add: 'Send to back' translated action: #goBehind
		icon: (Theme current fetch: #('16x16' 'actions' 'go-bottom'));
		add: 'Clean-up' action: #removeStrokes icon: Theme current deleteIcon.
	
	(aMenu 
		addUpdating: #frozenString 
		action: #toggleFrozen) setBalloonText: 'When frozen, I am inert to all user interactions.' translated! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 15/Feb/2026, 9:36:30 am (UTC)'!
buildHandleMenu: aHand
	| menu |
	menu := MenuMorph new defaultTarget: self.
	menu addStayUpIcons.
	menu addLine.
	self addStandardHaloMenuItemsTo: menu hand: aHand.
	menu defaultTarget: annotatedMorph .
	script addCustomMenuItems: menu annoted: annotatedMorph.
	^ menu! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 1/Mar/2025, 1:10:49 pm (UTC)'!
frozenString
	"Answer the string to be shown in a menu to represent the frozen status"
	^ (self isFrozen
		ifTrue: ['<on>']
		ifFalse: ['<off>']), 'Be frozen' translated! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 18/Feb/2025, 9:02:58 pm (UTC)'!
goBehind
	presenter currentPage addMorph: self inFrontOf: presenter currentPage paper! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 27/Feb/2026, 7:47:07 am (UTC)'!
reconcileToFrozeenState
" 	Annotator may freeze the annoted object. 
	Frozen state is a necessary additional state to distingish from the lower lock property 
"
	annotatedMorph lock: self isFrozen! !

!AnnotatorMorph methodsFor: 'menus' stamp: 'hlsf 15/Jul/2026, 10:28:44 am (UTC)'!
toggleFrozen
	self freeze: self isFrozen not! !

!AnnotatorMorph methodsFor: 'printing' stamp: 'hlsf 22/Feb/2025, 9:30:37 pm (UTC)'!
shortPrintString
	^script title translated contractTo: 20! !

!AnnotatorMorph methodsFor: 'submorphs-accessing' stamp: 'hlsf 7/Sep/2025, 9:08:13 am (UTC)'!
noteNewOwner: newOwner
	self adjustBounds ! !

!AnnotatorMorph methodsFor: 'testing' stamp: 'hlsf 31/Aug/2025, 9:25:11 am (UTC)'!
canResizeAnnoted
" can the the annotated morph be resized ? only kind of BoxMorph can"
	^ annotatedMorph is: #BoxMorph! !

!AnnotatorMorph methodsFor: 'testing' stamp: 'hlsf 26/Sep/2024, 9:15:37 am (UTC)'!
is: aSymbol
	^ aSymbol == #AnnotatorMorph or: [ super is: aSymbol ]! !

!AnnotatorMorph methodsFor: 'testing' stamp: 'hlsf 15/Jul/2026, 10:27:27 am (UTC)'!
isFrozen
	^ frozen ! !

!AnnotatorMorph methodsFor: 'writing' stamp: 'hlsf 28/Sep/2024, 2:10:48 pm (UTC)'!
endWritingAt: localPosition
	| strokeGroup |
	strokeGroup := super endWritingAt: localPosition.
	
	^ strokeGroup ! !

!AnnotatorMorph class methodsFor: 'instance creation' stamp: 'hlsf 26/Sep/2024, 9:33:10 am (UTC)'!
newOn: aPresenter
	self error: 'Use #newOn:annotate:'! !

!AnnotatorMorph class methodsFor: 'instance creation' stamp: 'hlsf 28/Sep/2024, 12:24:16 pm (UTC)'!
newOn: documentPresenter annotate: aPlacedMorph
	aPlacedMorph isPlacedMorph ifFalse: [self error: 'Only kind of PlacedMoprh can be annotated'].
	^ self new
		presenter: documentPresenter;
		annotate: aPlacedMorph;
		yourself! !

!AnnotatorMorph class methodsFor: 'instance creation' stamp: 'hlsf 22/Feb/2025, 9:19:56 pm (UTC)'!
newOn: documentPresenter for: aDyboScript
	^ self basicNew
		presenter: documentPresenter;
		script: aDyboScript ;
		initialize;
		yourself! !

!PageBackground methodsFor: 'initialization' stamp: 'hlsf 4/Mar/2026, 5:13:36 pm (UTC)'!
defaultColor
	^ Color blue! !

!PageBackground methodsFor: 'initialization' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
defaultExtent
	^ DyboSystem defaultPaperSize ! !

!PageBackground methodsFor: 'initialization' stamp: 'hlsf 17/Mar/2026, 6:50:13 pm (UTC)'!
release
" Free any used resources when I am discarded "! !

!PageBackground methodsFor: 'accessing' stamp: 'hlsf 17/Mar/2026, 7:26:57 pm (UTC)'!
documentModel
	^ self page documentModel ! !

!PageBackground methodsFor: 'accessing' stamp: 'hlsf 17/Mar/2026, 7:26:49 pm (UTC)'!
page
	^ owner! !

!PageBackground methodsFor: 'drawing' stamp: 'hlsf 5/Mar/2026, 9:27:01 am (UTC)'!
drawOn: canvas
	viewport := owner viewport.
	canvas
		fillRectangle: viewport "self localBounds"
		color: `Color white`.! !

!PageBackground methodsFor: 'drawing' stamp: 'hlsf 4/Mar/2026, 1:53:28 pm (UTC)'!
lineWidth: cmNumber
	^  cmNumber / owner scale min: cmNumber ! !

!PageBackground methodsFor: 'geometry testing' stamp: 'hlsf 3/Mar/2026, 2:01:25 pm (UTC)'!
requiresVectorCanvas
	^ true! !

!PageBackground class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:34:58 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!PageBackground class methodsFor: 'as yet unclassified' stamp: 'hlsf 3/Mar/2026, 2:08:05 pm (UTC)'!
title
	self subclassResponsibility ! !

!PageBackgroundBlank class methodsFor: 'as yet unclassified' stamp: 'hlsf 3/Mar/2026, 3:08:40 pm (UTC)'!
title
	^ 'A blank background' translated! !

!PageBackgroundGrid methodsFor: 'initialization' stamp: 'hlsf 3/Mar/2026, 1:57:11 pm (UTC)'!
initialize
	super initialize.
	step := DyboSystem ppcm / 2  "5 mm"! !

!PageBackgroundGrid methodsFor: 'drawing' stamp: 'hlsf 29/Mar/2026, 11:49:56 am (UTC)'!
drawOn: canvas 
	| x y width end |
	super drawOn: canvas.
	x := (viewport origin x roundDownTo: step) + step.
	width := self lineWidth: 0.5.
	end := viewport corner x.
	[ x < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: x @ viewport origin y; lineTo: x @ viewport corner y].
		x := x + step ] .
	
	y := (viewport origin y roundDownTo: step) + step.
	end := viewport corner y.
	[ y < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: viewport origin x@ y; lineTo: viewport corner x @ y].
		y := y + step ] 
	! !

!PageBackgroundGrid class methodsFor: 'as yet unclassified' stamp: 'hlsf 3/Mar/2026, 1:47:29 pm (UTC)'!
title
	^ 'Millimeter grid (5x5)' translated! !

!PageBackgroundHL methodsFor: 'initialization' stamp: 'hlsf 3/Mar/2026, 1:58:21 pm (UTC)'!
initialize
	super initialize.
	step := DyboSystem ppcm.! !

!PageBackgroundHL methodsFor: 'drawing' stamp: 'hlsf 29/Mar/2026, 11:44:03 am (UTC)'!
drawOn: canvas 
	| y  width bottom |
	super drawOn: canvas.
	width := self lineWidth: 0.8.
	bottom := viewport corner y.
	y := (viewport origin y roundDownTo: step) + step.
	[ y < bottom ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: viewport origin x @ y; lineTo: viewport corner x @ y].
		y := y + step ]! !

!PageBackgroundHL class methodsFor: 'as yet unclassified' stamp: 'hlsf 3/Mar/2026, 1:44:25 pm (UTC)'!
title
	^ 'Horizontal line' translated! !

!PageBackgroundMillimeter methodsFor: 'drawing' stamp: 'hlsf 29/Mar/2026, 11:49:11 am (UTC)'!
drawOn: canvas 
	| x y width subStep startX startY end |
	super drawOn: canvas.
	
	startX := (viewport origin x roundDownTo: step).
	startY := (viewport origin y roundDownTo: step).
"
	10 mm grid
"
	x := startX + step.
	end := viewport corner x.
	width := self lineWidth: 1.
	[ x < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: x @ viewport origin y; lineTo: x @ viewport corner y].
		x := x + step ] .
	y := startY + step.
	end := viewport corner y.
	[ y < end] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: viewport origin x @ y;lineTo: viewport corner x @ y].
		y := y + step ].
"
	5 mm grid
"
	x := startX + (step / 2).
	width := self lineWidth: 0.5.
	end := viewport corner x.
	[ x < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: x @ viewport origin y; lineTo: x @ viewport corner y].
		x := x + step ] .
	y := startY + (step / 2).
	end := viewport corner y.
	[ y < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			canvas moveTo: viewport origin x @ y;lineTo: viewport corner x @ y].
		y := y + step ] .
"
	1 mm grid
"
	subStep := step / 10.
	x := startX + subStep.
	width := self lineWidth: 0.2.
	end := viewport corner x.
	[ x < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			4 timesRepeat: [
				canvas moveTo: x @ viewport origin y; lineTo: x @ viewport corner y.
				x := x + subStep ] ].
		x := x + subStep] .
	y := startY + subStep.
	width := self lineWidth: 0.2.
	end := viewport corner y.
	[ y < end ] whileTrue: [
		canvas strokeWidth: width color: color do: [
			4 timesRepeat: [
				canvas moveTo: viewport origin x @ y; lineTo: viewport corner x @ y.
				y := y + subStep ] ].
		y := y + subStep] ! !

!PageBackgroundMillimeter methodsFor: 'initialization' stamp: 'hlsf 4/Mar/2026, 5:19:28 pm (UTC)'!
defaultColor
	^ Color fromHexString: '#FF9E7D'! !

!PageBackgroundMillimeter methodsFor: 'initialization' stamp: 'hlsf 4/Mar/2026, 1:51:45 pm (UTC)'!
initialize
	super initialize.
	step := DyboSystem ppcm	! !

!PageBackgroundMillimeter class methodsFor: 'as yet unclassified' stamp: 'hlsf 4/Mar/2026, 1:55:33 pm (UTC)'!
title
	^ 'Graph paper' translated! !

!PageBackgroundPdf methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2024, 11:31:16 am (UTC)'!
dpi
	^ dpi ifNil: [dpi := 150]! !

!PageBackgroundPdf methodsFor: 'accessing' stamp: 'hlsf 17/Mar/2026, 7:31:01 pm (UTC)'!
form
	^ form ifNil: [form := self documentModel pdfPageAt: self page number ]! !

!PageBackgroundPdf methodsFor: 'accessing' stamp: 'hlsf 15/Nov/2024, 8:50:23 pm (UTC)'!
form: aForm
	form := aForm ! !

!PageBackgroundPdf methodsFor: 'initialization' stamp: 'hlsf 24/Nov/2024, 3:36:44 pm (UTC)'!
defaultExtent
	^ self form extent! !

!PageBackgroundPdf methodsFor: 'initialization' stamp: 'hlsf 17/Mar/2026, 7:44:54 pm (UTC)'!
release
	(self documentModel jpegFilePages at: self page number) delete! !

!PageBackgroundPdf methodsFor: 'drawing' stamp: 'hlsf 4/Jan/2025, 9:02:33 am (UTC)'!
drawOn: canvas
  "   Display reverse: canvas clipRect."
	canvas image: self form at: 0@0! !

!PageBackgroundPdf methodsFor: 'testing' stamp: 'hlsf 27/Feb/2026, 6:44:01 am (UTC)'!
is: aSymbol
	^ aSymbol == #PageBackgroundPdf or: [super is: aSymbol ]! !

!PageBackgroundPdf methodsFor: 'updating' stamp: 'hlsf 17/Mar/2026, 7:53:30 pm (UTC)'!
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

!PageBackgroundPdf methodsFor: 'updating' stamp: 'hlsf 17/Mar/2026, 7:31:46 pm (UTC)'!
sampleAt: newDpi in: documentPath
	| process number |
	number := self page number.
	process := DyboSystem 
		convert:  documentPath 
		pages:  (number to: number)
		dpi: newDpi .
	[process isComplete] whileFalse: [(Delay forMilliseconds: 100) wait].
	form := self documentModel pdfPageAt: number! !

!PageBackgroundPdf methodsFor: 'object serialization' stamp: 'hlsf 24/Nov/2024, 5:09:38 pm (UTC)'!
prepareToBeSaved
	form := nil! !

!PageBackgroundPdf methodsFor: 'geometry testing' stamp: 'hlsf 3/Jan/2025, 12:46:25 pm (UTC)'!
knowsOwnLocalBounds
	^ true! !

!PageBackgroundPdf methodsFor: 'geometry testing' stamp: 'hlsf 3/Jan/2025, 12:47:10 pm (UTC)'!
requiresVectorCanvas
	^ false! !

!PageBackgroundPdf methodsFor: 'geometry testing' stamp: 'hlsf 3/Jan/2025, 12:47:55 pm (UTC)'!
wantsContour
	^ false! !

!PageBackgroundPdf class methodsFor: 'instance creation' stamp: 'hlsf 15/Mar/2026, 6:02:02 pm (UTC)'!
new
	self error: 'Use #newOn: to create new instance'! !

!PageBackgroundPdf class methodsFor: 'instance creation' stamp: 'hlsf 15/Mar/2026, 6:08:05 pm (UTC)'!
newOn: aForm
	^ self basicNew
		form: aForm;
		initialize! !

!PageContainer methodsFor: 'geometry testing' stamp: 'hlsf 9/Feb/2025, 3:27:48 pm (UTC)'!
clipsSubmorphs
	^ true! !

!PageContainer methodsFor: 'initialization' stamp: 'hlsf 8/Sep/2024, 4:25:58 pm (UTC)'!
defaultColor
	^ Color lightGray muchLighter! !

!PageContainer methodsFor: 'accessing' stamp: 'hlsf 9/Feb/2025, 3:41:40 pm (UTC)'!
flaps
	^ submorphs select: [:aMorph | aMorph is: #Flap]! !

!PageContainer methodsFor: 'geometry' stamp: 'hlsf 9/Feb/2025, 3:43:06 pm (UTC)'!
extentChanged: oldExtent
	super extentChanged: oldExtent.
	self flaps do: #fold! !

!PageContainer methodsFor: 'geometry' stamp: 'hlsf 18/Apr/2026, 8:18:54 am (UTC)'!
minimumExtent
	^ DocumentView previewExtent * 4! !

!PageContainer methodsFor: 'geometry' stamp: 'hlsf 13/Feb/2025, 8:29:51 am (UTC)'!
morphCenter
	^ self fullBoundsInOwner center! !

!PageContainer class methodsFor: 'instance creation' stamp: 'hlsf 8/Sep/2024, 4:24:18 pm (UTC)'!
for: aPage
	^ self new
		addMorphFront: aPage position: 0@0! !

!PageContainer class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:34:09 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 7:52:14 am (UTC)'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 26/Oct/2024, 1:10:11 pm (UTC)'!
container
	^ container ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 8:16:33 pm (UTC)'!
controlsManager
	^ presenter controlsManager! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 16/Nov/2024, 9:01:30 am (UTC)'!
model
" The DocumentModel "
	^ presenter model! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 31/Aug/2024, 8:34:28 am (UTC)'!
presenter
	^ presenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 2/Sep/2024, 7:23:41 pm (UTC)'!
presenter: aPresenter
	presenter := aPresenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 13/Apr/2026, 2:41:20 pm (UTC)'!
preview
" Shrinkg a bit then cut a piece from the origin with a given extent "
	| shrinkFactorX shrinkFactorY form |
	^ preview ifNil: [ ('compute preview: ', self printString) print.
		form := (container imageForm: 32) copy: (0@0 corner: container morphWidth @ (container morphHeight -40)).
		shrinkFactorX := DocumentView previewExtent x / form width.
		shrinkFactorY := DocumentView previewExtent y / form height.
		form := form magnifyBy: (shrinkFactorX max: shrinkFactorY).
		preview := form copy: (0@0 corner: DocumentView previewExtent)]! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 24/Nov/2024, 5:51:30 pm (UTC)'!
statusBarMessage: aString
	statusBar ifNotNil: [
		statusBar contents: aString;
			adjustExtent ;
			redrawNeeded]
		! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 1:09:59 pm (UTC)'!
tool
	^ presenter tool! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:55:01 am (UTC)'!
buttonColor
	^ Theme current buttonColorFrom: self defaultBorderColor! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 5/Sep/2024, 7:52:25 am (UTC)'!
defaultBorderColor
	^ Theme current transcript! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 5/Sep/2024, 7:52:31 am (UTC)'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 4/Jan/2025, 4:47:19 pm (UTC)'!
deleteBitMasks
" Remove all the bitmask of the Stroke Morph "
	pages do: [:aPage |
		aPage paper strokeGroups do: [:aStrokeGroup | aStrokeGroup deleteBitMasks 	] ]! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 18/Apr/2026, 8:04:39 am (UTC)'!
initialize
	super initialize.
	self beColumn.
	pages := OrderedCollection new.
	currentPage := PageMorph newOn: presenter background: self model newPageBackground .
	self installPageContainer.
	pages add: currentPage.
! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 28/Jun/2026, 10:35:49 am (UTC)'!
installGeometryToolsFlap
	| flap tools |
	tools := Array 
		with: Ruler new
		with: SetSquare new
		with: Geodreieck new
		with: Protractor new 
		with: Compass new.
	flap := Flap label: ' Geometry Tools ' translated objects: tools.
	container addMorph: flap.
	flap borderColor: Color yellow darker;
		target: PageMorph.
	^ flap! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 18/Apr/2026, 7:57:35 am (UTC)'!
installMiniView
" Install the minimalist view, for assignment (task) "
	viewType := #mini.
	presenter view: self.
	self 
		addMorph: (self toolbarWith: self miniToolbarSpec)
		layoutSpec: (LayoutSpec fixedHeight: DyboSystem miniToolbarSize + 4).
	self	addMorphUseAll: container.
	self adoptWidgetsColor: self defaultBorderColor.
	presenter penTool! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 8:25:52 am (UTC)'!
installPageContainer
	container := PageContainer for: currentPage.
	self installScriptsFlap;
		installGeometryToolsFlap! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 21/Jun/2026, 10:08:15 am (UTC)'!
installScriptsFlap
	| flap items |
	items := Array 
		with: (DKMScript for: TextModelMorph)
		with: (DKMScript for: Timeline)
		with: (DKMScript for: GasSimulation )
		with: (DKMScript for: InteractiveGeometry)
		with: (DKMScript for: Workspace).
	flap := Flap label: ' Knowledge Models ' translated scripts: items.
	container addMorph: flap.
	flap 
		borderColor: self defaultColor twiceDarker ;
		target: PageMorph.
	^ flap! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 18/Apr/2026, 7:57:28 am (UTC)'!
installView
" Install the complete view, for course document "
	| row col |
	viewType := #full.
	presenter view: self.
	self 	addMorph: (self toolbarWith: self toolbarSpec)
		layoutSpec: (LayoutSpec fixedHeight: DyboSystem miniToolbarSize + 4).
	row := LayoutMorph newRow addMorphUseAll: container.
	" vertical and zoom wheels at the right "
	col := LayoutMorph newColumn name: #wheelsYZ.
	col addMorph: self zoomWheel layoutSpec: (LayoutSpec fixedExtent: 24@120).
	#(zoom100 fitWidth fitScreen) do: [:aZoomTool | col addMorph: 
		(self button: aZoomTool state: #isTool: size: DyboSystem miniToolbarSize)].	
	col	addMorphUseAll: DyControlsManager spacer;
		addMorph: self verticalWheel layoutSpec: (LayoutSpec fixedExtent: 24@	120).
	row addMorph: col  layoutSpec: (LayoutSpec fixedWidth: 24 + 1 proportionalHeight: 1).
	self addMorph: row.
	
	" status bar and horizontal wheel at the bottom "
	row := LayoutMorph newRow name: #wheelX.
	row addMorph: self pageCounter layoutSpec: (LayoutSpec fixedWidth: 12) ;
		addMorphUseAll: self statusBarInScroller;
		addMorph:self horizontalWheel layoutSpec: (LayoutSpec fixedExtent: 120 @ 24);
		addMorph: DyControlsManager spacer layoutSpec: (LayoutSpec fixedExtent: 24 asPoint).
	self addMorph: row layoutSpec: (LayoutSpec fixedHeight: 24).
	self adoptWidgetsColor: self defaultBorderColor.
	presenter penTool.
	self adjustPageCounter! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 26/Oct/2024, 12:34:50 pm (UTC)'!
currentPage
	^ currentPage ! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 26/Oct/2024, 12:37:15 pm (UTC)'!
currentPageIndex
	^ pages indexOf: currentPage ! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 17/Mar/2026, 7:15:46 pm (UTC)'!
deletePage
" delete the current page "
	| newIndex |
	self numberOfPages > 1 ifTrue: [ 
		currentPage release.
		newIndex := self currentPageIndex min: self numberOfPages - 1.
		pages remove: currentPage.
		self goPage: (self pageAt: newIndex)]! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 14/Jul/2026, 11:26:06 am (UTC)'!
goFirstPage
	^ self goPage: pages first! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 14/Jul/2026, 11:27:08 am (UTC)'!
goLastPage
	^ self goPage: pages last! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 14/Jul/2026, 11:28:42 am (UTC)'!
goNextPage
	^ self goPage: (self pageAt: self currentPageIndex + 1)
! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 18/Dec/2024, 5:11:49 pm (UTC)'!
goPage: aPage
" I alway return the current page, whether the document jump to a new page or not "
	(aPage notNil and: [aPage ~= currentPage]) ifTrue: [
		container replaceSubmorph: currentPage by: aPage.
		currentPage := aPage.
		self adjustPageCounter.
		presenter commandsManager release.
		presenter resetTool].
	^ currentPage! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 14/Jul/2026, 11:29:42 am (UTC)'!
goPreviousPage
	^ self goPage: (self pageAt: self currentPageIndex - 1)
! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 3/Mar/2026, 3:06:49 pm (UTC)'!
insertPage
	self insertPage: (PageMorph newOn: presenter background: self model newPageBackground)! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 16/Nov/2024, 9:22:11 am (UTC)'!
insertPage: aPage
" insert a page after the current page "
	^ self goPage: (
		pages 
			add: aPage 
			after: currentPage)! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 26/Oct/2024, 12:39:00 pm (UTC)'!
numberOfPages
	^ pages size! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 26/Oct/2024, 1:14:37 pm (UTC)'!
pageAt: anIndex
	^ pages at: anIndex ifAbsent: nil! !

!DocumentView methodsFor: 'pages' stamp: 'hlsf 17/Mar/2026, 7:24:42 pm (UTC)'!
pageNumber: aPageMorph
	^ pages indexOf: aPageMorph ! !

!DocumentView methodsFor: 'update' stamp: 'hlsf 18/Dec/2024, 5:11:49 pm (UTC)'!
adjustPageCounter
	self pageCounter 
		contents: (String streamContents: [:str | 
			str nextPutAll: self currentPageIndex printString;
				nextPutAll: '/';
				nextPutAll: self numberOfPages printString 		])! !

!DocumentView methodsFor: 'update' stamp: 'hlsf 22/Dec/2024, 9:53:16 am (UTC)'!
resetPreview
	preview := nil
	! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 19/Apr/2026, 5:12:18 pm (UTC)'!
comeFullyUpOnReload: smartRefStream
	submorphs := #().
	self installPageContainer.
	viewType == #mini
		ifTrue: [self installMiniView]
		ifFalse: [	self installView].
	'view came to life' print! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 28/Dec/2024, 6:34:59 pm (UTC)'!
prepareToBeSaved
	preview := nil! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 23/Dec/2024, 11:52:58 am (UTC)'!
storeDataOn: aDataStream
	| backup |
	backup := self backupThenNilAttributes.
	super storeDataOn: aDataStream.
	self restoreAttributes: backup! !

!DocumentView methodsFor: 'persistence' stamp: 'hlsf 18/Apr/2026, 7:54:16 am (UTC)'!
unsavedAttributes
	^# (submorphs statusBar pageCount container)! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
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
		icon: (DyboSystem icons getForm: array second ofSize: size);
		setBalloonText: array fourth;
		color: self defaultColor ;
		selectedColor: self buttonColor ;
		borderColor: self defaultColor darker;
		borderWidth: 2;
		morphExtent: (size  * 1.3) rounded asPoint;
		yourself	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 27/Sep/2025, 11:02:15 am (UTC)'!
horizontalWheel 
	^ (WheelMorph target: presenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 1; 
		setBalloonText: 'Scroll the document to the left or the right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 18/Dec/2024, 8:16:33 pm (UTC)'!
openCircularToolbar
	self controlsManager documentCircularToolbar 
		morphPosition: self activeHand morphPosition ;
		openInWorld ! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 24/Nov/2024, 5:52:15 pm (UTC)'!
pageCounter
"a view of the opage count"
	^ pageCount ifNil: [
		pageCount := TextParagraphMorph new
			color: Color transparent;
			padding: 4@4;
			borderWidth: 0;
			yourself	]
	
	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 24/Nov/2024, 5:53:57 pm (UTC)'!
statusBar
"A bar to print contextual information"
	^ statusBar ifNil: [
		statusBar := TextParagraphMorph new
			color: Color transparent;
			borderWidth: 0;
			setHeightOnContent ;
			yourself	]
	
	! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 24/Nov/2024, 5:54:03 pm (UTC)'!
statusBarInScroller
	^ PluggableScrollPane new scroller: self statusBar; 
		borderWidth: 2;
		borderColor: Color transparent ;
		color: Color transparent;
		yourself! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
toolbarWith: aSpec
	| toolbar buttonWidth |
	toolbar := LayoutMorph newRow separation: 2.
	buttonWidth := DyboSystem miniToolbarSize.
	aSpec do: [:aTool | 
		aTool 
			caseOf: {
				[ #spacer ] -> [ toolbar addMorphUseAll: DyControlsManager spacer ] .
				[ #blank ] -> [ toolbar addMorph: (DyControlsManager spacer: buttonWidth) ] }
			otherwise: [		
				toolbar addMorph: (				
					self 	button: aTool  state: #isTool: size: buttonWidth )] ].
	^ toolbar! !

!DocumentView methodsFor: 'widget' stamp: 'hlsf 24/Dec/2024, 12:10:09 pm (UTC)'!
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

!DocumentView methodsFor: 'widget' stamp: 'hlsf 24/Dec/2024, 12:10:18 pm (UTC)'!
zoomWheel 
	^  (WheelMorph target: self presenter actionSelector: #zoomAction:)
		beVertical; 
		factor: 0.005; 
		setBalloonText: 'Zoom in or out the document.' translated; 
		borderWidth: 3;
		color: Color gray;
		borderColor: Color black;
		yourself! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 3/Mar/2026, 12:16:13 pm (UTC)'!
backgroundButtonData
	^ {'Background' translated . 
	#background . 
	#chooseBackground . 
	'Select the type of page background for the current page.' translated }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:03 pm (UTC)'!
deletePageButtonData
	^ {'Delete page' translated . 
	#deletePage . 
	#deletePage . 
	'Delete the current page.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 12/Feb/2026, 9:54:29 am (UTC)'!
dkmButtonData
" label - iconName - callback - description "
	^ {'DKM' translated . 
	#dkm . 
	#browseDKM . 
	'Browse the Dynamic Knowledge Models from the system and your personnal collection, then insert one in your current document.' translated }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:12 pm (UTC)'!
eraserButtonData
	^ {EraserTool title. 
	EraserTool iconName . 
	EraserTool action . 
	EraserTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 2:29:42 pm (UTC)'!
exportPDFButtonData
	^ {'Export document to PDF' translated . 
	#pdfFile . 
	#exportPDF . 
	'Export the current document and all pages to a PDF file. The exported file is saved in the "myExports" user directory.' translated } ! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 11:26:41 am (UTC)'!
firstPageButtonData
	^ {'First page' translated . 
	#firstPage . 
	#goFirstPage . 
	'Go to the FIRST page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:32 pm (UTC)'!
fitScreenButtonData
	^ {'Fit screen' translated . 
	#fitScreen . 
	#pageFitScreen . 
	'Scale the page to make it entirely visible.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:41 pm (UTC)'!
fitWidthButtonData
	^ {'Fit width' translated . 
	#fitWidth . 
	#fitWidthPage . 
	'Scale the page to fit the window width.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:49 pm (UTC)'!
groupButtonData
	^ {GroupTool title. 
	GroupTool iconName . 
	GroupTool action . 
	GroupTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:20:55 pm (UTC)'!
highlighterButtonData
	^ {HighlighterTool title. 
	HighlighterTool iconName . 
	HighlighterTool action. 
	HighlighterTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:21:11 pm (UTC)'!
insertPageButtonData
	^ {'New page' translated . 
	#insertPage . 
	#insertPage . 
	'Insert a new page after the current one.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 11:27:39 am (UTC)'!
lastPageButtonData
	^ {'Last page' translated . 
	#lastPage . 
	#goLastPage . 
	'Go to the LAST page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:22:38 pm (UTC)'!
loadDocButtonData
	^ {'Save document' translated . 
	#load . 
	#loadDocument . 
	'Load a document from my data.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Mar/2026, 2:41:19 am (UTC)'!
miniToolbarSpec
" Toolbar for a one page document "
	^ #(pen eraser highlighter undo redo 
	blank
	pointer group)! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 11:28:42 am (UTC)'!
nextPageButtonData
	^ {'Next page' translated . 
	#nextObject . 
	#goNextPage . 
	'Go to the next page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:22:58 pm (UTC)'!
penButtonData
	^ {PenTool title. 
	PenTool iconName . 
	PenTool action . 
	PenTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:23:05 pm (UTC)'!
pointerButtonData
	^ {PointerTool title. 
	PointerTool iconName . 
	PointerTool action . 
	PointerTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 11:29:42 am (UTC)'!
previousPageButtonData
	^ {'Previous page' translated . 
	#previousObject . 
	#goPreviousPage . 
	'Go to the previous page of the document.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:23:19 pm (UTC)'!
redoButtonData
	^ {'Redo' translated . 
	#redo . 
	#redoAction . 
	'Redo your last undone action.' translated }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:23:25 pm (UTC)'!
saveDocButtonData
	^ {'Save document' translated . 
	#save . 
	#saveDocument . 
	'Save the current document in my data.' translated } ! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Mar/2026, 2:50:55 am (UTC)'!
shapeButtonData
" label - iconName - callback - description "
	^ {ShapeTool title .
	ShapeTool iconName .
	ShapeTool action .
	ShapeTool description }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 14/Jul/2026, 2:26:06 pm (UTC)'!
toolbarSpec
	^ #(saveDoc exportPDF
	blank
	pen eraser highlighter shape undo redo 
	blank
	pointer group dkm
	blank
	firstPage previousPage insertPage deletePage nextPage lastPage background)! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:23:31 pm (UTC)'!
undoButtonData
	^ {'Undo' translated . 
	#undo . 
	#undoAction . 
	'Undo your last action.' translated  }! !

!DocumentView methodsFor: 'controls data' stamp: 'hlsf 24/Dec/2024, 12:23:38 pm (UTC)'!
zoom100ButtonData
	^ {'Zoom 100%' translated . 
	#zoom100 . 
	#zoomPageTo100 . 
	'Zoom the page to its natural scale of 1:1 or 100%.' translated  }! !

!DocumentView class methodsFor: 'ui' stamp: 'hlsf 23/Dec/2024, 8:24:19 am (UTC)'!
previewExtent
	^ `1920@1080 // 10`! !

!DocumentView class methodsFor: 'ui' stamp: 'hlsf 12/Dec/2024, 5:00:25 pm (UTC)'!
previewGap
" Gap between two previews in a row "
	^ 12! !

!DocumentView class methodsFor: 'instance creation' stamp: 'hlsf 24/Dec/2024, 1:16:19 pm (UTC)'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter;
		initialize;
		yourself! !

!DocumentView class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:32:52 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 21/Jul/2024, 9:00:38 pm (UTC)'!
buildMorphicWindow
	super buildMorphicWindow.
	titleMorph showButtonsNamed: #(close collapse expand).
	self toggleHelp.
	self activeHand newKeyboardFocus: codeView scroller.
	layoutMorph adoptWidgetsColor: self widgetsColor! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
button: iconSymbol action: actionSelector help: helpString
	^ (ButtonMorph model: self action: actionSelector)
			icon: (DyboSystem icons getForm: iconSymbol ofSize: DyboSystem iconToolbarSize);
			setBalloonText: helpString ;
			color: self defaultColor;
			selectedColor: self buttonColor ;
			borderColor: self defaultBorderColor ;
			borderWidth: 2;
			morphExtent: (DyboSystem iconToolbarSize * 1.3) rounded asPoint;
			yourself! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
button: iconSymbol action: actionSelector state: getStateSel help: helpString
	^ (ButtonMorph model: self stateGetter: getStateSel action: actionSelector)
			icon: (DyboSystem icons getForm: iconSymbol ofSize: DyboSystem iconToolbarSize);
			setBalloonText: helpString ;
			color: self defaultColor ;
			selectedColor: self buttonColor ;
			borderColor: self defaultBorderColor ;
			borderWidth: 2;
			morphExtent: (DyboSystem iconToolbarSize * 1.3) rounded asPoint;
			yourself! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 8/Mar/2025, 4:18:06 pm (UTC)'!
newButtonArea
	buttonArea := LayoutMorph newRow 
		axisEdgeWeight: #rowRight;
		addMorph: (PluggableButtonMorph
			model: self
			action: #keepScript
			label: 'Keep it' translated :: setBalloonText: 'Keep this modified script and update its view.' translated);
		addMorph: (PluggableButtonMorph
			model: self
			action: #delete
			label: 'Cancel' translated).
	^ buttonArea! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 4/Mar/2025, 5:46:36 pm (UTC)'!
newCodeAndView
	^ LayoutMorph newRow
		separation: self defaultSeparation;
		addMorph: (codeAndViewPanel := LayoutMorph newColumn
			addMorph: codeView proportionalHeight: 0.7;
			addAdjusterMorph;
			addMorph: docView proportionalHeight: 0.3) 
		proportionalWidth: 0.5;
		addAdjusterMorph ;
		addMorph: plugView proportionalWidth: 0.5;
		yourself! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 19/Oct/2022, 7:31:20 pm (UTC)'!
newPane
	^ LayoutMorph newColumn
		separation: self defaultSeparation ;
		addMorphKeepMorphHeight: self newToolbar;
		addMorphUseAll: self newCodeAndView;
		yourself! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 12/Feb/2026, 7:22:11 am (UTC)'!
newToolbar
	^ LayoutMorph newRow
		separation: 5@0 ;
		addMorph: (playButton := self button: #keep action: #saveScript help: 'Save the script in my library.' translated);
		addMorph: (playButton := self button: #play action: #executeScript help: 'Play the script.' translated);
		addMorph: (self button: #debug action: #debugScript help: 'Debug the Smalltalk sketch.' translated);
		addMorph: (self button: #stop action: #stopScript help: 'Stop the execution of the Script.' translated);
		addMorph: (self button: #brain action: #copyAIprompt help: 'Generate a prompt for AI and copy it in the host clipboard.' translated);
		addMorph: self transparentMorph layoutSpec: (LayoutSpec proportionalWidth: 1.0);
		addMorph: (self button: #doc action: #toggleHelp state: #isDocVisible help: 'Script help' translated)
		yourself! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 1/May/2024, 9:08:16 am (UTC)'!
plugDebugger
" Install the debugger window at the place of the code viewer "
	debugger layoutMorph borderWidth: 1.
	codeAndViewPanel replaceSubmorph: codeView by: debugger layoutMorph.			
	debugger model when: #closeViews send: #stopDebbuger to: self.! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 9/May/2024, 9:20:31 am (UTC)'!
plugDebugger: aDebugger
	self stopDebbuger.
	debugger := aDebugger.
	self plugDebugger ! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
switchToPauseButton
" 
Switch to pause sketch action 
"
	playButton 
		icon: (DyboSystem icons getForm: #pause ofSize: DyboSystem iconToolbarSize);
		action: #pauseScript;
		setBalloonText: 'Pause the Smalltalk sketch.' translated;
		redrawNeeded ! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
switchToPlayButton
" 
Switch to play sketch action 
"
	playButton 
		icon: (DyboSystem icons getForm: #play ofSize: DyboSystem iconToolbarSize);
		action: #executeScript;
		setBalloonText: 'Play the Smalltalk sketch.' translated;
		redrawNeeded.! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
switchToResumeButton
" 
Switch to resume sketch action
"
	playButton 
		icon: (DyboSystem icons getForm: #resume ofSize: DyboSystem iconToolbarSize);
		action: #resumeScript;
		setBalloonText: 'Resume the Smalltalk sketch.' translated;
		redrawNeeded ! !

!DKMScriptEditor methodsFor: 'GUI building' stamp: 'hlsf 18/Sep/2024, 7:03:16 pm (UTC)'!
transparentMorph
	^ ColoredBoxMorph new 
		color: Color transparent; 
		yourself! !

!DKMScriptEditor methodsFor: 'initialization' stamp: 'hlsf 4/Mar/2025, 5:30:33 pm (UTC)'!
buttonColor
	^ Theme current buttonColorFrom: self defaultColor ! !

!DKMScriptEditor methodsFor: 'initialization' stamp: 'hlsf 4/Mar/2025, 5:28:34 pm (UTC)'!
defaultBorderColor
	^self defaultColor darker! !

!DKMScriptEditor methodsFor: 'initialization' stamp: 'hlsf 28/Jul/2024, 8:25:47 am (UTC)'!
defaultColor
	^ Theme current workspace ! !

!DKMScriptEditor methodsFor: 'initialization' stamp: 'hlsf 6/Mar/2025, 6:21:50 pm (UTC)'!
initialize
	| book |
	super initialize.
"	book := EruditeBookReaderMorph new.
	docView := book
		model: DrGeoTutorial new; 
		buildMorphicWindow;
		layoutMorph."
	"book when: #askToCopyCode send: #sourceCode: to: self."
	docView := PlacedMorph new.
	codeView := (TextModelMorph textProvider: self textGetter: #sourceCode textSetter: #sourceCode:)
		askBeforeDiscardingEdits: false;
		yourself.
	plugView :=  LayoutMorph newRow
		color: self color;
		borderWidth: 1;
		layoutSpec: LayoutSpec useAll! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 8/Mar/2025, 9:23:24 am (UTC)'!
annotator: anAnnotatorMorph
	annotator := anAnnotatorMorph ! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 30/Oct/2022, 6:39:21 pm (UTC)'!
isDocVisible
	^ docView visible! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 4/Mar/2025, 6:17:18 pm (UTC)'!
model: aDyboScript
" Set the DyboScript we are operating on "
	model := aDyboScript 
! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 9:55:58 am (UTC)'!
scriptName
	^ model title! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 30/Oct/2022, 6:45:35 pm (UTC)'!
separator
"The adjuster/separator between the codeView and docView"
	^ codeView owner submorphs second
! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 1:05:35 pm (UTC)'!
sketchName
	^ model file ifNil: [''] ifNotNil: [model file baseName]! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 9:56:04 am (UTC)'!
sourceCode
	^ model code! !

!DKMScriptEditor methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 9:56:10 am (UTC)'!
sourceCode: aText
	model code: aText asString.
	self changed: #clearUserEdits.
	self changed: #acceptedContents.
	self releaseMiniView.
	plugView removeAllMorphs
! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 15/Apr/2022, 1:12:50 pm (UTC)'!
autoCompleterClassFor: textGetter
	^SmalltalkCompleter! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 22/Dec/2022, 7:45:04 pm (UTC)'!
computeMessageEntriesIn: aDynamicTypingSmalltalkCompleter ofBlockArgNamed: aString 
	aDynamicTypingSmalltalkCompleter 
		computeMessageEntriesForClassOrNil: (DrGeoSystem preferences at: #programmingCodeCompletion)! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 22/Dec/2022, 7:45:36 pm (UTC)'!
computeMessageEntriesIn: aDynamicTypingSmalltalkCompleter ofBlockTempVarNamed: aString 
	aDynamicTypingSmalltalkCompleter 
		computeMessageEntriesForClassOrNil: (DrGeoSystem preferences at: #programmingCodeCompletion)! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 22/Dec/2022, 7:45:25 pm (UTC)'!
computeMessageEntriesIn: aDynamicTypingSmalltalkCompleter ofInstVarNamed: aString 
	aDynamicTypingSmalltalkCompleter 
		computeMessageEntriesForClassOrNil: (DrGeoSystem preferences at: #programmingCodeCompletion)! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 22/Dec/2022, 7:40:20 pm (UTC)'!
computeMessageEntriesIn: aDynamicTypingSmalltalkCompleter ofTempVarNamed: aString 
	aDynamicTypingSmalltalkCompleter 
		computeMessageEntriesForClassOrNil: (DrGeoSystem preferences at: #programmingCodeCompletion)! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 15/Apr/2022, 1:10:56 pm (UTC)'!
editorClassFor: textGetter
    ^SmalltalkEditor! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 14/Apr/2022, 2:40:23 pm (UTC)'!
shouldStyle: aText with: aSHTextStylerST80 
	
	^true! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 23/Nov/2023, 3:27:30 pm (UTC)'!
styleByParagraphs
	^ false! !

!DKMScriptEditor methodsFor: 'user interface support' stamp: 'hlsf 14/Apr/2022, 2:40:27 pm (UTC)'!
textStylerClassFor: object
	^ SHTextStylerST80 ! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 22/Mar/2026, 9:27:25 am (UTC)'!
copyAIprompt
	Clipboard storeObject: model presenter AI_Prompt ! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 8/Mar/2025, 4:24:45 pm (UTC)'!
debugScript
" Execute the sketch step by step in a debugger "
	model ifNil: [^ self].
	self stopScript.
	self isDocVisible ifTrue: [self toggleHelp].
	codeView scroller acceptContents.
	"DrGeoSketch when: #newSmalltalkSketch send: #compiledScript: to: self."
	codeView editor 
		afterCompiling: self sourceCode 
		do:  [ :compiler :method :receiver :context | 
			(method notNil and: [method isQuick not]) ifTrue: [
				debugger := Debugger 
					openMinimalDebugging: [
						method
							valueWithReceiver: receiver 
							arguments: (context ifNil: [ #() ] ifNotNil: [ { context } ])]
					to: method.
				self plugDebugger ]]
		ifFail: []! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 15/Feb/2026, 9:57:13 am (UTC)'!
executeScript
	self stopScript.
	codeView scroller acceptContents.
	self switchToPauseButton.
	DKMScript when: #compiledDKMScript send: #scriptView: to: self.
	scriptProcess := [ | t |
		t := DateAndTime now.
		false "(DrGeoSystem preferences at: #advancedDebugger) "
			ifTrue: [model execute]
			ifFalse: [
				[model execute] 
					on: Error, Halt
					do: [:ex | 
						self setLabel: ex description.
						debugger ifNil: [" We can't help if debugger already active "
							Debugger 		
								openMinimalIn: self
								debuggingProcess: scriptProcess 			
								context: ex signalerContext.
							ex resume ]
							ifNotNil: [ 
								self inform: 'Too many errors. Fix it!!
Script stopped' translated.
								self stopScript ]							
						 ] ].
		" When we get there, sketch has been entirely executed, switch back to play button "
		self switchToPlayButton.
		Transcript show: DateAndTime now - t ;cr] newProcess.
	scriptProcess 
		priority: Processor userBackgroundPriority ;
		name: '[Dybo] Smalltalk Script execution';
		resume.! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 6/Mar/2026, 6:08:57 pm (UTC)'!
keepScript
	| scriptView metadata |
	codeView scroller acceptContents.
	scriptView := model execute.
	metadata := model header.
	model title: (metadata at: #title ifAbsent: ['no title' translated]) capitalized ;
		description: (DyboSystem scriptLibrary descriptionOf: metadata).
	annotator annotate: scriptView.
	self delete! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 4/Mar/2025, 5:54:47 pm (UTC)'!
pauseScript
    scriptProcess isTerminated ifTrue: [
        self stopScript.
        ^self ].
    scriptProcess suspend.
    self switchToResumeButton.! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 4/Mar/2025, 5:54:33 pm (UTC)'!
resumeScript
	scriptProcess resume.
	self switchToPauseButton! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
saveScript
	| modelName |
	codeView scroller acceptContents.
	modelName := (ValueHolder with: self sketchName )
	action: [:aString | | cleaned |
		cleaned := aString withBlanksCondensed.
		model header at: #title ifPresent: [:value | self setLabel: value capitalized].
		model file: model myPath // (cleaned, '.st').
		model file < self sourceCode.
		DyboSystem scriptLibrary scriptSaved: model].
	(StringEntryPanel openWide: modelName label: 'Name the script to keep.' translated)
		morphCenter: self fullBoundsInOwner center;
		setProperty: #layerNumber toValue: self layerNumber - 1! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 8/Mar/2025, 10:14:23 am (UTC)'!
scriptView: aView
	self releaseMiniView.
	plugView 
		removeAllMorphs;
		addMorph: aView ! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 9/May/2024, 9:26:05 am (UTC)'!
stopDebbuger
	debugger ifNotNil: [
		codeAndViewPanel replaceSubmorph: debugger layoutMorph by: codeView.
		debugger closeView.
		debugger := nil.
		self restoreLabel ]
		
		! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 11/Oct/2025, 11:46:27 am (UTC)'!
stopScript
	ActiveModel flushEventSystem.
	scriptProcess ifNotNil: [
		scriptProcess terminate.
		scriptProcess := nil].
	self switchToPlayButton .
	self stopDebbuger 
	! !

!DKMScriptEditor methodsFor: 'actions' stamp: 'hlsf 2/Nov/2022, 5:48:07 pm (UTC)'!
toggleHelp
"Show/unshow the doc pane"
	debugger ifNotNil: [^ self]. "No doc while debugging, the pane does not like it"
	self isDocVisible 		ifTrue: [
		docView hide.
		codeView layoutSpec proportionalHeight: 1.0.
		docView layoutSpec proportionalHeight: 0.
		self separator hide			]
	ifFalse: [
		docView show.
		docView layoutSpec proportionalHeight: 0.3.
		codeView layoutSpec proportionalHeight: 0.7.
		self separator show		].
	self changed: #isDocVisible
! !

!DKMScriptEditor methodsFor: 'geometry' stamp: 'hlsf 23/Apr/2022, 12:19:25 pm (UTC)'!
expand
	super expand.
	self fullScreen! !

!DKMScriptEditor methodsFor: 'geometry' stamp: 'hlsf 6/Mar/2025, 6:22:56 pm (UTC)'!
minimumExtent
	^ 800@600! !

!DKMScriptEditor methodsFor: 'testing' stamp: 'hlsf 18/May/2023, 3:07:27 pm (UTC)'!
shouldAutoHighlight
	^ false! !

!DKMScriptEditor methodsFor: 'testing' stamp: 'hlsf 18/May/2023, 3:09:35 pm (UTC)'!
shoutMustKeepContentsSize
	^ true! !

!DKMScriptEditor methodsFor: 'submorphs-add/remove' stamp: 'hlsf 4/Mar/2025, 5:54:47 pm (UTC)'!
delete
	self stopScript .
	super delete.
	self releaseMiniView ! !

!DKMScriptEditor methodsFor: 'submorphs-add/remove' stamp: 'hlsf 8/Mar/2025, 4:12:05 pm (UTC)'!
releaseMiniView
	plugView submorphCount = 1 ifTrue: [
		plugView firstSubmorph ifNotNil: [:miniView| miniView delete]]! !

!DKMScriptEditor methodsFor: 'label' stamp: 'hlsf 12/Feb/2026, 8:18:38 am (UTC)'!
restoreLabel
	| defaultLabel |
	defaultLabel := self scriptName ifEmpty: ['Edit Script' translated].
	self label == defaultLabel ifFalse: [self setLabel: defaultLabel]! !

!DKMScriptEditor methodsFor: 'shout' stamp: 'hlsf 8/Sep/2024, 5:55:01 pm (UTC)'!
aboutToStyleWith: aSHTextStylerST80 
	! !

!DKMScriptEditor methodsFor: 'shout' stamp: 'hlsf 8/Sep/2024, 5:54:15 pm (UTC)'!
allowsStylingFor: aSymbol isTextDirty: aFalse 
	^ true! !

!DKMScriptEditor methodsFor: 'evaluation' stamp: 'hlsf 12/Jan/2025, 11:10:44 am (UTC)'!
doItContext
	^ nil! !

!DKMScriptEditor methodsFor: 'evaluation' stamp: 'hlsf 12/Jan/2025, 11:09:57 am (UTC)'!
doItReceiver
	^ nil! !

!Collection methodsFor: '*DyboDoc-View' stamp: 'hlsf 31/Mar/2023, 8:22:27 pm (UTC)'!
covariance: y
	^ (self * y) sum / self size - (self mean * y mean)! !

!Collection methodsFor: '*DyboDoc-View' stamp: 'hlsf 1/Apr/2023, 1:28:39 pm (UTC)'!
regression: y
"Linear regression (least-squares), return a, b of y=ax+b"
	| a b v |
	v := self variance.
	v isZero ifTrue: [^nil]. "points are vertically aligned"
	a := (self covariance: y) / v.
	b := y mean - (a * self mean).
	^ Array with: a with: b! !

!Collection methodsFor: '*DyboDoc-View' stamp: 'hlsf 31/Mar/2023, 8:01:21 pm (UTC)'!
variance
	^ self squared sum / self size - self mean squared! !

!DateAndTime methodsFor: '*DyboDoc' stamp: 'hlsf 2/Oct/2025, 7:46:31 pm (UTC)'!
filenamePrintOn: aStream
	"
	As filename that can be sorted, with an accuraccy  of 1 second
	String streamContents: [ :strm | DateAndTime now filenamePrintOn: strm ] .
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

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 27/May/2026, 8:34:30 pm (UTC)'!
addEditAnnotatedHandle: aHaloSpec 
	(self addHandle: aHaloSpec )
		mouseDownSelector: #doEdit
! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 22/Jan/2025, 8:42:00 pm (UTC)'!
addInspectHandle: handleSpec
	(self addHandle: handleSpec)
		mouseDownSelector: #doInspect
! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 21/Jun/2026, 8:15:42 am (UTC)'!
addResizeAnnotatedHandle: haloSpec
	target isFrozen ifTrue: [^ self].
	(target annotated okayToResizeEasily) ifTrue: [
		^(self addHandle: haloSpec)
			mouseDownSelector: #startResize:with:;
			mouseMoveSelector: #doResizeAnnotated:with: ].

	(target annotated okayToScaleEasily) ifTrue: [
		^(self addHandle: haloSpec)
			mouseDownSelector: #startScaleAnnotated:with:;
			mouseMoveSelector: #doScaleAnnotated:with: ].! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 6/Mar/2025, 6:14:59 pm (UTC)'!
doEdit
	^ target editAnnoted ! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 22/Jan/2025, 8:48:01 pm (UTC)'!
doInspect
	^ target inspectAnnoted ! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 31/Aug/2025, 9:27:22 am (UTC)'!
doResizeAnnotated: evt with: resizeHandle
	"Called while the mouse is down in the grow handle"

	| newExtent center |
	evt hand obtainHalo: self.
	center := target morphCenter.
	newExtent := (evt eventPosition - target annotated positionInWorld) - positionOffset.
	(newExtent x = 0 or: [newExtent y = 0]) ifTrue: [^ self].
	target annotated extentInWorld: newExtent.
	target adjustBounds; 
		morphCenter: center.
	resizeHandle positionInWorld: evt eventPosition - (resizeHandle morphExtent // 2).
	self redrawNeeded.! !

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 31/Aug/2025, 9:27:32 am (UTC)'!
doScaleAnnotated: evt with: scaleHandle
	"Update the scale of my target if it is scalable."
	| scale center |
	evt hand obtainHalo: self.
	scale := (evt eventPosition - target annotated positionInWorld) rho * scaleOffset.
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

!HaloMorph methodsFor: '*DyboDoc' stamp: 'hlsf 31/Aug/2025, 9:27:47 am (UTC)'!
startScaleAnnotated: evt with: scaleHandle
	"Initialize scale of my target if it is scalable."

	evt hand obtainHalo: self.						"Make sure the event's hand correlates with the receiver"

	self removeAllHandlesBut: scaleHandle.  "remove all other handles"
	scaleOffset := target scale / (evt eventPosition - target annotated positionInWorld) rho.! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnDismissIcon
	^ self icons
		at: #haloDismissAnnIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #discard
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnDragIcon
	^ self icons
		at: #haloAnnDragIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #drag
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnEditIcon
"Edit annoted document "
	^ self icons
		at: #haloEditAnnIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #edit
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnHelpIcon
	^ self icons
		at: #haloAnnHelpIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #help
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnInspectIcon
	^ self icons
		at: #haloAnnInspectIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #inspect
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnResizeIcon
	^ self icons
		at: #haloAnnResizeIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #resize
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloMorph class methodsFor: '*DyboDoc' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
haloAnnRotateIcon
	^ self icons
		at: #haloAnnRotateIcon
		ifAbsentPut: [ (
			DyboSystem icons 
				getForm: #rotate
				ofSize: (Preferences at: #haloHandleSize)) asFormOfDepth: 1 ]! !

!HaloHandleMorph methodsFor: '*DyboDoc' stamp: 'hlsf 25/Jan/2025, 5:07:05 pm (UTC)'!
handlesMouseOver: evt
	^ true! !

!HaloHandleMorph methodsFor: '*DyboDoc' stamp: 'hlsf 25/Jan/2025, 5:14:00 pm (UTC)'!
mouseEnter: evt
	owner target removeAlarm: #removeHalo! !

!Flap methodsFor: '*DyboDoc' stamp: 'hlsf 21/Jun/2026, 10:10:30 am (UTC)'!
scripts: dyboScripts
	objects := dyboScripts collect: [:each | | item |
		item := FlapItem 
			object: each 
			image: each icon
			buttons: nil 
			label: each title ::
			setBalloonText: each description;
			flap: self;
			setProperty: #allowsItemDrag toValue: true;
			adoptWidgetsColor: borderColor;
			borderWidth: 2.
		item imageMorph setBalloonText: each description.
		item]! !

!Flap class methodsFor: '*DyboDoc' stamp: 'hlsf 21/Jun/2026, 10:10:30 am (UTC)'!
label: aString emphasis: emphasis scripts: dyboScripts
"	label: the name of the flap 
 	emphasis: Text emphasis applyed to the label, nil for none 
	iconicObjects: array of PlacedMorphs of this flap, these understand the #icon message as view in the flap
"
	| flap |
	flap := self contents: aString font: nil emphasis: emphasis.
	flap scripts: dyboScripts.
	^ flap
	
! !

!Flap class methodsFor: '*DyboDoc' stamp: 'hlsf 21/Jun/2026, 10:08:31 am (UTC)'!
label: aString scripts: dyboScripts
	^ self label: aString emphasis: 0 scripts: dyboScripts 
! !
