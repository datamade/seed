package gov.doe.seed

class MetricTypeLookup {

	String metricType
	String metricTypeDescription
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [waterUseMetrics: WaterUseMetric]

	static constraints = {
		metricType nullable: true, maxSize: 100
		metricTypeDescription nullable: true, maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
