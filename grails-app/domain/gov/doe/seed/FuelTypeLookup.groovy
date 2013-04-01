package gov.doe.seed

class FuelTypeLookup {

	String fuelType
	String fuelTypeDescription
	Integer sortOrder
	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate

	static hasMany = [energyUseMetrics: EnergyUseMetric,
	                  systemCookings: SystemCooking,
	                  systemCoolings: SystemCooling,
	                  systemDishwashers: SystemDishwasher,
	                  systemHeatings: SystemHeating,
	                  systemHotwaters: SystemHotwater,
	                  systemHvacs: SystemHvac,
	                  systemLaundries: SystemLaundry,
	                  systemOnsites: SystemOnsite,
	                  systemPools: SystemPool,
	                  systemProcessLoads: SystemProcessLoad,
	                  systemZonalCoolings: SystemZonalCooling,
	                  systemZonalHeatings: SystemZonalHeating]

	static constraints = {
		fuelType nullable: true, maxSize: 100
		fuelTypeDescription nullable: true, maxSize: 100
		sortOrder nullable: true
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
