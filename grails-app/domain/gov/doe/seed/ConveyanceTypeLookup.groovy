package gov.doe.seed

class ConveyanceTypeLookup {

	String conveyanceType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemConveyances: SystemConveyance]

	static mapping = {
		id column: "conveyance_type_id_pk"
		version false
	}

	static constraints = {
		conveyanceType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
