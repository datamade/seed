package gov.doe.seed

class WindowGlassTypeLookup {

	String windowGlassType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		windowGlassType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
