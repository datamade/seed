package gov.doe.seed

class SystemPool {

	Integer quantityPool
	Boolean heatedPool
	Double poolVolume
	Integer numPoolPumps
	Boolean indoorPool
	Double poolArea
	System system
	PoolTypeLookup poolTypeLookup
	FuelTypeLookup fuelTypeLookup
	ControlTypeSystemLookup controlTypeSystemLookup

	static belongsTo = [ControlTypeSystemLookup, FuelTypeLookup, PoolTypeLookup, System]

	static mapping = {
		id column: "system_pool_id_pk"
		version false
	}

	static constraints = {
		quantityPool nullable: true
		heatedPool nullable: true
		poolVolume nullable: true
		numPoolPumps nullable: true
		indoorPool nullable: true
		poolArea nullable: true
	}
}
