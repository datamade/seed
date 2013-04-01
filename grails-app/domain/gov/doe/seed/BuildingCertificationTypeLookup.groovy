package gov.doe.seed

class BuildingCertificationTypeLookup {

	String bldgCertType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [certificationRatings: CertificationRating]

	static constraints = {
		bldgCertType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
