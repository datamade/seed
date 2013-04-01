package gov.doe.seed

class WindowFrameTypeLookup {

	String windowFrameType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static constraints = {
		windowFrameType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
