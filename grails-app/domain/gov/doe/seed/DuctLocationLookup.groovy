package gov.doe.seed

class DuctLocationLookup {

	String ductLocation
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "duct_location_id_pk"
		version false
	}

	static constraints = {
		ductLocation nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
