package gov.doe.seed

class FuelInterruptLookup {

	String fuelInterrupt
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "fuel_interrupt_id_pk"
		version false
	}

	static constraints = {
		fuelInterrupt nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
