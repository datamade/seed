package gov.doe.seed

class ZonalCoolingSizeRangeLookup {

	String zonalCoolingSizeRange
	Integer sortOrder

	static hasMany = [systemZonalCoolings: SystemZonalCooling]

	static constraints = {
		zonalCoolingSizeRange nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
