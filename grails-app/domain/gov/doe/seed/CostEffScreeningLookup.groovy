package gov.doe.seed

class CostEffScreeningLookup {

	String costEffScreening
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static mapping = {
		id column: "cost_eff_screening_id_pk"
		version false
	}

	static constraints = {
		costEffScreening nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
