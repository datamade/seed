package gov.doe.seed

class WallInsulationTypeLookup {

	String wallInsulationType
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static constraints = {
		wallInsulationType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
