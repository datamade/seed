package gov.doe.seed

class RoofDeckTypeLookup {

	String roofDeckType
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static constraints = {
		roofDeckType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
