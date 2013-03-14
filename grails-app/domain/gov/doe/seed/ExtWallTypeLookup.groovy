package gov.doe.seed

class ExtWallTypeLookup {

	String extWallType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemWalls: SystemWall]

	static mapping = {
		id column: "ext_walltype_id_pk"
		version false
	}

	static constraints = {
		extWallType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
