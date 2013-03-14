package gov.doe.seed

class CertificationRating {

	String certificationRating
	Integer certificationYear
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	BuildingCertificationTypeLookup buildingCertificationTypeLookup
	Facility facility

	static belongsTo = [BuildingCertificationTypeLookup, Facility]

	static mapping = {
		id column: "certification_rating_id_pk"
		version false
	}

	static constraints = {
		certificationRating nullable: true, maxSize: 45
		certificationYear nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
