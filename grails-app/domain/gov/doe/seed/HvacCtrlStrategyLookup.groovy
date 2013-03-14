package gov.doe.seed

class HvacCtrlStrategyLookup {

	String hvacCtrlStrategy
	Integer sortOrder

	static hasMany = [systemGenerals: SystemGeneral]

	static mapping = {
		id column: "hvac_ctrl_strategy_id_pk"
		version false
	}

	static constraints = {
		hvacCtrlStrategy nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
