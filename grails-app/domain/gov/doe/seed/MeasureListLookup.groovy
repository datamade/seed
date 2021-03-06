package gov.doe.seed

class MeasureListLookup {

	String measureList
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static constraints = {
		measureList maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
