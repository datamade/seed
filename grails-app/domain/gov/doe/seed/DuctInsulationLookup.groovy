package gov.doe.seed

class DuctInsulationLookup {

	String ductInsulation
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "duct_insulation_id_pk"
		version false
	}

	static constraints = {
		ductInsulation nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
