package gov.doe.seed

class AuditorQualLookup {

	String auditorQual
	Integer sortOrder

	static hasMany = [audits: Audit]

	static constraints = {
		auditorQual nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
