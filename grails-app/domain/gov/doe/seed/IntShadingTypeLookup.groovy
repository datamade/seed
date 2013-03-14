package gov.doe.seed

class IntShadingTypeLookup {

	String interiorShadingType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "int_shading_id_pk"
		version false
	}

	static constraints = {
		interiorShadingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
