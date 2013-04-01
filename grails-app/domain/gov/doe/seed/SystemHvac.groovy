package gov.doe.seed

class SystemHvac {

	Integer systemIdFk
	Integer quantityHvac
	Double capacityHvac
	Double percTotInstalledCapacityHvac
	Double percFloorAreaServedHvac
	Integer yearOfManufactureHvac
	Integer zoneCountHvac
	SystemHvacLocationLookup systemHvacLocationLookup
	OtherHvacTypeLookup otherHvacTypeLookup
	ControlTypeSystemLookup controlTypeSystemLookup
	FuelTypeLookup fuelTypeLookup

	static belongsTo = [ControlTypeSystemLookup, FuelTypeLookup, OtherHvacTypeLookup, SystemHvacLocationLookup]

	static constraints = {
		systemIdFk nullable: true
		quantityHvac nullable: true
		capacityHvac nullable: true
		percTotInstalledCapacityHvac nullable: true
		percFloorAreaServedHvac nullable: true
		yearOfManufactureHvac nullable: true
		zoneCountHvac nullable: true
	}
}
