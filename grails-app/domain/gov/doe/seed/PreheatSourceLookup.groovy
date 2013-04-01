package gov.doe.seed

class PreheatSourceLookup {

	String preheatSource
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		preheatSource nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
