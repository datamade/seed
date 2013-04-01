package gov.doe.seed

class AuditExempLookup {

	String auditExemption
	Integer sortOrder

	static constraints = {
		auditExemption nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
