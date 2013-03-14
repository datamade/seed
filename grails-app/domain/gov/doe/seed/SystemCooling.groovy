package gov.doe.seed

class SystemCooling {

	Integer quantityCooling
	Double capacityCooling
	Double efficiencyCooling
	Integer yearOfManufactureCooling
	Boolean primaryCooling
	Boolean energyStarCooling
	Double percTotInstalledCapacityCooling
	Double percFloorAreaServedCooling
	Boolean waterEconomizer
	Integer zoneCountCooling
	Boolean coolingEquipRedundancy
	System system
	ChilledWaterResetLookup chilledWaterResetLookup
	CoolingTowerControlLookup coolingTowerControlLookup
	ChillerCompTypeLookup chillerCompTypeLookup
	CoolingTypeLookup coolingTypeLookup
	ControlTypeSystemLookup controlTypeSystemLookup
	FuelTypeLookup fuelTypeLookup
	EfficiencyUnitSystemLookup efficiencyUnitSystemLookup
	ChillerCoolingTypeLookup chillerCoolingTypeLookup
	SystemCoolingLocationLookup systemCoolingLocationLookup

	static belongsTo = [ChilledWaterResetLookup, ChillerCompTypeLookup, ChillerCoolingTypeLookup, ControlTypeSystemLookup, CoolingTowerControlLookup, CoolingTypeLookup, EfficiencyUnitSystemLookup, FuelTypeLookup, System, SystemCoolingLocationLookup]

	static mapping = {
		id column: "system_cooling_id_pk"
		version false
	}

	static constraints = {
		quantityCooling nullable: true
		capacityCooling nullable: true
		efficiencyCooling nullable: true
		yearOfManufactureCooling nullable: true
		primaryCooling nullable: true
		energyStarCooling nullable: true
		percTotInstalledCapacityCooling nullable: true
		percFloorAreaServedCooling nullable: true
		waterEconomizer nullable: true
		zoneCountCooling nullable: true
		coolingEquipRedundancy nullable: true
	}
}
