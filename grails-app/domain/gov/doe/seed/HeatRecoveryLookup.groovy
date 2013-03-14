package gov.doe.seed

class HeatRecoveryLookup {

	String heatRecoveryType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "heat_recovery_type_id_fk"
		version false
	}

	static constraints = {
		heatRecoveryType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}