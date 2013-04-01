package gov.doe.seed

class ThermostatProgTimeLookup {

	String thermostatProgrammableTime
	Integer sortOrder

	static hasMany = [systemGeneralsForAcAdjustedIdFk: SystemGeneral,
	                  systemGeneralsForHeatLoweredIdFk: SystemGeneral]

	// TODO you have multiple hasMany references for class(es) [SystemGeneral] 
	//      so you'll need to disambiguate them with the 'mappedBy' property:
	static mappedBy = [systemGeneralsForAcAdjustedIdFk: "thermostatProgTimeLookupByAcAdjustedIdFk",
	                   systemGeneralsForHeatLoweredIdFk: "thermostatProgTimeLookupByHeatLoweredIdFk"]

	static constraints = {
		thermostatProgrammableTime nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
