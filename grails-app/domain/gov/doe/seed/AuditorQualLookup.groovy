package gov.doe.seed

class AuditorQualLookup {

	String auditorQual
	Integer sortOrder

	static hasMany = [audits: Audit]

	static mapping = {
		id column: "auditor_qual_id_pk"
		version false
	}

	static constraints = {
		auditorQual nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
