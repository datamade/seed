package gov.doe.seed

class ZonalHeatingTypeLookup {

	String zonalHeatingType
	Integer sortOrder

	static hasMany = [systemZonalHeatings: SystemZonalHeating]

	static mapping = {
		id column: "zonal_heating_type_id_pk"
		version false
	}

	static constraints = {
		zonalHeatingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
