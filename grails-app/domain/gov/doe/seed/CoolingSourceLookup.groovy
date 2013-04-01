package gov.doe.seed

class CoolingSourceLookup {

	String coolingSource
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date upatedDate

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		coolingSource nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
