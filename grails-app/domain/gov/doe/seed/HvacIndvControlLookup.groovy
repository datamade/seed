package gov.doe.seed

class HvacIndvControlLookup {

	String hvacIndvControl
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static mapping = {
		id column: "hvac_indv_control_id_fk"
		version false
	}

	static constraints = {
		hvacIndvControl nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
