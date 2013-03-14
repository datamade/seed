package gov.doe.seed

class OwnershipStatusLookup {

	String ownershipStatus
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static mapping = {
		id column: "ownership_status_id_pk"
		version false
	}

	static constraints = {
		ownershipStatus maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
