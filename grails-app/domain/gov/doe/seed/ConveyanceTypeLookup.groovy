package gov.doe.seed

class ConveyanceTypeLookup {

	String conveyanceType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemConveyances: SystemConveyance]

	static constraints = {
		conveyanceType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
