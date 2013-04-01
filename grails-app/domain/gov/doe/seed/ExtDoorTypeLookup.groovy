package gov.doe.seed

class ExtDoorTypeLookup {

	String exteriorDoorType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		exteriorDoorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
