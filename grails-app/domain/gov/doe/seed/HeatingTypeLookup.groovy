package gov.doe.seed

class HeatingTypeLookup {

	String heatingType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemHeatings: SystemHeating]

	static constraints = {
		heatingType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
