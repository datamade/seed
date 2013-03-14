package gov.doe.seed

class CoolingTowerControlLookup {

	String coolingTowerControlType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "cooling_tower_control_type_id_pk"
		version false
	}

	static constraints = {
		coolingTowerControlType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
