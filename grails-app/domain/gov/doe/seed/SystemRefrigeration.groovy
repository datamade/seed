package gov.doe.seed

class SystemRefrigeration {

	Integer quantityRefrig
	Double sizeRefirg
	Integer yearOfManufactureRefrig
	Boolean energyStarRefrig
	Double densityRefrig
	RefrigDoorTypeLookup refrigDoorTypeLookup
	System system
	RefrigTypeLookup refrigTypeLookup

	static belongsTo = [RefrigDoorTypeLookup, RefrigTypeLookup, System]

	static mapping = {
		id column: "system_refrigeration_id_pk"
		version false
	}

	static constraints = {
		quantityRefrig nullable: true
		sizeRefirg nullable: true
		yearOfManufactureRefrig nullable: true
		energyStarRefrig nullable: true
		densityRefrig nullable: true
	}
}
