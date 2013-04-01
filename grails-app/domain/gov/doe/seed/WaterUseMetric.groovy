package gov.doe.seed

class WaterUseMetric {

	String pmMeterId
	String espMeterId
	String meterName
	String utilityCompany
	Double waterUseMetricValue
	String pmWaterMeterId
	String espWaterMeterId
	String indoorWaterCost
	String indoorWaterUse
	String indoorWaterUsePerSqft
	String otherWaterCost
	String otherWaterUse
	String totIndoorOutdoorWaterCost
	String totIndoorOutdoorWaterUse
	String wasteWaterSewerCost
	String wasteWaterSewerUse
	Boolean waterUseAlerts
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	MetricTypeLookup metricTypeLookup
	Facility facility
	UnitTypeLookup unitTypeLookup

	static hasMany = [waterTimeSerieses: WaterTimeSeries]
	static belongsTo = [Facility, MetricTypeLookup, UnitTypeLookup]

	static constraints = {
		pmMeterId nullable: true, maxSize: 45
		espMeterId nullable: true, maxSize: 45
		meterName nullable: true, maxSize: 45
		utilityCompany nullable: true, maxSize: 45
		pmWaterMeterId nullable: true, maxSize: 45
		espWaterMeterId nullable: true, maxSize: 45
		indoorWaterCost nullable: true, maxSize: 45
		indoorWaterUse nullable: true, maxSize: 45
		indoorWaterUsePerSqft nullable: true, maxSize: 45
		otherWaterCost nullable: true, maxSize: 45
		otherWaterUse nullable: true, maxSize: 45
		totIndoorOutdoorWaterCost nullable: true, maxSize: 45
		totIndoorOutdoorWaterUse nullable: true, maxSize: 45
		wasteWaterSewerCost nullable: true, maxSize: 45
		wasteWaterSewerUse nullable: true, maxSize: 45
		waterUseAlerts nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
