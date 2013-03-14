package gov.doe.seed

class HvacEmcsLookup {

	String hvacEmcs
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static mapping = {
		id column: "hvac_emcs_lookup_id_pk"
		version false
	}

	static constraints = {
		hvacEmcs nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
