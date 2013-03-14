package gov.doe.seed

class RoofSlopeLookup {

	String roofSlope
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static mapping = {
		id column: "roof_slope_id_pk"
		version false
	}

	static constraints = {
		roofSlope nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
