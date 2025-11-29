'From Cuis7.5 [latest update: #7637] on 12 October 2025 at 4:14:33 pm'!
'Description '!
!provides: 'DKM-Extention' 1 1!



!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:30:35'!
codeSample
	^ 'Workspace open: '' "Select and execute code by Ctrl-d/Ctrl-p or use menu"
(1/2) + (1/3).
(7/8) * (4/3).
1000 factorial.
1000 factorial / 999 factorial.
'' '! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 13:34:15'!
description
	^ 'An editor to do all sort of computation.' translated! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:31:08'!
open: content
	| window |
	window := self new
		contents: content;
		openLabel: 'Workspace'.
	window delete.
	^ window layoutMorph 
		morphExtent: 550@200;
		yourself! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 13:36:14'!
svgIcon
	^ '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!!--!!Font Awesome Free v7.1.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M9.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L146.7 256 9.4 118.6zM224 384l256 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-256 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/></svg>'! !

!Workspace class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 13:33:02'!
title
	^ 'Workspace' translated! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:42:35'!
codeSample
	^ 'TextModelMorph withText: ''Write your text here.'''! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:41:54'!
description
	^ 'A small text editor where the font, size, color and style of the text can be adjusted.' translated! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 16:14:15'!
pragmaMenu
	^ #dyboTextEditorMenu! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 16:11:40'!
styleMenu: menuBuilder
	<dyboTextEditorMenu>
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

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:42:10'!
svgIcon
	^ '<svg viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="m432 416h-23.41l-130.71-362.31a32 32 0 0 0 -30.3-21.69h-47.16a32 32 0 0 0 -30.3 21.69l-130.71 362.31h-23.41a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16h-19.58l23.3-64h152.56l23.3 64h-19.58a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16zm-255.15-144 47.15-129.49 47.15 129.49z"/></svg>'! !

!TextModelMorph class methodsFor: '*DKM-Extention' stamp: 'hlsf 10/12/2025 15:42:02'!
title
	^ 'Text editor' translated! !
