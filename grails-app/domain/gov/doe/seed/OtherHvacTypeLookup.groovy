package gov.doe.seed

class OtherHvacTypeLookup {

	String otherHvacType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemHvacs: SystemHvac]

	static constraints = {
		otherHvacType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
