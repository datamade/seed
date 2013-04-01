package gov.doe.seed

class SystemOnsite {

	Integer quantityOnsite
	Integer capacityOnsite
	Double annualOperHrs
	UnitTypeLookup unitTypeLookup
	OnsiteGenTypeLookup onsiteGenTypeLookup
	FuelTypeLookup fuelTypeLookup
	System system

	static belongsTo = [FuelTypeLookup, OnsiteGenTypeLookup, System, UnitTypeLookup]

	static constraints = {
		quantityOnsite nullable: true
		capacityOnsite nullable: true
		annualOperHrs nullable: true
	}
}
