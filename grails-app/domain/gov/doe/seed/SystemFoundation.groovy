package gov.doe.seed

class SystemFoundation {

	Boolean perimeterInsulated
	Double floorInsulationThickness
	Integer floorRValue
	Boolean carpet
	Boolean plumbingSealing
	System system
	FloorTypeLookup floorTypeLookup
	GroundCouplingLookup groundCouplingLookup

	static belongsTo = [FloorTypeLookup, GroundCouplingLookup, System]

	static mapping = {
		id column: "system_foundation_id_pk"
		version false
	}

	static constraints = {
		perimeterInsulated nullable: true
		floorInsulationThickness nullable: true
		floorRValue nullable: true
		carpet nullable: true
		plumbingSealing nullable: true
	}
}
