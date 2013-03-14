package gov.doe.seed

class BallastTypeLookup {

	String ballastType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemLightings: SystemLighting]

	static mapping = {
		id column: "ballast_type_id_pk", generator: "assigned"
		version false
	}

	static constraints = {
		ballastType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
