package gov.doe.seed

class ReadingTypeLookup {

	String readingType
	String readingTypeDescription
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [energyUseMetrics: EnergyUseMetric]

	static mapping = {
		id column: "reading_type_id_pk"
		version false
	}

	static constraints = {
		readingType nullable: true, maxSize: 100
		readingTypeDescription nullable: true, maxSize: 75
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
