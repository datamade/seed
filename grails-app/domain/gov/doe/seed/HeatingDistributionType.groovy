package gov.doe.seed

class HeatingDistributionType {

	SystemHeating systemHeating
	DistributionTypeLookup distributionTypeLookup

	static belongsTo = [DistributionTypeLookup, SystemHeating]

	static mapping = {
		id column: "heating_distribution_type_id_pk"
		version false
	}
}
