import org.apache.shiro.crypto.hash.Sha512Hash
import gov.doe.seed.shiro.*

class BootStrap {

    def init = { servletContext ->
		
		def adminRole, userRole
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
    }
    def destroy = {
    }
}
