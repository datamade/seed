package gov.doe.seed

class ImplementStatusLookup {

	String implementStatus
	Integer sortOrder

	static hasMany = [energyEfficiencyMeasures: EnergyEfficiencyMeasure]

	static mapping = {
		id column: "implement_status_id_pk"
		version false
	}

	static constraints = {
		implementStatus nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
