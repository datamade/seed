package gov.doe.seed

class BucketTypeLookup {

	String bucketType
	Integer sortOrder

	static hasMany = [systemAirs: SystemAir]

	static constraints = {
		bucketType nullable: true, maxSize: 45
		sortOrder nullable: true
	}
}
