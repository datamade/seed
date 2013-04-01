package gov.doe.seed

class OperatorTypeLookup {

	String operatorType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	FacilityTypeLookup facilityTypeLookup

	static belongsTo = [FacilityTypeLookup]

	static constraints = {
		operatorType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
