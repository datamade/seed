package gov.doe.seed

class SystemRoof {

	Integer locationAtticIdFk
	Integer roofRValue
	Double percTotRoofArea
	Double roofInsulationThickness
	Integer atticRValue
	Double atticInsulationThickness
	Boolean radiantBarrier
	Double roofArea
	Double percRoofTerrace
	Double terraceRValue
	RoofTypeLookup roofTypeLookup
	AtticInsulationLookup atticInsulationLookup
	System system
	RoofSlopeLookup roofSlopeLookup
	RoofInsulationType roofInsulationType
	RoofColorLookup roofColorLookup
	AtticTypeLookup atticTypeLookup
	RoofDeckTypeLookup roofDeckTypeLookup

	static belongsTo = [AtticInsulationLookup, AtticTypeLookup, RoofColorLookup, RoofDeckTypeLookup, RoofInsulationType, RoofSlopeLookup, RoofTypeLookup, System]

	static mapping = {
		id column: "system_roof_id_pk"
		version false
	}

	static constraints = {
		locationAtticIdFk nullable: true
		roofRValue nullable: true
		percTotRoofArea nullable: true
		roofInsulationThickness nullable: true
		atticRValue nullable: true
		atticInsulationThickness nullable: true
		radiantBarrier nullable: true
		roofArea nullable: true
		percRoofTerrace nullable: true
		terraceRValue nullable: true
	}
}
