package gov.doe.seed

class SystemHeatingLocationLookup {

	String location

	static hasMany = [systemHeatings: SystemHeating]

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
