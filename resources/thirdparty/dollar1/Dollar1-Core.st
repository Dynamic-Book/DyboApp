RectangleMorph subclass: #Dollar1Morph
	instanceVariableNames: 'recognizer points label button protractor field'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dollar1-Core'!

!Dollar1Morph methodsFor: 'initialization' stamp: 'yo 8/28/2012 14:54'!
buildInputField
	^ PluggableTextMorph new
		on: self
		text: nil
		accept: #accept:
		readSelection: nil
		menu: nil;
		acceptOnCR: true;
		color: Color white;
		hideVScrollBarIndefinitely: true;
		yourself
! !

!Dollar1Morph methodsFor: 'initialization' stamp: 'yo 8/28/2012 14:47'!
initialize
	| samplePicture sketch |
	super initialize.
	recognizer := Dollar1Recognizer new.
	points := #().
	self color: (Color gray: 0.9).
	samplePicture := self class samplePicture.
	sketch := self imageMorph: samplePicture.
	self extent: samplePicture extent * (2@1).
	self addMorph: sketch.
	sketch topLeft: 0@0.
	self addMorph: ((label := StringMorph contents: '<result>' font: (TextStyle default fontOfSize: 20) emphasis: 0) extent: 300@25).
	label position: sketch topRight.

	self addMorph: (field := self buildInputField).
	field extent: (300@25).
	field bottomRight: self bottomRight.

	protractor := true.
	self addMorph: (button := self button).
	self toggle.
! !


!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/28/2012 14:44'!
accept: morph
	points size > 1 ifTrue: [
		recognizer addTemplate: points as: morph contents asString.
		^ true].
	^ false
! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/18/2012 10:20'!
button
	^ SimpleButtonMorph new
		color: (Color lightBlue);
		target: self;
		actWhen: #buttonUp;
		actionSelector: #toggle;
		setBalloonText: 'Toggle the state'
! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/17/2012 16:26'!
handlesMouseDown: evt
	^ true! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/17/2012 16:27'!
handlesMouseMove: anEvent 
	^ true! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/17/2012 21:38'!
mouseDown: evt
	points := OrderedCollection new.
! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/17/2012 21:38'!
mouseMove: evt
	evt buttons = 4 ifTrue: [
		points add: evt startPoint.
		points addAll: evt trail.
	].
	self changed.
! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/20/2012 21:50'!
mouseUp: evt
	| result |
	super mouseUp: evt.
	points add: evt position.
	points size < 2 ifTrue: [^ self].
	result := protractor ifTrue: [
		recognizer recognizeWithProtractor: points]
	ifFalse: [
		recognizer recognize: points].
	label contents: result first, ', ', (self print3Digits: result second)
! !

!Dollar1Morph methodsFor: 'events' stamp: 'yo 8/18/2012 10:20'!
toggle
	button label: (protractor ifTrue: ['$1'] ifFalse: ['Protractor']) font: (TextStyle default fontOfSize: 20).
	button topRight: self topRight.
	protractor := protractor not.
! !


!Dollar1Morph methodsFor: 'drawing' stamp: 'yo 8/17/2012 21:38'!
drawOn: aCanvas
	| curP lastP |
	super drawOn: aCanvas.
	2 to: points size do: [:i |
		lastP := points at: i - 1.
		curP := points at: i.
		aCanvas line: lastP to: curP width: 6 color: Color black].
! !


!Dollar1Morph methodsFor: 'private' stamp: 'yo 8/28/2012 09:04'!
imageMorph: aForm
	^ ImageMorph new image: aForm
! !

!Dollar1Morph methodsFor: 'private' stamp: 'yo 8/20/2012 21:50'!
print3Digits: aNumber
	(aNumber respondsTo: #printShowingMaxDecimalPlaces:) ifTrue: [
		^ aNumber printShowingMaxDecimalPlaces: 3]
	ifFalse: [
		^ (aNumber truncateTo: 0.001) printString].
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Dollar1Morph class
	instanceVariableNames: ''!

