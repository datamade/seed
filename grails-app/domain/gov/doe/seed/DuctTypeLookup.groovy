package gov.doe.seed

class DuctTypeLookup {

	String ductType
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "duct_type_id_pk"
		version false
	}

	static constraints = {
		ductType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
