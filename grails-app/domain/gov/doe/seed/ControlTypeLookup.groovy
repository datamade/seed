package gov.doe.seed

class ControlTypeLookup {

	Integer systemTypeIdFk
	String controlType
	Integer sortOrder

	static hasMany = [controlTypeSystemLookups: ControlTypeSystemLookup]

	static mapping = {
		id column: "control_type_id_pk", generator: "assigned"
		version false
	}

	static constraints = {
		systemTypeIdFk nullable: true
		controlType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