!Dollar1Morph class methodsFor: 'all' stamp: 'yo 8/17/2012 16:39'!
example
	"Dollar1Morph new openInWorld"
! !

!Dollar1Morph class methodsFor: 'all' stamp: 'yo 8/17/2012 16:34'!
samplePicture
	| url |
	url := 'http://tinlizzie.org/~ohshima/Dollar1Samples.png'.
	^( [PNGReadWriter formFromFileNamed: (url copyAfterLast: $/)]
		on: FileDoesNotExistException do: [:ex |
			| data |
			data := HTTPSocket httpGet: url.
			FileStream newFileNamed: (url copyAfterLast: $/)
				do: [:file | file binary; nextPutAll: data binary contents].
			PNGReadWriter formFromStream: data]) preMultiplyAlpha
! !


Object subclass: #Dollar1Recognizer
	instanceVariableNames: 'templates templates1D'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dollar1-Core'!

!Dollar1Recognizer methodsFor: 'initialization' stamp: 'yo 8/28/2012 13:48'!
addTemplate: points as: name
	| stroke |
	stroke := Dollar1Stroke new name: name; withPoints: points.
	stroke isOneDimensional ifTrue: [
		templates1D := templates1D copyWith: stroke]
	ifFalse: [
		templates := templates copyWith: stroke].
! !

!Dollar1Recognizer methodsFor: 'initialization' stamp: 'yo 8/28/2012 13:16'!
initialize
	super initialize.
	templates := self class templates.
	templates1D := #()
! !


!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/20/2012 16:27'!
cosDistance: vec1 with: vec2
	"Not used.  Just the textbook definition of the cosine distance"
	| inner n1 n2 |
	inner := 0.0.
	n1 := 0.0.
	n2 := 0.0.
	vec1 with: vec2 do: [:v1 :v2 |
		inner := inner + (v1 x * v2 x) + (v1 y * v2 y).
		n1 := n1 + (v1 x * v1 x) + (v1 y * v1 y).
		n2 := n2 + (v2 x * v2 x) + (v2 y * v2 y)].
	n1 := n1 sqrt.
	n2 := n2 sqrt.
	^ (inner / (n1 * n2)) arcCos
! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/17/2012 16:22'!
distance: stroke from: t atAngle: theta
	| newPoints |
	newPoints := stroke rotate: stroke points by: theta.
	^ self pathDistance: newPoints from: t points.
! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/17/2012 16:22'!
distanceAtBest: stroke from: t withThetaFrom: thetaA to: thetaB step: step
	| x1 x2 phi f1 f2 tA tB |
	phi := 0.5 * (-1 + 5 sqrt).
	x1 := (phi * thetaA) + ((1 - phi) * thetaB).
	f1 := self distance: stroke from: t atAngle: x1.
	x2 := (1 - phi) * thetaA + (phi * thetaB).
	f2 := self distance: stroke from: t atAngle: x2.
	tA := thetaA.
	tB := thetaB.
	[(tB - tA) abs > step] whileTrue: [
		f1 < f2 ifTrue: [
			tB := x2.
			x2 := x1.
			f2 := f1.
			x1 := phi * tA + ((1 - phi) * tB).
			f1 := self distance: stroke from: t atAngle: x1]
		ifFalse: [
			tA := x1.
			x1 := x2.
			f1 := f2.
			x2 := (1 - phi) * tA + (phi * tB).
			f2 := self distance: stroke from: t atAngle: x2]
	].
	^ f1 min: f2.

! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/21/2012 10:36'!
optimalCosDistance: stroke1 with: stroke2
	| a b angle vec1 vec2 ans1 ans2 ans3 |
	vec1 := stroke1 vector.
	vec2 := stroke2 vector.
	a := 0.
	b := 0.
	1 to: vec1 size do: [:i |
		a := a + ((vec1 at: i) x * (vec2 at: i) x) + ((vec1 at: i) y * (vec2 at: i) y).
		b := b + ((vec1 at: i) x * (vec2 at: i) y) - ((vec1 at: i) y * (vec2 at: i) x)].
	angle := (b/a) arcTan.
	ans1 := ((((a * angle cos) + (b * angle sin)) max: -1.0) min: 1.0) arcCos.
	ans2 := ((a max: -1.0) min: 1.0) arcCos.
	ans3 := ((((a * (angle + Float pi) cos) + (b * (angle + Float pi) sin)) max: -1.0) min: 1.0) arcCos.
	"vec3 := stroke1 rotate: vec2 by: angle."
