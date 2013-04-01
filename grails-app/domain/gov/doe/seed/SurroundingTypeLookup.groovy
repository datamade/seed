package gov.doe.seed

class SurroundingTypeLookup {

	String surroundingType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static constraints = {
		surroundingType nullable: true, maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
