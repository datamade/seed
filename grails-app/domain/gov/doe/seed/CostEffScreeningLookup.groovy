package gov.doe.seed

class CostEffScreeningLookup {

	String costEffScreening
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static constraints = {
		costEffScreening nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
