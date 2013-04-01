package gov.doe.seed

class SharedEnergyLookup {

	String sharedEnergy
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static constraints = {
		sharedEnergy nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
