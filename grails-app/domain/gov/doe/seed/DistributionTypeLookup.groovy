package gov.doe.seed

class DistributionTypeLookup {

	String distributionType
	Integer sortOrder

	static hasMany = [heatingDistributionTypes: HeatingDistributionType]

	static constraints = {
		distributionType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
