package gov.doe.seed

class LightingTypeLookup {

	String lightingType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemLightings: SystemLighting]

	static mapping = {
		id column: "lighting_type_id_pk"
		version false
	}

	static constraints = {
		lightingType maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
