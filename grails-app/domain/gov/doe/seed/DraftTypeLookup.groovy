package gov.doe.seed

class DraftTypeLookup {

	String draftType
	Integer sortOrder

	static hasMany = [systemHeatings: SystemHeating]

	static constraints = {
		draftType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
