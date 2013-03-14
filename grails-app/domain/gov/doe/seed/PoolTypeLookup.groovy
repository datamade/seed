package gov.doe.seed

class PoolTypeLookup {

	String poolType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemPools: SystemPool]

	static mapping = {
		id column: "pool_type_id_pk"
		version false
	}

	static constraints = {
		poolType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
