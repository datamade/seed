package gov.doe.seed

class FuelInterruptLookup {

	String fuelInterrupt
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static constraints = {
		fuelInterrupt nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
