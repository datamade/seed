package gov.doe.seed

class SiteTypeLookup {

	String siteType
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [sites: Site]

	static constraints = {
		siteType nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
