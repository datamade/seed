package gov.doe.seed

class FloorTypeLookup {

	String floorType
	Integer sortOrder

	static hasMany = [systemFoundations: SystemFoundation]

	static mapping = {
		id column: "floor_type_id_pk"
		version false
	}

	static constraints = {
		floorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
