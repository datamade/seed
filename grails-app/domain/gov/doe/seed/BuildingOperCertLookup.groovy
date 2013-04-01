package gov.doe.seed

class BuildingOperCertLookup {

	String buildingOperatorCertificationType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [commercialFacilities: CommercialFacility]

	static constraints = {
		buildingOperatorCertificationType nullable: true, maxSize: 100
		createdBy nullable: true
		createdDate nullable: true
		updatedBy nullable: true
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
