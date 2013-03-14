package gov.doe.seed

class GroundCouplingLookup {

	String groundCoupling
	Integer sortOrder

	static hasMany = [systemFoundations: SystemFoundation]

	static mapping = {
		id column: "ground_coupling_id_pk"
		version false
	}

	static constraints = {
		groundCoupling nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
