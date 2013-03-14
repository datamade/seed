package gov.doe.seed

class ImplMemberCertLookup {

	String implMemberCert
	Integer sortOrder

	static hasMany = [implementers: Implementer]

	static mapping = {
		id column: "impl_member_cert_id_pk"
		version false
	}

	static constraints = {
		implMemberCert nullable: true, maxSize: 100
		sortOrder nullable: true
	}
}
