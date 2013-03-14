package gov.doe.seed

class EnergyEfficiencyMeasure {

	Double scope
	String description
	Date implementationStartDate
	Date implementationEndDate
	String life
	String firstCost
	Double omCost
	Double fundFromRebate
	Double fundTaxCredit
	String simplePayback
	Double savingsOperation
	Double totalJobHours
	Double savingsEstCost
	Double savingsEstEnergy
	Double savingsCost
	Double savingsEnergy
	Integer numPermits
	Integer numStaffTrained
	Boolean leedExem
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	String auditCertHolder
	Boolean cenPlantInAudit
	Date retroCommDate
	String auditId
	String measureId
	String notes
	LotConfigurationLookup lotConfigurationLookup
	EntityWorkPerformedLookup entityWorkPerformedLookup
	MeasureListLookup measureListLookup
	ImplementStatusLookup implementStatusLookup
	Facility facility
	CostEffScreeningLookup costEffScreeningLookup

	static hasMany = [audits: Audit,
	                  energyEffReports: EnergyEffReport]
	static belongsTo = [CostEffScreeningLookup, EntityWorkPerformedLookup, Facility, ImplementStatusLookup, LotConfigurationLookup, MeasureListLookup]

	static mapping = {
		id column: "ee_measures_id_pk"
		version false
	}

	static constraints = {
		scope nullable: true
		description nullable: true, maxSize: 100
		implementationStartDate nullable: true
		implementationEndDate nullable: true
		life nullable: true, maxSize: 45
		firstCost nullable: true, maxSize: 45
		omCost nullable: true
		fundFromRebate nullable: true
		fundTaxCredit nullable: true
		simplePayback nullable: true, maxSize: 45
		savingsOperation nullable: true
		totalJobHours nullable: true
		savingsEstCost nullable: true
		savingsEstEnergy nullable: true
		savingsCost nullable: true
		savingsEnergy nullable: true
		numPermits nullable: true
		numStaffTrained nullable: true
		leedExem nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
		updatedDate nullable: true
		auditCertHolder nullable: true, maxSize: 45
		cenPlantInAudit nullable: true
		retroCommDate nullable: true
		auditId nullable: true, maxSize: 45
		measureId nullable: true, maxSize: 45
		notes nullable: true, maxSize: 45
	}
}
