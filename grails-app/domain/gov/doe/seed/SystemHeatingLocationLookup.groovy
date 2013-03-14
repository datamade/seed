package gov.doe.seed

class SystemHeatingLocationLookup {

	String location

	static hasMany = [systemHeatings: SystemHeating]

	static mapping = {
		id column: "location_id_pk"
		version false
	}

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
