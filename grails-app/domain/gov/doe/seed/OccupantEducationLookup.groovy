package gov.doe.seed

class OccupantEducationLookup {

	String occupantEducationType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [residentialFacilities: ResidentialFacility]

	static mapping = {
		id column: "occupant_education_id_pk"
		version false
	}

	static constraints = {
		occupantEducationType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
