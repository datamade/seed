package gov.doe.seed

class AtticTypeLookup {

	String atticType
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static mapping = {
		id column: "attic_type_id_pk"
		version false
	}

	static constraints = {
		atticType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
