package gov.doe.seed

class EnergyStorageTypeLookup {

	String energyStorageType
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [systemEnergyStorages: SystemEnergyStorage]

	static constraints = {
		energyStorageType maxSize: 100
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
