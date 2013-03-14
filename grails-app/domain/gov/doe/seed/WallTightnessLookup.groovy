package gov.doe.seed

class WallTightnessLookup {

	String wallTightness
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static mapping = {
		id column: "wall_tightness_id_pk"
		version false
	}

	static constraints = {
		wallTightness nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
