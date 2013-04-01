package gov.doe.seed

class CertificationRating {

	String certificationRating
	Integer certificationYear
	String createdBy
	String updatedBy
	BuildingCertificationTypeLookup buildingCertificationTypeLookup
	Facility facility
	Date createdDate
	Date updatedDate
	

	static belongsTo = [BuildingCertificationTypeLookup, Facility]

	static constraints = {
		certificationRating nullable: true, maxSize: 45
		certificationYear nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
		buildingCertificationTypeLookup nullable: true
		facility nullable: true
		createdDate nullable: true
		updatedDate nullable: true
		
	}
}
