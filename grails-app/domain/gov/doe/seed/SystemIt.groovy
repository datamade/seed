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

	static constraints = {
		quantityIt nullable: true
		electricalPlugIntensity nullable: true
		energyStarIt nullable: true
		upsRedundancy nullable: true
		density nullable: true
	}
}
