package gov.doe.seed

class PreheatSourceLookup {

	String preheatSource
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "preheat_source_id_pk"
		version false
	}

	static constraints = {
		preheatSource nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
