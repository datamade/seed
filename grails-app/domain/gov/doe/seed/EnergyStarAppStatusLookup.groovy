package gov.doe.seed

class EnergyStarAppStatusLookup {

	String energyStarAppStatus
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyStarApplications: EnergyStarApplication]

	static constraints = {
		energyStarAppStatus nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
