package gov.doe.seed

class AtticTypeLookup {

	String atticType
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static constraints = {
		atticType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
