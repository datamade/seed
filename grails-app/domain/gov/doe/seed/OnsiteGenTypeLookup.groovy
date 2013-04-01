package gov.doe.seed

class OnsiteGenTypeLookup {

	String onsiteGenerationType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemOnsites: SystemOnsite]

	static constraints = {
		onsiteGenerationType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
