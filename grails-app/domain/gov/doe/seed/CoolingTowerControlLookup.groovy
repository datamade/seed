package gov.doe.seed

class CoolingTowerControlLookup {

	String coolingTowerControlType
	Integer sortOrder

	static hasMany = [systemCoolings: SystemCooling]

	static constraints = {
		coolingTowerControlType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