"	ans3 < ans1 ifTrue: [
		self halt.
		((Float pi negated) to: (Float pi ) by: (Float pi / 90)) collect: [:p |
			((a * p cos) + (b * p sin)) arcCos.]]."
.
	^ ans1 min: ans3.
"	^ ((a * angle cos) + (b * angle sin)) arcCos"
	"vec3 := stroke1 rotate: vec2 by: angle.
	ans1 := self cosDistance: vec1 with: vec3.
	ans3 := self cosDistance: vec1 with: vec2.
	Transcript show: ('ans1: {1}, ans2: {2}, ans3 {3}' format: ({ans1. ans2. ans3} collect: [:e | e printShowingMaxDecimalPlaces: 3])); cr.
	Here, the result is always equal to ans1.  Interesting, eh?
"! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/17/2012 21:44'!
pathDistance: a from: b
	^ (a with: b collect: [:ai :bi | ai dist: bi]) average! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/28/2012 14:22'!
recognize2: stroke against: temp2D and: temp1D
	| maxScore match distance score |
	maxScore := 0.

	stroke isOneDimensional ifTrue: [
		temp1D do: [:t |
			stroke curvature = t curvature ifTrue: [
				maxScore := 20.0.
				match := t]]].

	temp2D do: [:t |
		distance := self optimalCosDistance: t with: stroke.
		score := 1 / distance.
		score > maxScore ifTrue: [
			maxScore := score.
			match := t]].
	^ {match. maxScore}.
! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/28/2012 13:41'!
recognize: points
	| result |
	result := self recognize: (Dollar1Stroke new withPoints: points) against: templates and: templates1D in: 250.
	^ {result first name. result second}
! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/28/2012 13:47'!
recognize: stroke against: temp2D and: temp1D in: size
	| b d bestT theta |
	b := Float infinity.
	bestT := nil.
	theta := 45.
	stroke isOneDimensional ifTrue: [
		temp1D do: [:t |
			stroke curvature = t curvature ifTrue: [
				b := 0.
				bestT := t]]].
			
	templates do: [:t |
		d := self distanceAtBest: stroke from: t withThetaFrom: theta negated to: theta step: 2.
		d < b ifTrue: [
			b := d.
			bestT := t]].
	^ {bestT. 1 - (b / (0.5 * ((size * size) + (size * size)) sqrt))}! !

!Dollar1Recognizer methodsFor: 'step 4' stamp: 'yo 8/28/2012 14:21'!
recognizeWithProtractor: points
	| result |
	result := self recognize2: (Dollar1Stroke new withPoints: points) against: templates and: templates1D.
	^ {result first name. result second}
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Dollar1Recognizer class
	instanceVariableNames: ''!

!Dollar1Recognizer class methodsFor: 'as yet unclassified' stamp: 'yo 8/28/2012 13:41'!
templates
	^ self templatesData collect: [:pair | Dollar1Stroke new name: pair first; withPoints: pair second]
! !

