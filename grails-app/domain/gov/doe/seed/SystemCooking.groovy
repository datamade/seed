package gov.doe.seed

class SystemCooking {

	Double capacityCooking
	Integer capUnitCooking
	Integer quantityCooking
	FuelTypeLookup fuelTypeLookup
	System system
	CookingTypeLookup cookingTypeLookup

	static belongsTo = [CookingTypeLookup, FuelTypeLookup, System]

	static mapping = {
		id column: "system_cooking_id_pk"
		version false
	}

	static constraints = {
		capacityCooking nullable: true
		capUnitCooking nullable: true
		quantityCooking nullable: true
	}
}
