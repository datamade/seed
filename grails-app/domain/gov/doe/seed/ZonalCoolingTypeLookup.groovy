package gov.doe.seed

class ZonalCoolingTypeLookup {

	String zonalCoolingType
	Integer sortOrder

	static hasMany = [systemZonalCoolings: SystemZonalCooling]

	static mapping = {
		id column: "zonal_cooling_type_id_pk"
		version false
	}

	static constraints = {
		zonalCoolingType nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
