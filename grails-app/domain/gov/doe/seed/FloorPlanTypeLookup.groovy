package gov.doe.seed

class FloorPlanTypeLookup {

	String floorPlanType
	Integer sortOrder

	static hasMany = [residentialFacilities: ResidentialFacility]

	static constraints = {
		floorPlanType maxSize: 45
	}
}
