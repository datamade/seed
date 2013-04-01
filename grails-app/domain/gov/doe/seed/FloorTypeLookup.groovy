package gov.doe.seed

class FloorTypeLookup {

	String floorType
	Integer sortOrder

	static hasMany = [systemFoundations: SystemFoundation]

	static constraints = {
		floorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
