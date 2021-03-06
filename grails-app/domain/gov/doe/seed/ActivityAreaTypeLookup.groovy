package gov.doe.seed

class ActivityAreaTypeLookup {

	String activityAreaType
	String activityAreaTypeDescription
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [activityAreas: ActivityArea]


	static constraints = {
		activityAreaType nullable: true, maxSize: 100
		activityAreaTypeDescription nullable: true, maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
