package gov.doe.seed

class ChillerCoolingTypeLookup {

	String chillerCoolingType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "chiller_cooling_type_id_pk"
		version false
	}

	static constraints = {
		chillerCoolingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
