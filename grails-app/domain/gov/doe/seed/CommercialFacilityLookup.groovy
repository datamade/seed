package gov.doe.seed

class CommercialFacilityLookup {

	String commFacilityType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [commercialFacilities: CommercialFacility]

	static constraints = {
		commFacilityType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
