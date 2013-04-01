package gov.doe.seed

class ActivityArea {

	Integer grossFloorArea
	Double heatedFloorArea
	Double cooledFloorArea
	Integer numOfFloors
	Integer numOfFloorsAboveGnd
	Integer numFloorsBelowGnd
	Integer floorHeight
	Integer numOfUnits
	Integer seatingCapacity
	Integer numOfOccupants
	Integer numOfGuestRooms
	Integer numLicensedBeds
	Double avgWeeklyOperatingHrs
	Double avgWeeksPerYearInUse
	String activityAreaName
	Boolean meteredSpace
	Boolean extEntranceToPublic
	Double enclosedFloorArea
	Double nonEnclosedFloorAreaWithRoof
	Double openFloorAreaWithoutRoof
	Double conditionedFloorArea
	Boolean officeAirConditioned
	Boolean officeHeated
	Integer seniorCareFacilityTotCapacityCnt
	Double occupantDensity
	Double hrsPerDayGuestsOnSite
	Double numOfMonthsInUse
	Double avgOccupancyPercentage
	Double roomDensity
	Integer numOfBusinesses
	Double weeklyHoursParkingAccess
	Boolean k12SchoolsOpenWeekend
	Double floorAreaFullSpas
	Double floorAreaOfGym
	Boolean dormComputerLab
	Boolean hospitalTertiaryCare
	String createdBy
	String updatedBy
	Date createdDate
	Date updatedDate
	ActivityAreaTypeLookup activityAreaTypeLookup
	CommercialFacility commercialFacility

	static belongsTo = [ActivityAreaTypeLookup, CommercialFacility]


	static constraints = {
		grossFloorArea nullable: true
		heatedFloorArea nullable: true
		cooledFloorArea nullable: true
		numOfFloors nullable: true
		numOfFloorsAboveGnd nullable: true
		numFloorsBelowGnd nullable: true
		floorHeight nullable: true
		numOfUnits nullable: true
		seatingCapacity nullable: true
		numOfOccupants nullable: true
		numOfGuestRooms nullable: true
		numLicensedBeds nullable: true
		avgWeeklyOperatingHrs nullable: true
		avgWeeksPerYearInUse nullable: true
		activityAreaName nullable: true, maxSize: 100
		meteredSpace nullable: true
		extEntranceToPublic nullable: true
		enclosedFloorArea nullable: true
		nonEnclosedFloorAreaWithRoof nullable: true
		openFloorAreaWithoutRoof nullable: true
		conditionedFloorArea nullable: true
		officeAirConditioned nullable: true
		officeHeated nullable: true
		seniorCareFacilityTotCapacityCnt nullable: true
		occupantDensity nullable: true
		hrsPerDayGuestsOnSite nullable: true
		numOfMonthsInUse nullable: true
		avgOccupancyPercentage nullable: true
		roomDensity nullable: true
		numOfBusinesses nullable: true
		weeklyHoursParkingAccess nullable: true
		k12SchoolsOpenWeekend nullable: true
		floorAreaFullSpas nullable: true
		floorAreaOfGym nullable: true
		dormComputerLab nullable: true
		hospitalTertiaryCare nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
		activityAreaTypeLookup nullable:true
		commercialFacility nullable: true
		createdDate nullable: true
		updatedDate nullable: true
	}
}
