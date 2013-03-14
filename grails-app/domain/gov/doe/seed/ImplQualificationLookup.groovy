package gov.doe.seed

class ImplQualificationLookup {

	String implQualification
	Integer sortOrder

	static hasMany = [implementers: Implementer]

	static mapping = {
		id column: "impl_qualification_id_pk"
		version false
	}

	static constraints = {
		implQualification nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
