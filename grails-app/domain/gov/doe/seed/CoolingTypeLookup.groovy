package gov.doe.seed

class CoolingTypeLookup {

	String coolingType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "cooling_type_id_pk"
		version false
	}

	static constraints = {
		coolingType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
