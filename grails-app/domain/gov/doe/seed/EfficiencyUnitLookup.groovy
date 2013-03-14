package gov.doe.seed

class EfficiencyUnitLookup {

	Integer systemTypeIdFk
	String efficiencyUnit
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [efficiencyUnitSystemLookups: EfficiencyUnitSystemLookup]

	static mapping = {
		id column: "efficiency_unit_id_pk", generator: "assigned"
		version false
	}

	static constraints = {
		systemTypeIdFk nullable: true
		efficiencyUnit nullable: true, maxSize: 45
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
