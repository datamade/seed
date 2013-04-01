package gov.doe.seed

class RoofSlopeLookup {

	String roofSlope
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static constraints = {
		roofSlope nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
