package gov.doe.seed

class SiteComplexTypeLookup {

	String siteComplexType
	String siteComplexTypeDescription
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [sites: Site]

	static constraints = {
		siteComplexType nullable: true, maxSize: 100
		siteComplexTypeDescription nullable: true, maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
