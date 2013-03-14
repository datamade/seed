package gov.doe.seed

class EndUseTypeLookup {

	String endUseType
	String endUseTypeDescription
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "end_use_type_id_pk"
		version false
	}

	static constraints = {
		endUseType nullable: true, maxSize: 100
		endUseTypeDescription nullable: true, maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
