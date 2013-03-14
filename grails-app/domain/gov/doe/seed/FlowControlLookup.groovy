package gov.doe.seed

class FlowControlLookup {

	String flowControl
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "flow_control_id_pk"
		version false
	}

	static constraints = {
		flowControl nullable: true, maxSize: 45
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
