package gov.doe.seed

class RefrigDoorTypeLookup {

	String refrigDoorType
	Integer sortOrder

	static hasMany = [systemRefrigerations: SystemRefrigeration]

	static mapping = {
		id column: "refrig_door_type_id_pk"
		version false
	}

	static constraints = {
		refrigDoorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
