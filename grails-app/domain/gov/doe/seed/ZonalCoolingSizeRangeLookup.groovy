package gov.doe.seed

class ZonalCoolingSizeRangeLookup {

	String zonalCoolingSizeRange
	Integer sortOrder

	static hasMany = [systemZonalCoolings: SystemZonalCooling]

	static mapping = {
		id column: "zonal_cooling_size_range_id_pk"
		version false
	}

	static constraints = {
		zonalCoolingSizeRange nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
