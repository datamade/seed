package gov.doe.seed

class DishwaterTypeLookup {

	String dishwasherType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemDishwashers: SystemDishwasher]

	static constraints = {
		dishwasherType maxSize: 100
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
