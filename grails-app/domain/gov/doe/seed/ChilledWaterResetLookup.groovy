package gov.doe.seed

class ChilledWaterResetLookup {

	String chilledWaterReset
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static constraints = {
		chilledWaterReset nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
