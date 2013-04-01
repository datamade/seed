package gov.doe.seed

class Implementer {

	String implName
	String implQualNum
	String implQualState
	String implMemCert
	String implCompany
	String implAddress
	String implPhone
	ImplQualificationLookup implQualificationLookup
	ImplMemberCertLookup implMemberCertLookup
	EnergyEfficiencyMeasure energyEfficiencyMeasure
	

	static belongsTo = [ImplMemberCertLookup, ImplQualificationLookup, EnergyEfficiencyMeasure]

	static constraints = {
		implName nullable: true, maxSize: 45
		implQualNum nullable: true, maxSize: 45
		implQualState nullable: true, maxSize: 45
		implMemCert nullable: true, maxSize: 45
		implCompany nullable: true, maxSize: 45
		implAddress nullable: true, maxSize: 45
		implPhone nullable: true, maxSize: 45
	}
}
