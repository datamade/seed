package gov.doe.seed

class BucketTypeLookup {

	String bucketType
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static mapping = {
		id column: "bucket_type_id_pk"
		version false
	}

	static constraints = {
		bucketType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
