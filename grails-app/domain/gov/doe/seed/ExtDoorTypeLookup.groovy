package gov.doe.seed

class ExtDoorTypeLookup {

	String exteriorDoorType
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "ext_door_type_id_pk"
		version false
	}

	static constraints = {
		exteriorDoorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