!Dollar1Recognizer class methodsFor: 'as yet unclassified' stamp: 'yo 8/17/2012 16:01'!
templatesData
	^{
		{'triangle'. {137@139. 135@141. 133@144. 132@146. 130@149. 128@151. 126@155. 123@160. 120@166. 116@171. 112@177. 107@183. 102@188. 100@191. 95@195. 90@199. 86@203. 82@206. 80@209. 75@213. 73@213. 70@216. 67@219. 64@221. 61@223. 60@225. 62@226. 65@225. 67@226. 74@226. 77@227. 85@229. 91@230. 99@231. 108@232. 116@233. 125@233. 134@234. 145@233. 153@232. 160@233. 170@234. 177@235. 179@236. 186@237. 193@238. 198@239. 200@237. 202@239. 204@238. 206@234. 205@230. 202@222. 197@216. 192@207. 186@198. 179@189. 174@183. 170@178. 164@171. 161@168. 154@160. 148@155. 143@150. 138@148. 136@148}}.
		{'x'. {87@142. 89@145. 91@148. 93@151. 96@155. 98@157. 100@160. 102@162. 106@167. 108@169. 110@171. 115@177. 119@183. 123@189. 127@193. 129@196. 133@200. 137@206. 140@209. 143@212. 146@215. 151@220. 153@222. 155@223. 157@225. 158@223. 157@218. 155@211. 154@208. 152@200. 150@189. 148@179. 147@170. 147@158. 147@148. 147@141. 147@136. 144@135. 142@137. 140@139. 135@145. 131@152. 124@163. 116@177. 108@191. 100@206. 94@217. 91@222. 89@225. 87@226. 87@224}}.
		{'rectangle'. {78@149. 78@153. 78@157. 78@160. 79@162. 79@164. 79@167. 79@169. 79@173. 79@178. 79@183. 80@189. 80@193. 80@198. 80@202. 81@208. 81@210. 81@216. 82@222. 82@224. 82@227. 83@229. 83@231. 85@230. 88@232. 90@233. 92@232. 94@233. 99@232. 102@233. 106@233. 109@234. 117@235. 123@236. 126@236. 135@237. 142@238. 145@238. 152@238. 154@239. 165@238. 174@237. 179@236. 186@235. 191@235. 195@233. 197@233. 200@233. 201@235. 201@233. 199@231. 198@226. 198@220. 196@207. 195@195. 195@181. 195@173. 195@163. 194@155. 192@145. 192@143. 192@138. 191@135. 191@133. 191@130. 190@128. 188@129. 186@129. 181@132. 173@131. 162@131. 151@132. 149@132. 138@132. 136@132. 122@131. 120@131. 109@130. 107@130. 90@132. 81@133. 76@133}}.
		{'circle'. {127@141. 124@140. 120@139. 118@139. 116@139. 111@140. 109@141. 104@144. 100@147. 96@152. 93@157. 90@163. 87@169. 85@175. 83@181. 82@190. 82@195. 83@200. 84@205. 88@213. 91@216. 96@219. 103@222. 108@224. 111@224. 120@224. 133@223. 142@222. 152@218. 160@214. 167@210. 173@204. 178@198. 179@196. 182@188. 182@177. 178@167. 170@150. 163@138. 152@130. 143@129. 140@131. 129@136. 126@139}}.
		{'check'. {91@185. 93@185. 95@185. 97@185. 100@188. 102@189. 104@190. 106@193. 108@195. 110@198. 112@201. 114@204. 115@207. 117@210. 118@212. 120@214. 121@217. 122@219. 123@222. 124@224. 126@226. 127@229. 129@231. 130@233. 129@231. 129@228. 129@226. 129@224. 129@221. 129@218. 129@212. 129@208. 130@198. 132@189. 134@182. 137@173. 143@164. 147@157. 151@151. 155@144. 161@137. 165@131. 171@122. 174@118. 176@114. 177@112. 177@114. 175@116. 173@118}}.
		{'caret'. {79@245. 79@242. 79@239. 80@237. 80@234. 81@232. 82@230. 84@224. 86@220. 86@218. 87@216. 88@213. 90@207. 91@202. 92@200. 93@194. 94@192. 96@189. 97@186. 100@179. 102@173. 105@165. 107@160. 109@158. 112@151. 115@144. 117@139. 119@136. 119@134. 120@132. 121@129. 122@127. 124@125. 126@124. 129@125. 131@127. 132@130. 136@139. 141@154. 145@166. 151@182. 156@193. 157@196. 161@209. 162@211. 167@223. 169@229. 170@231. 173@237. 176@242. 177@244. 179@250. 181@255. 182@257}}.
		{'zig-zag'. {307@216. 333@186. 356@215. 375@186. 399@216. 418@186}}.
		{'arrow'. {68@222. 70@220. 73@218. 75@217. 77@215. 80@213. 82@212. 84@210. 87@209. 89@208. 92@206. 95@204. 101@201. 106@198. 112@194. 118@191. 124@187. 127@186. 132@183. 138@181. 141@180. 146@178. 154@173. 159@171. 161@170. 166@167. 168@167. 171@166. 174@164. 177@162. 180@160. 182@158. 183@156. 181@154. 178@153. 171@153. 164@153. 160@153. 150@154. 147@155. 141@157. 137@158. 135@158. 137@158. 140@157. 143@156. 151@154. 160@152. 170@149. 179@147. 185@145. 192@144. 196@144. 198@144. 200@144. 201@147. 199@149. 194@157. 191@160. 186@167. 180@176. 177@179. 171@187. 169@189. 165@194. 164@196}}.
		{'left square bracket'. {140@124. 138@123. 135@122. 133@123. 130@123. 128@124. 125@125. 122@124. 120@124. 118@124. 116@125. 113@125. 111@125. 108@124. 106@125. 104@125. 102@124. 100@123. 98@123. 95@124. 93@123. 90@124. 88@124. 85@125. 83@126. 81@127. 81@129. 82@131. 82@134. 83@138. 84@141. 84@144. 85@148. 85@151. 86@156. 86@160. 86@164. 86@168. 87@171. 87@175. 87@179. 87@182. 87@186. 88@188. 88@195. 88@198. 88@201. 88@207. 89@211. 89@213. 89@217. 89@222. 88@225. 88@229. 88@231. 88@233. 88@235. 89@237. 89@240. 89@242. 91@241. 94@241. 96@240. 98@239. 105@240. 109@240. 113@239. 116@240. 121@239. 130@240. 136@237. 139@237. 144@238. 151@237. 157@236. 159@237}}.
		{'right square bracket'. {112@138. 112@136. 115@136. 118@137. 120@136. 123@136. 125@136. 128@136. 131@136. 134@135. 137@135. 140@134. 143@133. 145@132. 147@132. 149@132. 152@132. 153@134. 154@137. 155@141. 156@144. 157@152. 158@161. 160@170. 162@182. 164@192. 166@200. 167@209. 168@214. 168@216. 169@221. 169@223. 169@228. 169@231. 166@233. 164@234. 161@235. 155@236. 147@235. 140@233. 131@233. 124@233. 117@235. 114@238. 112@238}}.
		{'v'. {89@164. 90@162. 92@162. 94@164. 95@166. 96@169. 97@171. 99@175. 101@178. 103@182. 106@189. 108@194. 111@199. 114@204. 117@209. 119@214. 122@218. 124@222. 126@225. 128@228. 130@229. 133@233. 134@236. 136@239. 138@240. 139@242. 140@244. 142@242. 142@240. 142@237. 143@235. 143@233. 145@229. 146@226. 148@217. 149@208. 149@205. 151@196. 151@193. 153@182. 155@172. 157@165. 159@160. 162@155. 164@150. 165@148. 166@146}}.
		{'delete'. {123@129. 123@131. 124@133. 125@136. 127@140. 129@142. 133@148. 137@154. 143@158. 145@161. 148@164. 153@170. 158@176. 160@178. 164@183. 168@188. 171@191. 175@196. 178@200. 180@202. 181@205. 184@208. 186@210. 187@213. 188@215. 186@212. 183@211. 177@208. 169@206. 162@205. 154@207. 145@209. 137@210. 129@214. 122@217. 118@218. 111@221. 109@222. 110@219. 112@217. 118@209. 120@207. 128@196. 135@187. 138@183. 148@167. 157@153. 163@145. 165@142. 172@133. 177@127. 179@127. 180@125}}.
		{'left curly brace'. {150@116. 147@117. 145@116. 142@116. 139@117. 136@117. 133@118. 129@121. 126@122. 123@123. 120@125. 118@127. 115@128. 113@129. 112@131. 113@134. 115@134. 117@135. 120@135. 123@137. 126@138. 129@140. 135@143. 137@144. 139@147. 141@149. 140@152. 139@155. 134@159. 131@161. 124@166. 121@166. 117@166. 114@167. 112@166. 114@164. 116@163. 118@163. 120@162. 122@163. 125@164. 127@165. 129@166. 130@168. 129@171. 127@175. 125@179. 123@184. 121@190. 120@194. 119@199. 120@202. 123@207. 127@211. 133@215. 142@219. 148@220. 151@221}}.
		{'right curly brace'. {117@132. 115@132. 115@129. 117@129. 119@128. 122@127. 125@127. 127@127. 130@127. 133@129. 136@129. 138@130. 140@131. 143@134. 144@136. 145@139. 145@142. 145@145. 145@147. 145@149. 144@152. 142@157. 141@160. 139@163. 137@166. 135@167. 133@169. 131@172. 128@173. 126@176. 125@178. 125@180. 125@182. 126@184. 128@187. 130@187. 132@188. 135@189. 140@189. 145@189. 150@187. 155@186. 157@185. 159@184. 156@185. 154@185. 149@185. 145@187. 141@188. 136@191. 134@191. 131@192. 129@193. 129@195. 129@197. 131@200. 133@202. 136@206. 139@211. 142@215. 145@220. 147@225. 148@231. 147@239. 144@244. 139@248. 134@250. 126@253. 119@253. 115@253}}.
		{'star'. {75@250. 75@247. 77@244. 78@242. 79@239. 80@237. 82@234. 82@232. 84@229. 85@225. 87@222. 88@219. 89@216. 91@212. 92@208. 94@204. 95@201. 96@196. 97@194. 98@191. 100@185. 102@178. 104@173. 104@171. 105@164. 106@158. 107@156. 107@152. 108@145. 109@141. 110@139. 112@133. 113@131. 116@127. 117@125. 119@122. 121@121. 123@120. 125@122. 125@125. 127@130. 128@133. 131@143. 136@153. 140@163. 144@172. 145@175. 151@189. 156@201. 161@213. 166@225. 169@233. 171@236. 174@243. 177@247. 178@249. 179@251. 180@253. 180@255. 179@257. 177@257. 174@255. 169@250. 164@247. 160@245. 149@238. 138@230. 127@221. 124@220. 112@212. 110@210. 96@201. 84@195. 74@190. 64@182. 55@175. 51@172. 49@170. 51@169. 56@169. 66@169. 78@168. 92@166. 107@164. 123@161. 140@162. 156@162. 171@160. 173@160. 186@160. 195@160. 198@161. 203@163. 208@163. 206@164. 200@167. 187@172. 174@179. 172@181. 153@192. 137@201. 123@211. 112@220. 99@229. 90@237. 80@244. 73@250. 69@254. 69@252}}.
		{'pigtail'. {81@219. 84@218. 86@220. 88@220. 90@220. 92@219. 95@220. 97@219. 99@220. 102@218. 105@217. 107@216. 110@216. 113@214. 116@212. 118@210. 121@208. 124@205. 126@202. 129@199. 132@196. 136@191. 139@187. 142@182. 144@179. 146@174. 148@170. 149@168. 151@162. 152@160. 152@157. 152@155. 152@151. 152@149. 152@146. 149@142. 148@139. 145@137. 141@135. 139@135. 134@136. 130@140. 128@142. 126@145. 122@150. 119@158. 117@163. 115@170. 114@175. 117@184. 120@190. 125@199. 129@203. 133@208. 138@213. 145@215. 155@218. 164@219. 166@219. 177@219. 182@218. 192@216. 196@213. 199@212. 201@211}}}! !


