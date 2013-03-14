package gov.doe.seed

class SystemIt {

	Integer quantityIt
	Double electricalPlugIntensity
	Boolean energyStarIt
	Boolean upsRedundancy
	Double density
	ItSystemTypeLookup itSystemTypeLookup
	System system

	static belongsTo = [ItSystemTypeLookup, System]

	static mapping = {
		id column: "system_it_id_pk"
		version false
	}

	static constraints = {
		quantityIt nullable: true
		electricalPlugIntensity nullable: true
		energyStarIt nullable: true
		upsRedundancy nullable: true
		density nullable: true
	}
}
