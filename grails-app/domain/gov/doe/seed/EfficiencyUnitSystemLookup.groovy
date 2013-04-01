package gov.doe.seed

class EfficiencyUnitSystemLookup {

	SystemTypeLookup systemTypeLookup
	EfficiencyUnitLookup efficiencyUnitLookup

	static hasMany = [systemAirs: SystemAir,
	                  systemCoolings: SystemCooling,
	                  systemHeatings: SystemHeating,
	                  systemHotwaters: SystemHotwater]
	static belongsTo = [EfficiencyUnitLookup, SystemTypeLookup]

}
