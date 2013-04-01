package gov.doe.seed

class DuctTypeLookup {

	String ductType
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		ductType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
