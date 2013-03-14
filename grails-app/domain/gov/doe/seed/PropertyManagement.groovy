package gov.doe.seed

class PropertyManagement {

	String propertyManagementContact
	String propertyManagementAddress
	String propertyManagementEmail
	String propertyManagementPhone
	String propertyManagementCompany
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static mapping = {
		id column: "property_mgmt_id_pk"
		version false
	}

	static constraints = {
		propertyManagementContact nullable: true, maxSize: 100
		propertyManagementAddress nullable: true, maxSize: 100
		propertyManagementEmail nullable: true, maxSize: 100
		propertyManagementPhone nullable: true, maxSize: 45
		propertyManagementCompany nullable: true, maxSize: 45
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
