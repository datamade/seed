package gov.doe.seed

class ClimateZoneLookup {

	String climateZoneType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [sites: Site]

	static mapping = {
		id column: "climate_zone_id_pk"
		version false
	}

	static constraints = {
		climateZoneType maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
