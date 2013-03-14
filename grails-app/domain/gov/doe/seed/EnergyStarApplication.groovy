package gov.doe.seed

class EnergyStarApplication {

	String eligibility
	String spaceUseAlerts
	Integer yearLabeled
	Date approvalDate
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	EnergyStarAppStatusLookup energyStarAppStatusLookup
	Facility facility

	static belongsTo = [EnergyStarAppStatusLookup, Facility]

	static mapping = {
		id column: "energy_star_app_id_pk"
		version false
	}

	static constraints = {
		eligibility nullable: true, maxSize: 100
		spaceUseAlerts nullable: true, maxSize: 250
		yearLabeled nullable: true
		approvalDate nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
