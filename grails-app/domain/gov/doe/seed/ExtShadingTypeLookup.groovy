package gov.doe.seed

class ExtShadingTypeLookup {

	String exteriorShadingType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "ext_shading_type_id_pk"
		version false
	}

	static constraints = {
		exteriorShadingType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
