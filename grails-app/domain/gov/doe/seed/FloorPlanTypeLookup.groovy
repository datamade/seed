package gov.doe.seed

class FloorPlanTypeLookup {

	String floorPlanType
	Integer sortOrder

	static hasMany = [residentialFacilities: ResidentialFacility]

	static mapping = {
		id column: "floor_plan_type_id_pk"
		version false
	}

	static constraints = {
		floorPlanType maxSize: 45
	}
}
