package gov.doe.seed

class Site {

	String city
	String state
	String postalCode
	String county
	String country
	Double elevation
	String numOfFacilities
	String schoolDistrict
	String egridRegion
	Double taxFloorArea
	String address1
	String address2
	String longitude
	String latitude
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	SiteTypeLookup siteTypeLookup
	ClimateZoneLookup climateZoneLookup
	SiteComplexTypeLookup siteComplexTypeLookup

	static hasMany = [facilities: Facility,
	                  siteCityCodes: SiteCityCode]
	static belongsTo = [ClimateZoneLookup, SiteComplexTypeLookup, SiteTypeLookup]

	static mapping = {
		id column: "site_id_pk"
		version false
	}

	static constraints = {
		city nullable: true, maxSize: 45
		state nullable: true, maxSize: 45
		postalCode nullable: true, maxSize: 45
		county nullable: true, maxSize: 45
		country nullable: true, maxSize: 45
		elevation nullable: true
		numOfFacilities nullable: true, maxSize: 45
		schoolDistrict nullable: true, maxSize: 50
		egridRegion nullable: true, maxSize: 45
		taxFloorArea nullable: true
		address1 nullable: true, maxSize: 100
		address2 nullable: true, maxSize: 100
		longitude nullable: true, maxSize: 45
		latitude nullable: true, maxSize: 45
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
