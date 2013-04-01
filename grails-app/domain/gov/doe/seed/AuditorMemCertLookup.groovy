package gov.doe.seed

class AuditorMemCertLookup {

	String auditorMemCertification
	Integer sortOrder

	static hasMany = [audits: Audit]

	static constraints = {
		auditorMemCertification nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
