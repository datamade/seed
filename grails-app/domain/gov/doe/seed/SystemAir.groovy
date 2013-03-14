package gov.doe.seed

class SystemAir {

	Double airDistributionSize
	Double airDistributionPower
	Integer airYearOfManufacture
	Boolean airDistributionPrimary
	Double percTotInstalledCapacityAir
	Double percOfFloorAreaServedAir
	Boolean staticPressureResetControl
	Boolean supplyAirTempResetControl
	Double efficiencyAirDistribution
	Double fanMotorEfficiency
	Double minimumOutsideAirPerc
	Double heatRecoveryEfficiency
	Integer ductInsulationRValue
	Integer quantityAirDistribution
	Double staticPressure
	Integer zoneCount
	Double ductPressureLeakage
	Double ductPressureLeakagePerc
	DuctConfigurationLookup ductConfigurationLookup
	DuctLocationLookup ductLocationLookup
	DuctSealingLookup ductSealingLookup
	FanPlacementLookup fanPlacementLookup
	DuctTypeLookup ductTypeLookup
	PreheatSourceLookup preheatSourceLookup
	FlowConfigurationLookup flowConfigurationLookup
	EconomizerLookup economizerLookup
	CoolingSourceLookup coolingSourceLookup
	EfficiencyUnitSystemLookup efficiencyUnitSystemLookup
	ConfigurationLookup configurationLookup
	HumidificationLookup humidificationLookup
	FanControlTypeLookup fanControlTypeLookup
	System system
	HeatingSourceLookup heatingSourceLookup
	BucketTypeLookup bucketTypeLookup
	DuctInsulationLookup ductInsulationLookup
	FlowControlLookup flowControlLookup
	DehumidificationLookup dehumidificationLookup
	HeatRecoveryLookup heatRecoveryLookup

	static belongsTo = [BucketTypeLookup, ConfigurationLookup, CoolingSourceLookup, DehumidificationLookup, DuctConfigurationLookup, DuctInsulationLookup, DuctLocationLookup, DuctSealingLookup, DuctTypeLookup, EconomizerLookup, EfficiencyUnitSystemLookup, FanControlTypeLookup, FanPlacementLookup, FlowConfigurationLookup, FlowControlLookup, HeatRecoveryLookup, HeatingSourceLookup, HumidificationLookup, PreheatSourceLookup, System]

	static mapping = {
		id column: "system_air_id_pk"
		version false
	}

	static constraints = {
		airDistributionSize nullable: true
		airDistributionPower nullable: true
		airDistributionPrimary nullable: true
		percTotInstalledCapacityAir nullable: true
		percOfFloorAreaServedAir nullable: true
		staticPressureResetControl nullable: true
		supplyAirTempResetControl nullable: true
		efficiencyAirDistribution nullable: true
		fanMotorEfficiency nullable: true
		minimumOutsideAirPerc nullable: true
		heatRecoveryEfficiency nullable: true
		ductInsulationRValue nullable: true
		quantityAirDistribution nullable: true
		staticPressure nullable: true
		zoneCount nullable: true
		ductPressureLeakage nullable: true
		ductPressureLeakagePerc nullable: true
	}
}
