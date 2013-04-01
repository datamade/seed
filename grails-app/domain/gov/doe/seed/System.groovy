package gov.doe.seed

class System {

	String createdBy
	Date createdDate
	String updatedBy
	Date updatedDate
	SystemTypeLookup systemTypeLookup
	Facility facility

	static hasMany = [systemAirs: SystemAir,
	                  systemConveyances: SystemConveyance,
	                  systemCookings: SystemCooking,
	                  systemCoolings: SystemCooling,
	                  systemDishwashers: SystemDishwasher,
	                  systemEnergyStorages: SystemEnergyStorage,
	                  systemFenestrations: SystemFenestration,
	                  systemFoundations: SystemFoundation,
	                  systemGenerals: SystemGeneral,
	                  systemHotwaters: SystemHotwater,
	                  systemIts: SystemIt,
	                  systemLaundries: SystemLaundry,
	                  systemLightings: SystemLighting,
	                  systemOnsites: SystemOnsite,
	                  systemPools: SystemPool,
	                  systemProcessLoads: SystemProcessLoad,
	                  systemRefrigerations: SystemRefrigeration,
	                  systemRoofs: SystemRoof,
	                  systemWalls: SystemWall,
	                  systemZonalCoolings: SystemZonalCooling,
	                  systemZonalHeatings: SystemZonalHeating]
	static belongsTo = [Facility, SystemTypeLookup]


	static constraints = {
		createdBy maxSize: 45
		updatedBy maxSize: 45
	}
}
