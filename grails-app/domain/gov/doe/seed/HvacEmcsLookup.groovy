package gov.doe.seed

class HvacEmcsLookup {

	String hvacEmcs
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static constraints = {
		hvacEmcs nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
