package gov.doe.seed

class AuditExempLookup {

	String auditExemption
	Integer sortOrder

	static mapping = {
		id column: "audit_exemp_id_pk"
		version false
	}

	static constraints = {
		auditExemption nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
