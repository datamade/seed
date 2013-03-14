package gov.doe.seed

class SystemProcessLoad {

	Integer quantityProcess
	Double efficiencyProcess
	String efficiencyUnitProcess
	Double capacityProcessLoad
	Integer capUnitProcessLoad
	FuelTypeLookup fuelTypeLookup
	System system
	ProcessLoadLookup processLoadLookup

	static belongsTo = [FuelTypeLookup, ProcessLoadLookup, System]

	static mapping = {
		id column: "system_process_load_id_pk"
		version false
	}

	static constraints = {
		quantityProcess nullable: true
		efficiencyProcess nullable: true
		efficiencyUnitProcess nullable: true, maxSize: 10
		capacityProcessLoad nullable: true
		capUnitProcessLoad nullable: true
	}
}
