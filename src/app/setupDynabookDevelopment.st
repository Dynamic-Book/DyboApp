| list area morph extent |
"Report by any mean error"
Transcript
   showOnDisplay: false;
   logToFile: true;
   logToStdout: true.
"Smalltalk at: #LogStartupDebugAids put: true."
"Install change set"
ChangeSet installNewUpdates.
"System configurations"
Utilities setAuthorName: 'Hilaire Fernandes' initials: 'hlsf'.
Preferences at: #logDebuggerStackToFile put: true.
Preferences at: #autoNumberUserChanges put: false.
"Install Dynabook code"
Feature require: #'Dynabook'.
"Delete all windows but the taskbar"
self runningWorld doOneCycleNow.
list := UISupervisor ui submorphs reject: [:aMorph | aMorph is: #TaskbarMorph].
 list do: [:each | each delete].
"Adjust font size"
Preferences at: #defaultFontSize put: 10.
"Adjust taskbar size"
morph := UISupervisor ui taskbar.
morph scale: 1/2.
Display fullScreenMode: true.
self runningWorld doOneCycleNow.
"Compute the available free space for windows placement"
area _ RealEstateAgent maximumUsableArea extendBy: 0 @ morph morphHeight negated.
extent _ area extent // 2.
"Open a few System Browsers"
BrowserWindow openBrowser 
	morphPosition: 0@0;
	morphExtent: extent.
BrowserWindow openBrowser 
	morphPosition: area width // 2 @ 0; 
	morphExtent: extent.
"Open a System Browser on a specific class"
morph _ BrowserWindow openBrowser 
	morphPosition: area extent // 2;
	morphExtent: extent.
"morph model setClass: (Smalltalk at: #Dynabook) selector: nil."
"Open a Workspace with some default contents"
morph _ Workspace openWorkspace.
morph model actualContents: 'ChangeSet installNewUpdates.
DySystem beDevelopment. 
DySystem beApplication.
Dynabook new.
(BreadcrumbsPane on: DyUserData current with: DyViewerVisitor ) openInWorld.'.
morph 
	morphPosition: 0 @ (area height // 2);
	morphExtent: extent x @ (2 / 3 * extent y).
"Open a transcript for logs"
TranscriptWindow openTranscript 
	morphPosition: 0 @ (area height // 2 + (2 / 3 * extent y));
	morphExtent: extent x @ (1 / 3 * extent y ).
Smalltalk saveImage
