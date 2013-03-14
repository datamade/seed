package gov.doe.seed

class CommercialFacilityLookup {

	String commFacilityType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [commercialFacilities: CommercialFacility]

	static mapping = {
		id column: "comm_facility_type_id_pk"
		version false
	}

	static constraints = {
		commFacilityType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
