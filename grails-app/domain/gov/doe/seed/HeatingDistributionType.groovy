package gov.doe.seed

class HeatingDistributionType {

	SystemHeating systemHeating
	DistributionTypeLookup distributionTypeLookup

	static belongsTo = [DistributionTypeLookup, SystemHeating]

}
