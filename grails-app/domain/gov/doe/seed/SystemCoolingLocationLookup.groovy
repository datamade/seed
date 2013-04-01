package gov.doe.seed

class SystemCoolingLocationLookup {

	String location

	static hasMany = [systemCoolings: SystemCooling]

	static constraints = {
		location nullable: true, maxSize: 45
	}
}
