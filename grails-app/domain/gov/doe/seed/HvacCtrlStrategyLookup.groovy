package gov.doe.seed

class HvacCtrlStrategyLookup {

	String hvacCtrlStrategy
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static constraints = {
		hvacCtrlStrategy nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
