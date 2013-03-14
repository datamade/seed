package gov.doe.seed

class EnergyTimeSeries {

	Date startDate
	Date endDate
	Integer readingNumber
	String intervalPeak
	String intervalMinimum
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	EnergyUseMetric energyUseMetric

	static belongsTo = [EnergyUseMetric]

	static mapping = {
		id column: "energy_time_series_id_pk"
		version false
	}

	static constraints = {
		readingNumber nullable: true
		intervalPeak nullable: true, maxSize: 45
		intervalMinimum nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
