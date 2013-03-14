package gov.doe.seed

class ResTempLookup {

	String resTemp
	Integer sortOrder

	static hasMany = [systemHotwaters: SystemHotwater]

	static mapping = {
		id column: "res_temp_id_pk"
		version false
	}

	static constraints = {
		resTemp nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
