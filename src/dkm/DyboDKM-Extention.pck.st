'From Cuis7.5 [latest update: #7637] on 12 October 2025 at 1:38:02 pm'!
'Description '!
!provides: 'DyboDKM-Extention' 1 0!



!Workspace class methodsFor: '*DyboDKM-Extention' stamp: 'hlsf 10/12/2025 13:36:46'!
codeSample
	^ '| ws | 
ws := Workspace open.
ws delete.
ws layoutMorph morphExtent: 300@200'! !

!Workspace class methodsFor: '*DyboDKM-Extention' stamp: 'hlsf 10/12/2025 13:34:15'!
description
	^ 'An editor to do all sort of computation.' translated! !

!Workspace class methodsFor: '*DyboDKM-Extention' stamp: 'hlsf 10/12/2025 13:36:14'!
svgIcon
	^ '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!!--!!Font Awesome Free v7.1.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M9.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L146.7 256 9.4 118.6zM224 384l256 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-256 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/></svg>'! !

!Workspace class methodsFor: '*DyboDKM-Extention' stamp: 'hlsf 10/12/2025 13:33:02'!
title
	^ 'Workspace' translated! !
