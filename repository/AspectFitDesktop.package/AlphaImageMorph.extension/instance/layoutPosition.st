*AspectFitDesktop
layoutPosition
	"Answer the position that the cached form should be drawn
	based on the layout"
	
	self layout == #topCenter ifTrue: [^self innerBounds topCenter - (self cachedFormSet width // 2 @ 0)].
	self layout == #topRight ifTrue: [^self innerBounds topRight - (self cachedFormSet width @ 0)].
	self layout == #rightCenter ifTrue: [^self innerBounds rightCenter - (self cachedFormSet width @ (self cachedFormSet height // 2))].
	self layout == #bottomRight ifTrue: [^self innerBounds bottomRight - self cachedFormSet extent].
	self layout == #bottomCenter ifTrue: [^self innerBounds bottomCenter - (self cachedFormSet width // 2 @ self cachedFormSet height)].
	self layout == #bottomLeft ifTrue: [^self innerBounds bottomLeft - (0 @ self cachedFormSet height)].
	self layout == #leftCenter ifTrue: [^self innerBounds leftCenter - (0 @ (self cachedFormSet height // 2))].
	(#(#center #scaledAspect #fitAspect ) includes: self layout) ifTrue: [^self innerBounds center - (self cachedFormSet extent // 2)].
	^self innerBounds topLeft