Object subclass: #Dollar1Stroke
	instanceVariableNames: 'name points vector curvature isLong'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dollar1-Core'!

!Dollar1Stroke methodsFor: 'accessing' stamp: 'yo 8/28/2012 13:21'!
curvature
	^ curvature
! !

!Dollar1Stroke methodsFor: 'accessing' stamp: 'yo 8/17/2012 19:52'!
name
	^ name
! !

!Dollar1Stroke methodsFor: 'accessing' stamp: 'yo 8/17/2012 16:01'!
name: aString
	name := aString
! !

!Dollar1Stroke methodsFor: 'accessing' stamp: 'yo 8/17/2012 16:01'!
points
	^ points
! !

!Dollar1Stroke methodsFor: 'accessing' stamp: 'yo 8/18/2012 09:56'!
vector
	^ vector
! !


!Dollar1Stroke methodsFor: 'initialization' stamp: 'yo 8/28/2012 13:46'!
preProcess
	| radians |
	vector := (self resample: points asOrderedCollection with: 16) asArray.
	points := (self resample: points asOrderedCollection with: 64) asArray.

	isLong := self isLong: points.
	points := self translate: points to: 0@0.
	radians := self indicativeAngle: points.
	points := self rotate: points by: radians.
	"This is a bit tricky, but calculating the GRAIL-like curvature needs to be done before scaling."
	curvature := self grailCurvature: points.
	points := self scale: points to: 250.

	vector := self translate: vector to: 0@0.
	radians := self indicativeAngle: vector.
	vector := (self vectorize: vector angle: radians oSensitive: true) asArray.

