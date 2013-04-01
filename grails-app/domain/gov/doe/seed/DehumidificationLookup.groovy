package gov.doe.seed

class DehumidificationLookup {

	String dehumidificaton
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		dehumidificaton nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
