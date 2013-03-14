package gov.doe.seed

class RegHvacMainLookup {

	String regularHvacMaintenance
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemGenerals: SystemGeneral]

	static mapping = {
		id column: "regular_hvac_maint_id_pk"
		version false
	}

	static constraints = {
		regularHvacMaintenance maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
