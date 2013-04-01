package gov.doe.seed

class OccupantIncomeLookup {

	String occupantIncome
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [residentialFacilities: ResidentialFacility]

	static constraints = {
		occupantIncome maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
