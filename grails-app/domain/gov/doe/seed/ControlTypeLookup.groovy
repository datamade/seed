package gov.doe.seed

class ControlTypeLookup {

	Integer systemTypeIdFk
	String controlType
	Integer sortOrder

	static hasMany = [controlTypeSystemLookups: ControlTypeSystemLookup]

	static constraints = {
		systemTypeIdFk nullable: true
		controlType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
