package gov.doe.seed

class Owner {

	String ownerName
	String ownerAddress1
	String ownerAddress2
	String ownerCity
	String ownerState
	String ownerPostalCode
	String ownerPhone
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [facilities: Facility]

	static mapping = {
		id column: "owner_id_pk"
		version false
	}

	static constraints = {
		ownerName nullable: true, maxSize: 45
		ownerAddress1 nullable: true, maxSize: 100
		ownerAddress2 nullable: true, maxSize: 100
		ownerCity nullable: true, maxSize: 45
		ownerState nullable: true, maxSize: 45
		ownerPostalCode nullable: true, maxSize: 45
		ownerPhone nullable: true, maxSize: 45
		createdBy nullable: true, maxSize: 45
		createdDate nullable: true
		updatedBy nullable: true, maxSize: 45
		updatedDate nullable: true
	}
}
