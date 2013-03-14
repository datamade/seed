package gov.doe.seed

class ChilledWaterResetLookup {

	String chilledWaterReset
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "chilled_water_reset_id_pk"
		version false
	}

	static constraints = {
		chilledWaterReset nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
