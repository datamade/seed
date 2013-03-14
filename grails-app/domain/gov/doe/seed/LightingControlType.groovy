package gov.doe.seed

class LightingControlType {

	String lightingControlType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemLightings: SystemLighting]

	static mapping = {
		id column: "lighting_control_type_id_pk"
		version false
	}

	static constraints = {
		lightingControlType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
