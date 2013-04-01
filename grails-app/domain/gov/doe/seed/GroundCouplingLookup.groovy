package gov.doe.seed

class GroundCouplingLookup {

	String groundCoupling
	Integer sortOrder

	static hasMany = [systemFoundations: SystemFoundation]

	static constraints = {
		groundCoupling nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
