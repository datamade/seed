package gov.doe.seed

class ImplQualificationLookup {

	String implQualification
	Integer sortOrder

	static hasMany = [implementers: Implementer]

	static constraints = {
		implQualification nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
