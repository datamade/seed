package gov.doe.seed

class AuditorMemCertLookup {

	String auditorMemCertification
	Integer sortOrder

	static hasMany = [audits: Audit]

	static mapping = {
		id column: "auditor_mem_cert_id_pk"
		version false
	}

	static constraints = {
		auditorMemCertification nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
