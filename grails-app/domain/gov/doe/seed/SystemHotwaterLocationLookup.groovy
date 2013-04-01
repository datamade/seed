package gov.doe.seed

class SystemHotwaterLocationLookup {

	String location

	static hasMany = [systemHotwaters: SystemHotwater]

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
