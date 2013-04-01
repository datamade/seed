package gov.doe.seed

class LightingHourLookup {

	String lightingHour
	Integer sortOrder

	static hasMany = [systemLightings: SystemLighting]

	static constraints = {
		lightingHour nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
