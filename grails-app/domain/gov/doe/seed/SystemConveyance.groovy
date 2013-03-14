package gov.doe.seed

class SystemConveyance {

	Integer quantityConveyance
	ConveyanceTypeLookup conveyanceTypeLookup
	System system
	ControlTypeSystemLookup controlTypeSystemLookup

	static belongsTo = [ControlTypeSystemLookup, ConveyanceTypeLookup, System]

	static mapping = {
		id column: "system_conveyance_id_pk"
		version false
	}

	static constraints = {
		quantityConveyance nullable: true
	}
}
