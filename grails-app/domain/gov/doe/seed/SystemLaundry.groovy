package gov.doe.seed

class SystemLaundry {

	Integer yearOfManuLaundry
	Boolean energyStarLaundry
	Integer quantityLaundry
	FuelTypeLookup fuelTypeLookup
	System system
	LaundryTypeLookup laundryTypeLookup

	static belongsTo = [FuelTypeLookup, LaundryTypeLookup, System]

	static mapping = {
		id column: "system_laundry_id_pk"
		version false
	}

	static constraints = {
		yearOfManuLaundry nullable: true
		energyStarLaundry nullable: true
		quantityLaundry nullable: true
	}
}
