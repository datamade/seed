package gov.doe.seed

class ResFacilityTypeLookup {

	String residentialFacilityType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [residentialFacilities: ResidentialFacility]

	static mapping = {
		id column: "res_facility_type_id_pk"
		version false
	}

	static constraints = {
		residentialFacilityType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
