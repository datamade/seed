package gov.doe.seed

class SystemEnergyStorage {

	Integer quantityEnergy
	Double energyStorageCapacity
	System system
	EnergyStorageTypeLookup energyStorageTypeLookup

	static belongsTo = [EnergyStorageTypeLookup, System]

	static mapping = {
		id column: "system_energy_storage_id_pk"
		version false
	}

	static constraints = {
		quantityEnergy nullable: true
		energyStorageCapacity nullable: true
	}
}
