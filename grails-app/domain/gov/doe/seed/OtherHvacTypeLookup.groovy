package gov.doe.seed

class OtherHvacTypeLookup {

	String otherHvacType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemHvacs: SystemHvac]

	static mapping = {
		id column: "other_hvac_type_id_pk"
		version false
	}

	static constraints = {
		otherHvacType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
