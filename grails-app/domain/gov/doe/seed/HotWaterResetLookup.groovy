package gov.doe.seed

class HotWaterResetLookup {

	String hotWaterResetControl
	Integer sortOrder

	static hasMany = [systemHeatings: SystemHeating]

	static mapping = {
		id column: "hot_water_reset_id_pk", generator: "assigned"
		version false
	}

	static constraints = {
		hotWaterResetControl nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
