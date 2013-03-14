package gov.doe.seed

class SiteCityCode {

	String cityCodeId
	String cityCodeName
	Site site

	static belongsTo = [Site]

	static mapping = {
		id column: "site_city_code_id_pk"
		version false
	}

	static constraints = {
		cityCodeId nullable: true, maxSize: 45
		cityCodeName nullable: true, maxSize: 45
	}
}
