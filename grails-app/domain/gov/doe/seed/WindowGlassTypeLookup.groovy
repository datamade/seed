package gov.doe.seed

class WindowGlassTypeLookup {

	String windowGlassType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "window_glass_type_id_pk"
		version false
	}

	static constraints = {
		windowGlassType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
