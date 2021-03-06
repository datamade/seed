package gov.doe.seed

class ControlTypeSystemLookup {

	ControlTypeLookup controlTypeLookup
	SystemTypeLookup systemTypeLookup

	static hasMany = [systemConveyances: SystemConveyance,
	                  systemCoolings: SystemCooling,
	                  systemHeatings: SystemHeating,
	                  systemHotwaters: SystemHotwater,
	                  systemHvacs: SystemHvac,
	                  systemPools: SystemPool,
	                  systemZonalCoolings: SystemZonalCooling,
	                  systemZonalHeatings: SystemZonalHeating]
	static belongsTo = [ControlTypeLookup, SystemTypeLookup]

}
