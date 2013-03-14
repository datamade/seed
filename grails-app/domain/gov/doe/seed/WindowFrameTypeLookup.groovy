package gov.doe.seed

class WindowFrameTypeLookup {

	String windowFrameType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "window_frame_type_id_fk"
		version false
	}

	static constraints = {
		windowFrameType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
