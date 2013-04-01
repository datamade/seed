package gov.doe.seed

class EntityWorkPerformedLookup {

	String entityWorkPerformed
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static constraints = {
		entityWorkPerformed nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
