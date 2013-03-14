package gov.doe.seed

class ExtShadingOrientationLookup {

	String exteriorShadingOrientation
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "ext_shading_id_pk"
		version false
	}

	static constraints = {
		exteriorShadingOrientation nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
