package gov.doe.seed

class SystemHotwater {

	Integer quantityHotWater
	Double sizeHotWater
	Double capacityHotWater
	Integer yearOfManufactureHotWater
	Double efficiencyHotWater
	Boolean energyStarHotWater
	Integer storageTankInsulationRValue
	Double storageTankInsulationThickness
	Double percTotInstalledCapHotWater
	Double setpointTemp
	ResTempLookup resTempLookup
	EfficiencyUnitSystemLookup efficiencyUnitSystemLookup
	ServiceHotwaterLookup serviceHotwaterLookup
	System system
	FuelTypeLookup fuelTypeLookup
	SystemHotwaterLocationLookup systemHotwaterLocationLookup
	ControlTypeSystemLookup controlTypeSystemLookup

	static belongsTo = [ControlTypeSystemLookup, EfficiencyUnitSystemLookup, FuelTypeLookup, ResTempLookup, ServiceHotwaterLookup, System, SystemHotwaterLocationLookup]

	static mapping = {
		id column: "system_hotwater_id_pk"
		version false
	}

	static constraints = {
		quantityHotWater nullable: true
		sizeHotWater nullable: true
		capacityHotWater nullable: true
		yearOfManufactureHotWater nullable: true
		efficiencyHotWater nullable: true
		energyStarHotWater nullable: true
		storageTankInsulationRValue nullable: true
		storageTankInsulationThickness nullable: true
		percTotInstalledCapHotWater nullable: true
		setpointTemp nullable: true
	}
}
