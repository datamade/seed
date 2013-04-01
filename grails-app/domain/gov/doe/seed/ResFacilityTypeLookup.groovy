package gov.doe.seed

class ResFacilityTypeLookup {

	String residentialFacilityType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [residentialFacilities: ResidentialFacility]

	static constraints = {
		residentialFacilityType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
