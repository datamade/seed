package gov.doe.seed

class ExtShadingOrientationLookup {

	String exteriorShadingOrientation
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		exteriorShadingOrientation nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
