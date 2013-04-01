package gov.doe.seed

class ImplementStatusLookup {

	String implementStatus
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static constraints = {
		implementStatus nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
