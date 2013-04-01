package gov.doe.seed
import gov.doe.seed.Facility
import grails.converters.JSON


class FacilityService {

	def serviceMethod() {
	}


	static transactional = true

	JSON getFacilityById(params) 
	{
		
		def facility = []
		
		for (fac in Facility.get(1)){ //later change 1 to use params
		  def metadata = [domain: Facility, id: fac.id]
		  def childData = []
		  def facilityData = [data: fac.facilityName, metadata: metadata,  status: "open", children:childData]
		
		  //Residential
		  for (rf in ResidentialFacility.findAllByFacility(fac)) {
		    def resmetadata = [domain: ResidentialFacility, id: rf.id]
		    def residential = [data: "Residential Facility",  metadata: resmetadata,  status: "open"]
		    childData << residential
		  }

		  //Commercial
		  for (cf in CommercialFacility.findAllByFacility(fac)) {
		    def commetadata = [domain: CommercialFacility, id: cf.id]
		    def commchildData = []
		    def commercial = [data: "Commercial Facility",  metadata: commetadata,  status: "open", children: commchildData]
		    
		    for (ar in ActivityArea.findAllByCommercialFacility(cf)) {
			    def armetadata = [domain: ActivityArea, id: ar.id]
			    def activityArea = [data: ar.activityAreaName,  metadata: armetadata,  status: "open"]
			    commchildData << activityArea
		  	}
		    
		    childData << commercial
		  }
		  
		  /* Try the non-commented part as it is smaller subsection then uncomment this part.  */
		  //Certifications
		  
		  for (cert in CertificationRating.findAllByFacility(fac)) {
		    def certmetadata = [domain: CertificationRating, id: cert.id]
		    def certification = [data: "Certifications",  metadata: certmetadata,  status: "open"]
		    childData << certification
		  }
		  
		  //Energy Efficiency Measure
		  for (eef in EnergyEfficiencyMeasure.findAllByFacility(fac)) {
		    def eefmetadata = [domain: EnergyEfficiencyMeasure, id: eef.id]
		    def eefchildData = []
		    def measure = [data: "Energy Efficiency Measures",  metadata: eefetadata,  status: "open", children: eefchildData]
		    
		    for (aud in Audit.findAllByEnergyEfficiencyMeasure(eef)) {
			    def audmetadata = [domain: ActivityArea, id: aud.id]
			    def audit = [data: aud.auditorCompanyName,  metadata: audmetadata,  status: "open"]
			    eefchildData << audit
		  	}

		    for (eer in EnergyEffReport.findAllByEnergyEfficiencyMeasure(eef)) {
			    def eermetadata = [domain: EnergyEffReport, id: eer.id]
			    def eereport = [data: "Energy Efficiency Report",  metadata: eermetadata,  status: "open"]
			    eefchildData << eereport
		  	}

		    for (esa in EnergyStarApplication.findAllByEnergyEfficiencyMeasure(eef)) {
			    def esametadata = [domain: EnergyStarApplication, id: esa.id]
			    def esapplication = [data: "Energy Star Application",  metadata: esametadata,  status: "open"]
			    eefchildData << esapplication
		  	}

		    for (imp in Implementer.findAllByEnergyEfficiencyMeasure(eef)) {
			    def impmetadata = [domain: Implementer, id: imp.id]
			    def implementer = [data: "Implementer",  metadata: impmetadata,  status: "open"]
			    eefchildData << implementer
		  	}
		    
		    childData << measure
		  }
		  
		  //Energy Use Metric
		  for (eum in EnergyUseMetric.findAllByFacility(fac)) {
		    def eummetadata = [domain: EnergyUseMetric, id: eum.id]
		    def eumchildData = []
		    def metric = [data: "Energy Use Metric",  metadata: eummetadata,  status: "open", children: eumchildData]
		    
		    for (ets in EnergyTimeSeries.findAllByCommercialFacility(eum)) {
			    def etsmetadata = [domain: EnergyTimeSeries, id: ets.id]
			    def timeseries = [data: "Energy time Series",  metadata: etsmetadata,  status: "open"]
			    eumchildData << timeseries
		  	}
		    
		    childData << metric
		  }
		  
		  //System
		  for (sys in System.findAllByFacility(fac)) {
		    def sysmetadata = [domain: System, id: sys.id]
		    def syschildData = []
		    def system = [data: "System",  metadata: sysmetadata,  status: "open", children: syschildData]
		    
		    for (sad in SystemAir.findAllBySystem(sys)) {
			    def sadmetadata = [domain: SystemAir, id: sad.id]
			    def systemair = [data: "System Air Distribution",  metadata: sadmetadata,  status: "open"]
			    syschildData << systemair
		  	}

		    for (scy in SystemConveyance.findAllBySystem(sys)) {
			    def scymetadata = [domain: SystemConveyance, id: scy.id]
			    def systemcy = [data: "System Conveyance",  metadata: scymetadata,  status: "open"]
			    syschildData << systemcy
		  	}

		    for (sco in SystemCooking.findAllBySystem(sys)) {
			    def scometadata = [domain: SystemCooking, id: sco.id]
			    def systemcook = [data: "System Cooking",  metadata: scometadata,  status: "open"]
			    syschildData << systemcook
		  	}

		    for (scol in SystemCooking.findAllBySystem(sys)) {
			    def scolmetadata = [domain: SystemCooling, id: scol.id]
			    def systemcool = [data: "System Cooling",  metadata: scolmetadata,  status: "open"]
			    syschildData << systemcool
		  	}
		    
		    childData << system
		  }
			  
		  
		
		  facility << facilityData
		}
		
		def items = [facility: facility]
		return items as JSON 
		
	}
}