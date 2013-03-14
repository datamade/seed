package gov.doe.seed

class SiteTypeLookup {

	String siteType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [sites: Site]

	static mapping = {
		id column: "site_type_id_pk"
		version false
	}

	static constraints = {
		siteType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
