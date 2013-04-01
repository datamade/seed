package gov.doe.seed

class ExtShadingTypeLookup {

	String exteriorShadingType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		exteriorShadingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
