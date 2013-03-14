package gov.doe.seed

class MeterConfigLookup {

	String meterConfiguration
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "meter_config_id_pk"
		version false
	}

	static constraints = {
		meterConfiguration nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
