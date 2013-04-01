package gov.doe.seed

class SystemZonalCooling {

	Integer yearOfManufactureZonalCooling
	Integer quantityZonalCooling
	Double percTotInstalledCapZonalCooling
	Double percFloorAreaServedZonalCooling
	Boolean downstreamDistribution
	Double avgOperHrs
	Double numMonthsOper
	ZonalCoolingTypeLookup zonalCoolingTypeLookup
	System system
	ControlTypeSystemLookup controlTypeSystemLookup
	ZonalCoolingSizeRangeLookup zonalCoolingSizeRangeLookup
	FuelTypeLookup fuelTypeLookup

	static belongsTo = [ControlTypeSystemLookup, FuelTypeLookup, System, ZonalCoolingSizeRangeLookup, ZonalCoolingTypeLookup]

	static constraints = {
		yearOfManufactureZonalCooling nullable: true
		quantityZonalCooling nullable: true
		percTotInstalledCapZonalCooling nullable: true
		percFloorAreaServedZonalCooling nullable: true
		downstreamDistribution nullable: true
		avgOperHrs nullable: true
		numMonthsOper nullable: true
	}
}
