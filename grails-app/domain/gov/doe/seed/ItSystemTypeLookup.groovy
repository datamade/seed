package gov.doe.seed

class ItSystemTypeLookup {

	String itSystemType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemIts: SystemIt]

	static mapping = {
		id column: "it_system_type_id_pk"
		version false
	}

	static constraints = {
		itSystemType maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
