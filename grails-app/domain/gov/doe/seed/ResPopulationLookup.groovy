package gov.doe.seed

class ResPopulationLookup {

	String residentPopulationType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [residentialFacilities: ResidentialFacility]

	static mapping = {
		id column: "res_population_id_pk"
		version false
	}

	static constraints = {
		residentPopulationType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
