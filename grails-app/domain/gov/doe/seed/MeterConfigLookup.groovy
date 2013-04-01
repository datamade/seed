package gov.doe.seed

class MeterConfigLookup {

	String meterConfiguration
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static constraints = {
		meterConfiguration nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
