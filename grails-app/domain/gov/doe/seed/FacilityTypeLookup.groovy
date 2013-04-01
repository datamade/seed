package gov.doe.seed

class FacilityTypeLookup {

	String facilityType
	String facilityTypeDescription
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility,
	                  operatorTypeLookups: OperatorTypeLookup]

	static constraints = {
		facilityType nullable: true, maxSize: 100
		facilityTypeDescription nullable: true, maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
