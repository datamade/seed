package gov.doe.seed

class CommercialFacility {

	Double percentOccupiedByOwner
	Integer noOfActivityAreas
	String naicsCode
	String ownerCareOfName
	Double basementFloorArea
	String buildingOperator
	String buildingOperatorCertNum
	String buildingOperatorCertState
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	OwnerTypeLookup ownerTypeLookup
	CommercialFacilityLookup commercialFacilityLookup
	Facility facility
	BuildingOperCertLookup buildingOperCertLookup

	static belongsTo = [BuildingOperCertLookup, CommercialFacilityLookup, Facility, OwnerTypeLookup]

	static mapping = {
		id column: "commercial_facility_id_pk"
		version false
	}

	static constraints = {
		percentOccupiedByOwner nullable: true
		noOfActivityAreas nullable: true
		naicsCode nullable: true, maxSize: 45
		ownerCareOfName nullable: true, maxSize: 45
		basementFloorArea nullable: true
		buildingOperator nullable: true, maxSize: 100
		buildingOperatorCertNum nullable: true, maxSize: 45
		buildingOperatorCertState nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
