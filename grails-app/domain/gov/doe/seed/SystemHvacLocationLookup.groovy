package gov.doe.seed

class SystemHvacLocationLookup {

	String location

	static hasMany = [systemHvacs: SystemHvac]

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
