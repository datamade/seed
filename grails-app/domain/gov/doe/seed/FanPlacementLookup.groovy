package gov.doe.seed

class FanPlacementLookup {

	String fanPlacement
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "fan_placement_id_pk"
		version false
	}

	static constraints = {
		fanPlacement nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
