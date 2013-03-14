package gov.doe.seed

class DistributionTypeLookup {

	String distributionType
	Integer sortOrder

	static hasMany = [heatingDistributionTypes: HeatingDistributionType]

	static mapping = {
		id column: "distribution_type_id_pk"
		version false
	}

	static constraints = {
		distributionType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
