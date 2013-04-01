package gov.doe.seed

class RefrigDoorTypeLookup {

	String refrigDoorType
	Integer sortOrder

	static hasMany = [systemRefrigerations: SystemRefrigeration]

	static constraints = {
		refrigDoorType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
