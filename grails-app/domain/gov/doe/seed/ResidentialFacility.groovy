package gov.doe.seed

class ResidentialFacility {

	Double percOccupiedOwner
	Double basementHeatedFloorArea
	Double basementCooledFloorArea
	Double atticFloorArea
	Double atticHeatedFloorArea
	Double atticCooledFloorArea
	Double garageFloorArea
	Double garageHeatedFloorArea
	Double garageCooledFloorArea
	Integer numOfDwellingUnits
	Integer numOfBedrooms
	Integer numOfCompleteBaths
	Integer numOfHalfBaths
	Integer numOfRooms
	Integer numOfOccupants
	String yearCompletedRange
	Integer numOfFloorPlans
	Integer numOfUnitsPerFloorPlan
	Integer govtSubsidizedHousing
	Integer numOfAdults
	Integer numOfChildren
	Integer numOfNonBedrooms
	OccupantIncomeLookup occupantIncomeLookup
	ResFacilityTypeLookup resFacilityTypeLookup
	ResPopulationLookup resPopulationLookup
	HouseholdTypeLookup householdTypeLookup
	Facility facility
	OccupantEducationLookup occupantEducationLookup
	FloorPlanTypeLookup floorPlanTypeLookup
	Date createdDate
	Date updatedDate
	String createdBy
	String updatedBy
	

	static belongsTo = [Facility, FloorPlanTypeLookup, HouseholdTypeLookup, OccupantEducationLookup, OccupantIncomeLookup, ResFacilityTypeLookup, ResPopulationLookup]

	static constraints = {
		percOccupiedOwner nullable: true
		basementHeatedFloorArea nullable: true
		basementCooledFloorArea nullable: true
		atticFloorArea nullable: true
		atticHeatedFloorArea nullable: true
		atticCooledFloorArea nullable: true
		garageFloorArea nullable: true
		garageHeatedFloorArea nullable: true
		garageCooledFloorArea nullable: true
		numOfDwellingUnits nullable: true
		numOfBedrooms nullable: true
		numOfCompleteBaths nullable: true
		numOfHalfBaths nullable: true
		numOfRooms nullable: true
		numOfOccupants nullable: true
		yearCompletedRange nullable: true, maxSize: 45
		numOfFloorPlans nullable: true
		numOfUnitsPerFloorPlan nullable: true
		govtSubsidizedHousing nullable: true
		numOfAdults nullable: true
		numOfChildren nullable: true
		numOfNonBedrooms nullable: true
		occupantIncomeLookup nullable: true
		resFacilityTypeLookup nullable: true
		resPopulationLookup nullable: true
		householdTypeLookup nullable: true
		occupantEducationLookup nullable: true
		floorPlanTypeLookup nullable: true
		facility nullable: true
		createdDate nullable: true
		updatedDate nullable: true
		createdBy nullable: true, maxSize: 45
		updatedBy nullable: true, maxSize: 45
		
	}
}
