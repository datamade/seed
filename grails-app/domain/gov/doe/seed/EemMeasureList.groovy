package gov.doe.seed

class EemMeasureList {

	Integer eemIdFk
	Integer measureListIdFk

	static constraints = {
		eemIdFk nullable: true
		measureListIdFk nullable: true
	}
}
