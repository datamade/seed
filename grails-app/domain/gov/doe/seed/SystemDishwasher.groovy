package gov.doe.seed

class SystemDishwasher {

	Integer yearOfManuDishwasher
	Boolean energyStarDishwasher
	Integer quantityDishwasher
	Double loadsPerWeek
	DishwaterTypeLookup dishwaterTypeLookup
	System system
	FuelTypeLookup fuelTypeLookup

	static belongsTo = [DishwaterTypeLookup, FuelTypeLookup, System]

	static constraints = {
		yearOfManuDishwasher nullable: true
		energyStarDishwasher nullable: true
		quantityDishwasher nullable: true
		loadsPerWeek nullable: true
	}
}
