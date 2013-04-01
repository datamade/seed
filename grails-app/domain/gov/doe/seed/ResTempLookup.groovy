package gov.doe.seed

class ResTempLookup {

	String resTemp
	Integer sortOrder

	static hasMany = [systemHotwaters: SystemHotwater]

	static constraints = {
		resTemp nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
