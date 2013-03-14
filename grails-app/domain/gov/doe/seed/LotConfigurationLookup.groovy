package gov.doe.seed

class LotConfigurationLookup {

	String lotConfiguration
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static mapping = {
		id column: "lot_configuration_pk_id"
		version false
	}

	static constraints = {
		lotConfiguration nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
