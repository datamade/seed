package gov.doe.seed

class WallTightnessLookup {

	String wallTightness
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static constraints = {
		wallTightness nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
