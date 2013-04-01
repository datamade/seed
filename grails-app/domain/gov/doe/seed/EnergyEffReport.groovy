package gov.doe.seed

class EnergyEffReport {

	String eerSubmittedBy
	String eerSubmittedComp
	String eerSubmittedEmail
	Date eerSubmittedDate
	EnergyEfficiencyMeasure energyEfficiencyMeasure

	static belongsTo = [EnergyEfficiencyMeasure]

	static constraints = {
		eerSubmittedBy nullable: true, maxSize: 45
		eerSubmittedComp nullable: true, maxSize: 45
		eerSubmittedEmail nullable: true, maxSize: 45
		eerSubmittedDate nullable: true
	}
}
