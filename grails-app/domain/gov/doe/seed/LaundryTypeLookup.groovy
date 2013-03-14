package gov.doe.seed

class LaundryTypeLookup {

	String laundryType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemLaundries: SystemLaundry]

	static mapping = {
		id column: "laundry_type_id_pk"
		version false
	}

	static constraints = {
		laundryType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
