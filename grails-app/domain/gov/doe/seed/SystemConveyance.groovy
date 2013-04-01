package gov.doe.seed

class SystemConveyance {

	Integer quantityConveyance
	ConveyanceTypeLookup conveyanceTypeLookup
	System system
	ControlTypeSystemLookup controlTypeSystemLookup

	static belongsTo = [ControlTypeSystemLookup, ConveyanceTypeLookup, System]

	static constraints = {
		quantityConveyance nullable: true
	}
}
