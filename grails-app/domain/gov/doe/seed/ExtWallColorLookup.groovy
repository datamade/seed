package gov.doe.seed

class ExtWallColorLookup {

	String extWallColor
	Integer sortOrder

	static hasMany = [systemWalls: SystemWall]

	static mapping = {
		id column: "ext_wall_color_id_pk"
		version false
	}

	static constraints = {
		extWallColor nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
