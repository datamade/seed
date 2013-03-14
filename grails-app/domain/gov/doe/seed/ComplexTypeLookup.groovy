package gov.doe.seed

class ComplexTypeLookup {

	String complexType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static mapping = {
		id column: "complex_type_id_pk"
		version false
	}

	static constraints = {
		complexType nullable: true, maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
