package gov.doe.seed

class SystemTypeLookup {

	String systemType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [controlTypeSystemLookups: ControlTypeSystemLookup,
	                  efficiencyUnitSystemLookups: EfficiencyUnitSystemLookup,
	                  systems: System]

	static constraints = {
		systemType nullable: true, maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
