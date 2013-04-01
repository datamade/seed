package gov.doe.seed

class EnergyUseMetric {

	Integer identifier
	Boolean completeFuelInd
	Boolean completeEndUse
	String readingTimeZone
	String summerPeak
	String winterPeak
	String rateStructure
	String utilityCompany
	String powerPlant
	String energyUseAlert
	Double emissionsFactor
	String waterUseAlert
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	MeterConfigLookup meterConfigLookup
	IntervalTypeLookup intervalTypeLookup
	WaterUseTypeLookup waterUseTypeLookup
	UnitTypeLookup unitTypeLookup
	SharedEnergyLookup sharedEnergyLookup
	FuelInterruptLookup fuelInterruptLookup
	Facility facility
	EndUseTypeLookup endUseTypeLookup
	ReadingTypeLookup readingTypeLookup
	FuelTypeLookup fuelTypeLookup

	static hasMany = [energyTimeSerieses: EnergyTimeSeries]
	static belongsTo = [EndUseTypeLookup, Facility, FuelInterruptLookup, FuelTypeLookup, IntervalTypeLookup, MeterConfigLookup, ReadingTypeLookup, SharedEnergyLookup, UnitTypeLookup, WaterUseTypeLookup]

	static constraints = {
		identifier nullable: true
		completeFuelInd nullable: true
		completeEndUse nullable: true
		readingTimeZone nullable: true, maxSize: 3
		summerPeak nullable: true, maxSize: 45
		winterPeak nullable: true, maxSize: 45
		rateStructure nullable: true, maxSize: 45
		utilityCompany nullable: true, maxSize: 45
		powerPlant nullable: true, maxSize: 45
		energyUseAlert nullable: true, maxSize: 5
		emissionsFactor nullable: true
		waterUseAlert nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
