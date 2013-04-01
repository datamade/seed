package gov.doe.seed

class ProcessLoadLookup {

	String processLoadType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemProcessLoads: SystemProcessLoad]

	static constraints = {
		processLoadType maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
