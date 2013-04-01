package gov.doe.seed

class WaterTimeSeries {

	Date startDate
	Date endDate
	Integer readingNumber
	String intervalPeak
	String intervalMinimum
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	WaterUseMetric waterUseMetric

	static belongsTo = [WaterUseMetric]

	static constraints = {
		readingNumber nullable: true
		intervalPeak nullable: true, maxSize: 45
		intervalMinimum nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