! !

!Dollar1Stroke methodsFor: 'initialization' stamp: 'yo 8/28/2012 13:41'!
withPoints: ps
	points := ps.
	self preProcess
! !


!Dollar1Stroke methodsFor: 'step 1' stamp: 'yo 8/17/2012 16:14'!
pathLength: ps
	| d lastP currentP |
	d := 0.
	lastP := ps first.
	2 to: ps size do: [:i |
		currentP := ps at: i.
		d := d + (lastP dist: currentP).
		lastP := currentP.
	].
	^ d.
! !

!Dollar1Stroke methodsFor: 'step 1' stamp: 'yo 8/17/2012 16:14'!
resample: ps with: n
	| d newPoints dd q currentP ii lastP i |
	ii := (self pathLength: ps) / (n - 1) asFloat.
	dd := 0.
	newPoints := OrderedCollection with: ps first.
	i := 2.
	[i <= ps size] whileTrue: [
		lastP := ps at: i - 1.
		currentP := ps at: i.
		d := lastP dist: currentP.
		dd + d >= ii ifTrue: [
			q := lastP + (((ii - dd) / d) * (currentP - lastP)).
			newPoints add: q.
			ps add: q beforeIndex: i.
			dd := 0]
		ifFalse: [
			dd := dd + d
		].
		i := i + 1].
	newPoints size = (n - 1) ifTrue: [newPoints add: ps last].
	^ newPoints.
