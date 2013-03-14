package gov.doe.seed

class SystemHotwaterLocationLookup {

	String location

	static hasMany = [systemHotwaters: SystemHotwater]

	static mapping = {
		id column: "location_id_pk"
		version false
	}

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
