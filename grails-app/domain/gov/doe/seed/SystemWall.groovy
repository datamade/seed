package gov.doe.seed

class SystemWall {

	Integer wallRValue
	Double percTotWallArea
	Double wallInsulationThickness
	Double basementWallInsulThickness
	Double wallArea
	WallTightnessLookup wallTightnessLookup
	System system
	ExtWallColorLookup extWallColorLookup
	WallInsulationTypeLookup wallInsulationTypeLookup
	ExtWallTypeLookup extWallTypeLookup

	static belongsTo = [ExtWallColorLookup, ExtWallTypeLookup, System, WallInsulationTypeLookup, WallTightnessLookup]

	static mapping = {
		id column: "system_wall_id_pk"
		version false
	}

	static constraints = {
		wallRValue nullable: true
		percTotWallArea nullable: true
		wallInsulationThickness nullable: true
		basementWallInsulThickness nullable: true
		wallArea nullable: true
	}
}
