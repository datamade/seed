package gov.doe.seed

class ImplMemberCertLookup {

	String implMemberCert
	Integer sortOrder

	static hasMany = [implementers: Implementer]

	static constraints = {
		implMemberCert nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
