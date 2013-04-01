package gov.doe.seed

class RoofInsulationType {

	String roofInsulationType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemRoofs: SystemRoof]

	static constraints = {
		roofInsulationType maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
