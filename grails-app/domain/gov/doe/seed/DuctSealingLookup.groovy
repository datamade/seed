package gov.doe.seed

class DuctSealingLookup {

	String ductSealing
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "duct_sealing_id_pk"
		version false
	}

	static constraints = {
		ductSealing nullable: true, maxSize: 45
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
