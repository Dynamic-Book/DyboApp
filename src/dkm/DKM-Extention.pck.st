'From Cuis7.7 [latest update: #7843] on 22 March 2026 at 1:26:53 pm'!
'Description '!
!provides: 'DKM-Extention' 1 5!
SystemOrganization addCategory: #'DKM-Extention'!



!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:19:00'!
blackBackground
	^self asText blackBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:19:21'!
blueBackground
	^self asText blueBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:02'!
cyanBackground
	^self asText cyanBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:24'!
grayBackground
	^self asText grayBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:34'!
greenBackground
	^self asText greenBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:21:01'!
magentaBackground
	^self asText magentaBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:21:11'!
redBackground
	^self asText redBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:23:08'!
white
	^self asText white! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:21:39'!
whiteBackground
	^self asText whiteBackground ! !

!CharacterSequence methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:23:31'!
yellowBackground
	^self asText yellowBackground ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:04:35'!
bgColor: aColor
	"Stuff like
	'Hello world' color: (Color fromHexString: '#941100') :: edit
	'Hello world' color: (Color fromHexString: '#5A9F2D') :: edit
	"
	self addAttribute: (TextBackgroundColor color: aColor)! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:19:05'!
blackBackground
	self bgColor: Color black! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:19:16'!
blueBackground
	self bgColor: Color blue ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:19:31'!
cyanBackground
	self bgColor: Color cyan ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:18'!
grayBackground
	self bgColor: Color gray! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:42'!
greenBackground
	self bgColor: Color green ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:20:53'!
magentaBackground
	self bgColor: Color magenta ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:21:19'!
redBackground
	self bgColor: Color red ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:22:03'!
white
	self color: Color white ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:21:28'!
whiteBackground
	self bgColor: Color white ! !

!Text methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 12:23:41'!
yellowBackground
	self bgColor: Color yellow ! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 12/Oct/2025 15:30:35'!
codeSample
	^ 'Workspace open: '' "Select and execute code by Ctrl-d/Ctrl-p or use menu"
(1/2) + (1/3).
(7/8) * (4/3).
1000 factorial.
1000 factorial / 999 factorial.
'' '! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 12/Oct/2025 13:34:15'!
description
	^ 'An editor to do all sort of computation.' translated! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 12/Oct/2025 15:31:08'!
open: content
	| window |
	window := self new
		contents: content;
		openLabel: 'Workspace'.
	window delete.
	^ window layoutMorph 
		morphExtent: 550@200;
		yourself! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 12/Oct/2025 13:36:14'!
svgIcon
	^ '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!!--!!Font Awesome Free v7.1.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M9.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L146.7 256 9.4 118.6zM224 384l256 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-256 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/></svg>'! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 12/Oct/2025 13:33:02'!
title
	^ 'Workspace' translated! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 25/Feb/2026 10:23:15'!
codeSample
	^ 'TextModelMorph withText: ''Write your text here.'''! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 22/Mar/2026 13:14:45'!
codeSampleForAI
	^ 'TextModelMorph withText: 
	''A text with style sttributes as '', 
	''Coloring words'' red, '' bold words '' bold,  
	'' underlined words '' under , '' struck words'' struck, 
	(''bigger words'' pointSize: 14), (''smaller words'' pointSize: 10),
	'' italic words'' italic, ''combined attributes on words'' bold white blueBackground,
	''
new paragraph with empty line'' 
"Possible colors are black, blue, cyan, gray, green, magenta, red, white yellow"'! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 15/Feb/2026 12:38:23'!
description
	^ 'A small text editor where the font, size, color and style of the text can be adjusted.' translated! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 15/Feb/2026 12:38:27'!
pragmaMenu
	^ #dkmTextEditorMenu! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 15/Feb/2026 12:38:41'!
styleMenu: menuBuilder
	<dkmTextEditorMenu>
	menuBuilder model: menuBuilder model editor. "Set the right model "
	menuBuilder newEntry: #font ::
		label: 'Set font' translated;
		icon: Theme current preferencesDesktopFontIcon;
		selector: #offerFontMenu;
		order: 10.
	menuBuilder newEntry: #size ::
		label: 'Set font size' translated;
		selector: #offerFontSizeMenu;
		order: 20.
	menuBuilder newEntry: #style ::
		label: 'Set style' translated;
		selector: #offerFontStyleMenu;
		icon: (Theme current fetch: #('16x16' 'actions' 'format-text-italic'));
		order: 30.
	menuBuilder newEntry: #color ::
		label: 'Set text color' translated;
		icon: Theme current graphicsIcon ;
		selector: #offerColorMenu;
		order: 40.! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 15/Feb/2026 12:38:36'!
svgIcon
	^ '<svg viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="m432 416h-23.41l-130.71-362.31a32 32 0 0 0 -30.3-21.69h-47.16a32 32 0 0 0 -30.3 21.69l-130.71 362.31h-23.41a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16h-19.58l23.3-64h152.56l23.3 64h-19.58a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16zm-255.15-144 47.15-129.49 47.15 129.49z"/></svg>'! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 15/Feb/2026 12:38:32'!
title
	^ 'Text editor' translated! !
