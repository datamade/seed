package gov.doe.seed

class HumidificationLookup {

	String humidification
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "humidification_id_pk"
		version false
	}

	static constraints = {
		humidification nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
