package gov.doe.seed

class SystemFenestration {

	Boolean operableWindows
	Boolean windowsGlassFilled
	Integer windowRValue
	Double shgc
	Double windowVisibleTrans
	Double windowWallRatio
	Boolean skylights
	Boolean windowWeatherStripped
	Boolean doorWeatherStripped
	Double windowArea
	Boolean groundFloor
	Double percGlazing
	Integer yearLastWinReplaced
	Double percWinAreaShaded
	Double percSkylightArea
	Double skylightShgc
	Double skylightVisibleTransmittance
	Integer numExtDoors
	WindowFrameTypeLookup windowFrameTypeLookup
	IntShadingTypeLookup intShadingTypeLookup
	System system
	ExtShadingTypeLookup extShadingTypeLookup
	ExtShadingOrientationLookup extShadingOrientationLookup
	WindowGlassLayerLookup windowGlassLayerLookup
	WindowGlassTypeLookup windowGlassTypeLookup
	ExtDoorTypeLookup extDoorTypeLookup

	static belongsTo = [ExtDoorTypeLookup, ExtShadingOrientationLookup, ExtShadingTypeLookup, IntShadingTypeLookup, System, WindowFrameTypeLookup, WindowGlassLayerLookup, WindowGlassTypeLookup]

	static constraints = {
		operableWindows nullable: true
		windowsGlassFilled nullable: true
		windowRValue nullable: true
		shgc nullable: true
		windowVisibleTrans nullable: true
		windowWallRatio nullable: true
		skylights nullable: true
		windowWeatherStripped nullable: true
		doorWeatherStripped nullable: true
		windowArea nullable: true
		groundFloor nullable: true
		percGlazing nullable: true
		yearLastWinReplaced nullable: true
		percWinAreaShaded nullable: true
		percSkylightArea nullable: true
		skylightShgc nullable: true
		skylightVisibleTransmittance nullable: true
		numExtDoors nullable: true
	}
}
