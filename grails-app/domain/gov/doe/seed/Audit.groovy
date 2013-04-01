package gov.doe.seed

class Audit {

	Date auditDate
	String auditorName
	String auditorQualNum
	String auditorQualState
	String auditorMemCert
	String auditorCompanyName
	String auditorAddress
	String auditorPhone
	String auditorEmail
	String auditId
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	AuditorQualLookup auditorQualLookup
	AuditorMemCertLookup auditorMemCertLookup
	EnergyEfficiencyMeasure energyEfficiencyMeasure

	static belongsTo = [AuditorMemCertLookup, AuditorQualLookup, EnergyEfficiencyMeasure]

	static constraints = {
		auditDate nullable: true
		auditorName maxSize: 100
		auditorQualNum nullable: true, maxSize: 45
		auditorQualState nullable: true, maxSize: 45
		auditorMemCert nullable: true, maxSize: 45
		auditorCompanyName nullable: true, maxSize: 100
		auditorAddress nullable: true, maxSize: 45
		auditorPhone nullable: true, maxSize: 45
		auditorEmail nullable: true, maxSize: 45
		auditId nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
