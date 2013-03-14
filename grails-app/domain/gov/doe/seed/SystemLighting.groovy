package gov.doe.seed

class SystemLighting {

	Double installedPower
	Double percTotInstalledPowerHeating
	Double percFloorAreaServedHeating
	Double outsideLighting
	Double lightingEfficacy
	Boolean specularReflectors
	Double percLitOpen
	Double percLitClosed
	LightingHourLookup lightingHourLookup
	BallastTypeLookup ballastTypeLookup
	System system
	LightingControlType lightingControlType
	LightingTypeLookup lightingTypeLookup

	static belongsTo = [BallastTypeLookup, LightingControlType, LightingHourLookup, LightingTypeLookup, System]

	static mapping = {
		id column: "system_lighting_id_pk"
		version false
	}

	static constraints = {
		installedPower nullable: true
		percTotInstalledPowerHeating nullable: true
		percFloorAreaServedHeating nullable: true
		outsideLighting nullable: true
		lightingEfficacy nullable: true
		specularReflectors nullable: true
		percLitOpen nullable: true
		percLitClosed nullable: true
	}
}
