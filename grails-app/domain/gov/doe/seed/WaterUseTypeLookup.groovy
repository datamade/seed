package gov.doe.seed

class WaterUseTypeLookup {

	String waterUseType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "water_use_type_id_pk"
		version false
	}

	static constraints = {
		waterUseType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
