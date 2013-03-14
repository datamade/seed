package gov.doe.seed

class SystemCoolingLocationLookup {

	String location

	static hasMany = [systemCoolings: SystemCooling]

	static mapping = {
		id column: "location_id_pk"
		version false
	}

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
