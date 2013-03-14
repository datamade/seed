package gov.doe.seed

class CookingTypeLookup {

	String cookingType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemCookings: SystemCooking]

	static mapping = {
		id column: "cooking_type_id_pk"
		version false
	}

	static constraints = {
		cookingType maxSize: 100
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
		sortOrder nullable: true
	}
}
