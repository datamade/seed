package gov.doe.seed

class SystemGeneral {

	Boolean programmableThermostatsUsed
	Boolean standardThermostats
	Double occupiedDaySetting
	Double unoccupiedDaySetting
	Double sleepingHoursSetting
	Byte taskLigtingInUse
	Double percContEmcs
	Double percTempSensors
	Double percCtrlVentilation
	Boolean lightingRedOffHrs
	Double percOccuSensors
	Double perceVacantSensors
	Double percPhotoSensors
	Double percentTimers
	Double percentAdvCtrls
	Boolean acReplaced
	Integer numCoilsReplaced
	Integer numHandlersReplaced
	Integer numGuestMeals
	Integer laundryQuantity
	HvacIndvControlLookup hvacIndvControlLookup
	HvacEmcsLookup hvacEmcsLookup
	System system
	ThermostatProgTimeLookup thermostatProgTimeLookupByAcAdjustedIdFk
	ThermostatProgTimeLookup thermostatProgTimeLookupByHeatLoweredIdFk
	RegHvacMainLookup regHvacMainLookup
	HvacCtrlStrategyLookup hvacCtrlStrategyLookup

	static belongsTo = [HvacCtrlStrategyLookup, HvacEmcsLookup, HvacIndvControlLookup, RegHvacMainLookup, System, ThermostatProgTimeLookup]

	static constraints = {
		programmableThermostatsUsed nullable: true
		standardThermostats nullable: true
		occupiedDaySetting nullable: true
		unoccupiedDaySetting nullable: true
		sleepingHoursSetting nullable: true
		taskLigtingInUse nullable: true
		percContEmcs nullable: true
		percTempSensors nullable: true
		percCtrlVentilation nullable: true
		lightingRedOffHrs nullable: true
		percOccuSensors nullable: true
		perceVacantSensors nullable: true
		percPhotoSensors nullable: true
		percentTimers nullable: true
		percentAdvCtrls nullable: true
		acReplaced nullable: true
		numCoilsReplaced nullable: true
		numHandlersReplaced nullable: true
		numGuestMeals nullable: true
		laundryQuantity nullable: true
	}
}
