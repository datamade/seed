package gov.doe.seed

class LotConfigurationLookup {

	String lotConfiguration
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static constraints = {
		lotConfiguration nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
