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

	static constraints = {
		quantityRefrig nullable: true
		sizeRefirg nullable: true
		yearOfManufactureRefrig nullable: true
		energyStarRefrig nullable: true
		densityRefrig nullable: true
	}
}
