package gov.doe.seed

class HotWaterResetLookup {

	String hotWaterResetControl
	Integer sortOrder

	static hasMany = [systemHeatings: SystemHeating]

	static constraints = {
		hotWaterResetControl nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
