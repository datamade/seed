package gov.doe.seed

class IntShadingTypeLookup {

	String interiorShadingType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		interiorShadingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
