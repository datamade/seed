package gov.doe.seed

class WallInsulationTypeLookup {

	String wallInsulationType
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static mapping = {
		id column: "wall_insulation_type_id_pk"
		version false
	}

	static constraints = {
		wallInsulationType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
