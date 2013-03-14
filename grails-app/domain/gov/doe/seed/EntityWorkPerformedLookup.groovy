package gov.doe.seed

class EntityWorkPerformedLookup {

	String entityWorkPerformed
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static mapping = {
		id column: "entity_work_performed_id_pk"
		version false
	}

	static constraints = {
		entityWorkPerformed nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
