package gov.doe.seed

class BuildingProfileStatusLookup {

	String buildingProfileStatus
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static constraints = {
		buildingProfileStatus nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
