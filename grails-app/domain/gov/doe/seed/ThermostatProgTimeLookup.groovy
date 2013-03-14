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

	static mapping = {
		id column: "thermostat_prog_time_id_pk"
		version false
	}

	static constraints = {
		thermostatProgrammableTime nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
