package gov.doe.seed

class SystemCooking {

	Double capacityCooking
	Integer capUnitCooking
	Integer quantityCooking
	FuelTypeLookup fuelTypeLookup
	System system
	CookingTypeLookup cookingTypeLookup

	static belongsTo = [CookingTypeLookup, FuelTypeLookup, System]

	static constraints = {
		capacityCooking nullable: true
		capUnitCooking nullable: true
		quantityCooking nullable: true
	}
}
