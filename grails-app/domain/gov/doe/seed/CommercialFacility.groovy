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
	String updatedBy
	OwnerTypeLookup ownerTypeLookup
	CommercialFacilityLookup commercialFacilityLookup
	Facility facility
	BuildingOperCertLookup buildingOperCertLookup
	Date createdDate
	Date updatedDate

	static belongsTo = [BuildingOperCertLookup, CommercialFacilityLookup, Facility, OwnerTypeLookup]
	
	static hasMany = [activityAreas: ActivityArea]
	
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
		ownerTypeLookup nullable: true
		commercialFacilityLookup nullable: true
		buildingOperCertLookup nullable: true
		facility nullable: true
		createdDate nullable: true
		updatedDate nullable: true
	}
}
