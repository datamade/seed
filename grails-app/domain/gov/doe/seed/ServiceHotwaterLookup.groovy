package gov.doe.seed

class ServiceHotwaterLookup {

	String servHotwaterType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemHotwaters: SystemHotwater]

	static constraints = {
		servHotwaterType maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
