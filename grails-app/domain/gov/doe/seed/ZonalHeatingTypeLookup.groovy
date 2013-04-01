package gov.doe.seed

class ZonalHeatingTypeLookup {

	String zonalHeatingType
	Integer sortOrder

	static hasMany = [systemZonalHeatings: SystemZonalHeating]

	static constraints = {
		zonalHeatingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
