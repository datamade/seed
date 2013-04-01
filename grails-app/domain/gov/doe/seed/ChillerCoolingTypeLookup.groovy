package gov.doe.seed

class ChillerCoolingTypeLookup {

	String chillerCoolingType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static constraints = {
		chillerCoolingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
