import org.apache.shiro.crypto.hash.Sha512Hash
import gov.doe.seed.*;
import gov.doe.seed.shiro.*
import java.util.*;

class BootStrap {


    def init = { servletContext ->
		
		def adminRole, userRole, aa, aa1, commercial, commercial1, residential, residential1, cert, cert1
		if (!Role.count())
		{
			//create administrator role
			adminRole = new Role(name: "ADMIN")
			adminRole.addToPermissions("admin")
			adminRole.addToPermissions("*:*")
			adminRole.save()

			// List each controller and action the user has access to.
			// For read-only actions, use <controller>:index,list,show

			// Editors have full crud capabilities on the business domain
			// but can't modify users or roles
			userRole = new Role(name: "USER")
			userRole.addToPermissions("*:*")  // Change to only list domain objects that a normal user should have access to
			userRole.save()

			println "Created ${Role.count()} roles"
		}

		if (!User.count()){
			def admin = new User(username: "admin", passwordHash: new Sha512Hash("admin").toHex())
			admin.addToRoles(adminRole)
			admin.save()

			def user = new User(username: "user", passwordHash: new Sha512Hash("user").toHex())
			user.addToRoles(userRole)
			user.save()

			println "Created ${User.count()} users"
		}
		
		
		if (!ResidentialFacility.count()){
				    
			residential = new ResidentialFacility(numOfDwellingUnits: 3, numOfNonBedrooms: 4, numOfBedrooms: 2 
			      );
			residential.save(failOnError: true);

			residential1 = new ResidentialFacility(numOfDwellingUnits: 3, numOfNonBedrooms: 4, numOfBedrooms: 2);
			residential1.save(failOnError: true);

			println "Created ${ResidentialFacility.count()} ResidentialFacility"
		}
		
		if(!ActivityArea.count()){
			aa = new ActivityArea(numOfFloors: 3, numOfFloorsAboveGnd: 4, floorHeight: 2,  activityAreaName: "Activity Area 1",
			      createdBy: "admin", updatedBy: "admin");
			aa.save(failOnError: true);

			aa1 = new ActivityArea(numOfFloors: 3, numOfFloorsAboveGnd: 4, floorHeight: 2,  activityAreaName: "Activity Area 2",
			      createdBy: "admin", updatedBy: "admin");
			aa1.save(failOnError: true);
		
			println "Created ${ActivityArea.count()} ActivityArea"
		}
		
		if (!CommercialFacility.count()){
				    
			commercial = new CommercialFacility(noOfActivityAreas: 3, naicsCode: "21345",  
			      createdBy: "admin", updatedBy: "admin");
			commercial.addToActivityAreas(aa);
			commercial.save(failOnError: true);

			commercial1 = new CommercialFacility(noOfActivityAreas: 3, naicsCode: "27923",  
			      createdBy: "admin", updatedBy: "admin");
			commercial1.addToActivityAreas(aa1);
			commercial1.save(failOnError: true);

			println "Created ${CommercialFacility.count()} CommercialFacility"
		}
		
		if (!CertificationRating.count()){
				    
			cert = new CertificationRating(certificationRating: "Certified", certificationYear: 2005,  
			      createdBy: "admin", updatedBy: "admin");
			cert.save(failOnError: true);

			cert1 = new CertificationRating(certificationRating: "In Progress", certificationYear: 2006,  
			      createdBy: "admin", updatedBy: "admin");
			cert1.save(failOnError: true);
			
			println "Created ${CertificationRating.count()} CertificationRating"

		}
		
		if (!Facility.count()){
				    
			def facility = new Facility(address1: "9300 Lee Highway", agency: "ICF", baselineRating: 5, basementFloorArea: 10, facilityName: "ICF International", 
			      createdBy: "admin", updatedBy: "admin");
			facility.addToResidentialFacilities(residential);
			facility.addToCertificationRatings(cert);
			facility.save(failOnError: true);

			def facility1 = new Facility(address1: "9302 Lee Highway", agency: "ICF 2", baselineRating: 5, basementFloorArea: 10, facilityName: "ICF International 2", 
			      createdBy: "admin", updatedBy: "admin");
			facility1.addToCommercialFacilities(commercial);
			facility.addToCertificationRatings(cert1);
			facility1.save(failOnError: true);
			
			def facility2 = new Facility(address1: "Commercial Residential Complex", agency: "Opera Bay", baselineRating: 5, basementFloorArea: 10, facilityName: "Opera Bay", 
			      createdBy: "admin", updatedBy: "admin");
			facility2.addToCommercialFacilities(commercial1);
			facility2.addToResidentialFacilities(residential1);
			facility2.save(failOnError: true);		
			
			println "Created ${Facility.count()} Facility"
		
		}


		
    }
    def destroy = {
    }
    
 
 /* ''Later instead of above do it through DomainBuilder
 def init = { servletContext ->  
        DomainBuilder builder = new DomainBuilder() 
        builder.classNameResolver = 'gov.doe.seed.*'  
        builder.identifierResolver = { 'id' }  
        builder.registerFactory 'list', new ListFactory()  
        builder.childPropertySetter = new CustomChildPropertySetter()  
        
        List instances = builder.list {  
            role(nodeId: 'role1', name: 'Observer')  
            
 */
}
