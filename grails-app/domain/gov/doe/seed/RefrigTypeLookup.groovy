package gov.doe.seed

class RefrigTypeLookup {

	String refrigType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemRefrigerations: SystemRefrigeration]

	static mapping = {
		id column: "refrig_type_id_pk"
		version false
	}

	static constraints = {
		refrigType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
