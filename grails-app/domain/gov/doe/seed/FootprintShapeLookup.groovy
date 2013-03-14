package gov.doe.seed

class FootprintShapeLookup {

	String footprintShapeType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static mapping = {
		id column: "footprint_shape_id_pk"
		version false
	}

	static constraints = {
		footprintShapeType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
