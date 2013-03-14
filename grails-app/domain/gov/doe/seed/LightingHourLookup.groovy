package gov.doe.seed

class LightingHourLookup {

	String lightingHour
	Integer sortOrder

	static hasMany = [systemLightings: SystemLighting]

	static mapping = {
		id column: "lighting_hour_id_pk"
		version false
	}

	static constraints = {
		lightingHour nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
