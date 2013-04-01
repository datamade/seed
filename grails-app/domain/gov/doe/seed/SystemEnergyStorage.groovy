package gov.doe.seed

class SystemEnergyStorage {

	Integer quantityEnergy
	Double energyStorageCapacity
	System system
	EnergyStorageTypeLookup energyStorageTypeLookup

	static belongsTo = [EnergyStorageTypeLookup, System]

	static constraints = {
		quantityEnergy nullable: true
		energyStorageCapacity nullable: true
	}
}
