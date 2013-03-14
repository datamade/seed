package gov.doe.seed

class SystemZonalHeating {

	Integer quantityZheating
	Integer yearOfManufactureZheating
	Double percTotInstalledCapZheating
	Double percFloorAreaServedZheating
	Boolean waterEconomizer
	Integer zoneCountCooling
	Boolean coolingEquipRedundancy
	ControlTypeSystemLookup controlTypeSystemLookup
	System system
	FuelTypeLookup fuelTypeLookup
	ZonalHeatingTypeLookup zonalHeatingTypeLookup

	static belongsTo = [ControlTypeSystemLookup, FuelTypeLookup, System, ZonalHeatingTypeLookup]

	static mapping = {
		id column: "system_zonal_heating_id_pk"
		version false
	}

	static constraints = {
		quantityZheating nullable: true
		yearOfManufactureZheating nullable: true
		percTotInstalledCapZheating nullable: true
		percFloorAreaServedZheating nullable: true
		waterEconomizer nullable: true
		zoneCountCooling nullable: true
		coolingEquipRedundancy nullable: true
	}
}
