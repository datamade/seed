package gov.doe.seed

class ExtWallColorLookup {

	String extWallColor
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static constraints = {
		extWallColor nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
