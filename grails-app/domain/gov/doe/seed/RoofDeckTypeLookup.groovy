package gov.doe.seed

class RoofDeckTypeLookup {

	String roofDeckType
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static mapping = {
		id column: "roof_deck_type_id_pk"
		version false
	}

	static constraints = {
		roofDeckType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
