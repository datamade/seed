package gov.doe.seed

class FlowConfigurationLookup {

	String flowConfiguration
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		flowConfiguration nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
