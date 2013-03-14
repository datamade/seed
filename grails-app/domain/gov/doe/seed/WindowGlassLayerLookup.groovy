package gov.doe.seed

class WindowGlassLayerLookup {

	String windowGlassLayers
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	Integer sortOrder

	static hasMany = [systemFenestrations: SystemFenestration]

	static mapping = {
		id column: "window_glass_layer_id_pk"
		version false
	}

	static constraints = {
		windowGlassLayers maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
		sortOrder nullable: true
	}
}
