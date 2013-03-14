package gov.doe.seed

class UnitTypeLookup {

	String unitType
	String unitTypeDescription
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric,
	                  systemOnsites: SystemOnsite,
	                  waterUseMetrics: WaterUseMetric]

	static mapping = {
		id column: "unit_type_id_pk"
		version false
	}

	static constraints = {
		unitType nullable: true, maxSize: 100
		unitTypeDescription nullable: true, maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
