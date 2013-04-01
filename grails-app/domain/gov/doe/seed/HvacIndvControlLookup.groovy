package gov.doe.seed

class HvacIndvControlLookup {

	String hvacIndvControl
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static constraints = {
		hvacIndvControl nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
