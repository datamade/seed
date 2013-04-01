package gov.doe.seed

class SystemHeating {

	Integer systemIdFk
	Integer quantityHeating
	Double capacityHeating
	Integer yearOfManufactureHeating
	Boolean primaryHeating
	Double efficiencyHeating
	Double percTotInstalledCapHeating
	Double percFloorAreaServedHeating
	Boolean vacuumReturnSystem
	Double inputCapacity
	Double outputCapacity
	Integer zoneCountHeating
	Boolean exclusiveFacility
	BurnerTypeLookup burnerTypeLookup
	HotWaterResetLookup hotWaterResetLookup
	SystemHeatingLocationLookup systemHeatingLocationLookup
	DraftTypeLookup draftTypeLookup
	FuelTypeLookup fuelTypeLookup
	ControlTypeSystemLookup controlTypeSystemLookup
	HeatingTypeLookup heatingTypeLookup
	EfficiencyUnitSystemLookup efficiencyUnitSystemLookup

	static hasMany = [heatingDistributionTypes: HeatingDistributionType]
	static belongsTo = [BurnerTypeLookup, ControlTypeSystemLookup, DraftTypeLookup, EfficiencyUnitSystemLookup, FuelTypeLookup, HeatingTypeLookup, HotWaterResetLookup, SystemHeatingLocationLookup]

	static constraints = {
		systemIdFk nullable: true
		quantityHeating nullable: true
		capacityHeating nullable: true
		yearOfManufactureHeating nullable: true
		primaryHeating nullable: true
		efficiencyHeating nullable: true
		percTotInstalledCapHeating nullable: true
		percFloorAreaServedHeating nullable: true
		vacuumReturnSystem nullable: true
		inputCapacity nullable: true
		outputCapacity nullable: true
		zoneCountHeating nullable: true
		exclusiveFacility nullable: true
	}
}
