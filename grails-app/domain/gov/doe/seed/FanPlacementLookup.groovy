package gov.doe.seed

class FanPlacementLookup {

	String fanPlacement
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		fanPlacement nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
