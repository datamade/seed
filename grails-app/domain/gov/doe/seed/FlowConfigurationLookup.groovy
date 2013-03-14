package gov.doe.seed

class FlowConfigurationLookup {

	String flowConfiguration
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "flow_configuration_id_pk"
		version false
	}

	static constraints = {
		flowConfiguration nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
