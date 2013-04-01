package gov.doe.seed

class HeatingSourceLookup {

	String heatingSource
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		heatingSource nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
