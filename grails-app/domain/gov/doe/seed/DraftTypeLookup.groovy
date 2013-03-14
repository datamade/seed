package gov.doe.seed

class DraftTypeLookup {

	String draftType
	Integer sortOrder

	static hasMany = [systemHeatings: SystemHeating]

	static mapping = {
		id column: "draft_type_id_pk"
		version false
	}

	static constraints = {
		draftType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
