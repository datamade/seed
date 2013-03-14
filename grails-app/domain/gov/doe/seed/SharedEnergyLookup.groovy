package gov.doe.seed

class SharedEnergyLookup {

	String sharedEnergy
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "shared_energy_id_pk"
		version false
	}

	static constraints = {
		sharedEnergy nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
