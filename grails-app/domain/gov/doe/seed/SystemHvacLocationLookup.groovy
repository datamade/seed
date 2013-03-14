package gov.doe.seed

class SystemHvacLocationLookup {

	String location

	static hasMany = [systemHvacs: SystemHvac]

	static mapping = {
		id column: "location_id_pk"
		version false
	}

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
