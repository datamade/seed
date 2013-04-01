package gov.doe.seed

class IntervalTypeLookup {

	String intervalType
	String intervalTypeDescription
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static constraints = {
		intervalType nullable: true, maxSize: 100
		intervalTypeDescription nullable: true, maxSize: 75
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
