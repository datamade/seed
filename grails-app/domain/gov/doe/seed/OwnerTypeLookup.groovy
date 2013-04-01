package gov.doe.seed

class OwnerTypeLookup {

	String ownerType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [commercialFacilities: CommercialFacility]

	static constraints = {
		ownerType maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
