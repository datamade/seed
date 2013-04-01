package gov.doe.seed

class ChillerCompTypeLookup {

	String chillerCompressorType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static constraints = {
		chillerCompressorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
