package gov.doe.seed

class ZonalCoolingTypeLookup {

	String zonalCoolingType
	Integer sortOrder

	static hasMany = [systemZonalCoolings: SystemZonalCooling]

	static constraints = {
		zonalCoolingType nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
