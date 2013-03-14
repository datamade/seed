package gov.doe.seed

class ChillerCompTypeLookup {

	String chillerCompressorType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "chiller_comp_type_id_pk"
		version false
	}

	static constraints = {
		chillerCompressorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