! !


!Dollar1Stroke methodsFor: 'step 2' stamp: 'yo 8/20/2012 09:45'!
indicativeAngle: ps
	^ (ps first - ps average) theta.
! !

!Dollar1Stroke methodsFor: 'step 2' stamp: 'yo 8/19/2012 20:15'!
rotate: ps by: rad
	^ ps collect: [:p |
		| r theta |
		r := p r.
		theta := rad asFloat - p theta.
		((r * theta cos)) @  (0 - (r * theta sin))].
! !


!Dollar1Stroke methodsFor: 'step 3' stamp: 'yo 8/17/2012 21:43'!
scale: ps to: size
	| bbExt |
	bbExt := (Rectangle encompassing: ps) extent.
	^ ps collect: [:p | p * size / bbExt].
! !

!Dollar1Stroke methodsFor: 'step 3' stamp: 'yo 8/17/2012 16:17'!
translate: ps to: newC
	| c |
	c := ps average - newC.
	^ ps collect: [:p | p - c].
! !


!Dollar1Stroke methodsFor: 'printing' stamp: 'yo 8/17/2012 16:26'!
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	aStream nextPutAll: (name ifNil: ['*']).
	aStream nextPutAll: ')'.
! !

!Dollar1Stroke methodsFor: 'printing' stamp: 'yo 8/28/2012 13:44'!
show: ps scale: scale
	| c f pp |
	f := Form extent: 250@250 depth: 32.
	f fillColor: Color white.
	c := f getCanvas.
	ps do: [:p |
		pp := (p * scale) + (f extent // 2).
		c fillOval: (pp - (2@2) extent: 4@4) color: Color black borderWidth: 0 borderColor: Color transparent].
	f displayAt: 0@500

! !

!Dollar1Stroke methodsFor: 'printing' stamp: 'yo 8/20/2012 09:55'!
vectorize: ps angle: indicativeAngle oSensitive: oSensitive
	| baseOrientation delta  sum magnitude newPoints vec |
	vec := OrderedCollection new.
	oSensitive ifTrue: [
		baseOrientation := (Float pi / 4.0) * (indicativeAngle + (Float pi / 8.0) / (Float pi / 4.0)) floor.
		delta := indicativeAngle -  baseOrientation]
	ifFalse: [
		delta := indicativeAngle].
	sum := 0.
	newPoints := self rotate: ps by: delta.
	newPoints do: [:p |
		vec add: p.
		sum := sum + (p x * p x) + (p y * p y)].
	magnitude := sum sqrt.
	^ vec collect: [:e | e / magnitude].
! !


!Dollar1Stroke methodsFor: 'grail' stamp: 'yo 8/28/2012 13:20'!
drectionOf: newVector previous: prevDirection
	| base diff histerisis theta threshold data |
	data := #((0.0 #right) (1.5707963267948966 #up) (3.141592653589793 #left) (4.71238898038469 #down)).
	histerisis := 12 degreesToRadians.
	threshold := 45.1 degreesToRadians.
	theta := newVector theta.
	prevDirection ifNotNil: [
		base := (data detect: [:pair | pair second == prevDirection]) first.
		diff := theta - base.
		diff > Float pi ifTrue: [diff := diff - (Float pi * 2)].
		diff abs < (threshold + histerisis) ifTrue: [
			^ prevDirection]].
	data do: [:pair |
		diff := theta - pair first.
		diff > Float pi ifTrue: [diff := diff - (Float pi * 2)].
		diff abs < threshold ifTrue: [
			^ pair second]].
! !

!Dollar1Stroke methodsFor: 'grail' stamp: 'yo 8/28/2012 13:20'!
grailCurvature: ps
	| directions newDirection prevDirection vec cur smoothed |
	directions := OrderedCollection new.
	smoothed := ps first.
	2 to: ps size do: [:i |
		cur := (ps at: i) * 0.25 + (smoothed * 0.75).
		vec := cur - smoothed.
		smoothed := cur.
		prevDirection := directions size = 0 ifTrue: [nil] ifFalse: [directions last].
		newDirection := self drectionOf: vec previous: prevDirection.
		prevDirection ~~ newDirection ifTrue: [
			directions add: newDirection]].
	^ directions.
! !

!Dollar1Stroke methodsFor: 'grail' stamp: 'yo 8/28/2012 14:17'!
isLong: ps
	| max min t end |
	max := Float infinity negated.
	min := Float infinity.

	end := ps first.
	ps size // 2 + 1 to: ps size do: [:j |
		t := ((ps at: j) - end) theta.
		t > (Float pi * 1.5) ifTrue: [t := t - (Float pi * 2)].
		max := max max: t.
		min := min min: t].
	
	end := ps last.
	1 to: ps size // 2 do: [:i |
		t := (end - (ps at: i)) theta.
		t > (Float pi * 1.5) ifTrue: [t := t - (Float pi * 2)].
		max := max max: t.
		min := min min: t].
	
	^ (max - min) < 10 degreesToRadians.
! !

!Dollar1Stroke methodsFor: 'grail' stamp: 'yo 8/28/2012 12:00'!
isOneDimensional
	^ isLong
! !
