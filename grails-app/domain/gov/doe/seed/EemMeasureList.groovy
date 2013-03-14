package gov.doe.seed

class EemMeasureList {

	Integer eemIdFk
	Integer measureListIdFk

	static mapping = {
		id column: "eem_measure_list_id_pk"
		version false
	}

	static constraints = {
		eemIdFk nullable: true
		measureListIdFk nullable: true
	}
}
