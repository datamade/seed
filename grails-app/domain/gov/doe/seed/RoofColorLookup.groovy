package gov.doe.seed

class RoofColorLookup {

	String roofColor
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static constraints = {
		roofColor nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
