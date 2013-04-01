package gov.doe.seed

class BurnerTypeLookup {

	String burnerType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemHeatings: SystemHeating]

	static constraints = {
		burnerType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
