package gov.doe.seed

class Facility {

	Integer operatorTypeIdFk
	Integer yearCompleted
	Integer yearOccupied
	Double bldgFootprintArea
	Double perimeter
	Double grossFloorArea
	Double netFloorArea
	Double rentableFloorArea
	Double occupiedFloorArea
	Double percentageOfCommon
	Double lightedFloorArea
	Double heatedFloorArea
	Double cooledFloorArea
	Double unconditionalFloorArea
	Double volume
	Double conditionedBldgVol
	Double aspectRatio
	Integer numberOfFloors
	Integer floorsAboveGround
	Integer floorsBelowGround
	Integer numberOfResidentsOccupants
	Integer yearOfLastRemodel
	Double facilityTaxFloorArea
	Double enclosedFloorArea
	Double conditionedFloorArea
	Double semiConditionedFloorArea
	Double heatedOnlyFloorArea
	Double cooledOnlyFloorArea
	Double heatedAndCooledFloorArea
	Double nonenclosedFloorAreaWithRoof
	Double openFloorAreaWithoutRoof
	Double basementFloorArea
	Double facilityHeight
	Double floorToFloorHeight
	Integer numOfFloors
	Integer numOfCondFloorsAboveGnd
	Integer numOfConditionedFloorsBelowGnd
	String facilityName
	String address1
	String address2
	String facilityContact
	String facilityPhone
	String agency
	String department
	String pmUniqueBldIdentifier
	Integer yearPmBenchmarked
	String federalRealPropertyId
	String administrator
	String sharedBy
	Date pmLastModifiedDate
	String baselineRating
	String targetRating
	String federalSustainabilityPercent
	String notes
	String serviceProductProvider
	String createdBy
	String updatedBy
	Owner owner
	Site site
	FacilityTypeLookup facilityTypeLookup
	OrientationTypeLookup orientationTypeLookup
	OwnershipStatusLookup ownershipStatusLookup
	BuildingProfileStatusLookup buildingProfileStatusLookup
	PropertyManagement propertyManagement
	SurroundingTypeLookup surroundingTypeLookup
	FootprintShapeLookup footprintShapeLookup
	Date createdDate
	Date updatedDate
	
	static hasMany = [certificationRatings: CertificationRating,
	                  commercialFacilities: CommercialFacility,
	                  energyEfficiencyMeasures: EnergyEfficiencyMeasure,
	                  energyUseMetrics: EnergyUseMetric,
	                  residentialFacilities: ResidentialFacility,
	                  systems: System,
	                  waterUseMetrics: WaterUseMetric]
	
	static belongsTo = [BuildingProfileStatusLookup, FacilityTypeLookup, FootprintShapeLookup, OrientationTypeLookup, Owner, OwnershipStatusLookup, PropertyManagement, Site, SurroundingTypeLookup]

	static constraints = {
		operatorTypeIdFk nullable: true
		yearCompleted nullable: true
		yearOccupied nullable: true
		bldgFootprintArea nullable: true
		perimeter nullable: true
		grossFloorArea nullable: true
		netFloorArea nullable: true
		rentableFloorArea nullable: true
		occupiedFloorArea nullable: true
		percentageOfCommon nullable: true
		lightedFloorArea nullable: true
		heatedFloorArea nullable: true
		cooledFloorArea nullable: true
		unconditionalFloorArea nullable: true
		volume nullable: true
		conditionedBldgVol nullable: true
		aspectRatio nullable: true
		numberOfFloors nullable: true
		floorsAboveGround nullable: true
		floorsBelowGround nullable: true
		numberOfResidentsOccupants nullable: true
		yearOfLastRemodel nullable: true
		facilityTaxFloorArea nullable: true
		enclosedFloorArea nullable: true
		conditionedFloorArea nullable: true
		semiConditionedFloorArea nullable: true
		heatedOnlyFloorArea nullable: true
		cooledOnlyFloorArea nullable: true
		heatedAndCooledFloorArea nullable: true
		nonenclosedFloorAreaWithRoof nullable: true
		openFloorAreaWithoutRoof nullable: true
		basementFloorArea nullable: true
		facilityHeight nullable: true
		floorToFloorHeight nullable: true
		numOfFloors nullable: true
		numOfCondFloorsAboveGnd nullable: true
		numOfConditionedFloorsBelowGnd nullable: true
		facilityName nullable: true, maxSize: 150
		address1 nullable: true, maxSize: 100
		address2 nullable: true, maxSize: 100
		facilityContact nullable: true, maxSize: 100
		facilityPhone nullable: true, maxSize: 45
		agency nullable: true, maxSize: 45
		department nullable: true, maxSize: 45
		pmUniqueBldIdentifier nullable: true, maxSize: 45
		yearPmBenchmarked nullable: true
		federalRealPropertyId nullable: true, maxSize: 45
		administrator nullable: true, maxSize: 100
		sharedBy nullable: true, maxSize: 45
		pmLastModifiedDate nullable: true
		baselineRating nullable: true, maxSize: 45
		targetRating nullable: true, maxSize: 45
		federalSustainabilityPercent nullable: true, maxSize: 45
		notes nullable: true
		serviceProductProvider nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
		owner nullable: true
		site nullable: true
		facilityTypeLookup nullable: true
		orientationTypeLookup nullable: true
		ownershipStatusLookup nullable: true
		buildingProfileStatusLookup nullable: true
		propertyManagement nullable: true
		surroundingTypeLookup nullable: true
		footprintShapeLookup nullable: true
		createdDate nullable: true
		updatedDate nullable: true
		
	}
}
