package gov.doe.seed

class SiteCityCode {

	String cityCodeId
	String cityCodeName
	Site site

	static belongsTo = [Site]

	static constraints = {
		cityCodeId nullable: true, maxSize: 45
		cityCodeName nullable: true, maxSize: 45
	}
}
