package gov.doe.seed

class EnergyStarAppStatusLookup {

	String energyStarAppStatus
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyStarApplications: EnergyStarApplication]

	static mapping = {
		id column: "energy_star_app_status_id_pk"
		version false
	}

	static constraints = {
		energyStarAppStatus nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
